; ModuleID = '/llk/IR_all_yes/drivers/bcma/scan.c_pt.bc'
source_filename = "../drivers/bcma/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_device_id_name = type { i16, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%04X\00", [25 x i8] zeroinitializer }, align 32
@bcma_detect_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"bus%d: Found chip with id %s, rev 0x%02X and package 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcma_detect_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/bcma/scan.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_detect_chip._entry_ptr = internal global ptr @bcma_detect_chip._entry, section ".printk_index", align 4
@bcma_bus_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"bus%d: Core %d found: %s (manuf 0x%03X, id 0x%03X, rev 0x%02X, class 0x%X)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcma_bus_scan\00", [18 x i8] zeroinitializer }, align 32
@bcma_bus_scan._entry_ptr = internal global ptr @bcma_bus_scan._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcma_get_next_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bus%d: Bridge found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcma_get_next_core\00", [45 x i8] zeroinitializer }, align 32
@bcma_get_next_core._entry_ptr = internal global ptr @bcma_get_next_core._entry, section ".printk_index", align 4
@bcma_arm_device_names = internal constant { [4 x %struct.bcma_device_id_name], [32 x i8] } { [4 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 1500, ptr @.str.12 }, %struct.bcma_device_id_name { i16 2084, ptr @.str.13 }, %struct.bcma_device_id_name { i16 2085, ptr @.str.14 }, %struct.bcma_device_id_name { i16 2090, ptr @.str.15 }], [32 x i8] zeroinitializer }, align 32
@bcma_bcm_device_names = internal constant { [74 x %struct.bcma_device_id_name], [144 x i8] } { [74 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 871, ptr @.str.16 }, %struct.bcma_device_id_name { i16 1280, ptr @.str.17 }, %struct.bcma_device_id_name { i16 1294, ptr @.str.18 }, %struct.bcma_device_id_name { i16 1325, ptr @.str.19 }, %struct.bcma_device_id_name { i16 1281, ptr @.str.20 }, %struct.bcma_device_id_name { i16 1282, ptr @.str.21 }, %struct.bcma_device_id_name { i16 1283, ptr @.str.22 }, %struct.bcma_device_id_name { i16 1284, ptr @.str.23 }, %struct.bcma_device_id_name { i16 1285, ptr @.str.24 }, %struct.bcma_device_id_name { i16 1286, ptr @.str.25 }, %struct.bcma_device_id_name { i16 1287, ptr @.str.26 }, %struct.bcma_device_id_name { i16 1288, ptr @.str.27 }, %struct.bcma_device_id_name { i16 1289, ptr @.str.28 }, %struct.bcma_device_id_name { i16 1290, ptr @.str.29 }, %struct.bcma_device_id_name { i16 1291, ptr @.str.30 }, %struct.bcma_device_id_name { i16 1296, ptr @.str.31 }, %struct.bcma_device_id_name { i16 1326, ptr @.str.32 }, %struct.bcma_device_id_name { i16 1332, ptr @.str.33 }, %struct.bcma_device_id_name { i16 1792, ptr @.str.34 }, %struct.bcma_device_id_name { i16 2048, ptr @.str.35 }, %struct.bcma_device_id_name { i16 2049, ptr @.str.36 }, %struct.bcma_device_id_name { i16 2050, ptr @.str.37 }, %struct.bcma_device_id_name { i16 2051, ptr @.str.38 }, %struct.bcma_device_id_name { i16 2052, ptr @.str.39 }, %struct.bcma_device_id_name { i16 2054, ptr @.str.40 }, %struct.bcma_device_id_name { i16 2055, ptr @.str.41 }, %struct.bcma_device_id_name { i16 2056, ptr @.str.42 }, %struct.bcma_device_id_name { i16 2057, ptr @.str.43 }, %struct.bcma_device_id_name { i16 2058, ptr @.str.44 }, %struct.bcma_device_id_name { i16 2059, ptr @.str.45 }, %struct.bcma_device_id_name { i16 2060, ptr @.str.46 }, %struct.bcma_device_id_name { i16 2061, ptr @.str.47 }, %struct.bcma_device_id_name { i16 2062, ptr @.str.48 }, %struct.bcma_device_id_name { i16 2063, ptr @.str.49 }, %struct.bcma_device_id_name { i16 2064, ptr @.str.50 }, %struct.bcma_device_id_name { i16 2065, ptr @.str.51 }, %struct.bcma_device_id_name { i16 2066, ptr @.str.52 }, %struct.bcma_device_id_name { i16 2067, ptr @.str.53 }, %struct.bcma_device_id_name { i16 2068, ptr @.str.54 }, %struct.bcma_device_id_name { i16 2069, ptr @.str.55 }, %struct.bcma_device_id_name { i16 2071, ptr @.str.56 }, %struct.bcma_device_id_name { i16 2072, ptr @.str.57 }, %struct.bcma_device_id_name { i16 2073, ptr @.str.58 }, %struct.bcma_device_id_name { i16 2074, ptr @.str.59 }, %struct.bcma_device_id_name { i16 2075, ptr @.str.60 }, %struct.bcma_device_id_name { i16 2076, ptr @.str.61 }, %struct.bcma_device_id_name { i16 2077, ptr @.str.62 }, %struct.bcma_device_id_name { i16 2078, ptr @.str.63 }, %struct.bcma_device_id_name { i16 2079, ptr @.str.64 }, %struct.bcma_device_id_name { i16 2080, ptr @.str.65 }, %struct.bcma_device_id_name { i16 2081, ptr @.str.66 }, %struct.bcma_device_id_name { i16 2082, ptr @.str.67 }, %struct.bcma_device_id_name { i16 2083, ptr @.str.68 }, %struct.bcma_device_id_name { i16 2086, ptr @.str.69 }, %struct.bcma_device_id_name { i16 2087, ptr @.str.70 }, %struct.bcma_device_id_name { i16 2088, ptr @.str.71 }, %struct.bcma_device_id_name { i16 2089, ptr @.str.72 }, %struct.bcma_device_id_name { i16 2091, ptr @.str.73 }, %struct.bcma_device_id_name { i16 2093, ptr @.str.74 }, %struct.bcma_device_id_name { i16 2094, ptr @.str.75 }, %struct.bcma_device_id_name { i16 2095, ptr @.str.76 }, %struct.bcma_device_id_name { i16 2096, ptr @.str.77 }, %struct.bcma_device_id_name { i16 2097, ptr @.str.78 }, %struct.bcma_device_id_name { i16 2098, ptr @.str.79 }, %struct.bcma_device_id_name { i16 2099, ptr @.str.80 }, %struct.bcma_device_id_name { i16 2100, ptr @.str.81 }, %struct.bcma_device_id_name { i16 2101, ptr @.str.82 }, %struct.bcma_device_id_name { i16 2103, ptr @.str.83 }, %struct.bcma_device_id_name { i16 2108, ptr @.str.84 }, %struct.bcma_device_id_name { i16 2110, ptr @.str.85 }, %struct.bcma_device_id_name { i16 2112, ptr @.str.86 }, %struct.bcma_device_id_name { i16 2118, ptr @.str.87 }, %struct.bcma_device_id_name { i16 2119, ptr @.str.88 }, %struct.bcma_device_id_name { i16 4095, ptr @.str.89 }], [144 x i8] zeroinitializer }, align 32
@bcma_mips_device_names = internal constant { [3 x %struct.bcma_device_id_name], [40 x i8] } { [3 x %struct.bcma_device_id_name] [%struct.bcma_device_id_name { i16 2053, ptr @.str.90 }, %struct.bcma_device_id_name { i16 2070, ptr @.str.91 }, %struct.bcma_device_id_name { i16 2092, ptr @.str.92 }], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BCM4706 GBit MAC Common\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ARM 1176\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ARM 7TDMI\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARM CM3\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OOB Router\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BCM4706 ChipCommon\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCM4706 SOC RAM\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCM4706 GBit MAC\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCIe Gen 2\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB 2.0\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB 3.0\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ARM Cortex A9 JTAG\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Denali DDR2/DDR3 memory controller\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROM\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NAND flash controller\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPI flash controller\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Chipcommon B\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ARM Cortex A9 core (ihost)\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMEMC (DDR)\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALTA (I2S)\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ChipCommon\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ILine 20\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V90\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB 1.1 Hostdev\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADSL\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ILine 100\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IPSEC\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UTOPIA\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Internal Memory\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MEMC SDRAM\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXTIF\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEEE 802.11\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHY A\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHY B\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHY G\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB 1.1 Host\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB 1.1 Device\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB 2.0 Host\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB 2.0 Device\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO Host\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Roboswitch\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PATA\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SATA XOR-DMA\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GBit Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIe\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PHY N\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SRAM Controller\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mini MACPHY\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PHY LP\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHY SSN\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SDIO Device\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PHY HT\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GBit MAC\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DDR1/DDR2 Memory Controller\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCIe Root Complex\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OCP to OCP Bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Common Shared\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OCP to AHB Bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPI Host\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SDR/DDR1 Memory Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SHIM\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCIe Gen2\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARM CR4\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GCI\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CNDS DDR2/3 memory controller\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARM CA7\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Default\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIPS\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIPS 3302\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIPS 74K\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 12, i64 1291, i64 1500, i64 2087, i64 2112]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 16, i64 1083, i64 1191, i64 1215]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 451, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 451, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 452, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 510, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 363, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"bcma_arm_device_names\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 23, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"bcma_bcm_device_names\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 30, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"bcma_mips_device_names\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 107, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 133, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 24, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 25, i32 24 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 26, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 27, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 31, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 32, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 33, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 34, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 35, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 36, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 37, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 38, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 39, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 40, i32 25 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 41, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 42, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 43, i32 23 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 44, i32 23 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 45, i32 31 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 46, i32 22 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 47, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 48, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 49, i32 23 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 50, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 51, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 52, i32 20 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 53, i32 21 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 54, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 55, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 56, i32 19 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 57, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 58, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 59, i32 24 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 60, i32 21 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 61, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 62, i32 22 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 63, i32 28 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 64, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 65, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 66, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 67, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 68, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 69, i32 21 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 70, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 71, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 72, i32 25 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 73, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 74, i32 25 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 75, i32 25 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 76, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 77, i32 24 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 78, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 79, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 80, i32 20 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 81, i32 21 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 82, i32 24 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 83, i32 27 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 84, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 85, i32 19 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 86, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 87, i32 24 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 88, i32 22 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 89, i32 24 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 90, i32 29 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 91, i32 23 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 92, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 93, i32 29 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 94, i32 30 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 95, i32 24 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 96, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 97, i32 32 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 98, i32 20 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 99, i32 21 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 100, i32 23 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 101, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 102, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 103, i32 23 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 104, i32 23 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 108, i32 20 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 109, i32 25 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [23 x i8] c"../drivers/bcma/scan.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 110, i32 24 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @bcma_bus_scan._entry, ptr @bcma_bus_scan._entry_ptr, ptr @bcma_detect_chip._entry, ptr @bcma_detect_chip._entry_ptr, ptr @bcma_get_next_core._entry, ptr @bcma_get_next_core._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @bcma_arm_device_names, ptr @bcma_bcm_device_names, ptr @bcma_mips_device_names, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_detect_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bus_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_get_next_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_arm_device_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_bcm_device_names to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mips_device_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_detect_chip(ptr nocapture noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %chip_id = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chip_id) #7
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %chip_id, align 8
  %1 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcma_scan_switch_core.exit_crit_edge

