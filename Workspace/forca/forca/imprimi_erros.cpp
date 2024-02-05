#include <iostream>
#include "imprimi_erros.hpp"

void Forca::imprimi_erros(const std::array<char, 5>& chutes_errados, int& quantidade_chutes_errados){
		std::cout << "Chutes errados: ";
			for (int i = 0; i <= quantidade_chutes_errados; i++)
			{
				std::cout << chutes_errados[i] << " ";
				
			}
			std::cout << std::endl;
	}
