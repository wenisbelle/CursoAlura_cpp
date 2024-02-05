#ifndef Leilao_hpp
#define Leilao_hpp
#include <vector>
#include <string>
#include "Lance.hpp"

class Leilao
{
private:
    std::vector<Lance> lances;
    std::string descricao;
public:
    Leilao(std::string descricao);
    const std::vector<Lance>& recuperaLances() const;
    void recebeLance(const Lance& lance);
	void recebeLance(Lance&&); // r value reference, o valor é temporário
};

#endif /* Leilao_hpp */