entry.bcma_scan_switch_core.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_scan_switch_core.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 5
  %3 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_pci.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 128, i32 noundef 402653184) #7
  br label %bcma_scan_switch_core.exit

bcma_scan_switch_core.exit:                       ; preds = %if.then.i, %entry.bcma_scan_switch_core.exit_crit_edge
  %chipinfo1 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %mmio.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 1
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !201
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %chipinfo1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %chipinfo1, align 2
  %and2 = lshr i32 %8, 16
  %10 = trunc i32 %and2 to i8
  %conv4 = and i8 %10, 15
  %rev = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %rev, align 2
  %and5 = lshr i32 %8, 20
  %12 = trunc i32 %and5 to i8
  %conv7 = and i8 %12, 15
  %pkg = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %pkg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %pkg, align 1
  %conv9 = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26215, i16 %conv)
  %cmp = icmp ugt i16 %conv, -26215
  %cond = select i1 %cmp, ptr @.str, ptr @.str.1
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %chip_id, i32 noundef 8, ptr noundef nonnull %cond, i32 noundef %conv9)
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num, align 1
  %conv14 = zext i8 %17 to i32
  %18 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rev, align 2
  %conv17 = zext i8 %19 to i32
  %20 = ptrtoint ptr %pkg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pkg, align 1
  %conv19 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef %conv14, ptr noundef nonnull %chip_id, i32 noundef %conv17, i32 noundef %conv19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chip_id) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_bus_scan(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_cores = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %nr_cores to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_cores, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.end:                                           ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !201
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %6 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call ptr @ioremap(i32 noundef %5, i32 noundef 4096) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then1.cleanup59_crit_edge, label %if.end6thread-pre-split

if.then1.cleanup59_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  br label %if.end6

if.end6thread-pre-split:                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %hosttype, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %if.else
  %11 = phi i32 [ %.pr, %if.end6thread-pre-split ], [ %7, %if.else ]
  %eromptr.0 = phi ptr [ %call2, %if.end6thread-pre-split ], [ %9, %if.else ]
  %add.ptr = getelementptr i32, ptr %eromptr.0, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.bcma_scan_switch_core.exit_crit_edge

if.end6.bcma_scan_switch_core.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_scan_switch_core.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 5
  %12 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_pci.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef 128, i32 noundef %5) #7
  br label %bcma_scan_switch_core.exit

bcma_scan_switch_core.exit:                       ; preds = %if.then.i, %if.end6.bcma_scan_switch_core.exit_crit_edge
  %cmp7243 = icmp ult ptr %eromptr.0, %add.ptr
  br i1 %cmp7243, label %while.body.lr.ph, label %bcma_scan_switch_core.exit.out_crit_edge

bcma_scan_switch_core.exit.out_crit_edge:         ; preds = %bcma_scan_switch_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %bcma_scan_switch_core.exit
  %cores.i.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9
  %prev.i103 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 9, i32 1
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %core_num.0245 = phi i32 [ 0, %while.body.lr.ph ], [ %core_num.1, %cleanup.while.body_crit_edge ]
  %eromptr.1244 = phi ptr [ %eromptr.0, %while.body.lr.ph ], [ %eromptr.28, %cleanup.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1016) #11
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %while.body.out_crit_edge, label %if.end11

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %while.body
  %list = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bus, ptr %call7.i.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.1244) #7, !srcloc !201
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %19, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.not.i.i = icmp eq i32 %and1.i.i, 0
  %call..i.i = select i1 %cmp.not.i.i, i32 %19, i32 -2
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -2, i32 %call..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i100 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i100, label %if.then.i101, label %if.end3.i

if.then.i101:                                     ; preds = %if.end11
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.1244) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 251658240
  br i1 %cmp.i.i, label %if.then.i101.out.sink.split_crit_edge, label %if.then.i101.if.end26_crit_edge

if.then.i101.if.end26_crit_edge:                  ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then.i101.out.sink.split_crit_edge:            ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end3.i:                                        ; preds = %if.end11
  %incdec.ptr.i.i.i = getelementptr i32, ptr %eromptr.1244, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i.i) #7, !srcloc !201
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i6.i = getelementptr i32, ptr %eromptr.1244, i32 2
  %and.i7.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  %and1.i9.i = and i32 %22, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i9.i)
  %cmp.not.i10.i = icmp eq i32 %and1.i9.i, 0
  %call..i11.i = select i1 %cmp.not.i10.i, i32 %22, i32 -2
  %retval.0.i12.i = select i1 %tobool.not.i8.i, i32 -2, i32 %call..i11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i12.i)
  %cmp5.i = icmp slt i32 %retval.0.i12.i, 0
  br i1 %cmp5.i, label %if.end3.i.if.end26_crit_edge, label %if.end7.i

if.end3.i.if.end26_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end7.i:                                        ; preds = %if.end3.i
  %23 = trunc i32 %retval.0.i.i to i8
  %24 = lshr i8 %23, 4
  %id.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 1
  %class.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %class.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %class.i, align 1
  %and8.i = lshr i32 %retval.0.i.i, 8
  %26 = trunc i32 %and8.i to i16
  %conv10.i = and i16 %26, 4095
  %id12.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %id12.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv10.i, ptr %id12.i, align 2
  %shr14.i = lshr i32 %retval.0.i.i, 20
  %conv15.i = trunc i32 %shr14.i to i16
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv15.i, ptr %id.i, align 4
  %and17.i = lshr i32 %retval.0.i12.i, 4
  %conv19.i = and i32 %and17.i, 31
  %and20.i = lshr i32 %retval.0.i12.i, 9
  %conv22.i = and i32 %and20.i, 31
  %and24.i = lshr i32 %retval.0.i12.i, 14
  %conv26.i = and i32 %and24.i, 31
  %and28.i = lshr i32 %retval.0.i12.i, 19
  %conv30.i = and i32 %and28.i, 31
  %shr33.i = lshr i32 %retval.0.i12.i, 24
  %conv34.i = trunc i32 %shr33.i to i8
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %rev.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv34.i, ptr %rev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1083, i16 %conv15.i)
  %cmp39.i = icmp eq i16 %conv15.i, 1083
  br i1 %cmp39.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %conv10.i)
  %cmp44.i = icmp eq i16 %conv10.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp48.i = icmp eq i32 %conv22.i, 0
  %or.cond.i = select i1 %cmp44.i, i1 true, i1 %cmp48.i
  br i1 %or.cond.i, label %land.lhs.true.i.while.cond.i.i.preheader_crit_edge, label %land.lhs.true.i.if.end51.i_crit_edge

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

land.lhs.true.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

lor.lhs.false.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp48.old.i = icmp eq i32 %conv22.i, 0
  br i1 %cmp48.old.i, label %lor.lhs.false.i.while.cond.i.i.preheader_crit_edge, label %lor.lhs.false.i.if.end51.i_crit_edge

lor.lhs.false.i.if.end51.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

lor.lhs.false.i.while.cond.i.i.preheader_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %lor.lhs.false.i.while.cond.i.i.preheader_crit_edge, %land.lhs.true.i.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %eromptr.2 = phi ptr [ %incdec.ptr.i.i13.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %incdec.ptr.i.i6.i, %while.cond.i.i.preheader ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.2) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i13.i = getelementptr i32, ptr %eromptr.2, i32 1
  %31 = and i32 %30, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %31)
  %32 = icmp eq i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %30)
  %cmp2.i.i = icmp eq i32 %30, 251658240
  %or.cond1.i.i = or i1 %cmp2.i.i, %32
  br i1 %or.cond1.i.i, label %while.cond.i.i.if.then15.thread208_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.cond.i.i.if.then15.thread208_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.thread208

