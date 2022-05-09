; ModuleID = '/llk/IR_all_yes/drivers/ssb/scan.c_pt.bc'
source_filename = "../drivers/ssb/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.69, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.69 = type { ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ChipCommon\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ILine 20\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDRAM\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIPS\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V90\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB 1.1 Hostdev\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADSL\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ILine 100\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IPSEC\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Internal Memory\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MEMC SDRAM\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EXTIF\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEEE 802.11\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIPS 3302\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB 1.1 Host\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB 1.1 Device\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB 2.0 Host\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB 2.0 Device\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SDIO Host\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Roboswitch\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PATA\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SATA XOR-DMA\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GBit Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCI-E\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIMO PHY\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SRAM Controller\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mini MACPHY\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ARM 1176\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ARM 7TDMI\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ARM Cortex M3\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.36, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ssb: Found chip with id 0x%04X, rev 0x%02X and package 0x%02X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssb_bus_scan\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/ssb/scan.c\00", [45 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry_ptr = internal global ptr @ssb_bus_scan._entry, section ".printk_index", align 4
@ssb_bus_scan._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.36, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ssb: More than %d ssb cores found (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry_ptr.39 = internal global ptr @ssb_bus_scan._entry.37, section ".printk_index", align 4
@ssb_bus_scan.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.35, ptr @.str.36, ptr @.str.41, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssb\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Core %d found: %s (cc 0x%03X, rev 0x%02X, vendor 0x%04X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ssb: Core %d found: %s (cc 0x%03X, rev 0x%02X, vendor 0x%04X)\0A\00", [33 x i8] zeroinitializer }, align 32
@ssb_bus_scan.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.35, ptr @.str.36, ptr @.str.43, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ignoring additional 802.11 core\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ssb: Ignoring additional 802.11 core\0A\00", [58 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.36, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ssb: WARNING: Multiple ChipCommon found\0A\00", [53 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry_ptr.47 = internal global ptr @ssb_bus_scan._entry.45, section ".printk_index", align 4
@ssb_bus_scan._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.36, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014ssb: WARNING: Multiple PCI(E) cores found\0A\00", [51 x i8] zeroinitializer }, align 32
@ssb_bus_scan._entry_ptr.50 = internal global ptr @ssb_bus_scan._entry.48, section ".printk_index", align 4
@pcidev_to_chipid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.36, i32 128, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCI-ID not in fallback list\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcidev_to_chipid\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcidev_to_chipid._entry_ptr = internal global ptr @pcidev_to_chipid._entry, section ".printk_index", align 4
@chipid_to_nrcores._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.36, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ssb: CHIPID not in nrcores fallback list\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chipid_to_nrcores\00", [46 x i8] zeroinitializer }, align 32
@chipid_to_nrcores._entry_ptr = internal global ptr @chipid_to_nrcores._entry, section ".printk_index", align 4
@switch.table.ssb_core_name = internal constant { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.33, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.33, ptr @.str.14, ptr @.str.15, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.32], [52 x i8] zeroinitializer }, align 32
@switch.table.ssb_bus_scan = internal constant { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.33, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.33, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.33, ptr @.str.14, ptr @.str.15, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.32], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 2052, i64 2054, i64 2066, i64 2080]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 16, i64 17171, i64 17178, i64 17185, i64 17188]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [28 x i64] [i64 26, i64 16, i64 5900, i64 17153, i64 17157, i64 17158, i64 17159, i64 17184, i64 17185, i64 17186, i64 17187, i64 17188, i64 17189, i64 17409, i64 17410, i64 17411, i64 17936, i64 17937, i64 17938, i64 17939, i64 17940, i64 17941, i64 18192, i64 18193, i64 18194, i64 18195, i64 18196, i64 18197]
@__sancov_gen_cov_switch_values.67 = internal global [12 x i64] [i64 10, i64 16, i64 17153, i64 17158, i64 17159, i64 17168, i64 17409, i64 17410, i64 17936, i64 18180, i64 18192, i64 21349]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 30, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 32, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 34, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 36, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 38, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 40, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 42, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 44, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 46, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 48, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 50, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 52, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 54, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 56, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 58, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 60, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 62, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 64, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 66, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 68, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 70, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 72, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 74, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 76, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 78, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 80, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 82, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 84, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 86, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 88, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 90, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 92, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 94, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 96, i32 9 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 321, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 326, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 359, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 368, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 384, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 415, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 128, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [22 x i8] c"../drivers/ssb/scan.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 154, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"switch.table.ssb_core_name\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"switch.table.ssb_bus_scan\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @chipid_to_nrcores._entry, ptr @chipid_to_nrcores._entry_ptr, ptr @pcidev_to_chipid._entry, ptr @pcidev_to_chipid._entry_ptr, ptr @ssb_bus_scan._entry, ptr @ssb_bus_scan._entry.37, ptr @ssb_bus_scan._entry.45, ptr @ssb_bus_scan._entry.48, ptr @ssb_bus_scan._entry_ptr, ptr @ssb_bus_scan._entry_ptr.39, ptr @ssb_bus_scan._entry_ptr.47, ptr @ssb_bus_scan._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.ssb_core_name, ptr @switch.table.ssb_bus_scan], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_bus_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_bus_scan._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_bus_scan._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_bus_scan._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcidev_to_chipid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipid_to_nrcores._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssb_core_name to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssb_bus_scan to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ssb_core_name(i16 noundef zeroext %coreid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i16 %coreid, -2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %switch.tableidx)
  %0 = icmp ult i16 %switch.tableidx, 43
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [43 x ptr], ptr @switch.table.ssb_core_name, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.33, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_iounmap(ptr nocapture noundef %bus) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge9
    i32 1, label %sw.bb1
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  tail call void @iounmap(ptr noundef %4) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  tail call void @pci_iounmap(ptr noundef %7, ptr noundef %9) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bus, align 4
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 2
  %11 = ptrtoint ptr %mapped_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mapped_device, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_bus_scan(ptr noundef %bus, i32 noundef %baseaddr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %entry.out_crit_edge [
    i32 0, label %entry.sw.bb1.i_crit_edge
    i32 2, label %entry.sw.bb1.i_crit_edge388
    i32 1, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

entry.sw.bb1.i_crit_edge388:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge388
  %call.i = tail call ptr @ioremap(i32 noundef %baseaddr, i32 noundef 4096) #5
  br label %ssb_ioremap.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3.i = tail call ptr @pci_iomap(ptr noundef %5, i32 noundef 0, i32 noundef -1) #5
  br label %ssb_ioremap.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = inttoptr i32 %baseaddr to ptr
  br label %ssb_ioremap.exit

ssb_ioremap.exit:                                 ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb1.i
  %mmio.0.i = phi ptr [ %6, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ %call.i, %sw.bb1.i ]
  %tobool.not = icmp eq ptr %mmio.0.i, null
  br i1 %tobool.not, label %ssb_ioremap.exit.out_crit_edge, label %if.end

ssb_ioremap.exit.out_crit_edge:                   ; preds = %ssb_ioremap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %ssb_ioremap.exit
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mmio.0.i, ptr %bus, align 4
  %8 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bustype.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %9, label %if.end.if.end5_crit_edge [
    i32 3, label %sw.bb3.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i322
  ]

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i321 = tail call i32 @ssb_pci_switch_coreidx(ptr noundef %bus, i8 noundef zeroext 0) #5
  br label %scan_switchcore.exit

sw.bb1.i322:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %bus, i8 noundef zeroext 0) #5
  br label %scan_switchcore.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 @ssb_sdio_scan_switch_coreidx(ptr noundef %bus, i8 noundef zeroext 0) #5
  br label %scan_switchcore.exit

scan_switchcore.exit:                             ; preds = %sw.bb3.i, %sw.bb1.i322, %sw.bb.i
  %retval.0.i323 = phi i32 [ %call2.i, %sw.bb1.i322 ], [ %call.i321, %sw.bb.i ], [ %call4.i, %sw.bb3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i323)
  %tobool3.not = icmp eq i32 %retval.0.i323, 0
  br i1 %tobool3.not, label %if.end5thread-pre-split, label %scan_switchcore.exit.err_unmap_crit_edge

scan_switchcore.exit.err_unmap_crit_edge:         ; preds = %scan_switchcore.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.end5thread-pre-split:                          ; preds = %scan_switchcore.exit
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %bustype.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5thread-pre-split, %if.end.if.end5_crit_edge
  %12 = phi i32 [ %.pr, %if.end5thread-pre-split ], [ %9, %if.end.if.end5_crit_edge ]
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %12, label %sw.epilog.i [
    i32 2, label %sw.bb3.i326
    i32 3, label %sw.bb23.i
  ]

sw.bb3.i326:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call.i327 = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %bus, i8 noundef zeroext 1) #5
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 2044
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %add.ptr18.i = getelementptr i8, ptr %18, i32 2046
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %20 = call i16 @llvm.bswap.i16(i16 %16)
  %21 = zext i16 %20 to i32
  br label %scan_read32.exit

sw.bb23.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = tail call i32 @ssb_sdio_scan_read32(ptr noundef %bus, i16 noundef zeroext 4092) #5
  br label %scan_read32.exit

sw.epilog.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 4
  %add.ptr34.i = getelementptr i8, ptr %23, i32 4092
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #5, !srcloc !119
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %scan_read32.exit

scan_read32.exit:                                 ; preds = %sw.epilog.i, %sw.bb23.i, %sw.bb3.i326
  %retval.0.i328 = phi i32 [ %25, %sw.epilog.i ], [ %21, %sw.bb3.i326 ], [ %call29.i, %sw.bb23.i ]
  %nr_devices = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 15
  %26 = ptrtoint ptr %nr_devices to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %nr_devices, align 4
  %27 = and i32 %retval.0.i328, 36848
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %27)
  %cmp = icmp eq i32 %27, 32768
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %scan_read32.exit
  %and7 = and i32 %retval.0.i328, 12
  %and8 = lshr i32 %retval.0.i328, 8
  %shr9 = and i32 %and8, 112
  %or = or i32 %shr9, %and7
  %call11 = tail call fastcc i32 @scan_read32(ptr noundef %bus, i8 noundef zeroext 0, i16 noundef zeroext 0)
  %conv = trunc i32 %call11 to i16
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %28 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %chip_id, align 4
  %and13 = lshr i32 %call11, 16
  %29 = trunc i32 %and13 to i8
  %conv15 = and i8 %29, 15
  %chip_rev = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 10
  %30 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv15, ptr %chip_rev, align 2
  %and16 = lshr i32 %call11, 20
  %31 = trunc i32 %and16 to i8
  %conv18 = and i8 %31, 15
  %chip_package = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 13
  %32 = ptrtoint ptr %chip_package to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv18, ptr %chip_package, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp19.not = icmp eq i32 %or, 0
  br i1 %cmp19.not, label %if.then10.if.end26_crit_edge, label %if.then21

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %and22 = lshr i32 %call11, 24
  %33 = trunc i32 %and22 to i8
  %conv24 = and i8 %33, 15
  %34 = ptrtoint ptr %nr_devices to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv24, ptr %nr_devices, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then10.if.end26_crit_edge
  %call27 = tail call fastcc i32 @scan_read32(ptr noundef %bus, i8 noundef zeroext 0, i16 noundef zeroext 4)
  %capabilities = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call27, ptr %capabilities, align 4
  br label %do.end

