libc_bionic_src_files_arm += \
    arch-arm/generic/bionic/memchr.S \
    arch-arm/generic/bionic/memcmp.S \
    arch-arm/generic/bionic/memset.S \
    arch-arm/generic/bionic/strcmp.S \
    arch-arm/generic/bionic/strcpy.S \
    arch-arm/generic/bionic/strlen.c \
    bionic/strcat.c \
    bionic/__strcat_chk.cpp \
    bionic/__strcpy_chk.cpp

ifeq ($(strip $(ARCH_ARM_HAVE_NEON)),true)
libc_bionic_src_files_arm += \
    arch-arm/generic/bionic/memcpy.neon.S \
    bionic/__memcpy_chk.cpp
else
libc_bionic_src_files_arm += \
    arch-arm/generic/bionic/memcpy.S
endif

libc_openbsd_src_files_arm += \
    upstream-openbsd/lib/libc/string/memmove.c \
    upstream-openbsd/lib/libc/string/stpcpy.c \