if.end51.i:                                       ; preds = %lor.lhs.false.i.if.end51.i_crit_edge, %land.lhs.true.i.if.end51.i_crit_edge
  %add.i = sub nsw i32 0, %conv30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %add.i)
  %cmp56.i = icmp eq i32 %conv26.i, %add.i
  br i1 %cmp56.i, label %if.then58.i, label %if.end51.i.if.end62.i_crit_edge

if.end51.i.if.end62.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end51.i
  %trunc.i = trunc i32 %and8.i to i12
  %33 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc.i, label %if.then58.i.while.cond.i17.i_crit_edge [
    i12 1500, label %if.then58.i.if.end62.i_crit_edge
    i12 1291, label %if.then58.i.if.end62.i_crit_edge333
    i12 -2009, label %if.then58.i.if.end62.i_crit_edge334
    i12 -1984, label %if.then58.i.if.end62.i_crit_edge335
  ]

if.then58.i.if.end62.i_crit_edge335:              ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then58.i.if.end62.i_crit_edge334:              ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then58.i.if.end62.i_crit_edge333:              ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then58.i.if.end62.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then58.i.while.cond.i17.i_crit_edge:           ; preds = %if.then58.i
  br label %while.cond.i17.i

while.cond.i17.i:                                 ; preds = %while.cond.i17.i.while.cond.i17.i_crit_edge, %if.then58.i.while.cond.i17.i_crit_edge
  %eromptr.3 = phi ptr [ %incdec.ptr.i.i14.i, %while.cond.i17.i.while.cond.i17.i_crit_edge ], [ %incdec.ptr.i.i6.i, %if.then58.i.while.cond.i17.i_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.3) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i14.i = getelementptr i32, ptr %eromptr.3, i32 1
  %35 = and i32 %34, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %36 = icmp eq i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %34)
  %cmp2.i15.i = icmp eq i32 %34, 251658240
  %or.cond1.i16.i = or i1 %cmp2.i15.i, %36
  br i1 %or.cond1.i16.i, label %while.cond.i17.i.if.then15.thread208_crit_edge, label %while.cond.i17.i.while.cond.i17.i_crit_edge

while.cond.i17.i.while.cond.i17.i_crit_edge:      ; preds = %while.cond.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i17.i

while.cond.i17.i.if.then15.thread208_crit_edge:   ; preds = %while.cond.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.thread208

if.end62.i:                                       ; preds = %if.then58.i.if.end62.i_crit_edge, %if.then58.i.if.end62.i_crit_edge333, %if.then58.i.if.end62.i_crit_edge334, %if.then58.i.if.end62.i_crit_edge335, %if.end51.i.if.end62.i_crit_edge
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i6.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %38 = and i32 %37, -956301312
  call void @__sanitizer_cov_trace_const_cmp4(i32 1157627904, i32 %38)
  %39 = icmp eq i32 %38, 1157627904
  br i1 %39, label %if.end62.i.while.cond.i22.i_crit_edge, label %if.end65.i

if.end62.i.while.cond.i22.i_crit_edge:            ; preds = %if.end62.i
  br label %while.cond.i22.i

while.cond.i22.i:                                 ; preds = %while.cond.i22.i.while.cond.i22.i_crit_edge, %if.end62.i.while.cond.i22.i_crit_edge
  %eromptr.4 = phi ptr [ %incdec.ptr.i.i19.i, %while.cond.i22.i.while.cond.i22.i_crit_edge ], [ %incdec.ptr.i.i6.i, %if.end62.i.while.cond.i22.i_crit_edge ]
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.4) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i19.i = getelementptr i32, ptr %eromptr.4, i32 1
  %41 = and i32 %40, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %41)
  %42 = icmp eq i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %40)
  %cmp2.i20.i = icmp eq i32 %40, 251658240
  %or.cond1.i21.i = or i1 %cmp2.i20.i, %42
  br i1 %or.cond1.i21.i, label %while.cond.i22.i.if.then15.thread208_crit_edge, label %while.cond.i22.i.while.cond.i22.i_crit_edge

while.cond.i22.i.while.cond.i22.i_crit_edge:      ; preds = %while.cond.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i22.i

while.cond.i22.i.if.then15.thread208_crit_edge:   ; preds = %while.cond.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.thread208

if.end65.i:                                       ; preds = %if.end62.i
  %conv66.i = trunc i32 %core_num.0245 to i16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end65.i
  %.pn.in.i.i = phi ptr [ %cores.i.i, %if.end65.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i24.i = icmp eq ptr %.pn.i.i, %cores.i.i
  br i1 %cmp.not.i24.i, label %for.cond.i.i.for.cond.preheader.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.cond.preheader.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %core_index.i.i = getelementptr i8, ptr %.pn.i.i, i32 -55
  %44 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %core_index.i.i, align 1
  %46 = zext i8 %45 to i16
  %cmp3.i.i = icmp eq i16 %46, %conv66.i
  br i1 %cmp3.i.i, label %bcma_find_core_by_index.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

bcma_find_core_by_index.exit.i:                   ; preds = %for.body.i.i
  %core.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -1008
  %phi.cmp.i = icmp eq ptr %core.0.le.i.i, null
  br i1 %phi.cmp.i, label %bcma_find_core_by_index.exit.i.for.cond.preheader.i_crit_edge, label %bcma_find_core_by_index.exit.i.while.cond.i29.i_crit_edge

bcma_find_core_by_index.exit.i.while.cond.i29.i_crit_edge: ; preds = %bcma_find_core_by_index.exit.i
  br label %while.cond.i29.i

bcma_find_core_by_index.exit.i.for.cond.preheader.i_crit_edge: ; preds = %bcma_find_core_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %bcma_find_core_by_index.exit.i.for.cond.preheader.i_crit_edge, %for.cond.i.i.for.cond.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19.i)
  %cmp128132.not.i = icmp eq i32 %conv19.i, 0
  br i1 %cmp128132.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

while.cond.i29.i:                                 ; preds = %while.cond.i29.i.while.cond.i29.i_crit_edge, %bcma_find_core_by_index.exit.i.while.cond.i29.i_crit_edge
  %eromptr.5 = phi ptr [ %incdec.ptr.i.i26.i, %while.cond.i29.i.while.cond.i29.i_crit_edge ], [ %incdec.ptr.i.i6.i, %bcma_find_core_by_index.exit.i.while.cond.i29.i_crit_edge ]
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.5) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i26.i = getelementptr i32, ptr %eromptr.5, i32 1
  %48 = and i32 %47, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %48)
  %49 = icmp eq i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %47)
  %cmp2.i27.i = icmp eq i32 %47, 251658240
  %or.cond1.i28.i = or i1 %cmp2.i27.i, %49
  br i1 %or.cond1.i28.i, label %if.then17, label %while.cond.i29.i.while.cond.i29.i_crit_edge

while.cond.i29.i.while.cond.i29.i_crit_edge:      ; preds = %while.cond.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i29.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv19.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %eromptr.6 = phi ptr [ %incdec.ptr.i.i31.i, %for.cond.i.for.body.i_crit_edge ], [ %incdec.ptr.i.i6.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.6) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i31.i = getelementptr i32, ptr %eromptr.6, i32 1
  %51 = and i32 %50, 251658368
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %51)
  %.not.i = icmp eq i32 %51, 50331648
  br i1 %.not.i, label %for.cond.i, label %for.body.i.if.end26_crit_edge

for.body.i.if.end26_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %eromptr.7 = phi ptr [ %incdec.ptr.i.i6.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i.i31.i, %for.cond.i.for.end.i_crit_edge ]
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.7) #7, !srcloc !201
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i113 = getelementptr i32, ptr %eromptr.7, i32 1
  %54 = and i32 %53, 4039
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %if.end.i124, label %for.end.i.if.then141.i_crit_edge

for.end.i.if.then141.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141.i

if.end.i124:                                      ; preds = %for.end.i
  %and9.i121 = and i32 %53, -4096
  %and10.i122 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i122)
  %tobool11.not.i123 = icmp eq i32 %and10.i122, 0
  br i1 %tobool11.not.i123, label %if.end.i124.if.end14.i129_crit_edge, label %if.then12.i126

if.end.i124.if.end14.i129_crit_edge:              ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i129

if.then12.i126:                                   ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i113) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i3.i125 = getelementptr i32, ptr %eromptr.7, i32 2
  br label %if.end14.i129

if.end14.i129:                                    ; preds = %if.then12.i126, %if.end.i124.if.end14.i129_crit_edge
  %eromptr.8 = phi ptr [ %incdec.ptr.i.i113, %if.end.i124.if.end14.i129_crit_edge ], [ %incdec.ptr.i3.i125, %if.then12.i126 ]
  %and15.i127 = and i32 %53, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and15.i127)
  %cmp16.i128 = icmp eq i32 %and15.i127, 48
  br i1 %cmp16.i128, label %if.then18.i132, label %if.end14.i129.bcma_erom_get_addr_desc.exit139_crit_edge

if.end14.i129.bcma_erom_get_addr_desc.exit139_crit_edge: ; preds = %if.end14.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_erom_get_addr_desc.exit139

if.then18.i132:                                   ; preds = %if.end14.i129
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.8) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i4.i130 = getelementptr i32, ptr %eromptr.8, i32 1
  %58 = and i32 %57, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool21.not.i131 = icmp eq i32 %58, 0
  br i1 %tobool21.not.i131, label %if.then18.i132.bcma_erom_get_addr_desc.exit139_crit_edge, label %if.then22.i134

if.then18.i132.bcma_erom_get_addr_desc.exit139_crit_edge: ; preds = %if.then18.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_erom_get_addr_desc.exit139

