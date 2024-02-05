#pragma once

#include "Funcionario.hpp" // Base class: Funcionario

class Caixa final : public Funcionario
{
private:
	const float PORCENTAGEM_BONIFICACAO = 0.1;
public:
	Caixa(Cpf cpf, std::string nome, float salario);
	float bonificacao() const;

};

