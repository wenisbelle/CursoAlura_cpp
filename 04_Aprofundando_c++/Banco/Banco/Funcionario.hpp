#pragma once
#include "Pessoa.hpp"
#include "Cpf.hpp"
#include "DiaDaSemana.hpp"
#include <string>

class Funcionario : public Pessoa<Cpf>
{
private:
    float salario;
	// 0= domingo, 1 = segunda, e etc
	DiaDaSemana diaDoPagamento;

public:
    Funcionario(Cpf cpf, std::string nome, float salario, DiaDaSemana diaDoPagamento);
    std::string recuperaNome() const;
    float recuperaSalario() const;
    virtual float bonificacao() const = 0;
};
