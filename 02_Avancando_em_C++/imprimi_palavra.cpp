#include <iostream>
#include <map>
#include <string>

extern std::string palavra_secreta;
extern std::map<char,bool> chutou;

void imprimi_palavra(){
    for (char letra : palavra_secreta)
    {
        if (chutou[letra]){
            std::cout << letra << " ";
        }else    
        {
            std::cout << "_ ";
        }
    }
        std::cout << std::endl;
}