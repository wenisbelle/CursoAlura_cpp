#include "Funcionario.hpp"
#include <iostream>

Funcionario::Funcionario(Cpf cpf, std::string nome, float salario): Pessoa(cpf, nome), salario(salario)
{
	std::cout << "Construtor de Funcionario" << std::endl;
}

std::string Funcionario::recuperaNome() const
{
	return nome;
}

float Funcionario::recuperaSalario() const
{
	return salario;
}
