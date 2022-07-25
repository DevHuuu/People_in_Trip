package kr.co.intrip.login_signup.controller;

import java.net.URI;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.intrip.login_signup.dto.MemberDTO;

import kr.co.intrip.login_signup.service.MailSendService_Add;

import kr.co.intrip.login_signup.service.MailSendService;

import kr.co.intrip.login_signup.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {

	@Autowired
 	private MailSendService mailService;
   @Autowired
   private MemberService memberService;
   
	@Autowired
	private MailSendService_Add mailService1;

   // 로그인 페이지
   @GetMapping("login_signup/login")
   public String login() {
      return "login_signup/login";
   }
   
   @PostMapping("login_signup/login") 
   public ModelAndView login(@ModelAttribute MemberDTO memberDTO, HttpSession session)throws Exception {
      MemberDTO user = memberService.Login(memberDTO, session);   
      ModelAndView mav = new ModelAndView();
      if (user != null) {
         log.info("로그인 성공");
         session.setAttribute("user", user);
         session.setAttribute("isLogIn", true);
         log.info("user : " + user);
         mav.setViewName("redirect:/main_kms/main_page_kms.jsp");
      }
      else {
         log.info("로그인 실패");
         mav.addObject("message", "error");
         mav.setViewName("login_signup/login");
      }
      return mav;
   }
   
   // 로그아웃
   @GetMapping("logout")
   public ModelAndView logout(HttpSession session)throws Exception {
      ModelAndView mav = new ModelAndView();
      session.invalidate();
      log.info("로그아웃 성공");
      mav.setViewName("redirect:/login_signup/login");
      return mav;
   }
   
   // 회원가입 완료 페이지
   @RequestMapping(value = "login_signup/signupcomplete", method = {RequestMethod.GET, RequestMethod.POST})
   public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
      return "login_signup/signupcomplete";
   }

   //아이디 찾기 페이지
   @RequestMapping(value = "login_signup/find_id")
   public String find_id_page(HttpServletRequest request, HttpServletResponse response) throws Exception {
      return "login_signup/find_id";
      }

   // 아이디 찾기 실행
   @RequestMapping(value="login_signup/find_id", method= RequestMethod.POST)
   public String findIdAction(MemberDTO memberDTO, Model model) throws Exception {
   MemberDTO user = memberService.find_id(memberDTO);
            
      if(user == null) { 
         model.addAttribute("check", 1);
         return "login_signup/find_id";
      }else {
         model.addAttribute("check", 0);
         model.addAttribute("id", user.getId());
      }
      return "login_signup/find_id_out";
         }
      
   // 아이디찾기 출력 페이지
   @RequestMapping(value = "login_signup/find_id_out", method= {RequestMethod.POST,RequestMethod.GET})
   public String find_id_out(HttpServletRequest request, HttpServletResponse response) throws Exception {
         return "login_signup/find_id_out";

      }

   // 비밀번호 찾기 페이지로 이동
   @RequestMapping(value = "login_signup/find_pw")
   public String find_pw_page() {
      return "login_signup/find_pw";
      }

   // 비밀번호 찾기 실행
   @RequestMapping(value = "login_signup/find_pw",  method= RequestMethod.POST)
   public String findPasswordAction(MemberDTO memberDTO, Model model) {
      MemberDTO user = memberService.find_pw(memberDTO);
      if (user == null) {
         model.addAttribute("check", 1);
         return "login_signup/find_pw";
      } else {
         model.addAttribute("check", 0);
         model.addAttribute("updateid", user.getId());
            
      }
         return "login_signup/update_pw";
      }

      // 비밀번호 변경 페이지로 이동
      @RequestMapping(value = "login_signup/update_pw")
      public String update_pw() {
         return "login_signup/update_pw";
      }
      
      
      // 비밀번호 바꾸기 실행
      @RequestMapping(value = "login_signup/update_pw", method = RequestMethod.POST)
      public String updatePasswordAction(@RequestParam(value = "updateid", defaultValue = "", required = false) String id, MemberDTO memberDTO) {
         memberDTO.setId(id);
         memberService.update_pw(memberDTO);
         return "login_signup/login";
      }
      
	   // 메일 서비스
	   @GetMapping("/mailCheck")
	   @ResponseBody
	   public String mailCheck(String email) {
	   System.out.println("이메일 인증 요청이 들어옴!");
	   System.out.println("이메일 인증 이메일 : " + email);
	  	return mailService.joinEmail(email);
	 }
   
   /* 구글아이디로 로그인 */   
   @ResponseBody
    @PostMapping("/loginGoogle")
   public String loginGooglePOST(MemberDTO memberDTO, HttpSession session, RedirectAttributes rttr, MemberDTO mmemberDTO) throws Exception{
      MemberDTO returnDTO = memberService.loginMemberByGoogle(memberDTO);
      String mvo_ajaxid = mmemberDTO.getId();       
      
      if(returnDTO == null) { //아이디가 DB에 존재하지 않는 경우
         //구글 회원가입         
         memberService.joinMemberByGoogle(memberDTO);   
         //구글 로그인
         returnDTO = memberService.loginMemberByGoogle(memberDTO);
         session.setAttribute("id", returnDTO.getId());         
         rttr.addFlashAttribute("mmemberDTO", returnDTO);
         session.setAttribute("isLogIn", true);
         log.info("구글 로그인 성공[DB존재X]");
      }
      else if(mvo_ajaxid.equals(returnDTO.getId())){ //아이디가 DB에 존재하는 경우
         //구글 로그인
         memberService.loginMemberByGoogle(memberDTO);
         session.setAttribute("id", returnDTO.getId());         
         rttr.addFlashAttribute("mmemberDTO", returnDTO);
         session.setAttribute("isLogIn", true);
         log.info("구글 로그인 성공[DB존재O]");
      }   
      log.info("google user : "+ returnDTO);
      return "redirect:/main_kms/main_page_kms.jsp";      
   }
   
   // 카카오 로그인
   @GetMapping("kakaologin")
   public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {   
      String access_Token = memberService.getAccessToken(code);      
      MemberDTO userInfo = memberService.getUserInfo(access_Token);
      log.info("카카오 로그인 성공");
      log.info("kakao user : " + userInfo);
      
      session.setAttribute("email", userInfo.getEmail());
      session.setAttribute("id", userInfo.getId());
      session.setAttribute("isLogIn", true);
      
      return "redirect:/main_kms/main_page_kms.jsp";
    }

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   /* 회원가입 정보입력 페이지 ,이메일 인증입력 팝업, 이메일 인증출력 팝업*/
   
   // 회원가입 정보 입력 페이지
   @RequestMapping(value = "login_signup/signup_input", method = {RequestMethod.POST, RequestMethod.GET})
   public ModelAndView signupInput (HttpServletRequest request, HttpServletResponse response) throws Exception {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("login_signup/signup_input");
      
      return mav;
   }
   
   // 이메일인증 입력 팝업
   @RequestMapping(value = "login_signup/signup_certifyemail", method = {RequestMethod.POST, RequestMethod.GET})
   public ModelAndView signupCertifyEmail (@RequestParam(value="email", required = false)String email2, 
		   HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
      System.out.println("here_emailcerti: " + email2);
      session.setAttribute("email", email2);
      ModelAndView mav = new ModelAndView();
      mav.setViewName("login_signup/signup_certifyemail");
      
      //MailSendService에서 생성된 난수를 login_signup/signup_certifymail로 POST방식으로 넘기는 메소드. 값 authNumber도 받아야함 그래서 세션에 저장한거 바탕으로 js파일로 유효성검사
      

      
    //이메일 인증
      String code = mailService.joinEmail(email2); //code는 코드번호이다. 코드를 넘겨줘야됨.
      session.setAttribute("code", code);
      System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email2);


		System.out.println("코드번호" + code);
      
      return mav;
   }
   
   // 이메일코드 전송 
   @ResponseBody
   @RequestMapping(value = "login_signup/post_certifyemail", method = RequestMethod.GET)
   public ModelAndView postCertifyEmail (@RequestParam(value="email", required = false)String email2, 
		   @RequestParam(value="code", required = false)String code,
		   HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
      System.out.println("here_emailcerti: " + email2);
      session.setAttribute("email", email2);
		session.removeAttribute("code");
		
		TimeUnit.SECONDS.sleep(1);
		session.setAttribute("code", code);
		
		 ModelAndView mav = new ModelAndView();
	      mav.setViewName("login_signup/signup_certifyemail");
     
      return mav;
   }
   
   
   // 이메일인증 출력 팝업
   @RequestMapping(value = "login_signup/signup_certifyemailcode")
   public ModelAndView signupCertifyEmailCode (HttpServletRequest request, HttpServletResponse response) throws Exception {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("login_signup/signup_certifyemailcode");
      
      return mav;
   }
   
   //DB에 멤버 추가
   @RequestMapping(value = "signup/addMember", method = RequestMethod.POST)
   public ModelAndView addMember(@ModelAttribute("member") MemberDTO _memberDTO,HttpSession session, HttpServletRequest request, 
		   HttpServletResponse response) throws Exception {
	   System.out.println("here_addMember");
	   memberService.addMember(_memberDTO);
	   session.setAttribute("member", _memberDTO);
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("redirect:/login_signup/signupcomplete");
	   
	   return mav;
   }
