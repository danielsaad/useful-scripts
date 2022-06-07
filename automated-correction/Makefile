CC=g++
CPPFLAGS=-Wall -std=c++17
all: checker generator ac validator 

%.: %.cpp
	$(CC) $(CPPFLAGS) $^ -o $@

generate_io: run.sh
	@mkdir -p input
	@mkdir -p output
	@bash run.sh


