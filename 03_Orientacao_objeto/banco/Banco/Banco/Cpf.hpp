#pragma once
#include  <string>

class Cpf
{
private:
	std::string cpf;
	
public:
	Cpf(std::string cpf);
	std::string recuperacpfTitular() const;
	
private:
	void VerificaCPF();
	
};

