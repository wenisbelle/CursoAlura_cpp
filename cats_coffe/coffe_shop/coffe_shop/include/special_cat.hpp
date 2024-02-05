#pragma once

 #include <iostream>
 #include <string>
 #include "cat.hpp"
 
 class SpecialCat : public Cat
 {
private:
	std::string specialSkill;
public:
	SpecialCat(std::string& cat_name, std::string& cat_breed, unsigned int cat_age,
			   std::string& favorite_treat, std::string& specialSkill);
	void changeSkill(std::string newSkill);
	void getSkill();
	 
 };



