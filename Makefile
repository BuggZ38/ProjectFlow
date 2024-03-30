
#================= COMPILER OPTION =========================
COMPILER=g++

CONFIG=config/config.json

DEBUG_FLAGS=-g

COMPILER_FLAGS=$(shell jq -r '.compiler.flags[]' '$(CONFIG)')
VERSION=$(shell jq -r '.general.version' '$(CONFIG)')


#================== PROJECT DIR ============================
SRC_DIR=$(shell jq -r '.compiler.src_dir' '$(CONFIG)')

OBJ_DIR=$(shell jq -r '.compiler.build_dir' '$(CONFIG)')

OUTPUT_DIR=$(shell jq -r '.compiler.output_dir' '$(CONFIG)')

HEADER_DIR=$(shell jq -r '.compiler.include_dir' '$(CONFIG)')

CLASS_DIR=$(shell jq -r '.compiler.class_dir' '$(CONFIG)')

LIB_DIR=$(shell jq -r '.compiler.lib_dir' '$(CONFIG)')

#================= FILE =================================
EXEC=$(shell jq -r '.general.name' '$(CONFIG)')

HEADER_FILES= include.h

SRC_FILES= 	main.cpp \
			app.cpp

OBJ_FILES=$(patsubst %.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))

OBJ_CLASS=$(patsubst %.cpp,$(OBJ_DIR)/%.o,$(CLASS_FILE))


#================= COMPILATION ================================
.PHONY: clean mrproper re

all: $(EXEC)


$(EXEC):	$(OBJ_FILES)
	$(COMPILER) $^ -o $(OUTPUT_DIR)/$@ $(COMPILER_FLAGS)


$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.cpp $(HEADER_DIR)/$(HEADER_FILES)
	$(COMPILER) -DVERSION=\"$(VERSION)\" -DAPPNAME=\"$(EXEC)\" -c $< -o $@ $(COMPILER_FLAGS)




clean:
	rm -rf $(OBJ_FILES)


mrproper:	clean
	rm -rf $(OUTPUT_DIR)/$(EXEC)

re: mrproper
	make