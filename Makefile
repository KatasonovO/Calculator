SRC = main.cpp
SRCLIB = calculator.cpp
OBJ = $(SRC:.cpp=.o) $(SRCLIB:.cpp=.o)
OBJSRC = $(SRC:.cpp=.o)
LIBIN = $(SRCLIB:.cpp=.o)
EXE = calculator
LIBOUT = libcalculator

all: $(OBJ) $(LIBOUT) $(EXE)

$(OBJ):
	$(CXX) -c $(SRC) $(SRCLIB)

$(LIBOUT): 
	ar rcs $(LIBOUT) $(LIBIN)

$(EXE):
	$(CXX) $(OBJSRC) -L. $(LIBOUT) -o $(EXE)

clean:
	$(RM) $(EXE) $(OBJ) $(LIBOUT)


