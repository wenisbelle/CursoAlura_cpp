#include <iostream>
#include <vector>
#include <string>
#include "salva_arquivo.hpp"
#include "le_arquivo.hpp"
#include "adiciona_palavra.hpp"

void Forca::adiciona_palavra(){
    std::cout << "Digite a nova palavra, usando letras maiúsculas: ";
    std::string nova_palavra;
    std::cin >> nova_palavra;

    std::vector<std::string> lista_palavras = le_arquivo();

    lista_palavras.push_back(nova_palavra);

    salva_arquivo(lista_palavras);
}