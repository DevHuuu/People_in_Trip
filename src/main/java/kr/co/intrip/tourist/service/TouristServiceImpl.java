package kr.co.intrip.tourist.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.tourist.dao.TouristDAO;
import kr.co.intrip.tourist.dto.ApiDTO;

@Service
public class TouristServiceImpl implements TouristService {

	@Autowired
	private TouristDAO touristDAO;
	
	// 관광지 api
	@Override
	public ArrayList<ApiDTO> parkApi(String schAirportCode) throws IOException {
		ArrayList<ApiDTO> list = new ArrayList<ApiDTO>();
		// url
		StringBuilder urlBuilder = new StringBuilder(
				"http://api.visitjeju.net/vsjApi/contents/searchList?apiKey=lvg5ciolx7x4i2je&locale=kr&page=44");
		
		
		 
		
		 		
		/*
		 * urlBuilder.append("&" + URLEncoder.encode("serviceKey", "UTF-8") +
		 * "=6FKxrGLyiJy9V0QFz5JpDYNHcC7zcCTo5K%2F%2FqA3n9WRmWUHmqVDq%2B2B6JKG8iJ%2BConwMG8s0bZKflAN2kqhtCA%3D%3D"
		 * );
		 */
		
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		/* System.out.println("Response code: " + conn.getResponseCode()); */
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();

		/* System.out.println(sb.toString()); */
		// ========================= (list code) =========================
		// ========================= (list code) =========================
				String jsonString = sb.toString();
				// 가장 큰 JSONObject를 가져옵니다.
				JSONObject jObject = new JSONObject(jsonString);

				// (response) 0번째 JSONObject를 가져옵니다.
				String responseObject = jObject.getString("result");
				/*
				 * String responseObject1 = jObject.getString("totalCount"); String
				 * responseObject2 = jObject.getString("resultCount"); String responseObject3 =
				 * jObject.getString("pageSize"); String responseObject4 =
				 * jObject.getString("pageCount"); String responseObject5 =
				 * jObject.getString("currentPage");
				 */
				// (response -> header) 1번째 JSONObject를 가져와서 key-value를 읽습니다.
				/* log.info("(header)resultCode={}" , responseObject); */

				//JSONObject itemsObject = jObject.getJSONObject("items");
				JSONArray itemArray = jObject.getJSONArray("items");
				for (int i = 0; i < itemArray.length(); i++) {
					
					ApiDTO pvo = new ApiDTO();
					JSONObject iobj = itemArray.getJSONObject(i);
					
					JSONObject iobj2 = new JSONObject(iobj);
					
					if(!(itemArray.getJSONObject(i).isNull("alltag"))) {
						pvo.setAlltag(iobj.getString("alltag"));
					}
					
					pvo.setContentsid(iobj.getString("contentsid"));
					
					JSONObject itemArray2 = iobj.getJSONObject("contentscd");
					pvo.setValue(itemArray2.getString("value"));
					pvo.setLabel(itemArray2.getString("label"));
					pvo.setRefId(itemArray2.getString("refId"));
					
					pvo.setTitle(iobj.getString("title"));
					
					if(!(itemArray.getJSONObject(i).isNull("region1cd"))) {
						JSONObject itemArray3 = iobj.getJSONObject("region1cd");
						pvo.setValue2(itemArray3.getString("value"));
						pvo.setLabel2(itemArray3.getString("label"));
						pvo.setRefId2(itemArray3.getString("refId"));
					}
					
					
					
					
					if(!(itemArray.getJSONObject(i).isNull("address"))) {
						pvo.setAddress(iobj.getString("address"));
					}	
					
					if(!(itemArray.getJSONObject(i).isNull("tag"))) {
						pvo.setTag(iobj.getString("tag"));
					}		
					if(!(itemArray.getJSONObject(i).isNull("introduction"))) {
						pvo.setIntroduction(iobj.getString("introduction"));
					}
					
					if(!(itemArray.getJSONObject(i).isNull("repPhoto"))) {
						JSONObject itemArray4 = iobj.getJSONObject("repPhoto");
						pvo.setDescseo(itemArray4.getString("descseo"));
						
					
					/*if(!(itemArray.getJSONObject(i).isNull("photoid"))) {*/
						JSONObject itemArray5 = itemArray4.getJSONObject("photoid");
						/* pvo.setPhotoid(itemArray5.getString("photoid")); */
						pvo.setImgpath(itemArray5.getString("imgpath"));
						pvo.setThumbnailpath(itemArray5.getString("thumbnailpath"));
					}
					/* } */
					
					
					
					
					
					/* log.info(i + "번째 item: " + pvo); */

					list.add(pvo);

				}

				System.out.println("list: " + list);
				return list;
			}
}
