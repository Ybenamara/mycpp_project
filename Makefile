CXX = g++
CXXFLAGS = -Iinclude -Wall -Wextra
SRC = src/main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = my_program
TEST_TARGET = test_program
TEST_SRC = tests/test_main.cpp

all: $(TARGET) $(TEST_TARGET)

$(TARGET): $(OBJ)
    $(CXX) $(CXXFLAGS) -o $@ $^

$(TEST_TARGET): $(TEST_SRC)
    $(CXX) $(CXXFLAGS) -o $@ $^

clean:
    rm -f $(TARGET) $(TEST_TARGET) $(OBJ)

.PHONY: clean

