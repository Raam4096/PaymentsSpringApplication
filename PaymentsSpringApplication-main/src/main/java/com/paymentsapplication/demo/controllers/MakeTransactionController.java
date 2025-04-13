package com.paymentsapplication.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MakeTransactionController {

	@GetMapping("/sendMoney")
	public String sendMoneyPage() {
		return "sendMoney";
	}
	
}
