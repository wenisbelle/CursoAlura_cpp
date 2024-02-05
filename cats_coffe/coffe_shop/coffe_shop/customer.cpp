#include "customer.hpp"

Customer::Customer(std::string& Name,
				   std::shared_ptr<Cat> catInteractedWith,
				   std::string dateOfVisit): Name(Name),
						catInteractedWith(catInteractedWith),
						dateOfVisit(dateOfVisit)
						{
							if (catInteractedWith->getIfAvailable() == true)
							{
								catInteractedWith->isNotAvailable();
							} else{
								throw std::runtime_error("The cat is not available");
							}
						}
											
void Customer::displayVisitDetails()
{
	std::cout << " --------- Customer Information -------------" << std::endl;
	std::cout << "Name: " << Name << std::endl;
	std::cout << "The cat he/she is interacting with: " <<  catInteractedWith->getCatName() << std::endl;
	std::cout << "Date of visit: " << dateOfVisit << std::endl;
}



