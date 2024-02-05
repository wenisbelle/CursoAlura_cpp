#include "catch.hpp"
#include "src/Avaliador.hpp"
#include <iostream>

Leilao emOrdemCrescente()
{
	Lance primeiroLance(Usuario("Wenis Belle"), 1000);
	Lance segundoLance(Usuario("Marina Honda"), 3000);
	
	Leilao leilao("Fiat zero KM");
	
	leilao.recebeLance(primeiroLance);
	leilao.recebeLance(segundoLance);
	
	return leilao;
}


Leilao emOrdemDecrescente()
{
	Lance primeiroLance(Usuario("Wenis Belle"), 1000);
	Lance segundoLance(Usuario("Marina Honda"), 3000);
	
	Leilao leilao("Fiat zero KM");
	
	leilao.recebeLance(segundoLance);
	leilao.recebeLance(primeiroLance);
	
	return leilao;
}



TEST_CASE("Avaliador")
{
		// Arrange - Given
		Avaliador leiloeiro;
		
		SECTION("Leilões Ordenados")
		{
			Leilao leilao = GENERATE(emOrdemDecrescente(), emOrdemCrescente());
				
				
			SECTION("Deve recuperar maior lance de leilão")
			{	
				// Act - When
				leiloeiro.avalia(leilao);

				// Assert - Then
				REQUIRE(3000 == leiloeiro.recuperaMaiorValor());
			}


			SECTION("Deve recuperar o menor lance de leilão")
			{
				// Act - When
				leiloeiro.avalia(leilao);
				// Assert - Then
				REQUIRE(1000 == leiloeiro.recuperaMenorValor());
			}
				
		}
		
		
	SECTION("Deve recuperar os três maiores lances")
	{
		// Arrange - Given
		Lance primeiroLance(Usuario("Wenis Belle"), 1000);
		Lance segundoLance(Usuario("Marina Honda"), 2000);
		Lance terceiroLance(Usuario("VIlson Belle"), 1500);
		Lance quartoLance(Usuario("Tomiko Honda"), 4000);
		
		Leilao leilao("Fiat zero KM");
		
		leilao.recebeLance(primeiroLance);
		leilao.recebeLance(segundoLance);
		leilao.recebeLance(terceiroLance);
		leilao.recebeLance(quartoLance);
		

		// Act - When
		leiloeiro.avalia(leilao);
		
		// Assert - Then
		std::vector<Lance> maiores3Lances = leiloeiro.recupera3MaioresLances();
		
		REQUIRE(3 == maiores3Lances.size());
		REQUIRE(4000 == maiores3Lances[0].recuperaValor());
		REQUIRE(2000 == maiores3Lances[1].recuperaValor());
		REQUIRE(1500 == maiores3Lances[2].recuperaValor());
	}
				
}