if.else:                                          ; preds = %scan_read32.exit
  %36 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp28 = icmp eq i32 %37, 1
  br i1 %cmp28, label %if.then30, label %if.else35

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %38 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call31 = tail call fastcc zeroext i16 @pcidev_to_chipid(ptr noundef %40)
  %chip_id32 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %41 = ptrtoint ptr %chip_id32 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call31, ptr %chip_id32, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %revision, align 4
  %chip_rev33 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 10
  %46 = ptrtoint ptr %chip_rev33 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %chip_rev33, align 2
  %chip_package34 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 13
  %47 = ptrtoint ptr %chip_package34 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %chip_package34, align 4
  br label %do.end

if.else35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %chip_id36 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %48 = ptrtoint ptr %chip_id36 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 18192, ptr %chip_id36, align 4
  %chip_rev37 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 10
  %49 = ptrtoint ptr %chip_rev37 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %chip_rev37, align 2
  %chip_package38 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 13
  %50 = ptrtoint ptr %chip_package38 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %chip_package38, align 4
  br label %do.end

do.end:                                           ; preds = %if.else35, %if.then30, %if.end26
  %chip_id42 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %51 = ptrtoint ptr %chip_id42 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %chip_id42, align 4
  %conv43 = zext i16 %52 to i32
  %chip_rev44 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 10
  %53 = ptrtoint ptr %chip_rev44 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %chip_rev44, align 2
  %conv45 = zext i8 %54 to i32
  %chip_package46 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 13
  %55 = ptrtoint ptr %chip_package46 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_package46, align 4
  %conv47 = zext i8 %56 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %conv47) #8
  %57 = ptrtoint ptr %nr_devices to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nr_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool50.not = icmp eq i8 %58, 0
  br i1 %tobool50.not, label %if.then51, label %do.end.if.end55_crit_edge

