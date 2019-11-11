CPP=c++

.PHONY: one_time run link clean clean_all
one_time: jei.o function.o link run clean
jei.o: jei.cpp
	@${CPP} ${CFLAGS} ${CXXFLAGS} -c $^ -o $@
function.o:
	@./preprocess.sh
	@${CPP} ${CFLAGS} ${CXXFLAGS} -c function.cpp -o $@ -Wall -Werror
link: jei.o function.o
	@${CPP} ${CFLAGS} ${CXXFLAGS} $^ -o jei -lgmpxx -lgmp
run: jei
	@./jei
clean:
	@rm -f jei function.cpp function.o
clean_all: clean
	@rm -f jei.o
