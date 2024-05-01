package travel.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
//test
@Slf4j
@Controller
public class MainController {
	String main = "main/main";


	@RequestMapping("/")
	public String home() {
		log.info("home controller");
		return main;
	}
	//test
	@GetMapping("/reservation")
	public String res(Model model){
		model.addAttribute("center", "../reservation.jsp");
		return "main/main";
	}


}
