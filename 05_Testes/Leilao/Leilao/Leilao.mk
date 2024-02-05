##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Leilao
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/wenis/Cursos_Alura/C++/05_Testes/Leilao
ProjectPath            :=/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=wenis
Date                   :=05/08/23
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
OutputDirectory        :=$(IntermediateDirectory)
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Leilao.txt"
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
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
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
Objects0=$(IntermediateDirectory)/tests_teste-avaliador.cpp$(ObjectSuffix) $(IntermediateDirectory)/tests_test-usuario.cpp$(ObjectSuffix) $(IntermediateDirectory)/tests_main-test.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix) $(IntermediateDirectory)/tests_test-leilao.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/tests_teste-avaliador.cpp$(ObjectSuffix): tests/teste-avaliador.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/tests/teste-avaliador.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_teste-avaliador.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_teste-avaliador.cpp$(PreprocessSuffix): tests/teste-avaliador.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_teste-avaliador.cpp$(PreprocessSuffix) tests/teste-avaliador.cpp

$(IntermediateDirectory)/tests_test-usuario.cpp$(ObjectSuffix): tests/test-usuario.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/tests/test-usuario.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_test-usuario.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_test-usuario.cpp$(PreprocessSuffix): tests/test-usuario.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_test-usuario.cpp$(PreprocessSuffix) tests/test-usuario.cpp

$(IntermediateDirectory)/tests_main-test.cpp$(ObjectSuffix): tests/main-test.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/tests/main-test.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_main-test.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_main-test.cpp$(PreprocessSuffix): tests/main-test.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_main-test.cpp$(PreprocessSuffix) tests/main-test.cpp

$(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix): src/Lance.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/src/Lance.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Lance.cpp$(PreprocessSuffix): src/Lance.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Lance.cpp$(PreprocessSuffix) src/Lance.cpp

$(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix): src/Usuario.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/src/Usuario.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Usuario.cpp$(PreprocessSuffix): src/Usuario.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Usuario.cpp$(PreprocessSuffix) src/Usuario.cpp

$(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix): src/Leilao.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/src/Leilao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Leilao.cpp$(PreprocessSuffix): src/Leilao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Leilao.cpp$(PreprocessSuffix) src/Leilao.cpp

$(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix): src/Avaliador.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/src/Avaliador.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Avaliador.cpp$(PreprocessSuffix): src/Avaliador.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Avaliador.cpp$(PreprocessSuffix) src/Avaliador.cpp

$(IntermediateDirectory)/tests_test-leilao.cpp$(ObjectSuffix): tests/test-leilao.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Testes/Leilao/Leilao/tests/test-leilao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/tests_test-leilao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/tests_test-leilao.cpp$(PreprocessSuffix): tests/test-leilao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/tests_test-leilao.cpp$(PreprocessSuffix) tests/test-leilao.cpp

##
## Clean
##
clean:
	$(RM) -r ./Debug/


