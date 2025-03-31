all: checkmakefiles
	cd src && $(MAKE)

clean: checkmakefiles
	cd src && $(MAKE) clean

cleanall: checkmakefiles
	cd src && $(MAKE) MODE=release clean
	cd src && $(MAKE) MODE=debug clean
	rm -f src/Makefile

makefiles:
	cd src && opp_makemake -f --deep -KINET_PROJ=../../inet -KSIMU5G_PROJ=../../simu5G -KVEINS_INET_PROJ=../../veins_inet -KVEINS_PROJ=../../veins -DINET_IMPORT -DVEINS_INET_IMPORT -L/usr/lib/jvm/java-11-openjdk-amd64/lib/server -L/opt/conda/pkgs/openjdk-11.0.1-h516909a_1016/lib/server -L$$\(INET_PROJ\)/src -L$$\(SIMU5G_PROJ\)/src -L$$\(VEINS_INET_PROJ\)/src -lINET$$\(D\) -lsimu5g$$\(D\) -lveins_inet$$\(D\)

checkmakefiles:
	@if [ ! -f src/Makefile ]; then \
	echo; \
	echo '======================================================================='; \
	echo 'src/Makefile does not exist. Please use "make makefiles" to generate it!'; \
	echo '======================================================================='; \
	echo; \
	exit 1; \
	fi
