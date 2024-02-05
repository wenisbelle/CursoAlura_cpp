#ifndef Lance_hpp
#define Lance_hpp
#include <string>
#include <iostream>
#include "Usuario.hpp"

class Lance
{
private:
    Usuario usuario;
    float valor;
public:
    Lance(Usuario usuario, float valor);
    float recuperaValor() const;
    std::string recuperaNomeUsuario() const;
	Lance(const Lance&);
};

#endif /* Lance_hpp */
