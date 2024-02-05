#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <variant>
#include <utility>


#include "cat.hpp"
#include "customer.hpp"
#include "treat.hpp"
#include "special_cat.hpp"


using namespace std;

enum ResultadoInput
{
	InputNotValid
};

variant<ResultadoInput, int> input;

string newCatName;
string newCatBreed;
int newCatAge;
string newCatFavoriteTreat;
std::vector<shared_ptr<Cat>> cats;
std::vector<shared_ptr<Treat>> treats;
std::vector<shared_ptr<Customer>> customers;

/*
variant<ResultadoInput, int> Options()
{
	int choice;
	cout << "------------ User Menu -------------" << endl;
	cout << "Choose between one of the options: " << endl;
	cout << "1 - Add a new cat" << endl;
	cout << "2 - Display all cats" << endl;
	cout << "3 - Display all avaibles cats" << endl;
	cout << "4 - Consume Treats" << endl;
	cout << "5 - Log a customer visit" << endl;
	cout << "6 - Display all visits" << endl;
	cout << "7 - Exit" << endl;
	cin  >> choice;
	
	if(choice >= 1 && choice <= 7)
	{
		return choice;
	}else
	{
		return InputNotValid;
	}
		
}*/

void addTreats(std::string treatName, int quantity)
{
	auto newTreat = make_shared<Treat>(Treat(treatName, quantity));
	treats.push_back(newTreat);
}


int Options()
{
	int choice;
	cout << "------------ User Menu -------------" << endl;
	cout << "Choose between one of the options: " << endl;
	cout << "1 - Add a new cat" << endl;
	cout << "2 - Display all cats" << endl;
	cout << "3 - Display all avaibles cats" << endl;
	cout << "4 - Add Treats" << endl;
	cout << "5 - Consume Treats" << endl;
	cout << "6 - Log a customer visit" << endl;
	cout << "7 - Display all visits" << endl;
	cout << "8 - Exit" << endl;
	cin  >> choice;
	
	if(choice >= 1 && choice <= 8)
	{
		return choice;
	}else
	{
		throw std::invalid_argument("Need to choose a value between 1 and 8.");
	}

		
}

void AddCat()
{
	cout << "Please, what is the name of the cat? ";
	cin.ignore();
	getline(cin, newCatName);
	cout << "What is its breed? ";
	cin.ignore();
	getline(cin, newCatBreed);
	cout << "What is its age? ";
	cin >> newCatAge;
	cout << "What is its favorite treat? ";
	cin.ignore();
	getline(cin, newCatFavoriteTreat);
					
	auto newCat = make_shared<Cat>(Cat(newCatName, newCatBreed, newCatAge, newCatFavoriteTreat));
	cats.push_back(newCat);
	cats.back()->displayCatDetails();
}

void displayCats()
{
	cout << "------------------" << endl;
	cout << "These are the cats" << endl;
	
	for (std::size_t i = 0; i < cats.size(); ++i)
	{
		cout << "	" << cats[i]->getCatName() << endl;
	}
	
	cout << "------------------" << endl;
}

void displayAvailableCats()
{
	cout << "------------------" << endl;
	cout << "These are the avaible cats:" << endl;
	
	for (std::size_t i = 0; i < cats.size(); ++i)
	{
		
		if(cats[i]->getIfAvailable() == true)
		{		
			cout << i+1 << "	" << cats[i]->getCatName() << endl;
		}
	}

	cout << "------------------" << endl;
}

void addTreats()
{
	cout << "Witch treat do you want to add? Enter with the name of the treat "<< endl;
	
	for (size_t i = 0; i < treats.size(); ++i)
	{
		treats[i]->displayTreatDetails();
		cout << "----------------------" << endl;
	}
	string treatChoosen;
	cin >> treatChoosen;
	
	int quantityChoosen;
	cout << "What is the quantity? " << endl;
	cin >> quantityChoosen;
	
	for (size_t i = 0; i < treats.size(); ++i)
	{
		if(treatChoosen == treats[i]->getTreatName())
		{
			treats[i]->addTreat(quantityChoosen);
			treats[i]->displayTreatDetails();
			break;
		}
	}
	
}

void consumeTreats()
{
	cout << "Witch treat do you want to consume? Enter with the name of the treat "<< endl;
	
	for (size_t i = 0; i < treats.size(); ++i)
	{
		treats[i]->displayTreatDetails();
		cout << "----------------------" << endl;
	}
	string treatChoosen;
	cin >> treatChoosen;
	
	int quantityChoosen;
	cout << "What is the quantity? " << endl;
	cin >> quantityChoosen;
	
	for (size_t i = 0; i < treats.size(); ++i)
	{
		if(treatChoosen == treats[i]->getTreatName())
		{
			treats[i]->consumeTreat(quantityChoosen);
			treats[i]->displayTreatDetails();
			break;
		}
	}
	
}

void logCustomer()
{
	string newCustomerName;
	cout << "Please, what is the customer's name?" << endl;
	cin >> newCustomerName; 
	
	cout << "Please, choose one of the available cats" << endl;
	displayAvailableCats();
	
	int catChoosen;
	cin >> catChoosen;
	
	if(catChoosen > static_cast<int>(cats.size()))
	{
		throw std::runtime_error("Choose on of the possible cats");
	}
	
	auto newCustomerCat = cats[catChoosen-1]; 

	
	string date;
	cout << "Please, enter the today's date? DD-MM-YYYY)" << endl;
	cin >> date;
	
	auto newCustomer = make_shared<Customer>(Customer(newCustomerName, newCustomerCat, date));

	customers.push_back(newCustomer);
	customers.back()->displayVisitDetails();
}

void displayVisits()
{
	for(std::size_t i = 0; i < customers.size(); ++i)
	{
		cout << "---------------------" << endl;
		customers[i]->displayVisitDetails();
	}
	cout << "---------------------" << endl;
}


int main(){
	
	// let's initialize the treats
	
	addTreats("atum", 10);
	addTreats("salmao", 10);
	addTreats("doce", 10);
	
	while(true)
	{
		int choice =  Options();
				

		// finish if the option is 7
		if(choice == 8) break;
		
		switch(choice){
			
			case 1:				
				AddCat();
				break;
		
			case 2:
				displayCats();
				break;
			
			case 3:
				displayAvailableCats();
				break;
			
			case 4:
				addTreats();
				break;
			
			case 5:
				consumeTreats();
				break;
			
			case 6:
				logCustomer();
			
			case 7:
				displayVisits();				
			
			default:
				cout << "Invalid option" << endl;
		}
				
	};
	
	
/*	cout << "Teste" << endl;
	
	string nome = "gatinho";
	string raca = "vira lata";
	int ano = 1;
	string treat = "atum";
	Cat gato1(nome, raca, ano, treat);
	gato1.displayCatDetails();
	
	Treat treat1("atum", 4);
	
	treat1.displayTreatDetails();
	treat1.addTreat(2);
	treat1.displayTreatDetails();
	treat1.consumeTreat(8);
	
	Customer pessoa1("wenis", gato1, "01-01-2021");
	pessoa1.displayVisitDetails(); */
	
	return 0;
	
};