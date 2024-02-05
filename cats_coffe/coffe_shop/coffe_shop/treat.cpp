#include "treat.hpp"

Treat::Treat(std::string treatName, int quantity): treatName(treatName),
													quantity(quantity)
{
	
}

void Treat::consumeTreat(int amount) // diminui a quantidade e verifica se tem o suficiente
{
	
	if((quantity - amount) >= 0)
	{
		quantity = quantity - amount;
	}else
	{
		std::cout << "There are not enough treats" << std::endl;
	}
}

void Treat::displayTreatDetails() const
{
	std::cout << "--------- Treat Details --------" << std::endl;
	std::cout << "Name: " << treatName << std::endl;
	std::cout << "Quantity: " << quantity << std::endl;
}


void Treat::addTreat(int amount)
{
	quantity = quantity + amount;
}

std::string Treat::getTreatName()
{
	return treatName;
}