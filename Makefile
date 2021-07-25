ALL_VERSIONS := 10.03 10.03.1 12.09 14.07 15.05
ALL_ARCHS := x86 x64
LATEST_VERSION := 15.05

VERSION ?= 15.05
ARCH ?= x86

TAG := $(VERSION)-$(ARCH)
ifeq ($(VERSION),latest)
	TAG := $(LATEST_VERSION)-$(ARCH)
endif

# VERSIONS
ifeq ($(TAG),15.05-x64)
	ROOTFS_URL := https://downloads.openwrt.org/chaos_calmer/15.05/x86/64/openwrt-15.05-x86-64-rootfs.tar.gz
endif
ifeq ($(TAG),15.05-x86)
	ROOTFS_URL := https://downloads.openwrt.org/chaos_calmer/15.05/x86/generic/openwrt-15.05-x86-generic-Generic-rootfs.tar.gz
endif
ifeq ($(TAG),14.07-x86)
	ROOTFS_URL := https://downloads.openwrt.org/barrier_breaker/14.07/x86/generic/openwrt-x86-generic-Generic-rootfs.tar.gz
endif
ifeq ($(TAG),12.09-x86)
	ROOTFS_URL := htt