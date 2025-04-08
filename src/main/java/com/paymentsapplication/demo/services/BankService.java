package com.paymentsapplication.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paymentsapplication.demo.entity.BankAccountsDetailsEntity;
import com.paymentsapplication.demo.repositories.BankAccountsDetailsRepository;

@Service
public class BankService {

	@Autowired
	private BankAccountsDetailsRepository bankRepo;
	
	public void addBankAcc(BankAccountsDetailsEntity bank)
{
		bankRepo.save(bank);
}
}
