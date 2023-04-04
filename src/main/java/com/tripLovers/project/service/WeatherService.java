package com.tripLovers.project.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public interface WeatherService {
	public HashMap<String, List<String>> GetWeatherCode() throws IOException ;
}
