package com.luvuzindagi.main.cntrls;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
@GetMapping("productcontroller")
public String getting() {
	return "hello";
}
}
