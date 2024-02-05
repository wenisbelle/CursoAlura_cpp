##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=coffe_shop
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop
ProjectPath            :=/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/coffe_shop
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=wenis
Date                   :=19/10/23
CodeLitePath           :=/home/wenis/.codelite
MakeDirCommand         :=mkdir -p
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
OutputDirectory        :=/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/build-$(WorkspaceConfiguration)/bin
OutputFile             :=../build-$(WorkspaceConfiguration)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)include 
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
CXXFLAGS :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/special_cat.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/customer.cpp$(ObjectSuffix) $(IntermediateDirectory)/cat.cpp$(ObjectSuffix) $(IntermediateDirectory)/treat.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/special_cat.cpp$(ObjectSuffix): special_cat.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop/special_cat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/special_cat.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/special_cat.cpp$(PreprocessSuffix): special_cat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/special_cat.cpp$(PreprocessSuffix) special_cat.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/customer.cpp$(ObjectSuffix): customer.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop/customer.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/customer.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/customer.cpp$(PreprocessSuffix): customer.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/customer.cpp$(PreprocessSuffix) customer.cpp

$(IntermediateDirectory)/cat.cpp$(ObjectSuffix): cat.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop/cat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/cat.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/cat.cpp$(PreprocessSuffix): cat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/cat.cpp$(PreprocessSuffix) cat.cpp

$(IntermediateDirectory)/treat.cpp$(ObjectSuffix): treat.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/wenis/Cursos_Alura/C++/cats_coffe/coffe_shop/coffe_shop/treat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/treat.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/treat.cpp$(PreprocessSuffix): treat.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/treat.cpp$(PreprocessSuffix) treat.cpp

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