do.end.if.end55_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %chip_id42 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %chip_id42, align 4
  %call53 = tail call fastcc zeroext i8 @chipid_to_nrcores(i16 noundef zeroext %60)
  %61 = ptrtoint ptr %nr_devices to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call53, ptr %nr_devices, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.end.if.end55_crit_edge
  %62 = phi i8 [ %call53, %if.then51 ], [ %58, %do.end.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %62)
  %cmp58 = icmp ugt i8 %62, 16
  br i1 %cmp58, label %do.end63, label %if.end68

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %conv57 = zext i8 %62 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 16, i32 noundef %conv57) #8
  br label %err_unmap

if.end68:                                         ; preds = %if.end55
  %63 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp70 = icmp eq i32 %64, 0
  br i1 %cmp70, label %if.then72, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then72:                                        ; preds = %if.end68
  tail call void @iounmap(ptr noundef nonnull %mmio.0.i) #5
  %65 = ptrtoint ptr %nr_devices to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_devices, align 4
  %conv74 = zext i8 %66 to i32
  %mul = shl nuw nsw i32 %conv74, 12
  %call75 = tail call ptr @ioremap(i32 noundef %baseaddr, i32 noundef %mul) #5
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then72.out_crit_edge, label %if.end78

if.then72.out_crit_edge:                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end78:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call75, ptr %bus, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %if.end68.if.end80_crit_edge
  %68 = ptrtoint ptr %nr_devices to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nr_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp83379.not = icmp eq i8 %69, 0
  br i1 %cmp83379.not, label %if.end80.for.end_crit_edge, label %for.body.lr.ph

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end80
  %ops = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 1
  %70 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %pcicore = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 18
  %chipco163 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev_i.0385 = phi i32 [ 0, %for.body.lr.ph ], [ %dev_i.1, %for.inc.for.body_crit_edge ]
  %i.0381 = phi i32 [ 0, %for.body.lr.ph ], [ %inc224, %for.inc.for.body_crit_edge ]
  %nr_80211_cores.0380 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_80211_cores.2, %for.inc.for.body_crit_edge ]
  %conv85 = trunc i32 %i.0381 to i8
  %71 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bustype.i, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %72, label %for.body.if.end89_crit_edge [
    i32 3, label %sw.bb3.i335
    i32 1, label %sw.bb.i331
    i32 2, label %sw.bb1.i333
  ]

