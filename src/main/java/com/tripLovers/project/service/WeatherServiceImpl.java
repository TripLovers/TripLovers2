package com.tripLovers.project.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

@Service
public class WeatherServiceImpl implements WeatherService {


	@Override
	public HashMap<String, List<String>> GetWeatherCode() throws IOException {
		HashMap<String, List<String>> weatherCode = new HashMap<String, List<String>>();
		List<String> weatherCodesList = new ArrayList<String>();
		List<String> weatherDateList = new ArrayList<String>();
		List<String> simpleDate = new ArrayList<String>();
		
		String apiUrl = "https://www.jma.go.jp/bosai/forecast/data/forecast/130000.json";
        StringBuilder urlBuilder = new StringBuilder(apiUrl);
        /*
         * GETë°©ì‹?œ¼ë¡? ? „?†¡?•´?„œ ?ŒŒ?¼ë¯¸í„° ë°›ì•„?˜¤ê¸?
         */
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
       
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        String result= sb.toString();
        //System.out.println(result);
        
        // json ?ŒŒ?‹± 
        JSONParser parser = new JSONParser();
		
        //System.out.println("-------------3?¼ ?˜ˆë³?--------------");
		try {
			 JSONArray jsonarray = (JSONArray)parser.parse(result);
			 JSONObject obj1 = (JSONObject) jsonarray.get(0);
			 JSONArray timeSeries =  (JSONArray) obj1.get("timeSeries");
			 JSONObject obj2 = (JSONObject) timeSeries.get(0);
			 	 
			 JSONArray timeDefinesArr = (JSONArray) obj2.get("timeDefines");
			 
			 JSONArray areas = (JSONArray) obj2.get("areas");
			 JSONObject weatherCodes = (JSONObject) areas.get(0);
			 JSONArray weatherCodesArr = (JSONArray) weatherCodes.get("weatherCodes");
			 
			 //weatherDateList.add((String)timeDefinesArr.get(0));
			 //weatherCodesList.add((String)weatherCodesArr.get(0));
			 
			/*
			 * for(int i=0; i<weatherCodesArr.size(); i++) {
			 * //System.out.println(timeDefinesArr.get(i));
			 * //System.out.println(weatherCodesArr.get(i)); }
			 */
		 
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
        System.out.println("-------------?¼ì£¼ì¼ ?˜ˆë³?--------------");
        
		try {
			 JSONArray jsonarray = (JSONArray)parser.parse(result);
			 JSONObject obj1 = (JSONObject) jsonarray.get(1);
			 JSONArray timeSeries =  (JSONArray) obj1.get("timeSeries");
			 JSONObject obj2 = (JSONObject) timeSeries.get(0);
			 	 
			 JSONArray timeDefinesArr = (JSONArray) obj2.get("timeDefines");
			 
			 JSONArray areas = (JSONArray) obj2.get("areas");
			 JSONObject weatherCodes = (JSONObject) areas.get(0);
			 JSONArray weatherCodesArr = (JSONArray) weatherCodes.get("weatherCodes");
			 
		 for(int i=0; i<weatherCodesArr.size(); i++) {
			 weatherDateList.add((String)timeDefinesArr.get(i));
			 weatherCodesList.add((String)weatherCodesArr.get(i));
			//System.out.println(timeDefinesArr.get(i));
			 //System.out.println(weatherCodesArr.get(i));			 
		 }
		 
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
		System.out.println("--------------------------");
		
		 weatherCode.put("weatherDate",weatherDateList);
		 weatherCode.put("weatherCode",weatherCodesList);
		
		for(int i=0; i<7 ;i++) {
			System.out.println(weatherCode.get("weatherDate").get(i));
			simpleDate.add( weatherDateList.get(i).substring(5,10));
		}
		weatherCode.put("simpleDate",simpleDate);
		 
		 
		 return weatherCode;
		
	}




}
