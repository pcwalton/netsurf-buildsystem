# Define the component name
COMPONENT := foo
# And the component type
COMPONENT_TYPE := lib-static
# Component version
COMPONENT_VERSION := 0.0.1

# Tooling
include build/makefiles/Makefile.tools

# Grab the core makefile
include build/makefiles/Makefile.top

# Add extra install rules for our pkg-config control file and the library itself
INSTALL_ITEMS := $(INSTALL_ITEMS) /lib/pkgconfig:lib$(COMPONENT).pc.in
INSTALL_ITEMS := $(INSTALL_ITEMS) /lib:$(BUILDDIR)/lib$(COMPONENT)$(LIBEXT)
