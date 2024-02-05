##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Banco
ConfigurationName      :=Debug
WorkspacePath          :=/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco
ProjectPath            :=/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Wenis
Date                   :=25/07/23
CodeLitePath           :=/home/wenis/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Banco.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -O0 -std=c++17 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Gerente.cpp$(ObjectSuffix) $(IntermediateDirectory)/Cpf.cpp$(ObjectSuffix) $(IntermediateDirectory)/Autenticavel.cpp$(ObjectSuffix) $(IntermediateDirectory)/Titular.cpp$(ObjectSuffix) $(IntermediateDirectory)/Conta.cpp$(ObjectSuffix) $(IntermediateDirectory)/Funcionario.cpp$(ObjectSuffix) $(IntermediateDirectory)/Caixa.cpp$(ObjectSuffix) $(IntermediateDirectory)/ContaCorrente.cpp$(ObjectSuffix) $(IntermediateDirectory)/ContaPoupanca.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Gerente.cpp$(ObjectSuffix): Gerente.cpp $(IntermediateDirectory)/Gerente.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Gerente.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Gerente.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Gerente.cpp$(DependSuffix): Gerente.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Gerente.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Gerente.cpp$(DependSuffix) -MM Gerente.cpp

$(IntermediateDirectory)/Gerente.cpp$(PreprocessSuffix): Gerente.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Gerente.cpp$(PreprocessSuffix) Gerente.cpp

$(IntermediateDirectory)/Cpf.cpp$(ObjectSuffix): Cpf.cpp $(IntermediateDirectory)/Cpf.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Cpf.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Cpf.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Cpf.cpp$(DependSuffix): Cpf.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Cpf.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Cpf.cpp$(DependSuffix) -MM Cpf.cpp

$(IntermediateDirectory)/Cpf.cpp$(PreprocessSuffix): Cpf.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Cpf.cpp$(PreprocessSuffix) Cpf.cpp

$(IntermediateDirectory)/Autenticavel.cpp$(ObjectSuffix): Autenticavel.cpp $(IntermediateDirectory)/Autenticavel.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Autenticavel.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Autenticavel.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Autenticavel.cpp$(DependSuffix): Autenticavel.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Autenticavel.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Autenticavel.cpp$(DependSuffix) -MM Autenticavel.cpp

$(IntermediateDirectory)/Autenticavel.cpp$(PreprocessSuffix): Autenticavel.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Autenticavel.cpp$(PreprocessSuffix) Autenticavel.cpp

$(IntermediateDirectory)/Titular.cpp$(ObjectSuffix): Titular.cpp $(IntermediateDirectory)/Titular.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Titular.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Titular.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Titular.cpp$(DependSuffix): Titular.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Titular.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Titular.cpp$(DependSuffix) -MM Titular.cpp

$(IntermediateDirectory)/Titular.cpp$(PreprocessSuffix): Titular.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Titular.cpp$(PreprocessSuffix) Titular.cpp

$(IntermediateDirectory)/Conta.cpp$(ObjectSuffix): Conta.cpp $(IntermediateDirectory)/Conta.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Conta.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Conta.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Conta.cpp$(DependSuffix): Conta.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Conta.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Conta.cpp$(DependSuffix) -MM Conta.cpp

$(IntermediateDirectory)/Conta.cpp$(PreprocessSuffix): Conta.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Conta.cpp$(PreprocessSuffix) Conta.cpp

$(IntermediateDirectory)/Funcionario.cpp$(ObjectSuffix): Funcionario.cpp $(IntermediateDirectory)/Funcionario.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Funcionario.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Funcionario.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Funcionario.cpp$(DependSuffix): Funcionario.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Funcionario.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Funcionario.cpp$(DependSuffix) -MM Funcionario.cpp

$(IntermediateDirectory)/Funcionario.cpp$(PreprocessSuffix): Funcionario.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Funcionario.cpp$(PreprocessSuffix) Funcionario.cpp

$(IntermediateDirectory)/Caixa.cpp$(ObjectSuffix): Caixa.cpp $(IntermediateDirectory)/Caixa.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/Caixa.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Caixa.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Caixa.cpp$(DependSuffix): Caixa.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Caixa.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Caixa.cpp$(DependSuffix) -MM Caixa.cpp

$(IntermediateDirectory)/Caixa.cpp$(PreprocessSuffix): Caixa.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Caixa.cpp$(PreprocessSuffix) Caixa.cpp

$(IntermediateDirectory)/ContaCorrente.cpp$(ObjectSuffix): ContaCorrente.cpp $(IntermediateDirectory)/ContaCorrente.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/ContaCorrente.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ContaCorrente.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ContaCorrente.cpp$(DependSuffix): ContaCorrente.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ContaCorrente.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ContaCorrente.cpp$(DependSuffix) -MM ContaCorrente.cpp

$(IntermediateDirectory)/ContaCorrente.cpp$(PreprocessSuffix): ContaCorrente.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ContaCorrente.cpp$(PreprocessSuffix) ContaCorrente.cpp

$(IntermediateDirectory)/ContaPoupanca.cpp$(ObjectSuffix): ContaPoupanca.cpp $(IntermediateDirectory)/ContaPoupanca.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/04_Aprofundando_c++/Banco/Banco/ContaPoupanca.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ContaPoupanca.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ContaPoupanca.cpp$(DependSuffix): ContaPoupanca.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ContaPoupanca.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ContaPoupanca.cpp$(DependSuffix) -MM ContaPoupanca.cpp

$(IntermediateDirectory)/ContaPoupanca.cpp$(PreprocessSuffix): ContaPoupanca.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ContaPoupanca.cpp$(PreprocessSuffix) ContaPoupanca.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


