#include "cat.hpp"


Cat::Cat(std::string& cat_name, std::string& cat_breed, unsigned int cat_age,std::string& favorite_treat):
	cat_name(cat_name), cat_breed(cat_breed), cat_age(cat_age), favorite_treat(favorite_treat)
	{
		checkAge();
		isCatAvailable = true;
	}
	
void Cat::checkAge() const
{
	if(cat_age < 0)
	{
		throw std::runtime_error("The age can't be negative");
	}
}
	
// Geters
void Cat::displayCatDetails() const
{
	std::cout << " --------- Cat's Information -------------" << std::endl;
	std::cout << "Name: " << cat_name << std::endl;
	std::cout << "Breed: " << cat_breed << std::endl;
	std::cout << "Age: " << cat_age << std::endl;
	std::cout << "Favorite treat: " << favorite_treat << std::endl; 
}

std::string Cat::getCatName() const
{
	return cat_name;
}

std::string Cat::getCatBreed() const
{
	return cat_breed;
}

std::string Cat::getFavoriteTreat() const
{
	return favorite_treat;
}

unsigned int Cat::getCatAge() const
{
	return cat_age;
}

void Cat::setCatAge(unsigned int newAge)
{
	cat_age = newAge;
}


void Cat::setFavoriteTreat(std::string& favorite_treat)
{
	this->favorite_treat = favorite_treat;}

void Cat::isNotAvailable()
{
	isCatAvailable = false;}

bool Cat::getIfAvailable()
{
	return isCatAvailable;
}