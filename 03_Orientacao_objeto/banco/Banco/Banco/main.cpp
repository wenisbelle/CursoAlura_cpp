#include <iostream>
#include <string>
#include "Conta.hpp"
#include "ContaCorrente.hpp"
#include "ContaPoupanca.hpp"
#include "Titular.hpp"
#include "Cpf.hpp"
#include "Funcionario.hpp"
#include "Gerente.hpp"
#include "Caixa.hpp"
#include "Pessoa.hpp"
#include "Autenticavel.hpp"

using namespace std;

void ExibeSaldo(const Conta& conta)
{
	cout << "O saldo da conta é: " << conta.recuperaSaldo() << endl; 
}

void RealizaSaque(Conta& conta)
{
	conta.sacar(200);
}

void Transfere(ContaCorrente& conta, Conta& contaRecebe, float valor)
{	
	conta.transferePara(contaRecebe, valor); // conta nesse caso tem que ser do tipo corrente
											// e nao ser genericamente definida como conta
											// uma vez que esse metodo nao é definido na Conta,
											//mas so na conta corrente
}

void FazLogin (Autenticavel& alguem, string senha)
{
	if(alguem.autentica(senha))
	{
		cout << "Login realizado com sucesso" << endl;
	}else{
		cout << "Senha inválida" << endl;
	}
}

int main()
{	
	// se eu quisesse alocar as variaveis na Heap
	// Cpf* meuPonteiro = new Cpf();
	
    //aloca isso na stack
	Cpf cpf("12345678900");
	Titular titular( cpf , "Wenis", "umasenha");
	Titular outrotitular(cpf, "Vilson","outrasenha");
	
	ContaPoupanca umaConta = ContaPoupanca("123456", titular);
	/*umaConta.depositar(200);
	
	ContaCorrente outraConta = ContaCorrente("654321", outrotitular);
	outraConta.depositar(200);
	
	ContaCorrente outroContaCorrente = ContaCorrente("484848", titular);	
	outraConta.transferePara(outroContaCorrente,100);


    cout << "Uma conta: " << umaConta.recuperaSaldo()  << endl;
	cout << "outra conta: " << outraConta.recuperaSaldo()  << endl;

	
	ExibeSaldo(umaConta);
	ExibeSaldo(outraConta);
	ExibeSaldo(outroContaCorrente);
	
	//estou chamando a funcao diretamente dentro da classe
	cout << "Numero de contas: " << Conta::recuperaNumeroDeContas() << endl;
	
	// o membro estatico tambem pode ser acessado a partir de um objeto, mas o contrario nao
	// um membro padrao, por exemplo numero, nao pode ser acessado por essa funcao que criamos recuperaNomeTitular
	cout << "Numero de contas: " << umaConta.recuperaNumeroDeContas() << endl;
	
	// Polimorfismo:
	Conta* ponteiroParaConta = new Conta;
	Conta* ponteiroParaConta = new ContaCorrente;
	Conta* ponteiroParaConta = new ContaPoupanca;
	ContaPoupanca* ponteiroParaConta = new ContaPoupanca;*/
	

}

