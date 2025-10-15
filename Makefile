CXX = g++
CXXFLAGS = -std=c++17 -Wall -O2

# Files
LIB = libcalculator.a
OBJS = calculator.o main.o

# Default target
all: $(LIB) calc_app

# Create static library
$(LIB): calculator.o
	ar rcs $@ $^

# Build executable
calc_app: main.o $(LIB)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Compile .cpp -> .o
%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o $(LIB) calc_app
