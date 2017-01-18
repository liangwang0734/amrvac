# This is a template Makefile to simplify writing tests

# Disable built-in rules
.SUFFIXES:

# Tool to compare test output numerically
LOG_CMP := $(AMRVAC_DIR)/tools/python/compare_logs.py

# Number of MPI processes to use
NUM_PROCS ?= 4

.PHONY: all force

all: $(TESTS)

%.log: amrvac force
	@$(RM) $@		# Remove log to prevent pass when aborted
	mpirun -np $(NUM_PROCS) ./amrvac -i $(PARS) > run.log
	@if $(LOG_CMP) $@ correct_output/$@ ; \
	then echo "PASSED $@" ; \
	else echo "** FAILED ** $@" ; \
	fi

amrvac:
	$(MAKE)