if.then22.i134:                                   ; preds = %if.then18.i132
  call void @__sanitizer_cov_trace_pc() #9
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i4.i130) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i5.i133 = getelementptr i32, ptr %eromptr.8, i32 2
  br label %bcma_erom_get_addr_desc.exit139

bcma_erom_get_addr_desc.exit139:                  ; preds = %if.then22.i134, %if.then18.i132.bcma_erom_get_addr_desc.exit139_crit_edge, %if.end14.i129.bcma_erom_get_addr_desc.exit139_crit_edge
  %eromptr.9 = phi ptr [ %incdec.ptr.i4.i130, %if.then18.i132.bcma_erom_get_addr_desc.exit139_crit_edge ], [ %eromptr.8, %if.end14.i129.bcma_erom_get_addr_desc.exit139_crit_edge ], [ %incdec.ptr.i5.i133, %if.then22.i134 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %53)
  %60 = icmp ult i32 %53, 4096
  br i1 %60, label %bcma_erom_get_addr_desc.exit139.if.then141.i_crit_edge, label %if.end150.i

bcma_erom_get_addr_desc.exit139.if.then141.i_crit_edge: ; preds = %bcma_erom_get_addr_desc.exit139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141.i

if.then141.i:                                     ; preds = %bcma_erom_get_addr_desc.exit139.if.then141.i_crit_edge, %for.end.i.if.then141.i_crit_edge
  %eromptr.9194 = phi ptr [ %eromptr.9, %bcma_erom_get_addr_desc.exit139.if.then141.i_crit_edge ], [ %eromptr.7, %for.end.i.if.then141.i_crit_edge ]
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.9194) #7, !srcloc !201
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i.i = getelementptr i32, ptr %eromptr.9194, i32 1
  %63 = and i32 %62, 4039
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %63)
  %64 = icmp eq i32 %63, 69
  br i1 %64, label %if.end.i, label %if.then141.i.if.end26_crit_edge

if.then141.i.if.end26_crit_edge:                  ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end.i:                                         ; preds = %if.then141.i
  %and10.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then12.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i3.i = getelementptr i32, ptr %eromptr.9194, i32 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %eromptr.10 = phi ptr [ %incdec.ptr.i.i, %if.end.i.if.end14.i_crit_edge ], [ %incdec.ptr.i3.i, %if.then12.i ]
  %and15.i = and i32 %62, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and15.i)
  %cmp16.i = icmp eq i32 %and15.i, 48
  br i1 %cmp16.i, label %if.then18.i, label %if.end14.i.bcma_erom_get_addr_desc.exit_crit_edge

if.end14.i.bcma_erom_get_addr_desc.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_erom_get_addr_desc.exit

if.then18.i:                                      ; preds = %if.end14.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.10) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i4.i = getelementptr i32, ptr %eromptr.10, i32 1
  %67 = and i32 %66, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool21.not.i = icmp eq i32 %67, 0
  br i1 %tobool21.not.i, label %if.then18.i.bcma_erom_get_addr_desc.exit_crit_edge, label %if.then22.i

if.then18.i.bcma_erom_get_addr_desc.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_erom_get_addr_desc.exit

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i4.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i5.i = getelementptr i32, ptr %eromptr.10, i32 2
  br label %bcma_erom_get_addr_desc.exit

bcma_erom_get_addr_desc.exit:                     ; preds = %if.then22.i, %if.then18.i.bcma_erom_get_addr_desc.exit_crit_edge, %if.end14.i.bcma_erom_get_addr_desc.exit_crit_edge
  %eromptr.11 = phi ptr [ %incdec.ptr.i4.i, %if.then18.i.bcma_erom_get_addr_desc.exit_crit_edge ], [ %eromptr.10, %if.end14.i.bcma_erom_get_addr_desc.exit_crit_edge ], [ %incdec.ptr.i5.i, %if.then22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %62)
  %69 = icmp ult i32 %62, 4096
  br i1 %69, label %bcma_erom_get_addr_desc.exit.if.end26_crit_edge, label %do.end.i

bcma_erom_get_addr_desc.exit.if.end26_crit_edge:  ; preds = %bcma_erom_get_addr_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end.i:                                         ; preds = %bcma_erom_get_addr_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus, align 4
  %72 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num, align 1
  %conv149.i = zext i8 %73 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.9, i32 noundef %conv149.i) #10
  br label %if.then15.thread208

if.end150.i:                                      ; preds = %bcma_erom_get_addr_desc.exit139
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 8
  %74 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and9.i121, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp155142.not.i = icmp eq i32 %conv22.i, 0
  br i1 %cmp155142.not.i, label %if.end150.i.for.cond178.preheader.i_crit_edge, label %if.end150.i.for.cond158.preheader.i_crit_edge

if.end150.i.for.cond158.preheader.i_crit_edge:    ; preds = %if.end150.i
  br label %for.cond158.preheader.i

if.end150.i.for.cond178.preheader.i_crit_edge:    ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond178.preheader.i

for.cond158.preheader.i:                          ; preds = %for.inc175.i.for.cond158.preheader.i_crit_edge, %if.end150.i.for.cond158.preheader.i_crit_edge
  %eromptr.12 = phi ptr [ %.lcssa129.i, %for.inc175.i.for.cond158.preheader.i_crit_edge ], [ %eromptr.9, %if.end150.i.for.cond158.preheader.i_crit_edge ]
  %indvars.iv172.i = phi i32 [ %indvars.iv.next173.i, %for.inc175.i.for.cond158.preheader.i_crit_edge ], [ 0, %if.end150.i.for.cond158.preheader.i_crit_edge ]
  %k.0144.i = phi i8 [ %k.1.lcssa.i, %for.inc175.i.for.cond158.preheader.i_crit_edge ], [ 0, %if.end150.i.for.cond158.preheader.i_crit_edge ]
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.12) #7, !srcloc !201
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %77 = and i32 %76, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %78 = icmp eq i32 %77, 5
  %and6.i135.i = lshr i32 %76, 8
  %shr.i136.i = and i32 %and6.i135.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i136.i, i32 %indvars.iv172.i)
  %cmp7.not.i137.i = icmp eq i32 %shr.i136.i, %indvars.iv172.i
  %or.cond121138.i = select i1 %78, i1 %cmp7.not.i137.i, i1 false
  br i1 %or.cond121138.i, label %for.cond158.preheader.i.if.end.i.i_crit_edge, label %for.cond158.preheader.i.for.inc175.i_crit_edge

for.cond158.preheader.i.for.inc175.i_crit_edge:   ; preds = %for.cond158.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc175.i

for.cond158.preheader.i.if.end.i.i_crit_edge:     ; preds = %for.cond158.preheader.i
  br label %if.end.i.i

for.cond178.preheader.i:                          ; preds = %for.inc175.i.for.cond178.preheader.i_crit_edge, %if.end150.i.for.cond178.preheader.i_crit_edge
  %eromptr.13 = phi ptr [ %eromptr.9, %if.end150.i.for.cond178.preheader.i_crit_edge ], [ %.lcssa129.i, %for.inc175.i.for.cond178.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26.i)
  %cmp182154.not.i = icmp eq i32 %conv26.i, 0
  br i1 %cmp182154.not.i, label %for.cond178.preheader.i.for.cond207.preheader.i_crit_edge, label %for.cond185.preheader.lr.ph.i

for.cond178.preheader.i.for.cond207.preheader.i_crit_edge: ; preds = %for.cond178.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond207.preheader.i

for.cond185.preheader.lr.ph.i:                    ; preds = %for.cond178.preheader.i
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 10
  br label %for.cond185.preheader.i

if.end.i.i:                                       ; preds = %for.inc172.i.if.end.i.i_crit_edge, %for.cond158.preheader.i.if.end.i.i_crit_edge
  %eromptr.12.pn = phi ptr [ %eromptr.16, %for.inc172.i.if.end.i.i_crit_edge ], [ %eromptr.12, %for.cond158.preheader.i.if.end.i.i_crit_edge ]
  %79 = phi i32 [ %86, %for.inc172.i.if.end.i.i_crit_edge ], [ %76, %for.cond158.preheader.i.if.end.i.i_crit_edge ]
  %k.1139.i = phi i8 [ %k.2.i, %for.inc172.i.if.end.i.i_crit_edge ], [ %k.0144.i, %for.cond158.preheader.i.if.end.i.i_crit_edge ]
  %eromptr.14 = getelementptr i32, ptr %eromptr.12.pn, i32 1
  %and9.i.i = and i32 %79, -4096
  %and10.i.i = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.14) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i3.i.i = getelementptr i32, ptr %eromptr.12.pn, i32 2
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %eromptr.15 = phi ptr [ %eromptr.14, %if.end.i.i.if.end14.i.i_crit_edge ], [ %incdec.ptr.i3.i.i, %if.then12.i.i ]
  %and15.i.i = and i32 %79, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and15.i.i)
  %cmp16.i.i = icmp eq i32 %and15.i.i, 48
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end14.i.i.if.else163.i_crit_edge

if.end14.i.i.if.else163.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else163.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.15) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i4.i.i = getelementptr i32, ptr %eromptr.15, i32 1
  %82 = and i32 %81, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool21.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool21.not.i.i, label %if.then18.i.i.if.else163.i_crit_edge, label %bcma_erom_get_addr_desc.exit.i

if.then18.i.i.if.else163.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else163.i

bcma_erom_get_addr_desc.exit.i:                   ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i4.i.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i5.i.i = getelementptr i32, ptr %eromptr.15, i32 2
  br label %if.else163.i

