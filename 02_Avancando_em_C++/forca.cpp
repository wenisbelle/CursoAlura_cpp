#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <fstream>
#include <ctime>
#include <cstdlib>

#include "nao_acertou.hpp"
#include "letra_existe.hpp"
#include "imprimi_palavra.hpp"
#include "imprimi_erros.hpp"
#include "imprimi_cabecalho.hpp"
#include "nao_enforcou.hpp"
#include "chuta.hpp"
#include "adiciona_palavra.hpp"
#include "le_arquivo.hpp"
#include "sorteia_palavra.hpp"
#include "salva_arquivo.hpp"

using namespace std;

//declarada no scopo global
string palavra_secreta;

// definindo o dicionário, definir a chave e o valor
map<char, bool> chutou;
// estrutura de um dicionário
/*chutou ['M'] = false;
chutou ['E'] = false;
chutou ['L'] = false;
chutou ['A'] = false;
chutou ['N'] = false;
chutou ['C'] = false;
chutou ['I'] = false;
chutou ['A'] = false;*/
vector<char> chutes_errados;

int main() {

    imprimi_cabecalho();

    le_arquivo();
    sorteia_palavra();

    while (nao_acertou() && nao_enforcou())
    {   
        imprimi_erros();
        imprimi_palavra();
        chuta();     
    }

    cout << "Fim de jogo!" << endl;
    cout << "A palavra secreta era: " << palavra_secreta << endl;
    if(nao_acertou()){
        cout << "Você perdeu! Tente novamente!" << endl;
        }
    else{
            cout << "Parabéns! Você acertou a palavra secreta!" << endl;

            cout << "Você deseja adicionar mais uma palavra ao banco de daodos? (S/N)" << endl;
            char resposta;
            cin >> resposta;

            if (resposta=='S')
            {
                adiciona_palavra();
            }
            
    }
    
}
