-include Makefile

.iflags:
	@echo $(DEFINES_FLAGS) $(INCLUDE_FLAGS) -DBOARD=$(BOARD)

.ipath:
	@echo $(foreach i, $(INCLUDE_FLAGS), $(subst -I, , $(i)))
