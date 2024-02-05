#pragma once
#include <climits>
#include "Leilao.hpp"

class Avaliador
{
private:
	float maiorValor = INT_MIN;
	float menorValor = INT_MAX;
	std::vector<Lance> maiores3Lances;
	static bool ordenaLances(const Lance&, const Lance&);
public:
	Avaliador();
	void avalia(Leilao);
	float recuperaMaiorValor() const;
	float recuperaMenorValor() const;
	std::vector<Lance> recupera3MaioresLances() const;
};