for.body.if.end89_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

sw.bb.i331:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i330 = tail call i32 @ssb_pci_switch_coreidx(ptr noundef %bus, i8 noundef zeroext %conv85) #5
  br label %scan_switchcore.exit337

sw.bb1.i333:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i332 = tail call i32 @ssb_pcmcia_switch_coreidx(ptr noundef %bus, i8 noundef zeroext %conv85) #5
  br label %scan_switchcore.exit337

sw.bb3.i335:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i334 = tail call i32 @ssb_sdio_scan_switch_coreidx(ptr noundef %bus, i8 noundef zeroext %conv85) #5
  br label %scan_switchcore.exit337

scan_switchcore.exit337:                          ; preds = %sw.bb3.i335, %sw.bb1.i333, %sw.bb.i331
  %retval.0.i336 = phi i32 [ %call2.i332, %sw.bb1.i333 ], [ %call.i330, %sw.bb.i331 ], [ %call4.i334, %sw.bb3.i335 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i336)
  %tobool87.not = icmp eq i32 %retval.0.i336, 0
  br i1 %tobool87.not, label %if.end89thread-pre-split, label %scan_switchcore.exit337.err_unmap_crit_edge

scan_switchcore.exit337.err_unmap_crit_edge:      ; preds = %scan_switchcore.exit337
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.end89thread-pre-split:                         ; preds = %scan_switchcore.exit337
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr372 = load i32, ptr %bustype.i, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end89thread-pre-split, %for.body.if.end89_crit_edge
  %75 = phi i32 [ %.pr372, %if.end89thread-pre-split ], [ %72, %for.body.if.end89_crit_edge ]
  %arrayidx = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %75, label %if.end89.sw.epilog.i348_crit_edge [
    i32 0, label %sw.bb.i339
    i32 3, label %sw.bb23.i346
    i32 2, label %sw.bb3.i340
  ]

if.end89.sw.epilog.i348_crit_edge:                ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i348

sw.bb.i339:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = shl i32 %i.0381, 12
  %add.i = or i32 %mul.i, 4092
  br label %sw.epilog.i348

sw.bb3.i340:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call.i341 = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %bus, i8 noundef zeroext 1) #5
  %77 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus, align 4
  %add.ptr.i342 = getelementptr i8, ptr %78, i32 2044
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i342) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %80 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus, align 4
  %add.ptr18.i344 = getelementptr i8, ptr %81, i32 2046
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i344) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %83 = zext i16 %82 to i32
  %84 = zext i16 %79 to i32
  %85 = shl nuw i32 %84, 16
  %86 = or i32 %85, %83
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  br label %scan_read32.exit350

sw.bb23.i346:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %88 = trunc i32 %i.0381 to i16
  %mul25.i = shl i16 %88, 12
  %add27.i = or i16 %mul25.i, 4092
  %call29.i345 = tail call i32 @ssb_sdio_scan_read32(ptr noundef %bus, i16 noundef zeroext %add27.i) #5
  br label %scan_read32.exit350

sw.epilog.i348:                                   ; preds = %sw.bb.i339, %if.end89.sw.epilog.i348_crit_edge
  %offset.addr.1.i = phi i32 [ 4092, %if.end89.sw.epilog.i348_crit_edge ], [ %add.i, %sw.bb.i339 ]
  %89 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus, align 4
  %conv33.i = and i32 %offset.addr.1.i, 65535
  %add.ptr34.i347 = getelementptr i8, ptr %90, i32 %conv33.i
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i347) #5, !srcloc !119
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %scan_read32.exit350

scan_read32.exit350:                              ; preds = %sw.epilog.i348, %sw.bb23.i346, %sw.bb3.i340
  %retval.0.i349 = phi i32 [ %92, %sw.epilog.i348 ], [ %87, %sw.bb3.i340 ], [ %call29.i345, %sw.bb23.i346 ]
  %93 = trunc i32 %retval.0.i349 to i16
  %94 = lshr i16 %93, 4
  %conv94 = and i16 %94, 2303
  %id = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385, i32 4
  %coreid = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385, i32 4, i32 1
  %95 = ptrtoint ptr %coreid to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv94, ptr %coreid, align 2
  %conv96 = and i32 %retval.0.i349, 15
  %revision98 = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385, i32 4, i32 2
  %and99 = lshr i32 %retval.0.i349, 8
  %shr100 = and i32 %and99, 112
  %or104 = or i32 %shr100, %conv96
  %conv105 = trunc i32 %or104 to i8
  %96 = ptrtoint ptr %revision98 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv105, ptr %revision98, align 4
  %shr107 = lshr i32 %retval.0.i349, 16
  %conv108 = trunc i32 %shr107 to i16
  %97 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv108, ptr %id, align 4
  %core_index = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385, i32 5
  %98 = ptrtoint ptr %core_index to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv85, ptr %core_index, align 2
  %bus111 = getelementptr %struct.ssb_bus, ptr %bus, i32 0, i32 14, i32 %dev_i.0385, i32 3
  %99 = ptrtoint ptr %bus111 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %bus, ptr %bus111, align 4
  %100 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops, align 4
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_bus_scan.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_bus_scan, %if.then119)) #5
          to label %do.end134 [label %if.then119], !srcloc !121

