#include <iostream>
#include <string>

void* operator new(size_t bytes)
{	
	std::cout << "Alocando: " << bytes << " bytes" << std::endl;
	return malloc(bytes);
}

void ExibeNome(std::string_view nome)
{
	std::cout  << nome << std::endl;
}


int main(){
	std::cout << "-----------------" << std::endl;
	//const char* meuNome = "Vilson Wenis dos Santos Belle";
	
	std::string casal = "Vilson Wenis Belle & Marina Tomiko Honda";
	std::string_view meuNome(casal.c_str(), casal.find('&') - 1);
	std::string_view nomeEsposa(casal.c_str() + casal.find('&') + 2);
	
	std::cout <<  meuNome << std::endl;
	std::cout << nomeEsposa << std::endl;
	
	ExibeNome(meuNome);
	ExibeNome("Um nome qualquer sem estar na HEAP");
	return 0;	
}