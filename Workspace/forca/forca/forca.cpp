#include <iostream>
#include <string>
#include <map>
#include <array>
#include <cstdlib>

#include "nao_acertou.hpp"
#include "letra_existe.hpp"
#include "imprimi_palavra.hpp"
#include "imprimi_erros.hpp"
#include "imprimi_cabecalho.hpp"
#include "chuta.hpp"
#include "adiciona_palavra.hpp"
#include "le_arquivo.hpp"
#include "sorteia_palavra.hpp"
#include "salva_arquivo.hpp"

using namespace std;
using namespace Forca;

static string palavra_secreta;
static map<char, bool> chutou;

static array<char, 5> chutes_errados;
int quantidade_chutes_errados = 0;

int main() {


	imprimi_cabecalho();
    palavra_secreta = sorteia_palavra();

    while (nao_acertou(palavra_secreta, chutou) && quantidade_chutes_errados < 5)
    {   
        imprimi_erros(chutes_errados, quantidade_chutes_errados);
        imprimi_palavra(palavra_secreta, chutou);
        chuta(chutou, chutes_errados, palavra_secreta, quantidade_chutes_errados);     
    }

    cout << "Fim de jogo!" << endl;
    cout << "A palavra secreta era: " << palavra_secreta << endl;
    if(nao_acertou(palavra_secreta, chutou)){
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