if.then119:                                       ; preds = %scan_read32.exit350
  %103 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %coreid, align 2
  %switch.tableidx = add i16 %104, -2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 43, i16 %switch.tableidx)
  %105 = icmp ult i16 %switch.tableidx, 43
  br i1 %105, label %switch.lookup, label %if.then119.ssb_core_name.exit_crit_edge

if.then119.ssb_core_name.exit_crit_edge:          ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssb_core_name.exit

switch.lookup:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  %106 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [43 x ptr], ptr @switch.table.ssb_bus_scan, i32 0, i32 %106
  %107 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %107)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ssb_core_name.exit

ssb_core_name.exit:                               ; preds = %switch.lookup, %if.then119.ssb_core_name.exit_crit_edge
  %retval.0.i357 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.33, %if.then119.ssb_core_name.exit_crit_edge ]
  %conv125 = zext i16 %104 to i32
  %108 = ptrtoint ptr %revision98 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %revision98, align 4
  %conv128 = zext i8 %109 to i32
  %110 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %id, align 4
  %conv131 = zext i16 %111 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssb_bus_scan.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.42, i32 noundef %i.0381, ptr noundef nonnull %retval.0.i357, i32 noundef %conv125, i32 noundef %conv128, i32 noundef %conv131) #5
  br label %do.end134

do.end134:                                        ; preds = %ssb_core_name.exit, %scan_read32.exit350
  %112 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %coreid, align 2
  %114 = zext i16 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %113, label %do.end134.sw.epilog_crit_edge [
    i16 2066, label %sw.bb
    i16 2054, label %sw.bb207
    i16 2048, label %sw.bb162
    i16 2080, label %do.end134.sw.bb176_crit_edge
    i16 2052, label %do.end134.sw.bb176_crit_edge389
  ]

do.end134.sw.bb176_crit_edge389:                  ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb176

do.end134.sw.bb176_crit_edge:                     ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb176

do.end134.sw.epilog_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end134
  %inc = add i32 %nr_80211_cores.0380, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp138 = icmp sgt i32 %inc, 1
  br i1 %cmp138, label %if.then140, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then140:                                       ; preds = %sw.bb
  %115 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp.i = icmp eq i32 %116, 1
  br i1 %cmp.i, label %if.then.i, label %if.then140.do.body144_crit_edge

if.then140.do.body144_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.then.i:                                        ; preds = %if.then140
  %117 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %70, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %120)
  %cmp1.i = icmp eq i16 %120, 5348
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then.i.do.body144_crit_edge

if.then.i.do.body144_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

land.lhs.true.i:                                  ; preds = %if.then.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 8
  %121 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %device.i, align 2
  %123 = zext i16 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %122, label %land.lhs.true.i.do.body144_crit_edge [
    i16 17171, label %land.lhs.true.i.sw.epilog_crit_edge
    i16 17178, label %land.lhs.true.i.sw.epilog_crit_edge390
    i16 17185, label %land.lhs.true.i.sw.epilog_crit_edge391
    i16 17188, label %land.lhs.true.i.sw.epilog_crit_edge392
  ]

land.lhs.true.i.sw.epilog_crit_edge392:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i.sw.epilog_crit_edge391:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i.sw.epilog_crit_edge390:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.i.do.body144_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

do.body144:                                       ; preds = %land.lhs.true.i.do.body144_crit_edge, %if.then.i.do.body144_crit_edge, %if.then140.do.body144_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_bus_scan.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_bus_scan, %if.then156)) #5
          to label %for.inc [label %if.then156], !srcloc !121

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssb_bus_scan.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.44) #5
  br label %for.inc

sw.bb162:                                         ; preds = %do.end134
  %124 = ptrtoint ptr %chipco163 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chipco163, align 4
  %tobool165.not = icmp eq ptr %125, null
  br i1 %tobool165.not, label %if.end172, label %do.end169

do.end169:                                        ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #7
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %sw.epilog

if.end172:                                        ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %chipco163 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arrayidx, ptr %chipco163, align 4
  br label %sw.epilog

sw.bb176:                                         ; preds = %do.end134.sw.bb176_crit_edge, %do.end134.sw.bb176_crit_edge389
  %127 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp178 = icmp eq i32 %128, 1
  br i1 %cmp178, label %if.then180, label %sw.bb176.if.end195_crit_edge

sw.bb176.if.end195_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.then180:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_const_cmp2(i16 2052, i16 %113)
  %cmp184 = icmp eq i16 %113, 2052
  %129 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %70, align 4
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 19
  %131 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.i.not = icmp eq i8 %132, 0
  br i1 %cmp184, label %if.then186, label %if.else190

if.then186:                                       ; preds = %if.then180
  br i1 %tobool.i.not, label %if.then186.if.end195_crit_edge, label %if.then186.for.inc_crit_edge

