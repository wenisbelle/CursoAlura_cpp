#pragma once

#include <iostream>
#include <string>
#include <memory>
#include "cat.hpp"


class Customer
{
private:
	std::string Name;
	std::shared_ptr<Cat> catInteractedWith;
	std::string dateOfVisit; // this format: DD-MM-YYYY
	
public:
	Customer(std::string& Name, std::shared_ptr<Cat> catInteractedWith, std::string dateOfVisit);
	void displayVisitDetails(); 
};