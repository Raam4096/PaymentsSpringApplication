package com.paymentsapplication.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.paymentsapplication.demo.entity.BankAccountsDetailsEntity;

public interface BankAccountsDetailsRepository extends JpaRepository<BankAccountsDetailsEntity,Integer>{

}