if.then186.for.inc_crit_edge:                     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then186.if.end195_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.else190:                                       ; preds = %if.then180
  br i1 %tobool.i.not, label %if.else190.for.inc_crit_edge, label %if.else190.if.end195_crit_edge

if.else190.if.end195_crit_edge:                   ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.else190.for.inc_crit_edge:                     ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end195:                                        ; preds = %if.else190.if.end195_crit_edge, %if.then186.if.end195_crit_edge, %sw.bb176.if.end195_crit_edge
  %133 = ptrtoint ptr %pcicore to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pcicore, align 4
  %tobool197.not = icmp eq ptr %134, null
  br i1 %tobool197.not, label %if.end204, label %do.end201

do.end201:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #8
  br label %sw.epilog

if.end204:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %pcicore to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx, ptr %pcicore, align 4
  br label %sw.epilog

sw.bb207:                                         ; preds = %do.end134
  %136 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp209 = icmp eq i32 %137, 1
  br i1 %cmp209, label %if.then211, label %sw.bb207.sw.epilog_crit_edge

sw.bb207.sw.epilog_crit_edge:                     ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then211:                                       ; preds = %sw.bb207
  %138 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %70, align 4
  %vendor212 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %vendor212 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vendor212, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %141)
  %cmp214 = icmp eq i16 %141, 5348
  br i1 %cmp214, label %land.lhs.true, label %if.then211.sw.epilog_crit_edge

if.then211.sw.epilog_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.then211
  %device = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 8
  %142 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %device, align 2
  %144 = and i16 %143, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 17152, i16 %144)
  %cmp218 = icmp eq i16 %144, 17152
  br i1 %cmp218, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.epilog:                                        ; preds = %land.lhs.true.sw.epilog_crit_edge, %if.then211.sw.epilog_crit_edge, %sw.bb207.sw.epilog_crit_edge, %if.end204, %do.end201, %if.end172, %do.end169, %land.lhs.true.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge390, %land.lhs.true.i.sw.epilog_crit_edge391, %land.lhs.true.i.sw.epilog_crit_edge392, %sw.bb.sw.epilog_crit_edge, %do.end134.sw.epilog_crit_edge
  %nr_80211_cores.1 = phi i32 [ %nr_80211_cores.0380, %do.end134.sw.epilog_crit_edge ], [ %nr_80211_cores.0380, %do.end201 ], [ %nr_80211_cores.0380, %if.end204 ], [ %nr_80211_cores.0380, %do.end169 ], [ %nr_80211_cores.0380, %if.end172 ], [ %nr_80211_cores.0380, %land.lhs.true.sw.epilog_crit_edge ], [ %nr_80211_cores.0380, %if.then211.sw.epilog_crit_edge ], [ %nr_80211_cores.0380, %sw.bb207.sw.epilog_crit_edge ], [ %inc, %sw.bb.sw.epilog_crit_edge ], [ %inc, %land.lhs.true.i.sw.epilog_crit_edge ], [ %inc, %land.lhs.true.i.sw.epilog_crit_edge390 ], [ %inc, %land.lhs.true.i.sw.epilog_crit_edge391 ], [ %inc, %land.lhs.true.i.sw.epilog_crit_edge392 ]
  %inc223 = add i32 %dev_i.0385, 1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %land.lhs.true.for.inc_crit_edge, %if.else190.for.inc_crit_edge, %if.then186.for.inc_crit_edge, %if.then156, %do.body144
  %nr_80211_cores.2 = phi i32 [ %nr_80211_cores.1, %sw.epilog ], [ %nr_80211_cores.0380, %if.then186.for.inc_crit_edge ], [ %nr_80211_cores.0380, %if.else190.for.inc_crit_edge ], [ %nr_80211_cores.0380, %land.lhs.true.for.inc_crit_edge ], [ %inc, %if.then156 ], [ %inc, %do.body144 ]
  %dev_i.1 = phi i32 [ %inc223, %sw.epilog ], [ %dev_i.0385, %if.then186.for.inc_crit_edge ], [ %dev_i.0385, %if.else190.for.inc_crit_edge ], [ %dev_i.0385, %land.lhs.true.for.inc_crit_edge ], [ %dev_i.0385, %if.then156 ], [ %dev_i.0385, %do.body144 ]
  %inc224 = add nuw nsw i32 %i.0381, 1
  %145 = ptrtoint ptr %nr_devices to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nr_devices, align 4
  %conv82 = zext i8 %146 to i32
  %cmp83 = icmp ult i32 %inc224, %conv82
  br i1 %cmp83, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end80.for.end_crit_edge
  %dev_i.0.lcssa = phi i32 [ 0, %if.end80.for.end_crit_edge ], [ %dev_i.1, %for.inc.for.end_crit_edge ]
  %conv225 = trunc i32 %dev_i.0.lcssa to i8
  %147 = ptrtoint ptr %nr_devices to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv225, ptr %nr_devices, align 4
  br label %out