//   public ResponseEntity<MemberDTO> addMember(@ModelAttribute("member") MemberDTO _memberDTO, HttpServletRequest request, 
//		   HttpServletResponse response) throws Exception {
//	   System.out.println("here_addMember");
//	   int result = memberService.addMember(_memberDTO);
//	   ResponseEntity<MemberDTO> resEntity_member = new ResponseEntity<MemberDTO>(_memberDTO, HttpStatus.OK);
//	   HttpHeaders headers = new HttpHeaders();
//       headers.setLocation(URI.create("/intrip/login_signup/signupcomplete"));
//		/*
//		 * ModelAndView mav = new ModelAndView();
//		 * mav.setViewName("redirect:/login_signup/signupcomplete");
//		 */
//	   
//       return new ResponseEntity<>(headers, HttpStatus.MOVED_PERMANENTLY);
//   }
   
   
   //아이디 중복 확인
   @RequestMapping(value = "signup/duplicateCheckId", method = RequestMethod.POST)
	public ResponseEntity<String> duplicateCheckId(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("here_idDup "+id);
		String result = memberService.duplicateCheckId(id);
		ResponseEntity<String> resEntity = new ResponseEntity<String>(result, HttpStatus.OK);
				
		return resEntity;
	}
 //닉네임 중복 확인
   @RequestMapping(value = "signup/duplicateCheckNick", method = RequestMethod.POST)
	public ResponseEntity<String> duplicateCheckNick(@RequestParam("nick_nm") String nick_nm, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("here_nickDup "+nick_nm);
		String result = memberService.duplicateCheckNick(nick_nm);
		ResponseEntity<String> resEntity_nick = new ResponseEntity<String>(result, HttpStatus.OK);
				
		return resEntity_nick;
	}
