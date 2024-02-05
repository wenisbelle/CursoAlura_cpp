#include "Conta.hpp"
#include <iostream>

int Conta::numeroDeContas = 0;

/*
Conta::Conta(std::string numero, std::string nomeTitular, std::string cpfTitular)
{
	this->numero = numero;
	this->nomeTitular = nomeTitular;
	this->cpfTitular = cpfTitular;
	this->saldo = 0;
	}*/

//esse metodo e mais eficiente, a variavel ja e inicializada com o valor, do outro jeito 
// primeiro aloca o espaço pra string e depois copia o respectivo valor nela
Conta::Conta(std::string numero, Titular titular):
	numero(numero),
	titular(titular),
	saldo(0)
{	
	numeroDeContas++;
	}

Conta::~Conta()
{
	std::cout << "Destrutor da conta" << std::endl;
	numeroDeContas--;
	}
	

void Conta::sacar(float valorASacar)
{
	
	if(valorASacar < 0)
	{
		std::cout << "Não pode sacar um valor negativo" << std::endl;
		return;
	}
		
	float tarifaDeSaque = valorASacar*taxaDeSaque();
	float valorDoSaque = valorASacar + tarifaDeSaque;
	
    if(valorASacar > saldo)
    {
        std::cout << "Saldo insuficiente" << std::endl;
		return;
    }

    saldo -= valorDoSaque;
}
	


void Conta::depositar(float valorADepositar)
{
	if(valorADepositar <= 0)
    {
        std::cout << "Nao e possivel depositar um valor negativo ou igual a zero" << std::endl;
        return;
    }
	saldo += valorADepositar;
}


float Conta::recuperaSaldo() const
{
	return saldo;
}
	
	
int Conta::recuperaNumeroDeContas()
{
	return numeroDeContas;	
	}
