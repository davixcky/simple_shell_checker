function clone_repo() {
	echo "Deleting cache"
	rm -rf src hsh
	echo "Cloning repo"
	git clone https://github.com/$USER_REPO/simple_shell.git src
	echo "Compiling shell"
	cd src
	gcc -Wall -Werror -Wextra -pedantic *.c -o hsh
	cd ..
	cp src/hsh .
}