if.else163.i:                                     ; preds = %bcma_erom_get_addr_desc.exit.i, %if.then18.i.i.if.else163.i_crit_edge, %if.end14.i.i.if.else163.i_crit_edge
  %eromptr.16 = phi ptr [ %incdec.ptr.i4.i.i, %if.then18.i.i.if.else163.i_crit_edge ], [ %incdec.ptr.i5.i.i, %bcma_erom_get_addr_desc.exit.i ], [ %eromptr.15, %if.end14.i.i.if.else163.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %k.1139.i)
  %cmp165.i = icmp ult i8 %k.1139.i, 8
  br i1 %cmp165.i, label %if.then167.i, label %if.else163.i.for.inc172.i_crit_edge

if.else163.i.for.inc172.i_crit_edge:              ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc172.i

if.then167.i:                                     ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv164.i = zext i8 %k.1139.i to i32
  %arrayidx168.i = getelementptr %struct.bcma_device, ptr %call7.i.i, i32 0, i32 9, i32 %conv164.i
  %84 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and9.i.i, ptr %arrayidx168.i, align 4
  %inc169.i = add nuw nsw i8 %k.1139.i, 1
  br label %for.inc172.i

for.inc172.i:                                     ; preds = %if.then167.i, %if.else163.i.for.inc172.i_crit_edge
  %k.2.i = phi i8 [ %inc169.i, %if.then167.i ], [ %k.1139.i, %if.else163.i.for.inc172.i_crit_edge ]
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.16) #7, !srcloc !201
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %87 = and i32 %86, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %87)
  %88 = icmp eq i32 %87, 5
  %and6.i.i = lshr i32 %86, 8
  %shr.i.i = and i32 %and6.i.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %indvars.iv172.i)
  %cmp7.not.i.i = icmp eq i32 %shr.i.i, %indvars.iv172.i
  %or.cond121.i = select i1 %88, i1 %cmp7.not.i.i, i1 false
  br i1 %or.cond121.i, label %for.inc172.i.if.end.i.i_crit_edge, label %for.inc172.i.for.inc175.i_crit_edge

for.inc172.i.for.inc175.i_crit_edge:              ; preds = %for.inc172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc175.i

for.inc172.i.if.end.i.i_crit_edge:                ; preds = %for.inc172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.inc175.i:                                     ; preds = %for.inc172.i.for.inc175.i_crit_edge, %for.cond158.preheader.i.for.inc175.i_crit_edge
  %k.1.lcssa.i = phi i8 [ %k.0144.i, %for.cond158.preheader.i.for.inc175.i_crit_edge ], [ %k.2.i, %for.inc172.i.for.inc175.i_crit_edge ]
  %.lcssa129.i = phi ptr [ %eromptr.12, %for.cond158.preheader.i.for.inc175.i_crit_edge ], [ %eromptr.16, %for.inc172.i.for.inc175.i_crit_edge ]
  %indvars.iv.next173.i = add nuw nsw i32 %indvars.iv172.i, 1
  %exitcond174.not.i = icmp eq i32 %indvars.iv.next173.i, %conv22.i
  br i1 %exitcond174.not.i, label %for.inc175.i.for.cond178.preheader.i_crit_edge, label %for.inc175.i.for.cond158.preheader.i_crit_edge

for.inc175.i.for.cond158.preheader.i_crit_edge:   ; preds = %for.inc175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond158.preheader.i

for.inc175.i.for.cond178.preheader.i_crit_edge:   ; preds = %for.inc175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond178.preheader.i

for.cond185.preheader.i:                          ; preds = %for.inc204.i.for.cond185.preheader.i_crit_edge, %for.cond185.preheader.lr.ph.i
  %eromptr.17 = phi ptr [ %eromptr.13, %for.cond185.preheader.lr.ph.i ], [ %.lcssa128.i, %for.inc204.i.for.cond185.preheader.i_crit_edge ]
  %indvars.iv175.i = phi i32 [ 0, %for.cond185.preheader.lr.ph.i ], [ %indvars.iv.next176.i, %for.inc204.i.for.cond185.preheader.i_crit_edge ]
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.17) #7, !srcloc !201
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %91 = and i32 %90, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %91)
  %92 = icmp eq i32 %91, 197
  %and6.i45147.i = lshr i32 %90, 8
  %shr.i46148.i = and i32 %and6.i45147.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i46148.i, i32 %indvars.iv175.i)
  %cmp7.not.i48149.i = icmp eq i32 %shr.i46148.i, %indvars.iv175.i
  %or.cond122150.i = select i1 %92, i1 %cmp7.not.i48149.i, i1 false
  br i1 %or.cond122150.i, label %if.end.i53.lr.ph.i, label %for.cond185.preheader.i.for.inc204.i_crit_edge

for.cond185.preheader.i.for.inc204.i_crit_edge:   ; preds = %for.cond185.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc204.i

if.end.i53.lr.ph.i:                               ; preds = %for.cond185.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv175.i)
  %cmp192.i = icmp eq i32 %indvars.iv175.i, 0
  br label %if.end.i53.i

for.cond207.preheader.i:                          ; preds = %for.inc204.i.for.cond207.preheader.i_crit_edge, %for.cond178.preheader.i.for.cond207.preheader.i_crit_edge
  %eromptr.18 = phi ptr [ %eromptr.13, %for.cond178.preheader.i.for.cond207.preheader.i_crit_edge ], [ %.lcssa128.i, %for.inc204.i.for.cond207.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30.i)
  %cmp211163.not.i = icmp eq i32 %conv30.i, 0
  br i1 %cmp211163.not.i, label %for.cond207.preheader.i.for.end246.i_crit_edge, label %for.body213.lr.ph.i

for.cond207.preheader.i.for.end246.i_crit_edge:   ; preds = %for.cond207.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end246.i

for.body213.lr.ph.i:                              ; preds = %for.cond207.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv22.i)
  %cmp216.i = icmp ne i32 %conv22.i, 1
  %wrap238.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 10
  %93 = zext i1 %cmp216.i to i32
  br label %for.body213.i

if.end.i53.i:                                     ; preds = %for.inc201.i.if.end.i53.i_crit_edge, %if.end.i53.lr.ph.i
  %eromptr.17.pn = phi ptr [ %eromptr.17, %if.end.i53.lr.ph.i ], [ %eromptr.21, %for.inc201.i.if.end.i53.i_crit_edge ]
  %94 = phi i32 [ %90, %if.end.i53.lr.ph.i ], [ %101, %for.inc201.i.if.end.i53.i_crit_edge ]
  %j.1151.i = phi i8 [ 0, %if.end.i53.lr.ph.i ], [ %inc202.i, %for.inc201.i.if.end.i53.i_crit_edge ]
  %eromptr.19 = getelementptr i32, ptr %eromptr.17.pn, i32 1
  %and9.i50.i = and i32 %94, -4096
  %and10.i51.i = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i51.i)
  %tobool11.not.i52.i = icmp eq i32 %and10.i51.i, 0
  br i1 %tobool11.not.i52.i, label %if.end.i53.i.if.end14.i58.i_crit_edge, label %if.then12.i55.i

if.end.i53.i.if.end14.i58.i_crit_edge:            ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i58.i

if.then12.i55.i:                                  ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.19) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i3.i54.i = getelementptr i32, ptr %eromptr.17.pn, i32 2
  br label %if.end14.i58.i

if.end14.i58.i:                                   ; preds = %if.then12.i55.i, %if.end.i53.i.if.end14.i58.i_crit_edge
  %eromptr.20 = phi ptr [ %eromptr.19, %if.end.i53.i.if.end14.i58.i_crit_edge ], [ %incdec.ptr.i3.i54.i, %if.then12.i55.i ]
  %and15.i56.i = and i32 %94, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and15.i56.i)
  %cmp16.i57.i = icmp eq i32 %and15.i56.i, 48
  br i1 %cmp16.i57.i, label %if.then18.i61.i, label %if.end14.i58.i.if.else190.i_crit_edge

if.end14.i58.i.if.else190.i_crit_edge:            ; preds = %if.end14.i58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190.i

if.then18.i61.i:                                  ; preds = %if.end14.i58.i
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.20) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i4.i59.i = getelementptr i32, ptr %eromptr.20, i32 1
  %97 = and i32 %96, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool21.not.i60.i = icmp eq i32 %97, 0
  br i1 %tobool21.not.i60.i, label %if.then18.i61.i.if.else190.i_crit_edge, label %bcma_erom_get_addr_desc.exit68.i

if.then18.i61.i.if.else190.i_crit_edge:           ; preds = %if.then18.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190.i

bcma_erom_get_addr_desc.exit68.i:                 ; preds = %if.then18.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i4.i59.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i5.i62.i = getelementptr i32, ptr %eromptr.20, i32 2
  br label %if.else190.i

if.else190.i:                                     ; preds = %bcma_erom_get_addr_desc.exit68.i, %if.then18.i61.i.if.else190.i_crit_edge, %if.end14.i58.i.if.else190.i_crit_edge
  %eromptr.21 = phi ptr [ %incdec.ptr.i4.i59.i, %if.then18.i61.i.if.else190.i_crit_edge ], [ %incdec.ptr.i5.i62.i, %bcma_erom_get_addr_desc.exit68.i ], [ %eromptr.20, %if.end14.i58.i.if.else190.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1151.i)
  %cmp196.i = icmp eq i8 %j.1151.i, 0
  %or.cond3.i = select i1 %cmp192.i, i1 %cmp196.i, i1 false
  br i1 %or.cond3.i, label %if.then198.i, label %if.else190.i.for.inc201.i_crit_edge

if.else190.i.for.inc201.i_crit_edge:              ; preds = %if.else190.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc201.i

