#include<iostream> //entrada, saida e fluxo
#include<cstdlib> //rand
#include<ctime> //time
using namespace std;

int main (){

    /*std::cout << "************************************* " << std::endl;
    std::cout << "*Bem vindos ao jogo da adivinhação!* " << std::endl;
    std::cout << "************************************* " << std::endl;*/ //so uso esse std quando nao tiver a indicacao de using namespace

    cout << "************************************* " << endl;
    cout << "*Bem vindos ao jogo da adivinhação!* " <<  endl;
    cout << "************************************* " << endl;

    cout << "Escolha o seu nível de dificuldade: " << endl;
    cout << "Fácil (F), Médio (M) ou Difícil (D)" << endl;

    char dificuldade;
    cin >> dificuldade;

    int numero_de_tentativas;

    if (dificuldade == 'F')
    {
        numero_de_tentativas = 15;
    }
    else if (dificuldade == 'M')
    {
        numero_de_tentativas = 10;
    }
    else
    {
        numero_de_tentativas = 5;
    }
    
    

    // constante, nao pode ser alterada
    srand(time(NULL));
    // estamos tirando o resto do valor dessa função por 100, pro número ficar entre 0 e 100
    const int NUMERO_SECRETO = rand() % 100; 

    //Recebendo valores
    int chute;
    bool nao_acertou= true;
    int tentativas = 0;

    double pontos = 1000.0;
    
    for (tentativas = 1; tentativas <= numero_de_tentativas; tentativas++)
    {
        cout << "Tentativa " << tentativas << endl;
        cout << "Qual o seu chute? ";
        cin >> chute;
        cout << "O valor do seu chute é: " << chute << endl;

        // Verificando se acertou, a variavel vai receber se aquela comparacao é verdadeira ou falsa
        bool acertou = chute == NUMERO_SECRETO;
        bool maior = chute > NUMERO_SECRETO;

        double pontos_perdidos = abs(chute - NUMERO_SECRETO) / 2.0;
        pontos = pontos - pontos_perdidos;

         if (acertou)
         {
            cout << "Parabéns. Você acertou." << endl;
            nao_acertou = false;
            break;
                    
        }
        else if (maior)
        {
            cout << "Seu chute foi maior." << endl;
        }
        else {
            cout << "Seu chute foi menor que o número secreto." << endl;
    }
    }

    cout << "Fim de jogo!" << endl;

    if (nao_acertou)
    {
        cout << "Você perdeu! Tente novamente!" << endl;
    }
    else
    {
        cout << "Você acertou em " << tentativas << " tentativas." << endl;
        //antes do numero colocar a funcao com a precisão que queremos
        cout.precision(2);
        cout << fixed;
        cout << "Total de pontos: " << pontos << endl;
    }

}
