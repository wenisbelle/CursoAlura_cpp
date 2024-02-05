#include <iostream>
#include "imprimi_palavra.hpp"

void Forca::imprimi_palavra(std::string& palavra_secreta, const std::map<char,bool>& chutou){
    for (char letra : palavra_secreta)
    {
        if (chutou.find(letra) == chutou.end() || !chutou.at(letra)){
            std::cout << "_ ";
        }else    
        {
            std::cout << letra << " ";
        }
    }
        std::cout << std::endl;
}