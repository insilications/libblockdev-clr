lib_LTLIBRARIES = libbd_utils.la
libbd_utils_la_CFLAGS = $(GLIB_CFLAGS) $(UDEV_CFLAGS) $(KMOD_CFLAGS) -Wall -Wextra -Werror
libbd_utils_la_LDFLAGS = -version-info 3:0:0 -Wl,--no-undefined
libbd_utils_la_LIBADD = $(GLIB_LIBS) -lm $(GIO_LIBS) $(UDEV_LIBS) $(KMOD_LIBS)
libbd_utils_la_SOURCES = utils.h exec.c exec.h sizes.h extra_arg.c extra_arg.h dev_utils.c dev_utils.h module.c module.h dbus.c dbus.h logging.c logging.h

libincludedir = $(includedir)/blockdev
libinclude_HEADERS = utils.h exec.h sizes.h extra_arg.h dev_utils.h module.h dbus.h logging.h

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = ${builddir}/blockdev-utils.pc

MAINTAINERCLEANFILES = Makefile.in
