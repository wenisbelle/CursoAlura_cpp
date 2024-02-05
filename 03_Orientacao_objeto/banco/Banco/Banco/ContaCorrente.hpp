#pragma once

#include "Conta.hpp" // Base class: Conta

class ContaCorrente final: public Conta
{
public:
	ContaCorrente(std::string numero, Titular titular);
	float taxaDeSaque() const override;
	void transferePara(Conta& destino, float valor);

};

