#include "Usuario.hpp"
#include <cctype>
#include <iostream>
#include <string> 

Usuario::Usuario(std::string nome): nome(nome)
{
}

std::string Usuario::recuperaNome() const
{
    return nome;
}

std::string Usuario::recuperaPrimeiroNome() const
{	
	/*for(auto i =1; i <= nome.size(); i++)
	{

		if(isupper(nome[i]) > 0)
		{
			return nome.substr(0,i);
		}
	}*/
	
	
	for(char c : nome)
	{	
		if (isupper(c) > 0 && c != nome[0])
		{
			return nome.substr(0,nome.find(c));
		}
	}
	
	return 0;
}