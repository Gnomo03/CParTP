CPP = g++ -Wall 
SRCS = main.cpp fluid_solver.cpp EventManager.cpp

# Alvo principal: Compilar com suporte ao gprof
all: fluid_sim

# Compilar o programa com suporte ao profiling (flag -pg)
fluid_sim: $(SRCS)
	$(CPP) -pg $(SRCS) -o fluid_sim

# Limpar arquivos gerados
clean:
	@echo Cleaning up...
	@rm -f fluid_sim gmon.out
	@echo Done.