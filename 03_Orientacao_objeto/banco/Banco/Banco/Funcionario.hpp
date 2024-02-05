#pragma once
#include <string>
#include "Cpf.hpp"
#include "Pessoa.hpp"

class Funcionario:public Pessoa
{
private:
	float salario;
	
public:
	Funcionario(Cpf cpf, std::string nome, float salario);
	std::string recuperaNome() const;
	float recuperaSalario() const;
	virtual float bonificacao() const = 0;
	
};

                      