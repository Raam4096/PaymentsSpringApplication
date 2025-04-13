package com.paymentsapplication.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.paymentsapplication.demo.entity.BankAccountsDetailsEntity;

public interface BankAccountsDetailsRepository extends JpaRepository<BankAccountsDetailsEntity,Integer>{
	List<BankAccountsDetailsEntity> findByUser_UserId(int userid);
}
