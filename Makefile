all:
	hg clone https://code.google.com/p/dactyl/
	patch dactyl/common/make_jar.sh < patch.diff
	make -C dactyl/pentadactyl xpi
	mv dactyl/downloads/pentadactyl*.xpi .

clean:
	rm -rf dactyl
	rm -f pentadactyl*.xpi
