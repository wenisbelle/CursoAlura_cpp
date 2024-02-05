#pragma once
#include <string>
#include  "Titular.hpp"
#include "Cpf.hpp"


class Conta
{  

private:
	// o static em uma classe permite que esse atibuto seja da classe, ou melhor, do construtor e nao do objeto
	static int numeroDeContas;

public:
	static int recuperaNumeroDeContas();
 
private:
	std::string numero;
    Titular titular;

protected:
	float saldo;
	
public:
	Conta(std::string numero, Titular titular);
	//metodo destrutor
	virtual ~Conta(); // o virtual e uma forma de informar que uma classe que herde essa tambem pode ter uma 
					// destrutor e garantimos que caso o destrutor dessa seja chamado o da classe filha tambem sera
					// caso o objeto criado seja da classe filha, isso impede uma alocaçao nao otimizada de memoria
					// Resumindo, toda vez que podemos extender uma classe ela precisaria ter um destrutor virtual
	
	// um metodo virtual pode ser definido nessa classe ou nas classes
	// derivadas
	// esses metodos virtuais são um pouco mais lentos, já que ele analisa
	// qual é a classe pra depois chamar o método correto
	// garantimos que o metodo correte daquele objeto sera chamado, caso tanto a base como a herdada tenham um método com o mesmo nome
	void sacar (float valorASacar);
	
	void depositar(float valorADepositar);
	float recuperaSaldo() const;
	virtual float taxaDeSaque() const = 0; // o metodo não tem implementação nessa classe, preciso que outras classes que herdem de conta 
											// apresentem esse método
											// como essa classe esta incompleta nao consigo mais criar um objeto do tipo Conta, apenas uma
											// das classes derivadas
											// metodo puramente virtual. Torna a classe como abstrata
};