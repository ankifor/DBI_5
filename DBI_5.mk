##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=DBI_5
ConfigurationName      :=Debug
WorkspacePath          :=/home/ankifor/Documents/CPP
ProjectPath            :=/home/ankifor/Documents/CPP/DBI_5
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Andrey Nikiforov
Date                   :=24/11/16
CodeLitePath           :=/home/ankifor/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
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
ObjectsFileList        :="DBI_5.txt"
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
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Schema.cpp$(ObjectSuffix) $(IntermediateDirectory)/code_generation.cpp$(ObjectSuffix) $(IntermediateDirectory)/helpers.cpp$(ObjectSuffix) $(IntermediateDirectory)/Parser_Schema.cpp$(ObjectSuffix) $(IntermediateDirectory)/Parser_Query.cpp$(ObjectSuffix) 



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
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix)main.cpp

$(IntermediateDirectory)/Schema.cpp$(ObjectSuffix): Schema.cpp $(IntermediateDirectory)/Schema.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/Schema.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Schema.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Schema.cpp$(DependSuffix): Schema.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Schema.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Schema.cpp$(DependSuffix) -MM Schema.cpp

$(IntermediateDirectory)/Schema.cpp$(PreprocessSuffix): Schema.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Schema.cpp$(PreprocessSuffix)Schema.cpp

$(IntermediateDirectory)/code_generation.cpp$(ObjectSuffix): code_generation.cpp $(IntermediateDirectory)/code_generation.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/code_generation.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/code_generation.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/code_generation.cpp$(DependSuffix): code_generation.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/code_generation.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/code_generation.cpp$(DependSuffix) -MM code_generation.cpp

$(IntermediateDirectory)/code_generation.cpp$(PreprocessSuffix): code_generation.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/code_generation.cpp$(PreprocessSuffix)code_generation.cpp

$(IntermediateDirectory)/helpers.cpp$(ObjectSuffix): helpers.cpp $(IntermediateDirectory)/helpers.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/helpers.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/helpers.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/helpers.cpp$(DependSuffix): helpers.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/helpers.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/helpers.cpp$(DependSuffix) -MM helpers.cpp

$(IntermediateDirectory)/helpers.cpp$(PreprocessSuffix): helpers.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/helpers.cpp$(PreprocessSuffix)helpers.cpp

$(IntermediateDirectory)/Parser_Schema.cpp$(ObjectSuffix): Parser_Schema.cpp $(IntermediateDirectory)/Parser_Schema.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/Parser_Schema.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Parser_Schema.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Parser_Schema.cpp$(DependSuffix): Parser_Schema.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Parser_Schema.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Parser_Schema.cpp$(DependSuffix) -MM Parser_Schema.cpp

$(IntermediateDirectory)/Parser_Schema.cpp$(PreprocessSuffix): Parser_Schema.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Parser_Schema.cpp$(PreprocessSuffix)Parser_Schema.cpp

$(IntermediateDirectory)/Parser_Query.cpp$(ObjectSuffix): Parser_Query.cpp $(IntermediateDirectory)/Parser_Query.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/Parser_Query.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Parser_Query.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Parser_Query.cpp$(DependSuffix): Parser_Query.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Parser_Query.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Parser_Query.cpp$(DependSuffix) -MM Parser_Query.cpp

$(IntermediateDirectory)/Parser_Query.cpp$(PreprocessSuffix): Parser_Query.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Parser_Query.cpp$(PreprocessSuffix)Parser_Query.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


