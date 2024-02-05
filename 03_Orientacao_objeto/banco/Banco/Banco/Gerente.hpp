#pragma once

#include "Funcionario.hpp" // Base class: Funcionario
#include "Autenticavel.hpp"

class Gerente final : public Funcionario, public Autenticavel
{
private:
	const float PORCENTAGEM_BONIFICACAO = 0.5;
public:
	Gerente(Cpf cpf, std::string nome, float salario, std::string senha);
	float bonificacao() const;

};

