package bootsample.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import bootsample.model.Task;
import bootsample.service.TaskService;

@RestController
public class SampleRestController {
	
	@Autowired
	private TaskService taskService;

	@GetMapping("/hello")
	public String hello(){
		return "Hello World!!!";
	}

}
