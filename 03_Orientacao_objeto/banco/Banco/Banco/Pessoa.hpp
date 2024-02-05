#pragma once
#include <string>
#include "Cpf.hpp"

class Pessoa
{
// apenas essa classe vai poder acessar, mas se quisermos que as classes heideiras também possam é preciso alterar o código
/*private:
	Cpf cpf;
	std::string nome;*/
//herdeiros podem acessar	
protected:
	Cpf cpf;
	std::string nome;

public:
	Pessoa(Cpf cpf, std::string nome);
	
private:
	void verificaTamanhoDoNome();
};

