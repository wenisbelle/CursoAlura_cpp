#pragma once
#include <string>
#include <iostream>

class Cat
{
	
private:
	const std::string cat_name;
	const std::string cat_breed;
	unsigned int cat_age;
	std::string favorite_treat;
	bool isCatAvailable;

public:
	Cat(std::string& cat_name, std::string& cat_breed, unsigned int cat_age,
		std::string& favorite_treat);
	
	void displayCatDetails() const;
	std::string getCatName() const;
	std::string getCatBreed() const;
	unsigned int getCatAge() const;
	std::string getFavoriteTreat() const;

	//setters
	void setCatAge(unsigned int newAge);
	void setFavoriteTreat(std::string& favorite_treat);
	
	void checkAge() const;
	
	void isNotAvailable();
	bool getIfAvailable();
	
};
