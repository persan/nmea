_project=nmea.gpr
all:
generate:
	python genspecs.py NMEA.data
	python generate.py src/messages/*.ads

generete_Tests:
	gnattest  -P ${_project} --tests-root=${CURDIR}/tests --harness-dir=${CURDIR}/tests/harness

compile:
clean:
test:
