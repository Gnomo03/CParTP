CPP = g++ -Wall -fopenmp -Ofast -march=native -flto -funroll-loops -fprefetch-loop-arrays -ffast-math
SRCS1 = main.cpp fluid_solver.cpp EventManager.cpp
all: phase2
phase2:
	$(CPP) $(SRCS1) -o fluid_sim
clean:
	@echo Cleaning up...
	@rm fluid_sim
	@echo Done.
runseq:
	./fluid_sim_seq
runpar:
	./fluid_sim
