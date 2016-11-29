##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=DBI_5
ConfigurationName      :=Release
WorkspacePath          :=/home/ankifor/Documents/CPP
ProjectPath            :=/home/ankifor/Documents/CPP/DBI_5
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Andrey Nikiforov
Date                   :=29/11/16
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
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="DBI_5.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -rdynamic
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)rt $(LibrarySwitch)dl 
ArLibs                 :=  "rt" "dl" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -O3 -fexpensive-optimizations -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Schema.cpp$(ObjectSuffix) $(IntermediateDirectory)/code_generation.cpp$(ObjectSuffix) $(IntermediateDirectory)/helpers.cpp$(ObjectSuffix) $(IntermediateDirectory)/Parser_Schema.cpp$(ObjectSuffix) $(IntermediateDirectory)/Parser_Query.cpp$(ObjectSuffix) $(IntermediateDirectory)/schema_1.cpp$(ObjectSuffix) $(IntermediateDirectory)/Types.cpp$(ObjectSuffix) 



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
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release

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

$(IntermediateDirectory)/schema_1.cpp$(ObjectSuffix): schema_1.cpp $(IntermediateDirectory)/schema_1.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/schema_1.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/schema_1.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/schema_1.cpp$(DependSuffix): schema_1.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/schema_1.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/schema_1.cpp$(DependSuffix) -MM schema_1.cpp

$(IntermediateDirectory)/schema_1.cpp$(PreprocessSuffix): schema_1.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/schema_1.cpp$(PreprocessSuffix)schema_1.cpp

$(IntermediateDirectory)/Types.cpp$(ObjectSuffix): Types.cpp $(IntermediateDirectory)/Types.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/ankifor/Documents/CPP/DBI_5/Types.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Types.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Types.cpp$(DependSuffix): Types.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Types.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Types.cpp$(DependSuffix) -MM Types.cpp

$(IntermediateDirectory)/Types.cpp$(PreprocessSuffix): Types.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Types.cpp$(PreprocessSuffix)Types.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Release/


