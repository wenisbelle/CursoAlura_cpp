#include "Avaliador.hpp"
#include <iostream>

void Avaliador::avalia(Leilao leilao)
{
	std::vector<Lance> lances = leilao.recuperaLances();
	std::cout << "Entrou aqui" << std::endl;
	for (Lance lance : lances)
	{
		if(lance.recuperaValor() > maiorValor){
			maiorValor = lance.recuperaValor();
			std::cout << "Entrou aqui" << std::endl;
		}
	}
}

float Avaliador::recuperaMaiorValor() const
{
	std::cout << "Entrou aqui" << std::endl;
	return maiorValor;
}



