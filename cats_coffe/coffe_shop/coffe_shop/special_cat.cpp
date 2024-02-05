#include "special_cat.hpp"

SpecialCat::SpecialCat(std::string& cat_name, std::string& cat_breed, unsigned int cat_age,
					   std::string& favorite_treat, std::string& specialSkill): Cat(cat_name, cat_breed, cat_age,favorite_treat), specialSkill(specialSkill)
					   {
						   
					   }

void SpecialCat::changeSkill(std::string newSkill)
{
	this->specialSkill = newSkill;
	std::cout << "The new skill is: " << specialSkill << std::endl;
}

void SpecialCat::getSkill()
{
	std::cout << "The cat's skill is: " << specialSkill << std::endl;
}

