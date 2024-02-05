#include "ContaPoupanca.hpp"
#include <iostream>

ContaPoupanca::ContaPoupanca(std::string numero, Titular titular): Conta(numero, titular)
{
}

ContaPoupanca::~ContaPoupanca()
{
	std::cout << "Destrutor da conta poupança" << std::endl;
}


float ContaPoupanca::taxaDeSaque() const
{	
	std::cout << "Chamando metodo sacar na conta poupança"<< std::endl;
	return 0.03;
}