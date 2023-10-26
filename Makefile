msh: msh.c
	gcc msh.c -o msh -g -Wall -Werror

clean:
	rm ./msh

test_cd: msh
	 ./run.sh Tests/cd

test_cp: msh
	 ./run.sh Tests/cp

test_ls: msh
	 ./run.sh Tests/ls

test_paths: msh
	 ./run.sh Tests/paths

test_quit: msh
	 ./run.sh Tests/quit
	 
test_exit: msh
	 ./run.sh Tests/exit

test_blank: msh
	 ./run.sh Tests/blank

test: msh test_paths test_quit test_exit test_ls test_cp test_cd test_blank


