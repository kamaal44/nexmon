NEXMON_CHIP=CHIP_VER_BCM43455
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_7_120_7_1_sta_C0
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-r

RAM_FILE=bcmdhd_sta.bin
RAMSTART=0x198000
RAMSIZE=0xC8000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0xB0000

HNDRTE_RECLAIM_0_END=0x22DE84

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x220094
UCODESIZE=0xD508

# original template ram start and size
TEMPLATERAMSTART=0x22D59C
TEMPLATERAMSIZE=0x8E8

FP_DATA_END_PTR = 0x1fe500
FP_CONFIG_BASE_PTR_1 = 0x1e88e8
FP_CONFIG_END_PTR_1 = 0x1e88e4
FP_CONFIG_BASE_PTR_2 = 0x1e8b6c
FP_CONFIG_END_PTR_2 = 0x1e8b68
FP_CONFIG_SIZE=0xc00
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))

FP_DATA_BASE=0x198800
FP_CONFIG_ORIGBASE=0x199000
FP_CONFIG_ORIGEND=0x199C00
