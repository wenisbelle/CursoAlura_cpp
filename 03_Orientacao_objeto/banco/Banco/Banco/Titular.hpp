#pragma once
#include <string>
#include "Autenticavel.hpp"
#include "Cpf.hpp"
#include "Pessoa.hpp"


class Titular:public Pessoa, public Autenticavel
{
public:
	Titular(Cpf cpf, std::string nome, std::string senha);
};

