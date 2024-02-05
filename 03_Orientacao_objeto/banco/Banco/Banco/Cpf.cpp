#include "Cpf.hpp"
#include <iostream>

Cpf::Cpf(std::string cpf): cpf(cpf)
{
		VerificaCPF();
}

void Cpf::VerificaCPF(){
	
	if (cpf.size() != 11){
		std::cout << "Numero incosistente" << std::endl;
		exit(1);
	}
	
}

std::string Cpf::recuperacpfTitular() const
{
	return 	cpf;
	}