out:                                              ; preds = %ssb_iounmap.exit, %for.end, %if.then72.out_crit_edge, %ssb_ioremap.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %err.1, %ssb_iounmap.exit ], [ 0, %for.end ], [ -12, %if.then72.out_crit_edge ], [ -12, %ssb_ioremap.exit.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0

err_unmap:                                        ; preds = %scan_switchcore.exit337.err_unmap_crit_edge, %do.end63, %scan_switchcore.exit.err_unmap_crit_edge
  %err.1 = phi i32 [ %retval.0.i323, %scan_switchcore.exit.err_unmap_crit_edge ], [ -22, %do.end63 ], [ %retval.0.i336, %scan_switchcore.exit337.err_unmap_crit_edge ]
  %148 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bustype.i, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %149, label %err_unmap.ssb_iounmap.exit_crit_edge [
    i32 0, label %err_unmap.sw.bb.i363_crit_edge
    i32 2, label %err_unmap.sw.bb.i363_crit_edge393
    i32 1, label %sw.bb1.i364
  ]

err_unmap.sw.bb.i363_crit_edge393:                ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i363

err_unmap.sw.bb.i363_crit_edge:                   ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i363

err_unmap.ssb_iounmap.exit_crit_edge:             ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssb_iounmap.exit

sw.bb.i363:                                       ; preds = %err_unmap.sw.bb.i363_crit_edge, %err_unmap.sw.bb.i363_crit_edge393
  %151 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus, align 4
  tail call void @iounmap(ptr noundef %152) #5
  br label %ssb_iounmap.exit

sw.bb1.i364:                                      ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #7
  %153 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %156 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bus, align 4
  tail call void @pci_iounmap(ptr noundef %155, ptr noundef %157) #5
  br label %ssb_iounmap.exit

ssb_iounmap.exit:                                 ; preds = %sw.bb1.i364, %sw.bb.i363, %err_unmap.ssb_iounmap.exit_crit_edge
  %158 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %bus, align 4
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 2
  %159 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %mapped_device.i, align 4
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_read32(ptr noundef %bus, i8 noundef zeroext %current_coreidx, i16 noundef zeroext %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb23
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %current_coreidx to i16
  %mul = shl i16 %conv, 12
  %add = add i16 %mul, %offset
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %offset)
  %cmp = icmp ugt i16 %offset, 2047
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %bus, i8 noundef zeroext 1) #5
  %sub = add i16 %offset, -2048
  br label %if.end

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @ssb_pcmcia_switch_segment(ptr noundef %bus, i8 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.addr.0 = phi i16 [ %sub, %if.then ], [ %offset, %if.else ]
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %conv9 = zext i16 %offset.addr.0 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv9
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %add.ptr17 = getelementptr i8, ptr %7, i32 %conv9
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 2
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %9 = zext i16 %8 to i32
  %10 = zext i16 %5 to i32
  %11 = shl nuw i32 %10, 16
  %12 = or i32 %11, %9
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv24 = zext i8 %current_coreidx to i16
  %mul25 = shl i16 %conv24, 12
  %add27 = add i16 %mul25, %offset
  %call29 = tail call i32 @ssb_sdio_scan_read32(ptr noundef %bus, i16 noundef zeroext %add27) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %offset.addr.1 = phi i16 [ %offset, %entry.sw.epilog_crit_edge ], [ %add, %sw.bb ]
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %conv33 = zext i16 %offset.addr.1 to i32
  %add.ptr34 = getelementptr i8, ptr %15, i32 %conv33
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #5, !srcloc !119
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb23, %if.end
  %retval.0 = phi i32 [ %17, %sw.epilog ], [ %13, %if.end ], [ %call29, %sw.bb23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @pcidev_to_chipid(ptr noundef %pci_dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %1, label %do.end [
    i16 17153, label %entry.sw.epilog_crit_edge
    i16 17157, label %entry.sw.bb1_crit_edge
    i16 17158, label %entry.sw.bb1_crit_edge8
    i16 17159, label %entry.sw.bb1_crit_edge9
    i16 17411, label %sw.bb2
    i16 17936, label %entry.sw.bb3_crit_edge
    i16 17937, label %entry.sw.bb3_crit_edge10
    i16 17938, label %entry.sw.bb3_crit_edge11
    i16 17939, label %entry.sw.bb3_crit_edge12
    i16 17940, label %entry.sw.bb3_crit_edge13
    i16 17941, label %entry.sw.bb3_crit_edge14
    i16 18192, label %entry.sw.bb4_crit_edge
    i16 18193, label %entry.sw.bb4_crit_edge15
    i16 18194, label %entry.sw.bb4_crit_edge16
    i16 18195, label %entry.sw.bb4_crit_edge17
    i16 18196, label %entry.sw.bb4_crit_edge18
    i16 18197, label %entry.sw.bb4_crit_edge19
    i16 17184, label %entry.sw.bb5_crit_edge
    i16 17185, label %entry.sw.bb5_crit_edge20
    i16 17186, label %entry.sw.bb5_crit_edge21
    i16 17187, label %entry.sw.bb5_crit_edge22
    i16 17188, label %entry.sw.bb5_crit_edge23
    i16 17189, label %entry.sw.bb5_crit_edge24
    i16 17409, label %entry.sw.bb6_crit_edge
    i16 17410, label %entry.sw.bb6_crit_edge25
    i16 5900, label %entry.sw.bb6_crit_edge26
  ]

entry.sw.bb6_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

entry.sw.bb6_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

entry.sw.bb5_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb4_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb3_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge8, %entry.sw.bb1_crit_edge9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge10, %entry.sw.bb3_crit_edge11, %entry.sw.bb3_crit_edge12, %entry.sw.bb3_crit_edge13, %entry.sw.bb3_crit_edge14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge15, %entry.sw.bb4_crit_edge16, %entry.sw.bb4_crit_edge17, %entry.sw.bb4_crit_edge18, %entry.sw.bb4_crit_edge19
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge20, %entry.sw.bb5_crit_edge21, %entry.sw.bb5_crit_edge22, %entry.sw.bb5_crit_edge23, %entry.sw.bb5_crit_edge24
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge25, %entry.sw.bb6_crit_edge26
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %chipid_fallback.0 = phi i16 [ 0, %do.end ], [ 17409, %sw.bb6 ], [ 17161, %sw.bb5 ], [ 18192, %sw.bb4 ], [ 17936, %sw.bb3 ], [ 17410, %sw.bb2 ], [ 17159, %sw.bb1 ], [ %1, %entry.sw.epilog_crit_edge ]
  ret i16 %chipid_fallback.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @chipid_to_nrcores(i16 noundef zeroext %chipid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %chipid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %chipid, label %do.end [
    i16 21349, label %entry.return_crit_edge
    i16 17158, label %sw.bb1
    i16 17168, label %sw.bb2
    i16 17159, label %entry.sw.bb3_crit_edge
    i16 17153, label %entry.sw.bb3_crit_edge6
    i16 17409, label %entry.sw.bb4_crit_edge
    i16 17410, label %entry.sw.bb4_crit_edge7
    i16 18192, label %entry.sw.bb5_crit_edge
    i16 17936, label %entry.sw.bb5_crit_edge8
    i16 18180, label %entry.sw.bb5_crit_edge9
  ]

entry.sw.bb5_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb4_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb3_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge6
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge7
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge8, %entry.sw.bb5_crit_edge9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #8
  br label %return

return:                                           ; preds = %do.end, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %do.end ], [ 9, %sw.bb5 ], [ 3, %sw.bb4 ], [ 5, %sw.bb3 ], [ 8, %sw.bb2 ], [ 6, %sw.bb1 ], [ 7, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pci_switch_coreidx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pcmcia_switch_coreidx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_sdio_scan_switch_coreidx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pcmcia_switch_segment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_sdio_scan_read32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !102, !104, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/scan.c", i32 30, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/ssb/scan.c", i32 32, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/ssb/scan.c", i32 34, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ssb/scan.c", i32 36, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ssb/scan.c", i32 38, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ssb/scan.c", i32 40, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ssb/scan.c", i32 42, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ssb/scan.c", i32 44, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ssb/scan.c", i32 46, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ssb/scan.c", i32 48, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ssb/scan.c", i32 50, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ssb/scan.c", i32 52, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ssb/scan.c", i32 54, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ssb/scan.c", i32 56, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ssb/scan.c", i32 58, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ssb/scan.c", i32 60, i32 10}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ssb/scan.c", i32 62, i32 10}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ssb/scan.c", i32 64, i32 10}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ssb/scan.c", i32 66, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ssb/scan.c", i32 68, i32 10}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ssb/scan.c", i32 70, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ssb/scan.c", i32 72, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ssb/scan.c", i32 74, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ssb/scan.c", i32 76, i32 10}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ssb/scan.c", i32 78, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ssb/scan.c", i32 80, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ssb/scan.c", i32 82, i32 10}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ssb/scan.c", i32 84, i32 10}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ssb/scan.c", i32 86, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ssb/scan.c", i32 88, i32 10}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ssb/scan.c", i32 90, i32 10}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ssb/scan.c", i32 92, i32 10}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ssb/scan.c", i32 94, i32 10}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ssb/scan.c", i32 96, i32 9}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ssb/scan.c", i32 321, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ssb_bus_scan._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @ssb_bus_scan._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ssb/scan.c", i32 326, i32 3}
!76 = !{ptr @ssb_bus_scan._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ssb_bus_scan._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ssb/scan.c", i32 359, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ssb_bus_scan.__UNIQUE_ID_ddebug236, !79, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!82 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ssb/scan.c", i32 368, i32 6}
!85 = !{ptr @ssb_bus_scan.__UNIQUE_ID_ddebug237, !84, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!86 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ssb/scan.c", i32 384, i32 5}
!89 = !{ptr @ssb_bus_scan._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ssb_bus_scan._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ssb/scan.c", i32 415, i32 5}
!93 = !{ptr @ssb_bus_scan._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ssb_bus_scan._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ssb/scan.c", i32 128, i32 3}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pcidev_to_chipid._entry, !96, !"_entry", i1 false, i1 false}
!101 = !{ptr @pcidev_to_chipid._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ssb/scan.c", i32 154, i32 3}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @chipid_to_nrcores._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @chipid_to_nrcores._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 5015856}
!117 = !{i64 2154799809}
!118 = !{i64 2154800315}
!119 = !{i64 5016694}
!120 = !{i64 2154800812}
!121 = !{i64 2148313773, i64 2148313778, i64 2148313791, i64 2148313835, i64 2148313869, i64 2148313890}
