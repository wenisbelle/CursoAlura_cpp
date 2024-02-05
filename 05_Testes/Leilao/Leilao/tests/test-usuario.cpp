#include "catch.hpp"
#include "src/Usuario.hpp"

TEST_CASE("Usuário deve saber informar seu primeiro nome"){
	
	Usuario wenis("WenisBelle");
	
	std::string PrimeiroNome = wenis.recuperaPrimeiroNome();
	
	REQUIRE("Wenis" == PrimeiroNome);
}