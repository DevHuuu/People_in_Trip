package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
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
import kr.co.intrip.login_signup.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {

   
   @Autowired
   private MemberService memberService;

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
         mav.setViewName("redirect:/login_signup/signupcomplete");
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
   @GetMapping("login_signup/signupcomplete")
   public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
      return "login_signup/signupcomplete";
   }

	//아이디 찾기 페이지
   @RequestMapping(value = "login_signup/find_id_page")
   public String find_id_page(HttpServletRequest request, HttpServletResponse response) throws Exception {
      return "login_signup/find_id";
      }

   // 아이디 찾기 실행
   @RequestMapping(value="login_signup/find_id", method= {RequestMethod.POST,RequestMethod.GET})
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
   @RequestMapping(value = "login_signup/find_pw_page")
   public String find_pw_page() {
      return "login_signup/find_pw";
      }

   // 비밀번호 찾기 실행
   @RequestMapping(value = "login_signup/find_pw",  method= {RequestMethod.POST,RequestMethod.GET})
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
         log.info("구글 로그인 성공[DB존재X]");
      }
      else if(mvo_ajaxid.equals(returnDTO.getId())){ //아이디가 DB에 존재하는 경우
         //구글 로그인
         memberService.loginMemberByGoogle(memberDTO);
         session.setAttribute("id", returnDTO.getId());         
         rttr.addFlashAttribute("mmemberDTO", returnDTO);
         log.info("구글 로그인 성공[DB존재O]");
      }   
      log.info("google user : "+ returnDTO);
      return "redirect:/login_signup/signupcomplete";      
   }
   
   // 카카오 로그인
   @GetMapping("kakaologin")
   public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {   
      String access_Token = memberService.getAccessToken(code);      
      MemberDTO userInfo = memberService.getUserInfo(access_Token);
      log.info("카카오 로그인 성공");
      log.info("kakao user : " + userInfo);
      
      session.setAttribute("name", userInfo.getName());
      session.setAttribute("Email", userInfo.getEmail());
      
      return "redirect:/login_signup/signupcomplete";
    }

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   /* 회원가입 정보입력 페이지 ,이메일 인증입력 팝업, 이메일 인증출력 팝업*/
   
   // 회원가입 정보 입력 팝업
   @RequestMapping(value = "login_signup/signup_input")
   public ModelAndView signupInput (HttpServletRequest request, HttpServletResponse response) throws Exception {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("login_signup/signup_input");
      
      return mav;
   }
   
   // 이메일인증 입력 팝업
   @RequestMapping(value = "login_signup/signup_certifyemail")
   public ModelAndView signupCertifyEmail (HttpServletRequest request, HttpServletResponse response) throws Exception {
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
	
	@RequestMapping(value="", method= RequestMethod.GET)
    public String index() {
        log.info("home controller");
        return "login_signup/login";
    }

    @RequestMapping(value="login_signup/oauth2/code/naver", method=RequestMethod.GET)
    public String loginPOSTNaver(HttpSession session) {
        log.info("callback controller");
        return "login_signup/callback";
    }

}