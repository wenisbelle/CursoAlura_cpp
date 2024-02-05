#include "catch.hpp"
#include "src/Leilao.hpp"
#include "src/Usuario.hpp"

TEST_CASE("Leilão não pode receber lances consecutivos do mesmo usuário")
{
	// Arrange
	Leilao leilao("Fiat 147 0 Km");
	Usuario wenis("Wenis Belle");
	
	Lance primeiroLance(wenis, 1000);
	Lance segundoLance(wenis, 1500);
	
	// Act
	leilao.recebeLance(primeiroLance);
	leilao.recebeLance(segundoLance);

	// Assert 
	REQUIRE(1 == leilao.recuperaLances().size());
	REQUIRE(1000 == leilao.recuperaLances()[0].recuperaValor());
}