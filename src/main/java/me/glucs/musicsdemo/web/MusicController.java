package me.glucs.musicsdemo.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MusicController {
	
	@GetMapping("/music")
	public String index() {
		return "music-list";
	}
}
