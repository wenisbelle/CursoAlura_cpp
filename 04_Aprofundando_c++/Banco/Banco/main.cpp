#include <iostream>
#include <string>
#include "Conta.hpp"
#include "Gerente.hpp"
#include "Caixa.hpp"
#include "ContaCorrente.hpp"
#include "ContaPoupanca.hpp"
#include "Titular.hpp"
#include "Cpf.hpp"
#include "Funcionario.hpp"
#include "DiaDaSemana.hpp"


using namespace std;

void ExibeSaldo(const Conta& conta)
{
    cout << "O saldo da conta é: " << conta.recuperaSaldo() << endl;
}

void RealizaSaque(Conta& conta)
{
	std::variant<Conta::ResultadoSaque, float> resultado = conta.sacar(200);
	//auto saldo = std::get_if<float>(&resultado); // se isso for um float ele me devolve um ponteiro pra isso 
	if (auto saldo = std::get_if<float>(&resultado)){
    cout << "Novo saldo da conta: " << *saldo << endl;
	}
}

void FazLogin(Autenticavel& alguem, string senha)
{
    if (alguem.autentica(senha)) {
        cout << "Login realizado com sucesso" << endl;
    } else {
        cout << "Senha inválida" << endl;
    }
}

ostream& operator<<(ostream& cout, const Conta& conta)
{	
	Pessoa titular = conta.titular;
	cout << "O saldo da conta é (operador): " << conta.recuperaSaldo() << endl;
	cout << "O titular da conta é (operador): " << titular.recuperaNome() << endl;
	return cout;
}

template<typename MeuTipo>
MeuTipo Menor(MeuTipo a, MeuTipo b)
{
	return a < b ? a:b; 
}

int main()
{
    Titular titular(Cpf("123.456.789-10"), "Wenis", "umasenha");

    ContaPoupanca umaConta("123456", titular);
    umaConta +=300;
	RealizaSaque(umaConta);
    ExibeSaldo(umaConta);

    Titular outro(Cpf("098.765.432-10"), "Belle", "outrasenha");
    ContaCorrente umaOutraConta("654321", titular);
    umaOutraConta.depositar(300);
	(Conta&) umaOutraConta +=300;
    
    ContaCorrente outraContaCorrente("546312", titular);
    
    umaOutraConta.transferePara(umaConta, 250);
		
	outraContaCorrente +=umaOutraConta;

	
	cout << "Menor saldo na conta: " << Menor<Conta&>(outraContaCorrente, umaOutraConta) << endl;
	
	float c = 1.5, d = 2.7;
	cout << Menor(c,d) << endl;


    cout << "Número de contas: " << Conta::recuperaNumeroDeContas() << endl;
	
	Gerente umGerente(
		Cpf("000000000"),
		"Nome do Gerente",
		1500,
		DiaDaSemana::Terca,
		"123456");

    return 0;
}