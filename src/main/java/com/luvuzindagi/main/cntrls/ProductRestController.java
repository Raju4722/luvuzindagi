package com.luvuzindagi.main.cntrls;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductRestController {
	@ResponseBody
	@GetMapping("productrestcontroller")
	public String getts() {
		return "hell";
	}
}
