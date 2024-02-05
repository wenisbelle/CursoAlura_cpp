#include <iostream>
#include <string>
#include <memory>
#include "Usuario.hpp"
#include <cstring>

/*void* operator new(size_t bytes)
{	
	std::cout << "Alocando: " << bytes << " bytes" << std::endl;
	return malloc(bytes);
}*/

void ExibeNome(std::string_view nome)
{
	std::cout  << nome << std::endl;
}

void ExibeNomeUsuario(std::unique_ptr<Usuario>& usuario)
{
	std::cout << usuario->recuperaNome() << std::endl;
}

void ExibeNomeUsuario(std::shared_ptr<Usuario>& usuario)
{
	std::cout << usuario->recuperaNome() << std::endl;
}

int main2(){
	std::cout << "-----------------" << std::endl;
	//const char* meuNome = "Vilson Wenis dos Santos Belle";
	
	std::string casal = "Vilson Wenis Belle & Marina Tomiko Honda";
	std::string_view meuNome(casal.c_str(), casal.find('&') - 1);
	std::string_view nomeEsposa(casal.c_str() + casal.find('&') + 2);
	
	std::cout <<  meuNome << std::endl;
	std::cout << nomeEsposa << std::endl;
	
	ExibeNome(meuNome);
	ExibeNome("Um nome qualquer sem estar na HEAP");
	
	std::unique_ptr<Usuario> usuario = std::make_unique<Usuario>("Wenis Belle");

	ExibeNomeUsuario(usuario);
	
	
	
	return 0;	
}



class String
{
private: 
	char* data;
	size_t size;
public:
	String(const char* string)
	{
		std::cout << "String criada" << std::endl;
		size = strlen(string);
		data = new char[size];
		data[size] = 0;
		memcpy(data, string, size);
	}
	
	~String()
	{
		delete data;
	}
	
	String(const String& outraString)
	{
		std::cout << "String copiada" << std::endl;
		size = strlen(outraString.data);
		data = new char[size];
		memcpy(data, outraString.data, size);
	}
	
	String(String&& outraString)
	{
		std::cout << "String movida" << std::endl;
		size = outraString.size;
		data = outraString.data;
		
		outraString.size = 0;
		outraString.data = nullptr;
	}
	
};


class User
{
private:
	String nome;
public:
	User(const String& string): nome(string)
	{
		
	}
	
	User(const String&& string): //nome((String&&) string)
		nome(std::move(string))
	{
		
	}
		
};

int main(){
	User(String("Wenis"));
	return 0;
}