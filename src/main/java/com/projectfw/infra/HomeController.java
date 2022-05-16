package com.projectfw.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.projectfw.infra.modules.member.Member;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/member/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
		@RequestMapping(value = "/test/memberView")
		public String memberView(Model model) throws Exception{
			
			   //api 를 호출해서 데이터를 받아온다.
			
			   String apiUrl = "http://localhost:8080/infra/rest/member/3";
			   
			   URL url = new URL(apiUrl);
			   HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			   httpURLConnection.setRequestMethod("GET");
			   
			   BufferedReader bufferedReader;
			   if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			   } else {
				   bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			   }
			   
			   StringBuilder stringBuilder = new StringBuilder();
			   String line;
			   while  ((line = bufferedReader.readLine()) != null) {
					/* System.out.println("line: " + line); */
				   stringBuilder.append(line);
			   }
			   
			   bufferedReader.close();
			   httpURLConnection.disconnect();
			   
			   //-------------------------			  
			   
			   ObjectMapper objectMapper = new ObjectMapper();
			   Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);
			   
			   model.addAttribute("item", member);
			   
			return "test/memberView";
	}
		
		@RequestMapping(value = "/test/memberList")
		public String memberList(Model model) throws Exception{
			
			//api 를 호출해서 데이터를 받아온다.
			
			String apiUrl = "http://localhost:8080/infra/rest/member";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while  ((line = bufferedReader.readLine()) != null) {
				/* System.out.println("line: " + line); */
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			//-------------------------
			
			ObjectMapper objectMapper = new ObjectMapper();
			List<Member> memberList = objectMapper.readValue(stringBuilder.toString(), new TypeReference<List<Member>>() {});
			
			model.addAttribute("list", memberList);
			
			return "test/memberList";
		}
	
}
