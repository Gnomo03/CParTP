CPP = g++ -Wall -pg -Ofast -march=native -flto -fno-fat-lto-objects -funroll-loops -ffast-math -fprefetch-loop-arrays
SRCS = main.cpp fluid_solver.cpp EventManager.cpp
TARGET = fluid_sim

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CPP) $(SRCS) -o $(TARGET)

clean:
	@echo Cleaning up...
	@rm -f $(TARGET)
	@echo Done.

.PHONY: all clean
