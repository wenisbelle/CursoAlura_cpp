#pragma once

#include "Conta.hpp" // Base class: Conta

class ContaPoupanca final : public Conta // classe final significa que ninguem pode extendida, não pode ser herdada por ninguem
{
public:
	ContaPoupanca(std::string numero, Titular titular);
	float taxaDeSaque () const override; // override da uma dica pro compilador do que exatamente essa funcao tem que receber
											 // com base no seu método base, esse método tem que ser virtual
	~ContaPoupanca(); //como colocamos uma classe como final nao e necessario ter um destrutor virtual, ja que nenhuma outra ira herdar 
};

