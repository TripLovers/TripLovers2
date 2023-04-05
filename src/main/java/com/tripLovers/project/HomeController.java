package com.tripLovers.project;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tripLovers.project.service.WeatherService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private WeatherService ts;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "tripLovers";
	}
	@RequestMapping(value = "/weather",method = RequestMethod.GET)
	public String test(@RequestParam(value="weatherCode", defaultValue="0") String wc,Model model ) throws IOException {
	
	   
		HashMap<String, List<String>> weather = ts.GetWeatherCode();
		model.addAttribute("weather", weather);
		model.addAttribute("weatherCode", wc);
		
		return "weatherPage";
	}
	
	@RequestMapping(value = "/regForm", method = RequestMethod.GET)
	public String regForm() {
		return"regForm";
	}
}
