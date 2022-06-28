# Add LIS build options here
# See 'lis/configure.ac'
LIS_ARGS:=--enable-fortran --enable-f90 --enable-mpi --enable-debug --enable-test

.PHONY: all configure make test

configure:
	@cd lis/; ./configure $(LIS_ARGS)

make:
	@cd lis/; make && make check && make install

test:
	@cd lis/; make test

all: configure make test