// 이메일 중복 확인
   @RequestMapping(value = "signup/duplicateCheckEmail", method = RequestMethod.POST)
	public ResponseEntity<String> duplicateCheckEmail(@RequestParam("email") String email, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("here_emailDup "+email);
		String result = memberService.duplicateCheckEmail(email);
		ResponseEntity<String> resEntity_email = new ResponseEntity<String>(result, HttpStatus.OK);
				
		return resEntity_email;
	}
   
   
   
   
   
	
   	// 네이버
	@GetMapping("")
    public String index() {
        log.info("home controller");
        return "login_signup/login";
    }

	// 네이버
    @GetMapping("login/oauth2/code/naver")
    public String loginPOSTNaver(HttpSession session) {
        log.info("callback controller");
        return "login_signup/callback";
    }
    
    // 네이버 로그인
    @PostMapping("/naverlogin")
    public String naverlogin(MemberDTO memberDTO, HttpSession session, RedirectAttributes rttr, MemberDTO mmemberDTO) throws Exception {
    	MemberDTO returnDTO = memberService.loginMemberByNaver(memberDTO);
        String mvo_ajaxid = mmemberDTO.getId();       
        
        if(returnDTO == null) { //아이디가 DB에 존재하지 않는 경우
           // 네이버 회원가입         
           memberService.joinMemberByNaver(memberDTO);   
           // 네이버 로그인
           returnDTO = memberService.loginMemberByNaver(memberDTO);
           session.setAttribute("id", returnDTO.getId());         
           rttr.addFlashAttribute("mmemberDTO", returnDTO);
           session.setAttribute("isLogIn", true);
           log.info("네이버 로그인 성공[DB존재X]");
        }
        else if(mvo_ajaxid.equals(returnDTO.getId())){ //아이디가 DB에 존재하는 경우
           // 네이버 로그인
           memberService.loginMemberByNaver(memberDTO);
           session.setAttribute("id", returnDTO.getId());         
           rttr.addFlashAttribute("mmemberDTO", returnDTO);
           session.setAttribute("isLogIn", true);
           log.info("네이버 로그인 성공[DB존재O]");
        }   
        log.info("naver user : "+ returnDTO);
        return "redirect:/main_kms/main_page_kms.jsp";      
     }

}