if.then198.i:                                     ; preds = %if.else190.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and9.i50.i, ptr %wrap.i, align 8
  br label %for.inc201.i

for.inc201.i:                                     ; preds = %if.then198.i, %if.else190.i.for.inc201.i_crit_edge
  %inc202.i = add i8 %j.1151.i, 1
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.21) #7, !srcloc !201
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %102 = and i32 %101, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %102)
  %103 = icmp eq i32 %102, 197
  %and6.i45.i = lshr i32 %101, 8
  %shr.i46.i = and i32 %and6.i45.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i46.i, i32 %indvars.iv175.i)
  %cmp7.not.i48.i = icmp eq i32 %shr.i46.i, %indvars.iv175.i
  %or.cond122.i = select i1 %103, i1 %cmp7.not.i48.i, i1 false
  br i1 %or.cond122.i, label %for.inc201.i.if.end.i53.i_crit_edge, label %for.inc201.i.for.inc204.i_crit_edge

for.inc201.i.for.inc204.i_crit_edge:              ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc204.i

for.inc201.i.if.end.i53.i_crit_edge:              ; preds = %for.inc201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i53.i

for.inc204.i:                                     ; preds = %for.inc201.i.for.inc204.i_crit_edge, %for.cond185.preheader.i.for.inc204.i_crit_edge
  %.lcssa128.i = phi ptr [ %eromptr.17, %for.cond185.preheader.i.for.inc204.i_crit_edge ], [ %eromptr.21, %for.inc201.i.for.inc204.i_crit_edge ]
  %indvars.iv.next176.i = add nuw nsw i32 %indvars.iv175.i, 1
  %exitcond177.not.i = icmp eq i32 %indvars.iv.next176.i, %conv26.i
  br i1 %exitcond177.not.i, label %for.inc204.i.for.cond207.preheader.i_crit_edge, label %for.inc204.i.for.cond185.preheader.i_crit_edge

for.inc204.i.for.cond185.preheader.i_crit_edge:   ; preds = %for.inc204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond185.preheader.i

for.inc204.i.for.cond207.preheader.i_crit_edge:   ; preds = %for.inc204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond207.preheader.i

for.body213.i:                                    ; preds = %for.end243.i.for.body213.i_crit_edge, %for.body213.lr.ph.i
  %eromptr.22 = phi ptr [ %eromptr.18, %for.body213.lr.ph.i ], [ %.lcssa127.i, %for.end243.i.for.body213.i_crit_edge ]
  %indvars.iv178.i = phi i32 [ 0, %for.body213.lr.ph.i ], [ %indvars.iv.next179.i, %for.end243.i.for.body213.i_crit_edge ]
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.22) #7, !srcloc !201
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %106 = and i32 %105, 199
  call void @__sanitizer_cov_trace_const_cmp4(i32 133, i32 %106)
  %107 = icmp eq i32 %106, 133
  br i1 %107, label %lor.lhs.false5.i77.lr.ph.i, label %for.body213.i.for.end243.i_crit_edge

for.body213.i.for.end243.i_crit_edge:             ; preds = %for.body213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end243.i

lor.lhs.false5.i77.lr.ph.i:                       ; preds = %for.body213.i
  %108 = add nuw nsw i32 %indvars.iv178.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv178.i)
  %tobool234.not.i = icmp eq i32 %indvars.iv178.i, 0
  %or.cond4.i = select i1 %cmp182154.not.i, i1 %tobool234.not.i, i1 false
  br label %lor.lhs.false5.i77.i

lor.lhs.false5.i77.i:                             ; preds = %for.inc241.i.lor.lhs.false5.i77.i_crit_edge, %lor.lhs.false5.i77.lr.ph.i
  %109 = phi ptr [ %eromptr.22, %lor.lhs.false5.i77.lr.ph.i ], [ %eromptr.25, %for.inc241.i.lor.lhs.false5.i77.i_crit_edge ]
  %110 = phi i32 [ %105, %lor.lhs.false5.i77.lr.ph.i ], [ %117, %for.inc241.i.lor.lhs.false5.i77.i_crit_edge ]
  %j.2159.i = phi i8 [ 0, %lor.lhs.false5.i77.lr.ph.i ], [ %inc242.i, %for.inc241.i.lor.lhs.false5.i77.i_crit_edge ]
  %eromptr.23 = getelementptr i32, ptr %109, i32 1
  %and6.i73.i = lshr i32 %110, 8
  %shr.i74.i = and i32 %and6.i73.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i74.i, i32 %108)
  %cmp7.not.i76.i = icmp eq i32 %shr.i74.i, %108
  br i1 %cmp7.not.i76.i, label %if.end.i81.i, label %lor.lhs.false5.i77.i.for.end243.i_crit_edge

lor.lhs.false5.i77.i.for.end243.i_crit_edge:      ; preds = %lor.lhs.false5.i77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end243.i

if.end.i81.i:                                     ; preds = %lor.lhs.false5.i77.i
  %and9.i78.i = and i32 %110, -4096
  %and10.i79.i = and i32 %110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i79.i)
  %tobool11.not.i80.i = icmp eq i32 %and10.i79.i, 0
  br i1 %tobool11.not.i80.i, label %if.end.i81.i.if.end14.i86.i_crit_edge, label %if.then12.i83.i

if.end.i81.i.if.end14.i86.i_crit_edge:            ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i86.i

if.then12.i83.i:                                  ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.23) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i3.i82.i = getelementptr i32, ptr %109, i32 2
  br label %if.end14.i86.i

if.end14.i86.i:                                   ; preds = %if.then12.i83.i, %if.end.i81.i.if.end14.i86.i_crit_edge
  %eromptr.24 = phi ptr [ %eromptr.23, %if.end.i81.i.if.end14.i86.i_crit_edge ], [ %incdec.ptr.i3.i82.i, %if.then12.i83.i ]
  %and15.i84.i = and i32 %110, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and15.i84.i)
  %cmp16.i85.i = icmp eq i32 %and15.i84.i, 48
  br i1 %cmp16.i85.i, label %if.then18.i89.i, label %if.end14.i86.i.if.else228.i_crit_edge

if.end14.i86.i.if.else228.i_crit_edge:            ; preds = %if.end14.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228.i

if.then18.i89.i:                                  ; preds = %if.end14.i86.i
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.24) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i4.i87.i = getelementptr i32, ptr %eromptr.24, i32 1
  %113 = and i32 %112, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool21.not.i88.i = icmp eq i32 %113, 0
  br i1 %tobool21.not.i88.i, label %if.then18.i89.i.if.else228.i_crit_edge, label %bcma_erom_get_addr_desc.exit96.i

if.then18.i89.i.if.else228.i_crit_edge:           ; preds = %if.then18.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228.i

bcma_erom_get_addr_desc.exit96.i:                 ; preds = %if.then18.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %incdec.ptr.i4.i87.i) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %incdec.ptr.i5.i90.i = getelementptr i32, ptr %eromptr.24, i32 2
  br label %if.else228.i

if.else228.i:                                     ; preds = %bcma_erom_get_addr_desc.exit96.i, %if.then18.i89.i.if.else228.i_crit_edge, %if.end14.i86.i.if.else228.i_crit_edge
  %eromptr.25 = phi ptr [ %incdec.ptr.i4.i87.i, %if.then18.i89.i.if.else228.i_crit_edge ], [ %incdec.ptr.i5.i90.i, %bcma_erom_get_addr_desc.exit96.i ], [ %eromptr.24, %if.end14.i86.i.if.else228.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.2159.i)
  %tobool236.not.i = icmp eq i8 %j.2159.i, 0
  %or.cond5.i = select i1 %or.cond4.i, i1 %tobool236.not.i, i1 false
  br i1 %or.cond5.i, label %if.then237.i, label %if.else228.i.for.inc241.i_crit_edge

if.else228.i.for.inc241.i_crit_edge:              ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc241.i

if.then237.i:                                     ; preds = %if.else228.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %wrap238.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and9.i78.i, ptr %wrap238.i, align 8
  br label %for.inc241.i

for.inc241.i:                                     ; preds = %if.then237.i, %if.else228.i.for.inc241.i_crit_edge
  %inc242.i = add i8 %j.2159.i, 1
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %eromptr.25) #7, !srcloc !201
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  %118 = and i32 %117, 199
  %119 = icmp eq i32 %118, 133
  br i1 %119, label %for.inc241.i.lor.lhs.false5.i77.i_crit_edge, label %for.inc241.i.for.end243.i_crit_edge

for.inc241.i.for.end243.i_crit_edge:              ; preds = %for.inc241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end243.i

for.inc241.i.lor.lhs.false5.i77.i_crit_edge:      ; preds = %for.inc241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false5.i77.i

for.end243.i:                                     ; preds = %for.inc241.i.for.end243.i_crit_edge, %lor.lhs.false5.i77.i.for.end243.i_crit_edge, %for.body213.i.for.end243.i_crit_edge
  %.lcssa127.i = phi ptr [ %eromptr.22, %for.body213.i.for.end243.i_crit_edge ], [ %eromptr.25, %for.inc241.i.for.end243.i_crit_edge ], [ %109, %lor.lhs.false5.i77.i.for.end243.i_crit_edge ]
  %indvars.iv.next179.i = add nuw nsw i32 %indvars.iv178.i, 1
  %exitcond181.not.i = icmp eq i32 %indvars.iv.next179.i, %conv30.i
  br i1 %exitcond181.not.i, label %for.end243.i.for.end246.i_crit_edge, label %for.end243.i.for.body213.i_crit_edge

for.end243.i.for.body213.i_crit_edge:             ; preds = %for.end243.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body213.i

