##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=forca
ConfigurationName      :=Debug
WorkspacePath          :=/home/wenis/Cursos_Alura/C++/Workspace/forca
ProjectPath            :=/home/wenis/Cursos_Alura/C++/Workspace/forca/forca
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Wenis
Date                   :=29/06/23
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
ObjectsFileList        :="forca.txt"
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
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/forca.cpp$(ObjectSuffix) $(IntermediateDirectory)/imprimi_erros.cpp$(ObjectSuffix) $(IntermediateDirectory)/adiciona_palavra.cpp$(ObjectSuffix) $(IntermediateDirectory)/salva_arquivo.cpp$(ObjectSuffix) $(IntermediateDirectory)/nao_acertou.cpp$(ObjectSuffix) $(IntermediateDirectory)/sorteia_palavra.cpp$(ObjectSuffix) $(IntermediateDirectory)/letra_existe.cpp$(ObjectSuffix) $(IntermediateDirectory)/chuta.cpp$(ObjectSuffix) $(IntermediateDirectory)/le_arquivo.cpp$(ObjectSuffix) $(IntermediateDirectory)/imprimi_palavra.cpp$(ObjectSuffix) \
	



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
$(IntermediateDirectory)/forca.cpp$(ObjectSuffix): forca.cpp $(IntermediateDirectory)/forca.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/forca.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/forca.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/forca.cpp$(DependSuffix): forca.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/forca.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/forca.cpp$(DependSuffix) -MM forca.cpp

$(IntermediateDirectory)/forca.cpp$(PreprocessSuffix): forca.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/forca.cpp$(PreprocessSuffix) forca.cpp

$(IntermediateDirectory)/imprimi_erros.cpp$(ObjectSuffix): imprimi_erros.cpp $(IntermediateDirectory)/imprimi_erros.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/imprimi_erros.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/imprimi_erros.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/imprimi_erros.cpp$(DependSuffix): imprimi_erros.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/imprimi_erros.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/imprimi_erros.cpp$(DependSuffix) -MM imprimi_erros.cpp

$(IntermediateDirectory)/imprimi_erros.cpp$(PreprocessSuffix): imprimi_erros.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/imprimi_erros.cpp$(PreprocessSuffix) imprimi_erros.cpp

$(IntermediateDirectory)/adiciona_palavra.cpp$(ObjectSuffix): adiciona_palavra.cpp $(IntermediateDirectory)/adiciona_palavra.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/adiciona_palavra.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/adiciona_palavra.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/adiciona_palavra.cpp$(DependSuffix): adiciona_palavra.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/adiciona_palavra.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/adiciona_palavra.cpp$(DependSuffix) -MM adiciona_palavra.cpp

$(IntermediateDirectory)/adiciona_palavra.cpp$(PreprocessSuffix): adiciona_palavra.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/adiciona_palavra.cpp$(PreprocessSuffix) adiciona_palavra.cpp

$(IntermediateDirectory)/salva_arquivo.cpp$(ObjectSuffix): salva_arquivo.cpp $(IntermediateDirectory)/salva_arquivo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/salva_arquivo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/salva_arquivo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/salva_arquivo.cpp$(DependSuffix): salva_arquivo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/salva_arquivo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/salva_arquivo.cpp$(DependSuffix) -MM salva_arquivo.cpp

$(IntermediateDirectory)/salva_arquivo.cpp$(PreprocessSuffix): salva_arquivo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/salva_arquivo.cpp$(PreprocessSuffix) salva_arquivo.cpp

$(IntermediateDirectory)/nao_acertou.cpp$(ObjectSuffix): nao_acertou.cpp $(IntermediateDirectory)/nao_acertou.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/nao_acertou.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/nao_acertou.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/nao_acertou.cpp$(DependSuffix): nao_acertou.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/nao_acertou.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/nao_acertou.cpp$(DependSuffix) -MM nao_acertou.cpp

$(IntermediateDirectory)/nao_acertou.cpp$(PreprocessSuffix): nao_acertou.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/nao_acertou.cpp$(PreprocessSuffix) nao_acertou.cpp

$(IntermediateDirectory)/sorteia_palavra.cpp$(ObjectSuffix): sorteia_palavra.cpp $(IntermediateDirectory)/sorteia_palavra.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/sorteia_palavra.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sorteia_palavra.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sorteia_palavra.cpp$(DependSuffix): sorteia_palavra.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sorteia_palavra.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/sorteia_palavra.cpp$(DependSuffix) -MM sorteia_palavra.cpp

$(IntermediateDirectory)/sorteia_palavra.cpp$(PreprocessSuffix): sorteia_palavra.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sorteia_palavra.cpp$(PreprocessSuffix) sorteia_palavra.cpp

$(IntermediateDirectory)/letra_existe.cpp$(ObjectSuffix): letra_existe.cpp $(IntermediateDirectory)/letra_existe.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/letra_existe.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/letra_existe.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/letra_existe.cpp$(DependSuffix): letra_existe.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/letra_existe.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/letra_existe.cpp$(DependSuffix) -MM letra_existe.cpp

$(IntermediateDirectory)/letra_existe.cpp$(PreprocessSuffix): letra_existe.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/letra_existe.cpp$(PreprocessSuffix) letra_existe.cpp

$(IntermediateDirectory)/chuta.cpp$(ObjectSuffix): chuta.cpp $(IntermediateDirectory)/chuta.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/chuta.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/chuta.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/chuta.cpp$(DependSuffix): chuta.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/chuta.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/chuta.cpp$(DependSuffix) -MM chuta.cpp

$(IntermediateDirectory)/chuta.cpp$(PreprocessSuffix): chuta.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/chuta.cpp$(PreprocessSuffix) chuta.cpp

$(IntermediateDirectory)/le_arquivo.cpp$(ObjectSuffix): le_arquivo.cpp $(IntermediateDirectory)/le_arquivo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/le_arquivo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/le_arquivo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/le_arquivo.cpp$(DependSuffix): le_arquivo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/le_arquivo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/le_arquivo.cpp$(DependSuffix) -MM le_arquivo.cpp

$(IntermediateDirectory)/le_arquivo.cpp$(PreprocessSuffix): le_arquivo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/le_arquivo.cpp$(PreprocessSuffix) le_arquivo.cpp

$(IntermediateDirectory)/imprimi_palavra.cpp$(ObjectSuffix): imprimi_palavra.cpp $(IntermediateDirectory)/imprimi_palavra.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/Workspace/forca/forca/imprimi_palavra.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/imprimi_palavra.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/imprimi_palavra.cpp$(DependSuffix): imprimi_palavra.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/imprimi_palavra.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/imprimi_palavra.cpp$(DependSuffix) -MM imprimi_palavra.cpp

$(IntermediateDirectory)/imprimi_palavra.cpp$(PreprocessSuffix): imprimi_palavra.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/imprimi_palavra.cpp$(PreprocessSuffix) imprimi_palavra.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


