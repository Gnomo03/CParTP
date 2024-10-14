CPP = g++ -Wall -O3 -Ofast -march=native -flto -funroll-loops -ffast-math -fprefetch-loop-arrays
SRCS = main.cpp fluid_solver.cpp EventManager.cpp
OBJS = $(SRCS:.cpp=.o)
TARGET = fluid_sim

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CPP) $(OBJS) -o $(TARGET)

%.o: %.cpp
	$(CPP) -c $< -o $@

clean:
	@echo Cleaning up...
	@rm -f $(TARGET) $(OBJS)
	@echo Done.

.PHONY: all clean

