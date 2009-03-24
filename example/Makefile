# Define the component name
COMPONENT := foo
# And the component type
COMPONENT_TYPE := lib-static
# Set the executable extension
EXEEXT :=
# And the library extension
LIBEXT := .a
# Define our target platform
TARGET := linux

# We're using a modern GCC, so can compile and generate dependencies together
CC_CAN_BUILD_AND_DEP := yes

# Grab the core makefile
include build/makefiles/Makefile.top

# Add extra install rules for our pkg-config control file and the library itself
INSTALL_ITEMS := $(INSTALL_ITEMS) /lib/pkgconfig:lib$(COMPONENT).pc.in
INSTALL_ITEMS := $(INSTALL_ITEMS) /lib:$(BUILDDIR)/lib$(COMPONENT)$(LIBEXT)
