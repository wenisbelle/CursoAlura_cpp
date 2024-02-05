#pragma once

#include <iostream>
#include <string>

class Treat
{
private:
	std::string treatName;
	int quantity;
	
public:
	Treat(std::string treatName, int initial_quantity);
	void consumeTreat(int amount); // diminui a quantidade e verifica se tem o suficiente
	void displayTreatDetails() const;
	void addTreat(int amount);
	std::string getTreatName();
};



