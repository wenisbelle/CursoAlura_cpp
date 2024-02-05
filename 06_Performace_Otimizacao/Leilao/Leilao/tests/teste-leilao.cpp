#include "catch.hpp"
#include "src/Leilao.hpp"
#include "src/Usuario.hpp"

TEST_CASE("Leilão não deve receber lances consecutivos do mesmo usuário") {
    // Arrange
    Leilao leilao("Fiat 147 0Km");
    Usuario vinicius("Vinicius Dias");
    
    Lance primeiroLance(vinicius, 1000);
    Lance segundoLance(vinicius, 1500);
    
    // Act
    leilao.recebeLance(Lance(vinicius, 100));
    leilao.recebeLance(segundoLance);
    
    // Assert
    REQUIRE(1 == leilao.recuperaLances().size());
    REQUIRE(1000 == leilao.recuperaLances()[0].recuperaValor());
}