for.end243.i.for.end246.i_crit_edge:              ; preds = %for.end243.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end246.i

for.end246.i:                                     ; preds = %for.end243.i.for.end246.i_crit_edge, %for.cond207.preheader.i.for.end246.i_crit_edge
  %eromptr.26 = phi ptr [ %eromptr.18, %for.cond207.preheader.i.for.end246.i_crit_edge ], [ %.lcssa127.i, %for.end243.i.for.end246.i_crit_edge ]
  %120 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp247.i = icmp eq i32 %121, 2
  br i1 %cmp247.i, label %if.then249.i, label %for.end246.i.if.end27_crit_edge

for.end246.i.if.end27_crit_edge:                  ; preds = %for.end246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then249.i:                                     ; preds = %for.end246.i
  %122 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %addr.i, align 4
  %call251.i = tail call ptr @ioremap(i32 noundef %123, i32 noundef 4096) #7
  %io_addr.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 11
  %124 = ptrtoint ptr %io_addr.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call251.i, ptr %io_addr.i, align 4
  %tobool253.not.i = icmp eq ptr %call251.i, null
  br i1 %tobool253.not.i, label %if.then249.i.if.end26_crit_edge, label %if.end255.i

if.then249.i.if.end26_crit_edge:                  ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end255.i:                                      ; preds = %if.then249.i
  %wrap256.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 10
  %125 = ptrtoint ptr %wrap256.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wrap256.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool257.not.i = icmp eq i32 %126, 0
  br i1 %tobool257.not.i, label %if.end255.i.if.end27_crit_edge, label %if.then258.i

if.end255.i.if.end27_crit_edge:                   ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then258.i:                                     ; preds = %if.end255.i
  %call260.i = tail call ptr @ioremap(i32 noundef %126, i32 noundef 4096) #7
  %io_wrap.i = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 12
  %127 = ptrtoint ptr %io_wrap.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call260.i, ptr %io_wrap.i, align 8
  %tobool262.not.i = icmp eq ptr %call260.i, null
  br i1 %tobool262.not.i, label %if.then263.i, label %if.then258.i.if.end27_crit_edge

if.then258.i.if.end27_crit_edge:                  ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then263.i:                                     ; preds = %if.then258.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_addr.i.le = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 11
  %128 = ptrtoint ptr %io_addr.i.le to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %io_addr.i.le, align 4
  tail call void @iounmap(ptr noundef %129) #7
  br label %if.end26

if.then15.thread208:                              ; preds = %do.end.i, %while.cond.i22.i.if.then15.thread208_crit_edge, %while.cond.i17.i.if.then15.thread208_crit_edge, %while.cond.i.i.if.then15.thread208_crit_edge
  %eromptr.27.ph.ph207 = phi ptr [ %eromptr.11, %do.end.i ], [ %eromptr.2, %while.cond.i.i.if.then15.thread208_crit_edge ], [ %eromptr.3, %while.cond.i17.i.if.then15.thread208_crit_edge ], [ %eromptr.4, %while.cond.i22.i.if.then15.thread208_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.then17:                                        ; preds = %while.cond.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %inc = add i32 %core_num.0245, 1
  br label %cleanup

if.end26:                                         ; preds = %if.then263.i, %if.then249.i.if.end26_crit_edge, %bcma_erom_get_addr_desc.exit.if.end26_crit_edge, %if.then141.i.if.end26_crit_edge, %for.body.i.if.end26_crit_edge, %if.end3.i.if.end26_crit_edge, %if.then.i101.if.end26_crit_edge
  %eromptr.27.ph.ph = phi ptr [ %eromptr.1244, %if.then.i101.if.end26_crit_edge ], [ %eromptr.26, %if.then263.i ], [ %incdec.ptr.i.i31.i, %for.body.i.if.end26_crit_edge ], [ %eromptr.9194, %if.then141.i.if.end26_crit_edge ], [ %eromptr.26, %if.then249.i.if.end26_crit_edge ], [ %eromptr.11, %bcma_erom_get_addr_desc.exit.if.end26_crit_edge ], [ %incdec.ptr.i.i6.i, %if.end3.i.if.end26_crit_edge ]
  %retval.2.i.ph.ph = phi i32 [ -84, %if.then.i101.if.end26_crit_edge ], [ -12, %if.then263.i ], [ -84, %for.body.i.if.end26_crit_edge ], [ -84, %if.then141.i.if.end26_crit_edge ], [ -12, %if.then249.i.if.end26_crit_edge ], [ -84, %bcma_erom_get_addr_desc.exit.if.end26_crit_edge ], [ -84, %if.end3.i.if.end26_crit_edge ]
  br label %out.sink.split

if.end27:                                         ; preds = %if.then258.i.if.end27_crit_edge, %if.end255.i.if.end27_crit_edge, %for.end246.i.if.end27_crit_edge
  %inc28 = add i32 %core_num.0245, 1
  %conv = trunc i32 %core_num.0245 to i8
  %core_index = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 6
  %130 = ptrtoint ptr %core_index to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv, ptr %core_index, align 1
  %131 = ptrtoint ptr %nr_cores to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nr_cores, align 4
  %inc30 = add i8 %132, 1
  store i8 %inc30, ptr %nr_cores, align 4
  %133 = ptrtoint ptr %id12.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %id12.i, align 2
  %135 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn17.i = load ptr, ptr %prev.i103, align 4
  %cmp.not18.i = icmp eq ptr %.pn17.i, %cores.i.i
  br i1 %cmp.not18.i, label %if.end27.cond.end_crit_edge, label %if.end27.for.body.i104_crit_edge

if.end27.for.body.i104_crit_edge:                 ; preds = %if.end27
  br label %for.body.i104

if.end27.cond.end_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

for.body.i104:                                    ; preds = %for.inc.i.for.body.i104_crit_edge, %if.end27.for.body.i104_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i104_crit_edge ], [ %.pn17.i, %if.end27.for.body.i104_crit_edge ]
  %id2.i = getelementptr i8, ptr %.pn19.i, i32 -1002
  %136 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %id2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %134)
  %cmp4.i = icmp eq i16 %137, %134
  br i1 %cmp4.i, label %bcma_find_core_reverse.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i104
  %prev8.i = getelementptr inbounds %struct.list_head, ptr %.pn19.i, i32 0, i32 1
  %138 = ptrtoint ptr %prev8.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i = load ptr, ptr %prev8.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i.i
  br i1 %cmp.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i104_crit_edge

for.inc.i.for.body.i104_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i104

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

bcma_find_core_reverse.exit:                      ; preds = %for.body.i104
  %core.0.le.i = getelementptr i8, ptr %.pn19.i, i32 -1008
  %cmp33 = icmp eq ptr %core.0.le.i, null
  br i1 %cmp33, label %bcma_find_core_reverse.exit.cond.end_crit_edge, label %cond.false

bcma_find_core_reverse.exit.cond.end_crit_edge:   ; preds = %bcma_find_core_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %bcma_find_core_reverse.exit
  call void @__sanitizer_cov_trace_pc() #9
  %core_unit = getelementptr i8, ptr %.pn19.i, i32 -54
  %139 = ptrtoint ptr %core_unit to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %core_unit, align 2
  %add = add i8 %140, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %bcma_find_core_reverse.exit.cond.end_crit_edge, %for.inc.i.cond.end_crit_edge, %if.end27.cond.end_crit_edge
  %cond = phi i8 [ %add, %cond.false ], [ 0, %bcma_find_core_reverse.exit.cond.end_crit_edge ], [ 0, %if.end27.cond.end_crit_edge ], [ 0, %for.inc.i.cond.end_crit_edge ]
  %core_unit37 = getelementptr inbounds %struct.bcma_device, ptr %call7.i.i, i32 0, i32 7
  %141 = ptrtoint ptr %core_unit37 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %cond, ptr %core_unit37, align 2
  tail call void @bcma_prepare_core(ptr noundef %bus, ptr noundef nonnull %call7.i.i) #7
  %142 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus, align 4
  %144 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %num, align 1
  %conv38 = zext i8 %145 to i32
  %146 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %core_index, align 1
  %conv40 = zext i8 %147 to i32
  %148 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %id.i, align 4
  %150 = zext i16 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %149, label %cond.end.bcma_device_name.exit_crit_edge [
    i16 1083, label %cond.end.sw.epilog.i_crit_edge
    i16 1215, label %sw.bb1.i
    i16 1191, label %sw.bb2.i
  ]

cond.end.sw.epilog.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

cond.end.bcma_device_name.exit_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_device_name.exit

sw.bb1.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %cond.end.sw.epilog.i_crit_edge
  %names.0.i = phi ptr [ @bcma_mips_device_names, %sw.bb2.i ], [ @bcma_bcm_device_names, %sw.bb1.i ], [ @bcma_arm_device_names, %cond.end.sw.epilog.i_crit_edge ]
  %size.0.i = phi i32 [ 3, %sw.bb2.i ], [ 74, %sw.bb1.i ], [ 4, %cond.end.sw.epilog.i_crit_edge ]
  %151 = ptrtoint ptr %id12.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %id12.i, align 2
  br label %for.body.i105

for.body.i105:                                    ; preds = %for.inc.i108.for.body.i105_crit_edge, %sw.epilog.i
  %i.019.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %for.inc.i108.for.body.i105_crit_edge ]
  %arrayidx.i = getelementptr %struct.bcma_device_id_name, ptr %names.0.i, i32 %i.019.i
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %154, i16 %152)
  %cmp8.i = icmp eq i16 %154, %152
  br i1 %cmp8.i, label %if.then.i106, label %for.inc.i108

