
#include "letra_existe.hpp"
#include "chuta.hpp"

void Forca::chuta(std::map<char,bool>& chutou, std::array<char, 5>& chutes_errados, std::string& palavra_secreta, int& quantidade_chutes_errados)
{
    std::cout << "Seu chute: ";
    char chute;
    std::cin >> chute;

    chutou[chute] = true;

    if (letra_existe(chute, palavra_secreta))
    {
        std::cout << "Você acertou! Seu chute está na palavra." << std::endl;
    }else{
        std::cout << "Você errou! Seu chute não está na palavra." << std::endl;
        chutes_errados[quantidade_chutes_errados]= chute;
		quantidade_chutes_errados++;
    } 

}