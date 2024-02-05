##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Leilao
ConfigurationName      :=Debug
WorkspacePath          :=/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao
ProjectPath            :=/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Wenis
Date                   :=31/07/23
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
Objects0=$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix): src/main.cpp $(IntermediateDirectory)/src_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao/src/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.cpp$(DependSuffix): src/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.cpp$(DependSuffix) -MM src/main.cpp

$(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix): src/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.cpp$(PreprocessSuffix) src/main.cpp

$(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix): src/Avaliador.cpp $(IntermediateDirectory)/src_Avaliador.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao/src/Avaliador.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Avaliador.cpp$(DependSuffix): src/Avaliador.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Avaliador.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Avaliador.cpp$(DependSuffix) -MM src/Avaliador.cpp

$(IntermediateDirectory)/src_Avaliador.cpp$(PreprocessSuffix): src/Avaliador.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Avaliador.cpp$(PreprocessSuffix) src/Avaliador.cpp

$(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix): src/Lance.cpp $(IntermediateDirectory)/src_Lance.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao/src/Lance.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Lance.cpp$(DependSuffix): src/Lance.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Lance.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Lance.cpp$(DependSuffix) -MM src/Lance.cpp

$(IntermediateDirectory)/src_Lance.cpp$(PreprocessSuffix): src/Lance.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Lance.cpp$(PreprocessSuffix) src/Lance.cpp

$(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix): src/Leilao.cpp $(IntermediateDirectory)/src_Leilao.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao/src/Leilao.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Leilao.cpp$(DependSuffix): src/Leilao.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Leilao.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Leilao.cpp$(DependSuffix) -MM src/Leilao.cpp

$(IntermediateDirectory)/src_Leilao.cpp$(PreprocessSuffix): src/Leilao.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Leilao.cpp$(PreprocessSuffix) src/Leilao.cpp

$(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix): src/Usuario.cpp $(IntermediateDirectory)/src_Usuario.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/05_Performace_Otimizacao/Leilao/Leilao/src/Usuario.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Usuario.cpp$(DependSuffix): src/Usuario.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Usuario.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Usuario.cpp$(DependSuffix) -MM src/Usuario.cpp

$(IntermediateDirectory)/src_Usuario.cpp$(PreprocessSuffix): src/Usuario.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Usuario.cpp$(PreprocessSuffix) src/Usuario.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