if.then.i106:                                     ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr %struct.bcma_device_id_name, ptr %names.0.i, i32 %i.019.i, i32 1
  %155 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %name.i, align 4
  br label %bcma_device_name.exit

for.inc.i108:                                     ; preds = %for.body.i105
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i107 = icmp eq i32 %inc.i, %size.0.i
  br i1 %exitcond.not.i107, label %for.inc.i108.bcma_device_name.exit_crit_edge, label %for.inc.i108.for.body.i105_crit_edge

for.inc.i108.for.body.i105_crit_edge:             ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i105

for.inc.i108.bcma_device_name.exit_crit_edge:     ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcma_device_name.exit

bcma_device_name.exit:                            ; preds = %for.inc.i108.bcma_device_name.exit_crit_edge, %if.then.i106, %cond.end.bcma_device_name.exit_crit_edge
  %retval.0.i109 = phi ptr [ %156, %if.then.i106 ], [ @.str.11, %cond.end.bcma_device_name.exit_crit_edge ], [ @.str.11, %for.inc.i108.bcma_device_name.exit_crit_edge ]
  %conv44 = zext i16 %149 to i32
  %157 = ptrtoint ptr %id12.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %id12.i, align 2
  %conv47 = zext i16 %158 to i32
  %159 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %rev.i, align 8
  %conv49 = zext i8 %160 to i32
  %161 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %class.i, align 1
  %conv51 = zext i8 %162 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %143, ptr noundef nonnull @.str.7, i32 noundef %conv38, i32 noundef %conv40, ptr noundef %retval.0.i109, i32 noundef %conv44, i32 noundef %conv47, i32 noundef %conv49, i32 noundef %conv51) #10
  %163 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i103, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %164, ptr noundef %cores.i.i) #7
  br i1 %call.i.i, label %if.end.i.i111, label %bcma_device_name.exit.cleanup_crit_edge

bcma_device_name.exit.cleanup_crit_edge:          ; preds = %bcma_device_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i111:                                    ; preds = %bcma_device_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %list, ptr %prev.i103, align 4
  %166 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %cores.i.i, ptr %list, align 8
  %167 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %prev.i, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %list, ptr %164, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i111, %bcma_device_name.exit.cleanup_crit_edge, %if.then17, %if.then15.thread208
  %eromptr.28 = phi ptr [ %eromptr.5, %if.then17 ], [ %eromptr.27.ph.ph207, %if.then15.thread208 ], [ %eromptr.26, %bcma_device_name.exit.cleanup_crit_edge ], [ %eromptr.26, %if.end.i.i111 ]
  %core_num.1 = phi i32 [ %inc, %if.then17 ], [ %core_num.0245, %if.then15.thread208 ], [ %inc28, %bcma_device_name.exit.cleanup_crit_edge ], [ %inc28, %if.end.i.i111 ]
  %cmp7 = icmp ult ptr %eromptr.28, %add.ptr
  br i1 %cmp7, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out.sink.split:                                   ; preds = %if.end26, %if.then.i101.out.sink.split_crit_edge
  %eromptr.30.ph = phi ptr [ %eromptr.27.ph.ph, %if.end26 ], [ %eromptr.1244, %if.then.i101.out.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %retval.2.i.ph.ph, %if.end26 ], [ 0, %if.then.i101.out.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

out:                                              ; preds = %out.sink.split, %cleanup.out_crit_edge, %while.body.out_crit_edge, %bcma_scan_switch_core.exit.out_crit_edge
  %eromptr.30 = phi ptr [ %eromptr.0, %bcma_scan_switch_core.exit.out_crit_edge ], [ %eromptr.30.ph, %out.sink.split ], [ %eromptr.28, %cleanup.out_crit_edge ], [ %eromptr.1244, %while.body.out_crit_edge ]
  %err.1 = phi i32 [ 0, %bcma_scan_switch_core.exit.out_crit_edge ], [ %err.1.ph, %out.sink.split ], [ 0, %cleanup.out_crit_edge ], [ -12, %while.body.out_crit_edge ]
  %169 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %170)
  %cmp55 = icmp eq i32 %170, 2
  br i1 %cmp55, label %if.then57, label %out.cleanup59_crit_edge

out.cleanup59_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.then57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef %eromptr.30) #7
  br label %cleanup59

cleanup59:                                        ; preds = %if.then57, %out.cleanup59_crit_edge, %if.then1.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup59_crit_edge ], [ -12, %if.then1.cleanup59_crit_edge ], [ %err.1, %if.then57 ], [ %err.1, %out.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_prepare_core(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/scan.c", i32 451, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bcma/scan.c", i32 451, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/bcma/scan.c", i32 452, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bcma_detect_chip._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @bcma_detect_chip._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/bcma/scan.c", i32 510, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bcma_bus_scan._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bcma_bus_scan._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bcma/scan.c", i32 363, i32 4}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcma_get_next_core._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcma_get_next_core._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bcma/scan.c", i32 133, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bcma/scan.c", i32 24, i32 36}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bcma/scan.c", i32 25, i32 24}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/bcma/scan.c", i32 26, i32 25}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bcma/scan.c", i32 27, i32 23}
!32 = !{ptr @bcma_arm_device_names, !33, !"bcma_arm_device_names", i1 false, i1 false}
!33 = !{!"../drivers/bcma/scan.c", i32 23, i32 41}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bcma/scan.c", i32 31, i32 26}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bcma/scan.c", i32 32, i32 31}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bcma/scan.c", i32 33, i32 28}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bcma/scan.c", i32 34, i32 29}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bcma/scan.c", i32 35, i32 25}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bcma/scan.c", i32 36, i32 22}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bcma/scan.c", i32 37, i32 24}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bcma/scan.c", i32 38, i32 24}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bcma/scan.c", i32 39, i32 24}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bcma/scan.c", i32 40, i32 25}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bcma/scan.c", i32 41, i32 24}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bcma/scan.c", i32 42, i32 22}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bcma/scan.c", i32 43, i32 23}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bcma/scan.c", i32 44, i32 23}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bcma/scan.c", i32 45, i32 31}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bcma/scan.c", i32 46, i32 22}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bcma/scan.c", i32 47, i32 21}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bcma/scan.c", i32 48, i32 20}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bcma/scan.c", i32 49, i32 23}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bcma/scan.c", i32 50, i32 26}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bcma/scan.c", i32 51, i32 23}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bcma/scan.c", i32 52, i32 20}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bcma/scan.c", i32 53, i32 21}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bcma/scan.c", i32 54, i32 19}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bcma/scan.c", i32 55, i32 24}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bcma/scan.c", i32 56, i32 19}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bcma/scan.c", i32 57, i32 29}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bcma/scan.c", i32 58, i32 20}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bcma/scan.c", i32 59, i32 24}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bcma/scan.c", i32 60, i32 21}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bcma/scan.c", i32 61, i32 22}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bcma/scan.c", i32 62, i32 22}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/bcma/scan.c", i32 63, i32 28}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/bcma/scan.c", i32 64, i32 26}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bcma/scan.c", i32 65, i32 20}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/bcma/scan.c", i32 66, i32 21}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bcma/scan.c", i32 67, i32 21}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/bcma/scan.c", i32 68, i32 21}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bcma/scan.c", i32 69, i32 21}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/bcma/scan.c", i32 70, i32 21}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bcma/scan.c", i32 71, i32 26}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/bcma/scan.c", i32 72, i32 25}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bcma/scan.c", i32 73, i32 26}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/bcma/scan.c", i32 74, i32 25}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bcma/scan.c", i32 75, i32 25}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/bcma/scan.c", i32 76, i32 26}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/bcma/scan.c", i32 77, i32 24}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/bcma/scan.c", i32 78, i32 27}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/bcma/scan.c", i32 79, i32 29}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/bcma/scan.c", i32 80, i32 20}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/bcma/scan.c", i32 81, i32 21}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/bcma/scan.c", i32 82, i32 24}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bcma/scan.c", i32 83, i32 27}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/bcma/scan.c", i32 84, i32 22}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/bcma/scan.c", i32 85, i32 19}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/bcma/scan.c", i32 86, i32 23}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/bcma/scan.c", i32 87, i32 24}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/bcma/scan.c", i32 88, i32 22}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/bcma/scan.c", i32 89, i32 24}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/bcma/scan.c", i32 90, i32 29}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/bcma/scan.c", i32 91, i32 23}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/bcma/scan.c", i32 92, i32 30}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bcma/scan.c", i32 93, i32 29}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/bcma/scan.c", i32 94, i32 30}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/bcma/scan.c", i32 95, i32 24}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/bcma/scan.c", i32 96, i32 19}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/bcma/scan.c", i32 97, i32 32}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/bcma/scan.c", i32 98, i32 20}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bcma/scan.c", i32 99, i32 21}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/bcma/scan.c", i32 100, i32 23}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/bcma/scan.c", i32 101, i32 19}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bcma/scan.c", i32 102, i32 20}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/bcma/scan.c", i32 103, i32 23}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/bcma/scan.c", i32 104, i32 23}
!182 = !{ptr @bcma_bcm_device_names, !183, !"bcma_bcm_device_names", i1 false, i1 false}
!183 = !{!"../drivers/bcma/scan.c", i32 30, i32 41}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/bcma/scan.c", i32 108, i32 20}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/bcma/scan.c", i32 109, i32 25}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/bcma/scan.c", i32 110, i32 24}
!190 = !{ptr @bcma_mips_device_names, !191, !"bcma_mips_device_names", i1 false, i1 false}
!191 = !{!"../drivers/bcma/scan.c", i32 107, i32 41}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{i64 5015961}
!202 = !{i64 2154877386}
!203 = !{i64 2154877841}
