_project=nmea.gpr
all:compile test

generate:
	python generate.py src/messages/*.ads

generete_Tests:
	gnattest  -P ${_project} --tests-root=${CURDIR}/tests --harness-dir=${CURDIR}/tests/harness

compile:
	gprbuild -p -j0 -P nmea-tests.gpr
clean:
test:
	./bin/nmea-main
xml::
	gnat2xml -P ${_project} --output-dir=xml -j0 --incremental
