; ModuleID = '/llk/IR_all_yes/drivers/firmware/broadcom/bcm47xx_sprom.c_pt.bc'
source_filename = "../drivers/firmware/broadcom/bcm47xx_sprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon, %struct.anon.0, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon = type { i8, i8, i8, i8 }
%struct.anon.0 = type { %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i8, i8, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i8, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.103, %struct.spinlock, i32, %union.anon.104, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.103 = type { i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.104 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.106, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.105, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.105 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sromrev\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccode\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"leddc\00", [26 x i8] zeroinitializer }, align 32
@bcm47xx_sprom_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@bcm47xx_sprom_register_fallbacks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Failed to register ssb SPROM handler\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm47xx_sprom_register_fallbacks\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/firmware/broadcom/bcm47xx_sprom.c\00", [54 x i8] zeroinitializer }, align 32
@bcm47xx_sprom_register_fallbacks._entry_ptr = internal global ptr @bcm47xx_sprom_register_fallbacks._entry, section ".printk_index", align 4
@bcm47xx_sprom_register_fallbacks._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Failed to register bcma SPROM handler\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm47xx_sprom_register_fallbacks._entry_ptr.8 = internal global ptr @bcm47xx_sprom_register_fallbacks._entry.6, section ".printk_index", align 4
@__initcall__kmod_bcm47xx_sprom__341_726_bcm47xx_sprom_register_fallbacks5 = internal global ptr @bcm47xx_sprom_register_fallbacks, section ".initcall5.init", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et0macaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et0mdcport\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et0phyaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et1macaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et1mdcport\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et1phyaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et2macaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et2mdcport\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et2phyaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"macaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"il0macaddr\00", [21 x i8] zeroinitializer }, align 32
@mac_addr_used = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@nvram_read_macaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Can not parse mac address: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvram_read_macaddr\00", [45 x i8] zeroinitializer }, align 32
@nvram_read_macaddr._entry_ptr = internal global ptr @nvram_read_macaddr._entry, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@bcm47xx_increase_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013unable to fetch mac address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm47xx_increase_mac_addr\00", [38 x i8] zeroinitializer }, align 32
@bcm47xx_increase_mac_addr._entry_ptr = internal global ptr @bcm47xx_increase_mac_addr._entry, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"boardflags\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boardflags2\00", [20 x i8] zeroinitializer }, align 32
@nvram_read_u32_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014can not parse nvram name %s%s with value %s got %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvram_read_u32_2\00", [47 x i8] zeroinitializer }, align 32
@nvram_read_u32_2._entry_ptr = internal global ptr @nvram_read_u32_2._entry, section ".printk_index", align 4
@nvram_read_u8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014can not parse nvram name %s%s%s with value %s got %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvram_read_u8\00", [18 x i8] zeroinitializer }, align 32
@nvram_read_u8._entry_ptr = internal global ptr @nvram_read_u8._entry, section ".printk_index", align 4
@nvram_read_alpha2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014alpha2 is too long %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvram_read_alpha2\00", [46 x i8] zeroinitializer }, align 32
@nvram_read_alpha2._entry_ptr = internal global ptr @nvram_read_alpha2._entry, section ".printk_index", align 4
@nvram_read_leddc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.35, ptr @.str.5, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvram_read_leddc\00", [47 x i8] zeroinitializer }, align 32
@nvram_read_leddc._entry_ptr = internal global ptr @nvram_read_leddc._entry, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxp2ga\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"itt2ga\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"itt5ga\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa2gw0a\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa2gw1a\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa2gw2a\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxp5ga\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxp5gha\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxp5gla\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa5gw0a\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa5gw1a\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa5gw2a\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5glw0a\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5glw1a\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5glw2a\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5ghw0a\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5ghw1a\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5ghw2a\00", [23 x i8] zeroinitializer }, align 32
@nvram_read_u16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.55, ptr @.str.5, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvram_read_u16\00", [17 x i8] zeroinitializer }, align 32
@nvram_read_u16._entry_ptr = internal global ptr @nvram_read_u16._entry, section ".printk_index", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa2gw3a\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa5gw3a\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5glw3a\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pa5ghw3a\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devid\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boardrev\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boardflags3\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boardtype\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boardnum\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cc\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regrev\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ledbh0\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ledbh1\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ledbh2\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ledbh3\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa0b0\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa0b1\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa0b2\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pa0itssit\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pa0maxpwr\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"opo\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aa2g\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aa5g\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ag0\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ag1\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ag2\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ag3\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa1b0\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa1b1\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pa1b2\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1lob0\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1lob1\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1lob2\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1hib0\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1hib1\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa1hib2\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pa1itssit\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pa1maxpwr\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pa1lomaxpwr\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pa1himaxpwr\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bxa2g\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssisav2g\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssismc2g\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssismf2g\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bxa5g\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssisav5g\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssismc5g\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rssismf5g\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tri2g\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tri5g\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tri5gl\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tri5gh\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxpo2g\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxpo5g\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"txchain\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rxchain\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"antswitch\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tssipos2g\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"extpagain2g\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdetrange2g\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"triso2g\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"antswctl2g\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tssipos5g\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"extpagain5g\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdetrange5g\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"triso5g\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"antswctl5g\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid2ga0\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid2ga1\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid2ga2\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid2ga3\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid5ga0\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid5ga1\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid5ga2\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"txpid5ga3\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gla0\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gla1\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gla2\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gla3\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gha0\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gha1\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gha2\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"txpid5gha3\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tempthresh\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tempoffset\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rawtempsense\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"measpower\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tempsense_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tempcorrx\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tempsense_option\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"freqoffset_corr\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iqcal_swp_dis\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_iqcal_en\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"elna2g\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"elna5g\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phycal_tempdelta\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temps_period\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temps_hysteresis\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"measpower1\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"measpower2\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cck2gpo\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofdm2gpo\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofdm5gpo\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ofdm5glpo\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ofdm5ghpo\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo0\00", [23 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo1\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo2\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo3\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo4\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo5\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo6\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs2gpo7\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo0\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo1\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo2\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo3\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo4\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo5\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo6\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcs5gpo7\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo0\00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo1\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo2\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo3\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo4\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo5\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo6\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5glpo7\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo0\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo1\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo2\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo3\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo4\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo5\00", [22 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo6\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcs5ghpo7\00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cddpo\00", [26 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stbcpo\00", [25 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bw40po\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bwduppo\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cckbw202gpo\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cckbw20ul2gpo\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"legofdmbw202gpo\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"legofdmbw20ul2gpo\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"legofdmbw205glpo\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"legofdmbw20ul5glpo\00", [45 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"legofdmbw205gmpo\00", [47 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"legofdmbw20ul5gmpo\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"legofdmbw205ghpo\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"legofdmbw20ul5ghpo\00", [45 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcsbw202gpo\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcsbw20ul2gpo\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcsbw402gpo\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw205glpo\00", [19 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcsbw20ul5glpo\00", [17 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw405glpo\00", [19 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw205gmpo\00", [19 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcsbw20ul5gmpo\00", [17 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw405gmpo\00", [19 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw205ghpo\00", [19 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcsbw20ul5ghpo\00", [17 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcsbw405ghpo\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcs32po\00", [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"legofdm40duppo\00", [17 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcieingress_war\00", [16 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxgainerr2ga0\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxgainerr2ga1\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxgainerr2ga2\00", [18 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gla0\00", [17 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gla1\00", [17 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gla2\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gma0\00", [17 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gma1\00", [17 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gma2\00", [17 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gha0\00", [17 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gha1\00", [17 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gha2\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gua0\00", [17 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gua1\00", [17 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxgainerr5gua2\00", [17 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sar2g\00", [26 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sar5g\00", [26 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noiselvl2ga0\00", [19 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noiselvl2ga1\00", [19 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"noiselvl2ga2\00", [19 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gla0\00", [18 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gla1\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gla2\00", [18 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gma0\00", [18 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gma1\00", [18 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gma2\00", [18 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gha0\00", [18 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gha1\00", [18 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gha2\00", [18 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gua0\00", [18 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gua1\00", [18 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noiselvl5gua2\00", [18 x i8] zeroinitializer }, align 32
@nvram_read_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.254, ptr @.str.5, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvram_read_u32\00", [17 x i8] zeroinitializer }, align 32
@nvram_read_u32._entry_ptr = internal global ptr @nvram_read_u32._entry, section ".printk_index", align 4
@nvram_read_s8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.255, ptr @.str.5, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvram_read_s8\00", [18 x i8] zeroinitializer }, align 32
@nvram_read_s8._entry_ptr = internal global ptr @nvram_read_s8._entry, section ".printk_index", align 4
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci/%u/%u/\00", [21 x i8] zeroinitializer }, align 32
@bcm47xx_get_sprom_ssb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.5, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Unable to fill SPROM for given bustype.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm47xx_get_sprom_ssb\00", [42 x i8] zeroinitializer }, align 32
@bcm47xx_get_sprom_ssb._entry_ptr = internal global ptr @bcm47xx_get_sprom_ssb._entry, section ".printk_index", align 4
@.str.259 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sb/%u/\00", [25 x i8] zeroinitializer }, align 32
@bcm47xx_get_sprom_bcma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.260, ptr @.str.5, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm47xx_get_sprom_bcma\00", [41 x i8] zeroinitializer }, align 32
@bcm47xx_get_sprom_bcma._entry_ptr = internal global ptr @bcm47xx_get_sprom_bcma._entry, section ".printk_index", align 4
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boardvendor\00", [20 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"devpath%d\00", [22 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d:\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65535, i64 4294967295]
@__sancov_gen_cov_switch_values.264 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 5, i64 8, i64 9]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 570, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 573, i32 28 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 575, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant [25 x i8] c"bcm47xx_sprom_registered\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 713, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 718, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 515, i32 29 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 516, i32 30 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 518, i32 30 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 521, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 522, i32 30 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 524, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 527, i32 29 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 528, i32 30 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 529, i32 30 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 531, i32 29 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 532, i32 29 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"mac_addr_used\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 508, i32 12 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 153, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 40, i32 22 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 42, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 46, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 502, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 558, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 560, i32 27 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 108, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 89, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 168, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 129, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 420, i32 38 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 421, i32 34 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 423, i32 34 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 425, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 427, i32 35 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 429, i32 35 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 431, i32 35 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 433, i32 34 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 435, i32 34 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 437, i32 34 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 439, i32 35 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 441, i32 35 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 443, i32 35 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 445, i32 35 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 447, i32 35 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 449, i32 35 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 451, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 453, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 455, i32 35 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 91, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 472, i32 35 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 474, i32 35 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 476, i32 35 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 478, i32 35 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 195, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 197, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 200, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 202, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 203, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 204, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 205, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 207, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 208, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 209, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 210, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 212, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 213, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 214, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 215, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 216, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 218, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 219, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 220, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 221, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 222, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 223, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 224, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 226, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 227, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 228, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 229, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 230, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 231, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 232, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 233, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 234, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 235, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 236, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 237, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 238, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 240, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 241, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 242, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 243, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 244, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 245, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 246, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 247, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 248, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 249, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 250, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 251, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 252, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 253, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 254, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 255, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 256, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 257, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 258, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 259, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 260, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 261, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 262, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 263, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 264, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 265, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 266, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 267, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 268, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 269, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 270, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 271, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 272, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 273, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 274, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 275, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 276, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 277, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 278, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 279, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 280, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 281, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 282, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 284, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 285, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 286, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 287, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 288, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 289, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 290, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 291, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 292, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 293, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 294, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 295, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 296, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 297, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 298, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 299, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 300, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 302, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 303, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 304, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 305, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 306, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 307, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 308, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 309, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 310, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 311, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 312, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 313, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 314, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 315, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 316, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 317, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 318, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 319, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 320, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 321, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 322, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 323, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 324, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 325, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 326, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 327, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 328, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 329, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 330, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 331, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 332, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 333, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 334, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 335, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 336, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 337, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 338, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 339, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 340, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 341, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 342, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 344, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 345, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 346, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 347, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 348, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 349, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 350, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 351, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 352, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 353, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 354, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 355, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 356, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 357, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 358, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 359, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 360, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 361, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 362, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 363, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 364, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 365, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 366, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 367, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 368, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 371, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 372, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 373, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 374, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 375, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 376, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 377, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 378, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 379, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 380, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 381, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 382, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 383, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 384, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 385, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 387, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 388, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 391, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 392, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 393, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 394, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 395, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 396, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 397, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 398, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 399, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 400, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 401, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 402, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 403, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 404, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 405, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 92, i32 1 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 90, i32 1 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 604, i32 36 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 610, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 676, i32 31 }
@___asan_gen_.1081 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 685, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 689, i32 31 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 637, i32 46 }
@___asan_gen_.1093 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1094 = private constant [45 x i8] c"../drivers/firmware/broadcom/bcm47xx_sprom.c\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1094, i32 643, i32 34 }
@llvm.compiler.used = appending global [291 x ptr] [ptr @__initcall__kmod_bcm47xx_sprom__341_726_bcm47xx_sprom_register_fallbacks5, ptr @bcm47xx_get_sprom_bcma._entry, ptr @bcm47xx_get_sprom_bcma._entry_ptr, ptr @bcm47xx_get_sprom_ssb._entry, ptr @bcm47xx_get_sprom_ssb._entry_ptr, ptr @bcm47xx_increase_mac_addr._entry, ptr @bcm47xx_increase_mac_addr._entry_ptr, ptr @bcm47xx_sprom_register_fallbacks._entry, ptr @bcm47xx_sprom_register_fallbacks._entry.6, ptr @bcm47xx_sprom_register_fallbacks._entry_ptr, ptr @bcm47xx_sprom_register_fallbacks._entry_ptr.8, ptr @nvram_read_alpha2._entry, ptr @nvram_read_alpha2._entry_ptr, ptr @nvram_read_leddc._entry, ptr @nvram_read_leddc._entry_ptr, ptr @nvram_read_macaddr._entry, ptr @nvram_read_macaddr._entry_ptr, ptr @nvram_read_s8._entry, ptr @nvram_read_s8._entry_ptr, ptr @nvram_read_u16._entry, ptr @nvram_read_u16._entry_ptr, ptr @nvram_read_u32._entry, ptr @nvram_read_u32._entry_ptr, ptr @nvram_read_u32_2._entry, ptr @nvram_read_u32_2._entry_ptr, ptr @nvram_read_u8._entry, ptr @nvram_read_u8._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bcm47xx_sprom_registered, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mac_addr_used, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263], section "llvm.metadata"
@0 = internal global [277 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_sprom_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_sprom_register_fallbacks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_sprom_register_fallbacks._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_addr_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_macaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_increase_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_u32_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_u8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_alpha2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_leddc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_u16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_read_s8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_get_sprom_ssb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_get_sprom_bcma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm47xx_fill_sprom(ptr noundef %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback) local_unnamed_addr #0 align 64 {
entry:
  %buf.i48.i = alloca [100 x i8], align 1
  %var.i49.i = alloca i16, align 2
  %buf.i36.i = alloca [100 x i8], align 1
  %var.i37.i = alloca i16, align 2
  %buf.i24.i = alloca [100 x i8], align 1
  %var.i25.i = alloca i16, align 2
  %buf.i.i67 = alloca [100 x i8], align 1
  %var.i.i68 = alloca i16, align 2
  %postfix.i = alloca [2 x i8], align 1
  %buf.i55 = alloca [100 x i8], align 1
  %val.i = alloca i32, align 4
  %buf.i50 = alloca [10 x i8], align 2
  %buf.i = alloca [100 x i8], align 1
  %var.i = alloca i8, align 1
  %buf.i7.i = alloca [100 x i8], align 1
  %val.i8.i = alloca i32, align 4
  %buf.i.i41 = alloca [100 x i8], align 1
  %val.i.i = alloca i32, align 4
  %key.i.i = alloca [40 x i8], align 1
  %buf.i169.i = alloca [100 x i8], align 1
  %buf.i159.i = alloca [100 x i8], align 1
  %buf.i150.i = alloca [100 x i8], align 1
  %buf.i138.i = alloca [100 x i8], align 1
  %var.i139.i = alloca i8, align 1
  %buf.i126.i = alloca [100 x i8], align 1
  %var.i127.i = alloca i8, align 1
  %buf.i117.i = alloca [100 x i8], align 1
  %buf.i105.i = alloca [100 x i8], align 1
  %var.i106.i = alloca i8, align 1
  %buf.i93.i = alloca [100 x i8], align 1
  %var.i94.i = alloca i8, align 1
  %buf.i84.i = alloca [100 x i8], align 1
  %buf.i72.i = alloca [100 x i8], align 1
  %var.i73.i = alloca i8, align 1
  %buf.i65.i = alloca [100 x i8], align 1
  %var.i.i = alloca i8, align 1
  %buf.i.i = alloca [100 x i8], align 1
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i.i) #6
  %0 = call ptr @memset(ptr %buf.i.i, i32 255, i32 100)
  %call.i.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull %buf.i.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.nvram_read_macaddr.exit.i_crit_edge, label %if.end.i.i

entry.nvram_read_macaddr.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit.i

if.end.i.i:                                       ; preds = %entry
  %et0mac.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 3
  %call2.i.i = call ptr @strreplace(ptr noundef nonnull %buf.i.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i.i, ptr noundef %et0mac.i) #6
  br i1 %call4.i.i, label %if.end.i.i.nvram_read_macaddr.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.nvram_read_macaddr.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i.i) #9
  br label %nvram_read_macaddr.exit.i

nvram_read_macaddr.exit.i:                        ; preds = %do.end.i.i, %if.end.i.i.nvram_read_macaddr.exit.i_crit_edge, %entry.nvram_read_macaddr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i.i) #6
  %et0mdcport.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i65.i) #6
  %1 = call ptr @memset(ptr %buf.i65.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i.i) #6
  %2 = ptrtoint ptr %var.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %var.i.i, align 1, !annotation !557
  %call.i66.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull %buf.i65.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp.i67.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp.i67.i, label %nvram_read_macaddr.exit.i.nvram_read_u8.exit.i_crit_edge, label %if.end.i69.i

nvram_read_macaddr.exit.i.nvram_read_u8.exit.i_crit_edge: ; preds = %nvram_read_macaddr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit.i

if.end.i69.i:                                     ; preds = %nvram_read_macaddr.exit.i
  %call2.i68.i = call ptr @strim(ptr noundef nonnull %buf.i65.i) #6
  %call3.i.i = call i32 @kstrtou8(ptr noundef %call2.i68.i, i32 noundef 0, ptr noundef nonnull %var.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8.i.i, label %do.end.i71.i

do.end.i71.i:                                     ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull %buf.i65.i, i32 noundef %call3.i.i) #9
  br label %nvram_read_u8.exit.i

if.end8.i.i:                                      ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %var.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %var.i.i, align 1
  %5 = ptrtoint ptr %et0mdcport.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %et0mdcport.i, align 1
  br label %nvram_read_u8.exit.i

nvram_read_u8.exit.i:                             ; preds = %if.end8.i.i, %do.end.i71.i, %nvram_read_macaddr.exit.i.nvram_read_u8.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i65.i) #6
  %et0phyaddr.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i72.i) #6
  %6 = call ptr @memset(ptr %buf.i72.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i73.i) #6
  %7 = ptrtoint ptr %var.i73.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %var.i73.i, align 1, !annotation !557
  %call.i74.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull %buf.i72.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %cmp.i75.i = icmp slt i32 %call.i74.i, 0
  br i1 %cmp.i75.i, label %nvram_read_u8.exit.i.nvram_read_u8.exit83.i_crit_edge, label %if.end.i79.i

nvram_read_u8.exit.i.nvram_read_u8.exit83.i_crit_edge: ; preds = %nvram_read_u8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit83.i

if.end.i79.i:                                     ; preds = %nvram_read_u8.exit.i
  %call2.i76.i = call ptr @strim(ptr noundef nonnull %buf.i72.i) #6
  %call3.i77.i = call i32 @kstrtou8(ptr noundef %call2.i76.i, i32 noundef 0, ptr noundef nonnull %var.i73.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77.i)
  %tobool4.not.i78.i = icmp eq i32 %call3.i77.i, 0
  br i1 %tobool4.not.i78.i, label %if.end8.i82.i, label %do.end.i81.i

do.end.i81.i:                                     ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef nonnull %buf.i72.i, i32 noundef %call3.i77.i) #9
  br label %nvram_read_u8.exit83.i

if.end8.i82.i:                                    ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %var.i73.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %var.i73.i, align 1
  %10 = ptrtoint ptr %et0phyaddr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %et0phyaddr.i, align 1
  br label %nvram_read_u8.exit83.i

nvram_read_u8.exit83.i:                           ; preds = %if.end8.i82.i, %do.end.i81.i, %nvram_read_u8.exit.i.nvram_read_u8.exit83.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i73.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i72.i) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i84.i) #6
  %11 = call ptr @memset(ptr %buf.i84.i, i32 255, i32 100)
  %call.i85.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %buf.i84.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp.i86.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp.i86.i, label %nvram_read_u8.exit83.i.nvram_read_macaddr.exit92.i_crit_edge, label %if.end.i89.i

nvram_read_u8.exit83.i.nvram_read_macaddr.exit92.i_crit_edge: ; preds = %nvram_read_u8.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit92.i

if.end.i89.i:                                     ; preds = %nvram_read_u8.exit83.i
  %et1mac.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 4
  %call2.i87.i = call ptr @strreplace(ptr noundef nonnull %buf.i84.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i88.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i84.i, ptr noundef %et1mac.i) #6
  br i1 %call4.i88.i, label %if.end.i89.i.nvram_read_macaddr.exit92.i_crit_edge, label %do.end.i91.i

if.end.i89.i.nvram_read_macaddr.exit92.i_crit_edge: ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit92.i

do.end.i91.i:                                     ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i84.i) #9
  br label %nvram_read_macaddr.exit92.i

nvram_read_macaddr.exit92.i:                      ; preds = %do.end.i91.i, %if.end.i89.i.nvram_read_macaddr.exit92.i_crit_edge, %nvram_read_u8.exit83.i.nvram_read_macaddr.exit92.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i84.i) #6
  %et1mdcport.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i93.i) #6
  %12 = call ptr @memset(ptr %buf.i93.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i94.i) #6
  %13 = ptrtoint ptr %var.i94.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %var.i94.i, align 1, !annotation !557
  %call.i95.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull %buf.i93.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %cmp.i96.i = icmp slt i32 %call.i95.i, 0
  br i1 %cmp.i96.i, label %nvram_read_macaddr.exit92.i.nvram_read_u8.exit104.i_crit_edge, label %if.end.i100.i

nvram_read_macaddr.exit92.i.nvram_read_u8.exit104.i_crit_edge: ; preds = %nvram_read_macaddr.exit92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit104.i

if.end.i100.i:                                    ; preds = %nvram_read_macaddr.exit92.i
  %call2.i97.i = call ptr @strim(ptr noundef nonnull %buf.i93.i) #6
  %call3.i98.i = call i32 @kstrtou8(ptr noundef %call2.i97.i, i32 noundef 0, ptr noundef nonnull %var.i94.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i98.i)
  %tobool4.not.i99.i = icmp eq i32 %call3.i98.i, 0
  br i1 %tobool4.not.i99.i, label %if.end8.i103.i, label %do.end.i102.i

do.end.i102.i:                                    ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef nonnull %buf.i93.i, i32 noundef %call3.i98.i) #9
  br label %nvram_read_u8.exit104.i

if.end8.i103.i:                                   ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %var.i94.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %var.i94.i, align 1
  %16 = ptrtoint ptr %et1mdcport.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %et1mdcport.i, align 1
  br label %nvram_read_u8.exit104.i

nvram_read_u8.exit104.i:                          ; preds = %if.end8.i103.i, %do.end.i102.i, %nvram_read_macaddr.exit92.i.nvram_read_u8.exit104.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i94.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i93.i) #6
  %et1phyaddr.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i105.i) #6
  %17 = call ptr @memset(ptr %buf.i105.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i106.i) #6
  %18 = ptrtoint ptr %var.i106.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %var.i106.i, align 1, !annotation !557
  %call.i107.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull %buf.i105.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %cmp.i108.i = icmp slt i32 %call.i107.i, 0
  br i1 %cmp.i108.i, label %nvram_read_u8.exit104.i.nvram_read_u8.exit116.i_crit_edge, label %if.end.i112.i

nvram_read_u8.exit104.i.nvram_read_u8.exit116.i_crit_edge: ; preds = %nvram_read_u8.exit104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit116.i

if.end.i112.i:                                    ; preds = %nvram_read_u8.exit104.i
  %call2.i109.i = call ptr @strim(ptr noundef nonnull %buf.i105.i) #6
  %call3.i110.i = call i32 @kstrtou8(ptr noundef %call2.i109.i, i32 noundef 0, ptr noundef nonnull %var.i106.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i110.i)
  %tobool4.not.i111.i = icmp eq i32 %call3.i110.i, 0
  br i1 %tobool4.not.i111.i, label %if.end8.i115.i, label %do.end.i114.i

do.end.i114.i:                                    ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef nonnull %buf.i105.i, i32 noundef %call3.i110.i) #9
  br label %nvram_read_u8.exit116.i

if.end8.i115.i:                                   ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %var.i106.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %var.i106.i, align 1
  %21 = ptrtoint ptr %et1phyaddr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %et1phyaddr.i, align 1
  br label %nvram_read_u8.exit116.i

nvram_read_u8.exit116.i:                          ; preds = %if.end8.i115.i, %do.end.i114.i, %nvram_read_u8.exit104.i.nvram_read_u8.exit116.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i106.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i105.i) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i117.i) #6
  %22 = call ptr @memset(ptr %buf.i117.i, i32 255, i32 100)
  %call.i118.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull %buf.i117.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %cmp.i119.i = icmp slt i32 %call.i118.i, 0
  br i1 %cmp.i119.i, label %nvram_read_u8.exit116.i.nvram_read_macaddr.exit125.i_crit_edge, label %if.end.i122.i

nvram_read_u8.exit116.i.nvram_read_macaddr.exit125.i_crit_edge: ; preds = %nvram_read_u8.exit116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit125.i

if.end.i122.i:                                    ; preds = %nvram_read_u8.exit116.i
  %et2mac.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 5
  %call2.i120.i = call ptr @strreplace(ptr noundef nonnull %buf.i117.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i121.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i117.i, ptr noundef %et2mac.i) #6
  br i1 %call4.i121.i, label %if.end.i122.i.nvram_read_macaddr.exit125.i_crit_edge, label %do.end.i124.i

if.end.i122.i.nvram_read_macaddr.exit125.i_crit_edge: ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit125.i

do.end.i124.i:                                    ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i117.i) #9
  br label %nvram_read_macaddr.exit125.i

nvram_read_macaddr.exit125.i:                     ; preds = %do.end.i124.i, %if.end.i122.i.nvram_read_macaddr.exit125.i_crit_edge, %nvram_read_u8.exit116.i.nvram_read_macaddr.exit125.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i117.i) #6
  %et2mdcport.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i126.i) #6
  %23 = call ptr @memset(ptr %buf.i126.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i127.i) #6
  %24 = ptrtoint ptr %var.i127.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %var.i127.i, align 1, !annotation !557
  %call.i128.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %buf.i126.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %cmp.i129.i = icmp slt i32 %call.i128.i, 0
  br i1 %cmp.i129.i, label %nvram_read_macaddr.exit125.i.nvram_read_u8.exit137.i_crit_edge, label %if.end.i133.i

nvram_read_macaddr.exit125.i.nvram_read_u8.exit137.i_crit_edge: ; preds = %nvram_read_macaddr.exit125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit137.i

if.end.i133.i:                                    ; preds = %nvram_read_macaddr.exit125.i
  %call2.i130.i = call ptr @strim(ptr noundef nonnull %buf.i126.i) #6
  %call3.i131.i = call i32 @kstrtou8(ptr noundef %call2.i130.i, i32 noundef 0, ptr noundef nonnull %var.i127.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i131.i)
  %tobool4.not.i132.i = icmp eq i32 %call3.i131.i, 0
  br i1 %tobool4.not.i132.i, label %if.end8.i136.i, label %do.end.i135.i

do.end.i135.i:                                    ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef nonnull %buf.i126.i, i32 noundef %call3.i131.i) #9
  br label %nvram_read_u8.exit137.i

if.end8.i136.i:                                   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %var.i127.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %var.i127.i, align 1
  %27 = ptrtoint ptr %et2mdcport.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %et2mdcport.i, align 1
  br label %nvram_read_u8.exit137.i

nvram_read_u8.exit137.i:                          ; preds = %if.end8.i136.i, %do.end.i135.i, %nvram_read_macaddr.exit125.i.nvram_read_u8.exit137.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i127.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i126.i) #6
  %et2phyaddr.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i138.i) #6
  %28 = call ptr @memset(ptr %buf.i138.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i139.i) #6
  %29 = ptrtoint ptr %var.i139.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %var.i139.i, align 1, !annotation !557
  %call.i140.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull %buf.i138.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %cmp.i141.i = icmp slt i32 %call.i140.i, 0
  br i1 %cmp.i141.i, label %nvram_read_u8.exit137.i.nvram_read_u8.exit149.i_crit_edge, label %if.end.i145.i

nvram_read_u8.exit137.i.nvram_read_u8.exit149.i_crit_edge: ; preds = %nvram_read_u8.exit137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit149.i

if.end.i145.i:                                    ; preds = %nvram_read_u8.exit137.i
  %call2.i142.i = call ptr @strim(ptr noundef nonnull %buf.i138.i) #6
  %call3.i143.i = call i32 @kstrtou8(ptr noundef %call2.i142.i, i32 noundef 0, ptr noundef nonnull %var.i139.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i143.i)
  %tobool4.not.i144.i = icmp eq i32 %call3.i143.i, 0
  br i1 %tobool4.not.i144.i, label %if.end8.i148.i, label %do.end.i147.i

do.end.i147.i:                                    ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef nonnull %buf.i138.i, i32 noundef %call3.i143.i) #9
  br label %nvram_read_u8.exit149.i

if.end8.i148.i:                                   ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %var.i139.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %var.i139.i, align 1
  %32 = ptrtoint ptr %et2phyaddr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %et2phyaddr.i, align 1
  br label %nvram_read_u8.exit149.i

nvram_read_u8.exit149.i:                          ; preds = %if.end8.i148.i, %do.end.i147.i, %nvram_read_u8.exit137.i.nvram_read_u8.exit149.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i139.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i138.i) #6
  %il0mac.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i150.i) #6
  %33 = call ptr @memset(ptr %buf.i150.i, i32 255, i32 100)
  %call.i151.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull %buf.i150.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %cmp.i152.i = icmp slt i32 %call.i151.i, 0
  br i1 %cmp.i152.i, label %nvram_read_u8.exit149.i.nvram_read_macaddr.exit158.i_crit_edge, label %if.end.i155.i

nvram_read_u8.exit149.i.nvram_read_macaddr.exit158.i_crit_edge: ; preds = %nvram_read_u8.exit149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit158.i

if.end.i155.i:                                    ; preds = %nvram_read_u8.exit149.i
  %call2.i153.i = call ptr @strreplace(ptr noundef nonnull %buf.i150.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i154.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i150.i, ptr noundef %il0mac.i) #6
  br i1 %call4.i154.i, label %if.end.i155.i.nvram_read_macaddr.exit158.i_crit_edge, label %do.end.i157.i

if.end.i155.i.nvram_read_macaddr.exit158.i_crit_edge: ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit158.i

do.end.i157.i:                                    ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i156.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i150.i) #9
  br label %nvram_read_macaddr.exit158.i

nvram_read_macaddr.exit158.i:                     ; preds = %do.end.i157.i, %if.end.i155.i.nvram_read_macaddr.exit158.i_crit_edge, %nvram_read_u8.exit149.i.nvram_read_macaddr.exit158.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i150.i) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i159.i) #6
  %34 = call ptr @memset(ptr %buf.i159.i, i32 255, i32 100)
  %call.i160.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull %buf.i159.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %cmp.i161.i = icmp slt i32 %call.i160.i, 0
  br i1 %cmp.i161.i, label %nvram_read_macaddr.exit158.i.nvram_read_macaddr.exit167.i_crit_edge, label %if.end.i164.i

nvram_read_macaddr.exit158.i.nvram_read_macaddr.exit167.i_crit_edge: ; preds = %nvram_read_macaddr.exit158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit167.i

if.end.i164.i:                                    ; preds = %nvram_read_macaddr.exit158.i
  %call2.i162.i = call ptr @strreplace(ptr noundef nonnull %buf.i159.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i163.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i159.i, ptr noundef %il0mac.i) #6
  br i1 %call4.i163.i, label %if.end.i164.i.nvram_read_macaddr.exit167.i_crit_edge, label %do.end.i166.i

if.end.i164.i.nvram_read_macaddr.exit167.i_crit_edge: ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit167.i

do.end.i166.i:                                    ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i165.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i159.i) #9
  br label %nvram_read_macaddr.exit167.i

nvram_read_macaddr.exit167.i:                     ; preds = %do.end.i166.i, %if.end.i164.i.nvram_read_macaddr.exit167.i_crit_edge, %nvram_read_macaddr.exit158.i.nvram_read_macaddr.exit167.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i159.i) #6
  %35 = ptrtoint ptr %il0mac.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %il0mac.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i168.i = icmp eq i8 %36, 0
  br i1 %cmp.i168.i, label %land.lhs.true.i.i, label %nvram_read_macaddr.exit167.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge

nvram_read_macaddr.exit167.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge: ; preds = %nvram_read_macaddr.exit167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_fill_sprom_ethernet.exit

land.lhs.true.i.i:                                ; preds = %nvram_read_macaddr.exit167.i
  %arrayidx2.i.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %38)
  %cmp4.i.i = icmp eq i8 %38, -112
  br i1 %cmp4.i.i, label %bcm47xx_is_valid_mac.exit.i, label %land.lhs.true.i.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge

land.lhs.true.i.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_fill_sprom_ethernet.exit

bcm47xx_is_valid_mac.exit.i:                      ; preds = %land.lhs.true.i.i
  %arrayidx7.i.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %40)
  %cmp9.i.not.i = icmp eq i8 %40, 76
  br i1 %cmp9.i.not.i, label %if.then.i, label %bcm47xx_is_valid_mac.exit.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge

bcm47xx_is_valid_mac.exit.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge: ; preds = %bcm47xx_is_valid_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_fill_sprom_ethernet.exit

if.then.i:                                        ; preds = %bcm47xx_is_valid_mac.exit.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #6
  %41 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %42 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 2
  %43 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 3
  %44 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %45 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 5
  %46 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i169.i) #6
  %47 = call ptr @memset(ptr %buf.i169.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key.i.i) #6
  %48 = getelementptr inbounds i8, ptr %key.i.i, i32 11
  %49 = call ptr @memset(ptr %48, i32 255, i32 29)
  %50 = call ptr @memcpy(ptr %key.i.i, ptr @.str.9, i32 11)
  %call.i190.i = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %key.i.i, ptr noundef nonnull %buf.i169.i, i32 noundef 100) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190.i)
  %cmp.i171.i = icmp slt i32 %call.i190.i, 0
  br i1 %cmp.i171.i, label %if.then.i.nvram_read_macaddr.exit177.i_crit_edge, label %if.end.i174.i

if.then.i.nvram_read_macaddr.exit177.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit177.i

if.end.i174.i:                                    ; preds = %if.then.i
  %call2.i172.i = call ptr @strreplace(ptr noundef nonnull %buf.i169.i, i8 noundef zeroext 45, i8 noundef zeroext 58) #6
  %call4.i173.i = call zeroext i1 @mac_pton(ptr noundef nonnull %buf.i169.i, ptr noundef nonnull %mac.i) #6
  br i1 %call4.i173.i, label %if.end.i174.i.nvram_read_macaddr.exit177.i_crit_edge, label %do.end.i176.i

if.end.i174.i.nvram_read_macaddr.exit177.i_crit_edge: ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_macaddr.exit177.i

do.end.i176.i:                                    ; preds = %if.end.i174.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i175.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %buf.i169.i) #9
  br label %nvram_read_macaddr.exit177.i

nvram_read_macaddr.exit177.i:                     ; preds = %do.end.i176.i, %if.end.i174.i.nvram_read_macaddr.exit177.i_crit_edge, %if.then.i.nvram_read_macaddr.exit177.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i169.i) #6
  %51 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp.i178.i = icmp eq i8 %52, 0
  br i1 %cmp.i178.i, label %land.lhs.true.i182.i, label %nvram_read_macaddr.exit177.i.if.then23.i_crit_edge

nvram_read_macaddr.exit177.i.if.then23.i_crit_edge: ; preds = %nvram_read_macaddr.exit177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

land.lhs.true.i182.i:                             ; preds = %nvram_read_macaddr.exit177.i
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %54)
  %cmp4.i181.i = icmp eq i8 %54, -112
  br i1 %cmp4.i181.i, label %bcm47xx_is_valid_mac.exit186.i, label %land.lhs.true.i182.i.if.then23.i_crit_edge

land.lhs.true.i182.i.if.then23.i_crit_edge:       ; preds = %land.lhs.true.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

bcm47xx_is_valid_mac.exit186.i:                   ; preds = %land.lhs.true.i182.i
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %42, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %56)
  %cmp9.i184.not.i = icmp eq i8 %56, 76
  br i1 %cmp9.i184.not.i, label %bcm47xx_is_valid_mac.exit186.i.if.end31.i_crit_edge, label %bcm47xx_is_valid_mac.exit186.i.if.then23.i_crit_edge

bcm47xx_is_valid_mac.exit186.i.if.then23.i_crit_edge: ; preds = %bcm47xx_is_valid_mac.exit186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

bcm47xx_is_valid_mac.exit186.i.if.end31.i_crit_edge: ; preds = %bcm47xx_is_valid_mac.exit186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then23.i:                                      ; preds = %bcm47xx_is_valid_mac.exit186.i.if.then23.i_crit_edge, %land.lhs.true.i182.i.if.then23.i_crit_edge, %nvram_read_macaddr.exit177.i.if.then23.i_crit_edge
  %57 = load i32, ptr @mac_addr_used, align 4
  %conv.i = trunc i32 %57 to i8
  %58 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %45, align 1
  %conv5.i.i = add i8 %59, %conv.i
  store i8 %conv5.i.i, ptr %45, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv5.i.i, i8 %conv.i)
  %cmp.i187.i = icmp ugt i8 %conv5.i.i, %conv.i
  br i1 %cmp.i187.i, label %if.then23.i.if.then27.i_crit_edge, label %if.end.i188.i

if.then23.i.if.then27.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.end.i188.i:                                    ; preds = %if.then23.i
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %44, align 4
  %conv5.1.i.i = add i8 %61, 1
  store i8 %conv5.1.i.i, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv5.1.i.i)
  %cmp.1.i.i = icmp ugt i8 %conv5.1.i.i, 1
  br i1 %cmp.1.i.i, label %if.end.i188.i.if.then27.i_crit_edge, label %if.end.1.i.i

if.end.i188.i.if.then27.i_crit_edge:              ; preds = %if.end.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

if.end.1.i.i:                                     ; preds = %if.end.i188.i
  %62 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %43, align 1
  %conv5.2.i.i = add i8 %63, 1
  store i8 %conv5.2.i.i, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv5.2.i.i)
  %cmp.2.i.i = icmp ult i8 %conv5.2.i.i, 2
  br i1 %cmp.2.i.i, label %bcm47xx_increase_mac_addr.exit.i, label %if.end.1.i.i.if.then27.i_crit_edge

if.end.1.i.i.if.then27.i_crit_edge:               ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.i

bcm47xx_increase_mac_addr.exit.i:                 ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i189.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.end.1.i.i.if.then27.i_crit_edge, %if.end.i188.i.if.then27.i_crit_edge, %if.then23.i.if.then27.i_crit_edge
  %64 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac.i, align 4
  %66 = ptrtoint ptr %il0mac.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %il0mac.i, align 4
  %67 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %44, align 4
  %add.ptr1.i.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %add.ptr1.i.i, align 2
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr @mac_addr_used, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %bcm47xx_increase_mac_addr.exit.i, %bcm47xx_is_valid_mac.exit186.i.if.end31.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #6
  br label %bcm47xx_fill_sprom_ethernet.exit

bcm47xx_fill_sprom_ethernet.exit:                 ; preds = %if.end31.i, %bcm47xx_is_valid_mac.exit.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge, %land.lhs.true.i.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge, %nvram_read_macaddr.exit167.i.bcm47xx_fill_sprom_ethernet.exit_crit_edge
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 70
  %boardflags_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 71
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i.i41) #6
  %70 = call ptr @memset(ptr %buf.i.i41, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %71 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %val.i.i, align 4, !annotation !557
  %call.i.i42 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i.i41, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i.i43, label %bcm47xx_fill_sprom_ethernet.exit.nvram_read_u32_2.exit.i_crit_edge, label %if.end.i.i46

bcm47xx_fill_sprom_ethernet.exit.nvram_read_u32_2.exit.i_crit_edge: ; preds = %bcm47xx_fill_sprom_ethernet.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32_2.exit.i

if.end.i.i46:                                     ; preds = %bcm47xx_fill_sprom_ethernet.exit
  %call2.i.i44 = call ptr @strim(ptr noundef nonnull %buf.i.i41) #6
  %call.i.i.i = call i32 @kstrtouint(ptr noundef %call2.i.i44, i32 noundef 0, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i45 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i45, label %if.end8.i.i49, label %do.end.i.i48

do.end.i.i48:                                     ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %prefix, ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i.i41, i32 noundef %call.i.i.i) #9
  br label %nvram_read_u32_2.exit.i

if.end8.i.i49:                                    ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i.i, align 4
  %conv.i.i = trunc i32 %73 to i16
  %74 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i, ptr %boardflags_lo.i, align 2
  %shr.i.i = lshr i32 %73, 16
  %conv10.i.i = trunc i32 %shr.i.i to i16
  %75 = ptrtoint ptr %boardflags_hi.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv10.i.i, ptr %boardflags_hi.i, align 2
  br label %nvram_read_u32_2.exit.i

nvram_read_u32_2.exit.i:                          ; preds = %if.end8.i.i49, %do.end.i.i48, %bcm47xx_fill_sprom_ethernet.exit.nvram_read_u32_2.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i.i41) #6
  %boardflags2_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 72
  %boardflags2_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 73
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i7.i) #6
  %76 = call ptr @memset(ptr %buf.i7.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i8.i) #6
  %77 = ptrtoint ptr %val.i8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %val.i8.i, align 4, !annotation !557
  %call.i9.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull %buf.i7.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %cmp.i10.i = icmp slt i32 %call.i9.i, 0
  br i1 %cmp.i10.i, label %nvram_read_u32_2.exit.i.bcm47xx_fill_board_data.exit_crit_edge, label %if.end.i14.i

nvram_read_u32_2.exit.i.bcm47xx_fill_board_data.exit_crit_edge: ; preds = %nvram_read_u32_2.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_fill_board_data.exit

if.end.i14.i:                                     ; preds = %nvram_read_u32_2.exit.i
  %call2.i11.i = call ptr @strim(ptr noundef nonnull %buf.i7.i) #6
  %call.i.i12.i = call i32 @kstrtouint(ptr noundef %call2.i11.i, i32 noundef 0, ptr noundef nonnull %val.i8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %tobool4.not.i13.i = icmp eq i32 %call.i.i12.i, 0
  br i1 %tobool4.not.i13.i, label %if.end8.i20.i, label %do.end.i16.i

do.end.i16.i:                                     ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %prefix, ptr noundef nonnull @.str.28, ptr noundef nonnull %buf.i7.i, i32 noundef %call.i.i12.i) #9
  br label %bcm47xx_fill_board_data.exit

if.end8.i20.i:                                    ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %val.i8.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i8.i, align 4
  %conv.i17.i = trunc i32 %79 to i16
  %80 = ptrtoint ptr %boardflags2_lo.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i17.i, ptr %boardflags2_lo.i, align 2
  %shr.i18.i = lshr i32 %79, 16
  %conv10.i19.i = trunc i32 %shr.i18.i to i16
  %81 = ptrtoint ptr %boardflags2_hi.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv10.i19.i, ptr %boardflags2_hi.i, align 2
  br label %bcm47xx_fill_board_data.exit

bcm47xx_fill_board_data.exit:                     ; preds = %if.end8.i20.i, %do.end.i16.i, %nvram_read_u32_2.exit.i.bcm47xx_fill_board_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i8.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i7.i) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i) #6
  %82 = call ptr @memset(ptr %buf.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i) #6
  %83 = ptrtoint ptr %var.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %var.i, align 1, !annotation !557
  %call.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %buf.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %bcm47xx_fill_board_data.exit.nvram_read_u8.exit_crit_edge, label %if.end.i

bcm47xx_fill_board_data.exit.nvram_read_u8.exit_crit_edge: ; preds = %bcm47xx_fill_board_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit

if.end.i:                                         ; preds = %bcm47xx_fill_board_data.exit
  %call2.i = call ptr @strim(ptr noundef nonnull %buf.i) #6
  %call3.i = call i32 @kstrtou8(ptr noundef %call2.i, i32 noundef 0, ptr noundef nonnull %var.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull %buf.i, i32 noundef %call3.i) #9
  br label %nvram_read_u8.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %var.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %var.i, align 1
  %86 = ptrtoint ptr %sprom to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %sprom, align 1
  br label %nvram_read_u8.exit

nvram_read_u8.exit:                               ; preds = %if.end8.i, %do.end.i, %bcm47xx_fill_board_data.exit.nvram_read_u8.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i) #6
  %alpha2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i50) #6
  %87 = call ptr @memset(ptr %buf.i50, i32 255, i32 10)
  %call.i51 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %buf.i50, i32 noundef 10, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %nvram_read_u8.exit.nvram_read_alpha2.exit_crit_edge, label %if.end.i53

nvram_read_u8.exit.nvram_read_alpha2.exit_crit_edge: ; preds = %nvram_read_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_alpha2.exit

if.end.i53:                                       ; preds = %nvram_read_u8.exit
  %88 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %buf.i50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %89)
  %cmp1.i = icmp eq i8 %89, 48
  br i1 %cmp1.i, label %if.end.i53.nvram_read_alpha2.exit_crit_edge, label %if.end4.i

if.end.i53.nvram_read_alpha2.exit_crit_edge:      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_alpha2.exit

if.end4.i:                                        ; preds = %if.end.i53
  %call6.i = call i32 @strlen(ptr noundef nonnull %buf.i50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6.i)
  %cmp7.i = icmp ugt i32 %call6.i, 2
  br i1 %cmp7.i, label %do.end.i54, label %if.end12.i

do.end.i54:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %buf.i50) #9
  br label %nvram_read_alpha2.exit

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %buf.i50, align 2
  %92 = ptrtoint ptr %alpha2 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %91, ptr %alpha2, align 1
  br label %nvram_read_alpha2.exit

nvram_read_alpha2.exit:                           ; preds = %if.end12.i, %do.end.i54, %if.end.i53.nvram_read_alpha2.exit_crit_edge, %nvram_read_u8.exit.nvram_read_alpha2.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i50) #6
  %93 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp = icmp ugt i8 %94, 2
  br i1 %cmp, label %if.then, label %nvram_read_alpha2.exit.if.end_crit_edge

nvram_read_alpha2.exit.if.end_crit_edge:          ; preds = %nvram_read_alpha2.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nvram_read_alpha2.exit
  %leddc_on_time = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 18
  %leddc_off_time = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i55) #6
  %95 = call ptr @memset(ptr %buf.i55, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %96 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %val.i, align 4, !annotation !557
  %call.i56 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull %buf.i55, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %if.then.nvram_read_leddc.exit_crit_edge, label %if.end.i61

if.then.nvram_read_leddc.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_leddc.exit

if.end.i61:                                       ; preds = %if.then
  %call2.i58 = call ptr @strim(ptr noundef nonnull %buf.i55) #6
  %call.i.i59 = call i32 @kstrtouint(ptr noundef %call2.i58, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool4.not.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %tobool4.not.i60, label %if.end8.i64, label %do.end.i63

do.end.i63:                                       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %prefix, ptr noundef nonnull @.str.2, ptr noundef nonnull %buf.i55, i32 noundef %call.i.i59) #9
  br label %nvram_read_leddc.exit

if.end8.i64:                                      ; preds = %if.end.i61
  %97 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %98, label %if.end12.i66 [
    i32 65535, label %if.end8.i64.nvram_read_leddc.exit_crit_edge
    i32 -1, label %if.end8.i64.nvram_read_leddc.exit_crit_edge79
  ]

if.end8.i64.nvram_read_leddc.exit_crit_edge79:    ; preds = %if.end8.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_leddc.exit

if.end8.i64.nvram_read_leddc.exit_crit_edge:      ; preds = %if.end8.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_leddc.exit

if.end12.i66:                                     ; preds = %if.end8.i64
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i65 = trunc i32 %98 to i8
  %100 = ptrtoint ptr %leddc_on_time to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.i65, ptr %leddc_on_time, align 1
  %shr.i = lshr i32 %98, 16
  %conv14.i = trunc i32 %shr.i to i8
  %101 = ptrtoint ptr %leddc_off_time to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv14.i, ptr %leddc_off_time, align 1
  br label %nvram_read_leddc.exit

nvram_read_leddc.exit:                            ; preds = %if.end12.i66, %if.end8.i64.nvram_read_leddc.exit_crit_edge, %if.end8.i64.nvram_read_leddc.exit_crit_edge79, %do.end.i63, %if.then.nvram_read_leddc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i55) #6
  %102 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %102)
  %.pr = load i8, ptr %sprom, align 4
  br label %if.end

if.end:                                           ; preds = %nvram_read_leddc.exit, %nvram_read_alpha2.exit.if.end_crit_edge
  %103 = phi i8 [ %.pr, %nvram_read_leddc.exit ], [ %94, %nvram_read_alpha2.exit.if.end_crit_edge ]
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %103, label %if.end.sw.epilog_crit_edge [
    i8 4, label %if.end.sw.bb_crit_edge
    i8 5, label %if.end.sw.bb_crit_edge80
    i8 8, label %if.end.sw.bb11_crit_edge
    i8 9, label %if.end.sw.bb11_crit_edge81
  ]

if.end.sw.bb11_crit_edge81:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end.sw.bb_crit_edge80:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge80
  call fastcc void @bcm47xx_fill_sprom_path_r4589(ptr noundef %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %postfix.i) #6
  %105 = ptrtoint ptr %postfix.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %postfix.i, align 1, !annotation !557
  %106 = getelementptr inbounds [2 x i8], ptr %postfix.i, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %106, align 1, !annotation !557
  br label %for.body.i

for.body.i:                                       ; preds = %nvram_read_u16.exit59.i.for.body.i_crit_edge, %sw.bb
  %i.060.i = phi i32 [ 0, %sw.bb ], [ %inc.i78, %nvram_read_u16.exit59.i.for.body.i_crit_edge ]
  %call.i69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %postfix.i, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.060.i) #6
  %arrayidx2.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.060.i, i32 6, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i.i67) #6
  %108 = call ptr @memset(ptr %buf.i.i67, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i.i68) #6
  %109 = ptrtoint ptr %var.i.i68 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %var.i.i68, align 2, !annotation !557
  %call.i.i70 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %buf.i.i67, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %for.body.i.nvram_read_u16.exit.i_crit_edge, label %if.end.i.i75

for.body.i.nvram_read_u16.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit.i

if.end.i.i75:                                     ; preds = %for.body.i
  %call2.i.i72 = call ptr @strim(ptr noundef nonnull %buf.i.i67) #6
  %call3.i.i73 = call i32 @kstrtou16(ptr noundef %call2.i.i72, i32 noundef 0, ptr noundef nonnull %var.i.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i73)
  %tobool4.not.i.i74 = icmp eq i32 %call3.i.i73, 0
  br i1 %tobool4.not.i.i74, label %if.end15.i.i, label %do.end.i.i77

do.end.i.i77:                                     ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.56, ptr noundef nonnull %postfix.i, ptr noundef nonnull %buf.i.i67, i32 noundef %call3.i.i73) #9
  br label %nvram_read_u16.exit.i

if.end15.i.i:                                     ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %var.i.i68 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %var.i.i68, align 2
  %112 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx2.i, align 2
  br label %nvram_read_u16.exit.i

nvram_read_u16.exit.i:                            ; preds = %if.end15.i.i, %do.end.i.i77, %for.body.i.nvram_read_u16.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i.i68) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i.i67) #6
  %arrayidx4.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.060.i, i32 8, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i24.i) #6
  %113 = call ptr @memset(ptr %buf.i24.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i25.i) #6
  %114 = ptrtoint ptr %var.i25.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -1, ptr %var.i25.i, align 2, !annotation !557
  %call.i26.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix.i, ptr noundef nonnull @.str.57, ptr noundef nonnull %buf.i24.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %cmp.i27.i = icmp slt i32 %call.i26.i, 0
  br i1 %cmp.i27.i, label %nvram_read_u16.exit.i.nvram_read_u16.exit35.i_crit_edge, label %if.end.i31.i

nvram_read_u16.exit.i.nvram_read_u16.exit35.i_crit_edge: ; preds = %nvram_read_u16.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit35.i

if.end.i31.i:                                     ; preds = %nvram_read_u16.exit.i
  %call2.i28.i = call ptr @strim(ptr noundef nonnull %buf.i24.i) #6
  %call3.i29.i = call i32 @kstrtou16(ptr noundef %call2.i28.i, i32 noundef 0, ptr noundef nonnull %var.i25.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i29.i)
  %tobool4.not.i30.i = icmp eq i32 %call3.i29.i, 0
  br i1 %tobool4.not.i30.i, label %if.end15.i34.i, label %do.end.i33.i

do.end.i33.i:                                     ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.57, ptr noundef nonnull %postfix.i, ptr noundef nonnull %buf.i24.i, i32 noundef %call3.i29.i) #9
  br label %nvram_read_u16.exit35.i

if.end15.i34.i:                                   ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %var.i25.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %var.i25.i, align 2
  %117 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %arrayidx4.i, align 2
  br label %nvram_read_u16.exit35.i

nvram_read_u16.exit35.i:                          ; preds = %if.end15.i34.i, %do.end.i33.i, %nvram_read_u16.exit.i.nvram_read_u16.exit35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i24.i) #6
  %arrayidx7.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.060.i, i32 7, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i36.i) #6
  %118 = call ptr @memset(ptr %buf.i36.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i37.i) #6
  %119 = ptrtoint ptr %var.i37.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %var.i37.i, align 2, !annotation !557
  %call.i38.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix.i, ptr noundef nonnull @.str.58, ptr noundef nonnull %buf.i36.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %cmp.i39.i = icmp slt i32 %call.i38.i, 0
  br i1 %cmp.i39.i, label %nvram_read_u16.exit35.i.nvram_read_u16.exit47.i_crit_edge, label %if.end.i43.i

nvram_read_u16.exit35.i.nvram_read_u16.exit47.i_crit_edge: ; preds = %nvram_read_u16.exit35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit47.i

if.end.i43.i:                                     ; preds = %nvram_read_u16.exit35.i
  %call2.i40.i = call ptr @strim(ptr noundef nonnull %buf.i36.i) #6
  %call3.i41.i = call i32 @kstrtou16(ptr noundef %call2.i40.i, i32 noundef 0, ptr noundef nonnull %var.i37.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i41.i)
  %tobool4.not.i42.i = icmp eq i32 %call3.i41.i, 0
  br i1 %tobool4.not.i42.i, label %if.end15.i46.i, label %do.end.i45.i

do.end.i45.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.58, ptr noundef nonnull %postfix.i, ptr noundef nonnull %buf.i36.i, i32 noundef %call3.i41.i) #9
  br label %nvram_read_u16.exit47.i

if.end15.i46.i:                                   ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %var.i37.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %var.i37.i, align 2
  %122 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %arrayidx7.i, align 2
  br label %nvram_read_u16.exit47.i

nvram_read_u16.exit47.i:                          ; preds = %if.end15.i46.i, %do.end.i45.i, %nvram_read_u16.exit35.i.nvram_read_u16.exit47.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i37.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i36.i) #6
  %arrayidx10.i = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.060.i, i32 9, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i48.i) #6
  %123 = call ptr @memset(ptr %buf.i48.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i49.i) #6
  %124 = ptrtoint ptr %var.i49.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %var.i49.i, align 2, !annotation !557
  %call.i50.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix.i, ptr noundef nonnull @.str.59, ptr noundef nonnull %buf.i48.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp.i51.i = icmp slt i32 %call.i50.i, 0
  br i1 %cmp.i51.i, label %nvram_read_u16.exit47.i.nvram_read_u16.exit59.i_crit_edge, label %if.end.i55.i

nvram_read_u16.exit47.i.nvram_read_u16.exit59.i_crit_edge: ; preds = %nvram_read_u16.exit47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit59.i

if.end.i55.i:                                     ; preds = %nvram_read_u16.exit47.i
  %call2.i52.i = call ptr @strim(ptr noundef nonnull %buf.i48.i) #6
  %call3.i53.i = call i32 @kstrtou16(ptr noundef %call2.i52.i, i32 noundef 0, ptr noundef nonnull %var.i49.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i53.i)
  %tobool4.not.i54.i = icmp eq i32 %call3.i53.i, 0
  br i1 %tobool4.not.i54.i, label %if.end15.i58.i, label %do.end.i57.i

do.end.i57.i:                                     ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.59, ptr noundef nonnull %postfix.i, ptr noundef nonnull %buf.i48.i, i32 noundef %call3.i53.i) #9
  br label %nvram_read_u16.exit59.i

if.end15.i58.i:                                   ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %var.i49.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %var.i49.i, align 2
  %127 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %arrayidx10.i, align 2
  br label %nvram_read_u16.exit59.i

nvram_read_u16.exit59.i:                          ; preds = %if.end15.i58.i, %do.end.i57.i, %nvram_read_u16.exit47.i.nvram_read_u16.exit59.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i49.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i48.i) #6
  %inc.i78 = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i78, 4
  br i1 %exitcond.not.i, label %bcm47xx_fill_sprom_path_r45.exit, label %nvram_read_u16.exit59.i.for.body.i_crit_edge

nvram_read_u16.exit59.i.for.body.i_crit_edge:     ; preds = %nvram_read_u16.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

bcm47xx_fill_sprom_path_r45.exit:                 ; preds = %nvram_read_u16.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %postfix.i) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge81
  call fastcc void @bcm47xx_fill_sprom_path_r4589(ptr noundef %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %bcm47xx_fill_sprom_path_r45.exit, %if.end.sw.epilog_crit_edge
  call fastcc void @bcm47xx_sprom_fill_auto(ptr noundef %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm47xx_fill_sprom_path_r4589(ptr nocapture noundef writeonly %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback) unnamed_addr #0 align 64 {
entry:
  %buf.i303 = alloca [100 x i8], align 1
  %var.i304 = alloca i16, align 2
  %buf.i291 = alloca [100 x i8], align 1
  %var.i292 = alloca i16, align 2
  %buf.i279 = alloca [100 x i8], align 1
  %var.i280 = alloca i16, align 2
  %buf.i267 = alloca [100 x i8], align 1
  %var.i268 = alloca i16, align 2
  %buf.i255 = alloca [100 x i8], align 1
  %var.i256 = alloca i16, align 2
  %buf.i243 = alloca [100 x i8], align 1
  %var.i244 = alloca i16, align 2
  %buf.i231 = alloca [100 x i8], align 1
  %var.i232 = alloca i16, align 2
  %buf.i219 = alloca [100 x i8], align 1
  %var.i220 = alloca i16, align 2
  %buf.i207 = alloca [100 x i8], align 1
  %var.i208 = alloca i16, align 2
  %buf.i194 = alloca [100 x i8], align 1
  %var.i195 = alloca i8, align 1
  %buf.i181 = alloca [100 x i8], align 1
  %var.i182 = alloca i8, align 1
  %buf.i168 = alloca [100 x i8], align 1
  %var.i169 = alloca i8, align 1
  %buf.i156 = alloca [100 x i8], align 1
  %var.i157 = alloca i16, align 2
  %buf.i144 = alloca [100 x i8], align 1
  %var.i145 = alloca i16, align 2
  %buf.i134 = alloca [100 x i8], align 1
  %var.i135 = alloca i16, align 2
  %buf.i122 = alloca [100 x i8], align 1
  %var.i123 = alloca i8, align 1
  %buf.i110 = alloca [100 x i8], align 1
  %var.i111 = alloca i8, align 1
  %buf.i = alloca [100 x i8], align 1
  %var.i = alloca i8, align 1
  %postfix = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %postfix) #6
  %0 = ptrtoint ptr %postfix to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %postfix, align 1, !annotation !557
  %1 = getelementptr inbounds [2 x i8], ptr %postfix, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !557
  br label %for.body

for.body:                                         ; preds = %nvram_read_u16.exit314.for.body_crit_edge, %entry
  %i.0315 = phi i32 [ 0, %entry ], [ %inc, %nvram_read_u16.exit314.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %postfix, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.0315)
  %maxpwr_2g = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i) #6
  %3 = call ptr @memset(ptr %buf.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i) #6
  %4 = ptrtoint ptr %var.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %var.i, align 1, !annotation !557
  %call.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.37, ptr noundef nonnull %buf.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.nvram_read_u8.exit_crit_edge, label %if.end.i

for.body.nvram_read_u8.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit

if.end.i:                                         ; preds = %for.body
  %call2.i = call ptr @strim(ptr noundef nonnull %buf.i) #6
  %call3.i = call i32 @kstrtou8(ptr noundef %call2.i, i32 noundef 0, ptr noundef nonnull %var.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.37, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i, i32 noundef %call3.i) #9
  br label %nvram_read_u8.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %var.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %var.i, align 1
  %7 = ptrtoint ptr %maxpwr_2g to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %maxpwr_2g, align 1
  br label %nvram_read_u8.exit

nvram_read_u8.exit:                               ; preds = %if.end8.i, %do.end.i, %for.body.nvram_read_u8.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i110) #6
  %8 = call ptr @memset(ptr %buf.i110, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i111) #6
  %9 = ptrtoint ptr %var.i111 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %var.i111, align 1, !annotation !557
  %call.i112 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.38, ptr noundef nonnull %buf.i110, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp.i113 = icmp slt i32 %call.i112, 0
  br i1 %cmp.i113, label %nvram_read_u8.exit.nvram_read_u8.exit121_crit_edge, label %if.end.i117

nvram_read_u8.exit.nvram_read_u8.exit121_crit_edge: ; preds = %nvram_read_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit121

if.end.i117:                                      ; preds = %nvram_read_u8.exit
  %call2.i114 = call ptr @strim(ptr noundef nonnull %buf.i110) #6
  %call3.i115 = call i32 @kstrtou8(ptr noundef %call2.i114, i32 noundef 0, ptr noundef nonnull %var.i111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i115)
  %tobool4.not.i116 = icmp eq i32 %call3.i115, 0
  br i1 %tobool4.not.i116, label %if.end8.i120, label %do.end.i119

do.end.i119:                                      ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.38, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i110, i32 noundef %call3.i115) #9
  br label %nvram_read_u8.exit121

if.end8.i120:                                     ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %var.i111 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %var.i111, align 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  br label %nvram_read_u8.exit121

nvram_read_u8.exit121:                            ; preds = %if.end8.i120, %do.end.i119, %nvram_read_u8.exit.nvram_read_u8.exit121_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i111) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i110) #6
  %itssi_5g = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i122) #6
  %13 = call ptr @memset(ptr %buf.i122, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i123) #6
  %14 = ptrtoint ptr %var.i123 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %var.i123, align 1, !annotation !557
  %call.i124 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.39, ptr noundef nonnull %buf.i122, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %nvram_read_u8.exit121.nvram_read_u8.exit133_crit_edge, label %if.end.i129

nvram_read_u8.exit121.nvram_read_u8.exit133_crit_edge: ; preds = %nvram_read_u8.exit121
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit133

if.end.i129:                                      ; preds = %nvram_read_u8.exit121
  %call2.i126 = call ptr @strim(ptr noundef nonnull %buf.i122) #6
  %call3.i127 = call i32 @kstrtou8(ptr noundef %call2.i126, i32 noundef 0, ptr noundef nonnull %var.i123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i127)
  %tobool4.not.i128 = icmp eq i32 %call3.i127, 0
  br i1 %tobool4.not.i128, label %if.end8.i132, label %do.end.i131

do.end.i131:                                      ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.39, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i122, i32 noundef %call3.i127) #9
  br label %nvram_read_u8.exit133

if.end8.i132:                                     ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %var.i123 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %var.i123, align 1
  %17 = ptrtoint ptr %itssi_5g to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %itssi_5g, align 1
  br label %nvram_read_u8.exit133

nvram_read_u8.exit133:                            ; preds = %if.end8.i132, %do.end.i131, %nvram_read_u8.exit121.nvram_read_u8.exit133_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i123) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i122) #6
  %pa_2g = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i134) #6
  %18 = call ptr @memset(ptr %buf.i134, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i135) #6
  %19 = ptrtoint ptr %var.i135 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %var.i135, align 2, !annotation !557
  %call.i136 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.40, ptr noundef nonnull %buf.i134, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i137 = icmp slt i32 %call.i136, 0
  br i1 %cmp.i137, label %nvram_read_u8.exit133.nvram_read_u16.exit_crit_edge, label %if.end.i141

nvram_read_u8.exit133.nvram_read_u16.exit_crit_edge: ; preds = %nvram_read_u8.exit133
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit

if.end.i141:                                      ; preds = %nvram_read_u8.exit133
  %call2.i138 = call ptr @strim(ptr noundef nonnull %buf.i134) #6
  %call3.i139 = call i32 @kstrtou16(ptr noundef %call2.i138, i32 noundef 0, ptr noundef nonnull %var.i135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i139)
  %tobool4.not.i140 = icmp eq i32 %call3.i139, 0
  br i1 %tobool4.not.i140, label %if.end15.i, label %do.end.i143

do.end.i143:                                      ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.40, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i134, i32 noundef %call3.i139) #9
  br label %nvram_read_u16.exit

if.end15.i:                                       ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %var.i135 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %var.i135, align 2
  %22 = ptrtoint ptr %pa_2g to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %pa_2g, align 2
  br label %nvram_read_u16.exit

nvram_read_u16.exit:                              ; preds = %if.end15.i, %do.end.i143, %nvram_read_u8.exit133.nvram_read_u16.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i135) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i134) #6
  %arrayidx11 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i144) #6
  %23 = call ptr @memset(ptr %buf.i144, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i145) #6
  %24 = ptrtoint ptr %var.i145 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %var.i145, align 2, !annotation !557
  %call.i146 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.41, ptr noundef nonnull %buf.i144, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i147 = icmp slt i32 %call.i146, 0
  br i1 %cmp.i147, label %nvram_read_u16.exit.nvram_read_u16.exit155_crit_edge, label %if.end.i151

nvram_read_u16.exit.nvram_read_u16.exit155_crit_edge: ; preds = %nvram_read_u16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit155

if.end.i151:                                      ; preds = %nvram_read_u16.exit
  %call2.i148 = call ptr @strim(ptr noundef nonnull %buf.i144) #6
  %call3.i149 = call i32 @kstrtou16(ptr noundef %call2.i148, i32 noundef 0, ptr noundef nonnull %var.i145) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i149)
  %tobool4.not.i150 = icmp eq i32 %call3.i149, 0
  br i1 %tobool4.not.i150, label %if.end15.i154, label %do.end.i153

do.end.i153:                                      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.41, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i144, i32 noundef %call3.i149) #9
  br label %nvram_read_u16.exit155

if.end15.i154:                                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %var.i145 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %var.i145, align 2
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx11, align 2
  br label %nvram_read_u16.exit155

nvram_read_u16.exit155:                           ; preds = %if.end15.i154, %do.end.i153, %nvram_read_u16.exit.nvram_read_u16.exit155_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i145) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i144) #6
  %arrayidx15 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 6, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i156) #6
  %28 = call ptr @memset(ptr %buf.i156, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i157) #6
  %29 = ptrtoint ptr %var.i157 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %var.i157, align 2, !annotation !557
  %call.i158 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.42, ptr noundef nonnull %buf.i156, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp slt i32 %call.i158, 0
  br i1 %cmp.i159, label %nvram_read_u16.exit155.nvram_read_u16.exit167_crit_edge, label %if.end.i163

nvram_read_u16.exit155.nvram_read_u16.exit167_crit_edge: ; preds = %nvram_read_u16.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit167

if.end.i163:                                      ; preds = %nvram_read_u16.exit155
  %call2.i160 = call ptr @strim(ptr noundef nonnull %buf.i156) #6
  %call3.i161 = call i32 @kstrtou16(ptr noundef %call2.i160, i32 noundef 0, ptr noundef nonnull %var.i157) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i161)
  %tobool4.not.i162 = icmp eq i32 %call3.i161, 0
  br i1 %tobool4.not.i162, label %if.end15.i166, label %do.end.i165

do.end.i165:                                      ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.42, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i156, i32 noundef %call3.i161) #9
  br label %nvram_read_u16.exit167

if.end15.i166:                                    ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %var.i157 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %var.i157, align 2
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx15, align 2
  br label %nvram_read_u16.exit167

nvram_read_u16.exit167:                           ; preds = %if.end15.i166, %do.end.i165, %nvram_read_u16.exit155.nvram_read_u16.exit167_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i157) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i156) #6
  %maxpwr_5g = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i168) #6
  %33 = call ptr @memset(ptr %buf.i168, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i169) #6
  %34 = ptrtoint ptr %var.i169 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %var.i169, align 1, !annotation !557
  %call.i170 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.43, ptr noundef nonnull %buf.i168, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp.i171 = icmp slt i32 %call.i170, 0
  br i1 %cmp.i171, label %nvram_read_u16.exit167.nvram_read_u8.exit180_crit_edge, label %if.end.i175

nvram_read_u16.exit167.nvram_read_u8.exit180_crit_edge: ; preds = %nvram_read_u16.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit180

if.end.i175:                                      ; preds = %nvram_read_u16.exit167
  %call2.i172 = call ptr @strim(ptr noundef nonnull %buf.i168) #6
  %call3.i173 = call i32 @kstrtou8(ptr noundef %call2.i172, i32 noundef 0, ptr noundef nonnull %var.i169) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i173)
  %tobool4.not.i174 = icmp eq i32 %call3.i173, 0
  br i1 %tobool4.not.i174, label %if.end8.i178, label %do.end.i177

do.end.i177:                                      ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.43, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i168, i32 noundef %call3.i173) #9
  br label %nvram_read_u8.exit180

if.end8.i178:                                     ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %var.i169 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %var.i169, align 1
  %37 = ptrtoint ptr %maxpwr_5g to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %maxpwr_5g, align 1
  br label %nvram_read_u8.exit180

nvram_read_u8.exit180:                            ; preds = %if.end8.i178, %do.end.i177, %nvram_read_u16.exit167.nvram_read_u8.exit180_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i169) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i168) #6
  %maxpwr_5gh = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i181) #6
  %38 = call ptr @memset(ptr %buf.i181, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i182) #6
  %39 = ptrtoint ptr %var.i182 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %var.i182, align 1, !annotation !557
  %call.i183 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.44, ptr noundef nonnull %buf.i181, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp.i184 = icmp slt i32 %call.i183, 0
  br i1 %cmp.i184, label %nvram_read_u8.exit180.nvram_read_u8.exit193_crit_edge, label %if.end.i188

nvram_read_u8.exit180.nvram_read_u8.exit193_crit_edge: ; preds = %nvram_read_u8.exit180
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit193

if.end.i188:                                      ; preds = %nvram_read_u8.exit180
  %call2.i185 = call ptr @strim(ptr noundef nonnull %buf.i181) #6
  %call3.i186 = call i32 @kstrtou8(ptr noundef %call2.i185, i32 noundef 0, ptr noundef nonnull %var.i182) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i186)
  %tobool4.not.i187 = icmp eq i32 %call3.i186, 0
  br i1 %tobool4.not.i187, label %if.end8.i191, label %do.end.i190

do.end.i190:                                      ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.44, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i181, i32 noundef %call3.i186) #9
  br label %nvram_read_u8.exit193

if.end8.i191:                                     ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %var.i182 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %var.i182, align 1
  %42 = ptrtoint ptr %maxpwr_5gh to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %maxpwr_5gh, align 1
  br label %nvram_read_u8.exit193

nvram_read_u8.exit193:                            ; preds = %if.end8.i191, %do.end.i190, %nvram_read_u8.exit180.nvram_read_u8.exit193_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i182) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i181) #6
  %maxpwr_5gl = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i194) #6
  %43 = call ptr @memset(ptr %buf.i194, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i195) #6
  %44 = ptrtoint ptr %var.i195 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %var.i195, align 1, !annotation !557
  %call.i196 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.45, ptr noundef nonnull %buf.i194, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %cmp.i197 = icmp slt i32 %call.i196, 0
  br i1 %cmp.i197, label %nvram_read_u8.exit193.nvram_read_u8.exit206_crit_edge, label %if.end.i201

nvram_read_u8.exit193.nvram_read_u8.exit206_crit_edge: ; preds = %nvram_read_u8.exit193
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit206

if.end.i201:                                      ; preds = %nvram_read_u8.exit193
  %call2.i198 = call ptr @strim(ptr noundef nonnull %buf.i194) #6
  %call3.i199 = call i32 @kstrtou8(ptr noundef %call2.i198, i32 noundef 0, ptr noundef nonnull %var.i195) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i199)
  %tobool4.not.i200 = icmp eq i32 %call3.i199, 0
  br i1 %tobool4.not.i200, label %if.end8.i204, label %do.end.i203

do.end.i203:                                      ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.45, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i194, i32 noundef %call3.i199) #9
  br label %nvram_read_u8.exit206

if.end8.i204:                                     ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %var.i195 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %var.i195, align 1
  %47 = ptrtoint ptr %maxpwr_5gl to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %maxpwr_5gl, align 1
  br label %nvram_read_u8.exit206

nvram_read_u8.exit206:                            ; preds = %if.end8.i204, %do.end.i203, %nvram_read_u8.exit193.nvram_read_u8.exit206_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i195) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i194) #6
  %pa_5g = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i207) #6
  %48 = call ptr @memset(ptr %buf.i207, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i208) #6
  %49 = ptrtoint ptr %var.i208 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %var.i208, align 2, !annotation !557
  %call.i209 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.46, ptr noundef nonnull %buf.i207, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp.i210 = icmp slt i32 %call.i209, 0
  br i1 %cmp.i210, label %nvram_read_u8.exit206.nvram_read_u16.exit218_crit_edge, label %if.end.i214

nvram_read_u8.exit206.nvram_read_u16.exit218_crit_edge: ; preds = %nvram_read_u8.exit206
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit218

if.end.i214:                                      ; preds = %nvram_read_u8.exit206
  %call2.i211 = call ptr @strim(ptr noundef nonnull %buf.i207) #6
  %call3.i212 = call i32 @kstrtou16(ptr noundef %call2.i211, i32 noundef 0, ptr noundef nonnull %var.i208) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i212)
  %tobool4.not.i213 = icmp eq i32 %call3.i212, 0
  br i1 %tobool4.not.i213, label %if.end15.i217, label %do.end.i216

do.end.i216:                                      ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.46, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i207, i32 noundef %call3.i212) #9
  br label %nvram_read_u16.exit218

if.end15.i217:                                    ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %var.i208 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %var.i208, align 2
  %52 = ptrtoint ptr %pa_5g to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %pa_5g, align 2
  br label %nvram_read_u16.exit218

nvram_read_u16.exit218:                           ; preds = %if.end15.i217, %do.end.i216, %nvram_read_u8.exit206.nvram_read_u16.exit218_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i208) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i207) #6
  %arrayidx28 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i219) #6
  %53 = call ptr @memset(ptr %buf.i219, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i220) #6
  %54 = ptrtoint ptr %var.i220 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %var.i220, align 2, !annotation !557
  %call.i221 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.47, ptr noundef nonnull %buf.i219, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %cmp.i222 = icmp slt i32 %call.i221, 0
  br i1 %cmp.i222, label %nvram_read_u16.exit218.nvram_read_u16.exit230_crit_edge, label %if.end.i226

nvram_read_u16.exit218.nvram_read_u16.exit230_crit_edge: ; preds = %nvram_read_u16.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit230

if.end.i226:                                      ; preds = %nvram_read_u16.exit218
  %call2.i223 = call ptr @strim(ptr noundef nonnull %buf.i219) #6
  %call3.i224 = call i32 @kstrtou16(ptr noundef %call2.i223, i32 noundef 0, ptr noundef nonnull %var.i220) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i224)
  %tobool4.not.i225 = icmp eq i32 %call3.i224, 0
  br i1 %tobool4.not.i225, label %if.end15.i229, label %do.end.i228

do.end.i228:                                      ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.47, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i219, i32 noundef %call3.i224) #9
  br label %nvram_read_u16.exit230

if.end15.i229:                                    ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %var.i220 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %var.i220, align 2
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx28, align 2
  br label %nvram_read_u16.exit230

nvram_read_u16.exit230:                           ; preds = %if.end15.i229, %do.end.i228, %nvram_read_u16.exit218.nvram_read_u16.exit230_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i220) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i219) #6
  %arrayidx32 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 8, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i231) #6
  %58 = call ptr @memset(ptr %buf.i231, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i232) #6
  %59 = ptrtoint ptr %var.i232 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %var.i232, align 2, !annotation !557
  %call.i233 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.48, ptr noundef nonnull %buf.i231, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %cmp.i234 = icmp slt i32 %call.i233, 0
  br i1 %cmp.i234, label %nvram_read_u16.exit230.nvram_read_u16.exit242_crit_edge, label %if.end.i238

nvram_read_u16.exit230.nvram_read_u16.exit242_crit_edge: ; preds = %nvram_read_u16.exit230
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit242

if.end.i238:                                      ; preds = %nvram_read_u16.exit230
  %call2.i235 = call ptr @strim(ptr noundef nonnull %buf.i231) #6
  %call3.i236 = call i32 @kstrtou16(ptr noundef %call2.i235, i32 noundef 0, ptr noundef nonnull %var.i232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i236)
  %tobool4.not.i237 = icmp eq i32 %call3.i236, 0
  br i1 %tobool4.not.i237, label %if.end15.i241, label %do.end.i240

do.end.i240:                                      ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.48, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i231, i32 noundef %call3.i236) #9
  br label %nvram_read_u16.exit242

if.end15.i241:                                    ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %var.i232 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %var.i232, align 2
  %62 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx32, align 2
  br label %nvram_read_u16.exit242

nvram_read_u16.exit242:                           ; preds = %if.end15.i241, %do.end.i240, %nvram_read_u16.exit230.nvram_read_u16.exit242_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i232) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i231) #6
  %pa_5gl = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i243) #6
  %63 = call ptr @memset(ptr %buf.i243, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i244) #6
  %64 = ptrtoint ptr %var.i244 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %var.i244, align 2, !annotation !557
  %call.i245 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.49, ptr noundef nonnull %buf.i243, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp.i246 = icmp slt i32 %call.i245, 0
  br i1 %cmp.i246, label %nvram_read_u16.exit242.nvram_read_u16.exit254_crit_edge, label %if.end.i250

nvram_read_u16.exit242.nvram_read_u16.exit254_crit_edge: ; preds = %nvram_read_u16.exit242
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit254

if.end.i250:                                      ; preds = %nvram_read_u16.exit242
  %call2.i247 = call ptr @strim(ptr noundef nonnull %buf.i243) #6
  %call3.i248 = call i32 @kstrtou16(ptr noundef %call2.i247, i32 noundef 0, ptr noundef nonnull %var.i244) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i248)
  %tobool4.not.i249 = icmp eq i32 %call3.i248, 0
  br i1 %tobool4.not.i249, label %if.end15.i253, label %do.end.i252

do.end.i252:                                      ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.49, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i243, i32 noundef %call3.i248) #9
  br label %nvram_read_u16.exit254

if.end15.i253:                                    ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %var.i244 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %var.i244, align 2
  %67 = ptrtoint ptr %pa_5gl to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %pa_5gl, align 2
  br label %nvram_read_u16.exit254

nvram_read_u16.exit254:                           ; preds = %if.end15.i253, %do.end.i252, %nvram_read_u16.exit242.nvram_read_u16.exit254_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i244) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i243) #6
  %arrayidx39 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 7, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i255) #6
  %68 = call ptr @memset(ptr %buf.i255, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i256) #6
  %69 = ptrtoint ptr %var.i256 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -1, ptr %var.i256, align 2, !annotation !557
  %call.i257 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.50, ptr noundef nonnull %buf.i255, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp.i258 = icmp slt i32 %call.i257, 0
  br i1 %cmp.i258, label %nvram_read_u16.exit254.nvram_read_u16.exit266_crit_edge, label %if.end.i262

nvram_read_u16.exit254.nvram_read_u16.exit266_crit_edge: ; preds = %nvram_read_u16.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit266

if.end.i262:                                      ; preds = %nvram_read_u16.exit254
  %call2.i259 = call ptr @strim(ptr noundef nonnull %buf.i255) #6
  %call3.i260 = call i32 @kstrtou16(ptr noundef %call2.i259, i32 noundef 0, ptr noundef nonnull %var.i256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i260)
  %tobool4.not.i261 = icmp eq i32 %call3.i260, 0
  br i1 %tobool4.not.i261, label %if.end15.i265, label %do.end.i264

do.end.i264:                                      ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.50, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i255, i32 noundef %call3.i260) #9
  br label %nvram_read_u16.exit266

if.end15.i265:                                    ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %var.i256 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %var.i256, align 2
  %72 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx39, align 2
  br label %nvram_read_u16.exit266

nvram_read_u16.exit266:                           ; preds = %if.end15.i265, %do.end.i264, %nvram_read_u16.exit254.nvram_read_u16.exit266_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i256) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i255) #6
  %arrayidx43 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 7, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i267) #6
  %73 = call ptr @memset(ptr %buf.i267, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i268) #6
  %74 = ptrtoint ptr %var.i268 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %var.i268, align 2, !annotation !557
  %call.i269 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.51, ptr noundef nonnull %buf.i267, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp.i270 = icmp slt i32 %call.i269, 0
  br i1 %cmp.i270, label %nvram_read_u16.exit266.nvram_read_u16.exit278_crit_edge, label %if.end.i274

nvram_read_u16.exit266.nvram_read_u16.exit278_crit_edge: ; preds = %nvram_read_u16.exit266
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit278

if.end.i274:                                      ; preds = %nvram_read_u16.exit266
  %call2.i271 = call ptr @strim(ptr noundef nonnull %buf.i267) #6
  %call3.i272 = call i32 @kstrtou16(ptr noundef %call2.i271, i32 noundef 0, ptr noundef nonnull %var.i268) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i272)
  %tobool4.not.i273 = icmp eq i32 %call3.i272, 0
  br i1 %tobool4.not.i273, label %if.end15.i277, label %do.end.i276

do.end.i276:                                      ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.51, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i267, i32 noundef %call3.i272) #9
  br label %nvram_read_u16.exit278

if.end15.i277:                                    ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %var.i268 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %var.i268, align 2
  %77 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx43, align 2
  br label %nvram_read_u16.exit278

nvram_read_u16.exit278:                           ; preds = %if.end15.i277, %do.end.i276, %nvram_read_u16.exit266.nvram_read_u16.exit278_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i268) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i267) #6
  %pa_5gh = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i279) #6
  %78 = call ptr @memset(ptr %buf.i279, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i280) #6
  %79 = ptrtoint ptr %var.i280 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -1, ptr %var.i280, align 2, !annotation !557
  %call.i281 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.52, ptr noundef nonnull %buf.i279, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %cmp.i282 = icmp slt i32 %call.i281, 0
  br i1 %cmp.i282, label %nvram_read_u16.exit278.nvram_read_u16.exit290_crit_edge, label %if.end.i286

nvram_read_u16.exit278.nvram_read_u16.exit290_crit_edge: ; preds = %nvram_read_u16.exit278
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit290

if.end.i286:                                      ; preds = %nvram_read_u16.exit278
  %call2.i283 = call ptr @strim(ptr noundef nonnull %buf.i279) #6
  %call3.i284 = call i32 @kstrtou16(ptr noundef %call2.i283, i32 noundef 0, ptr noundef nonnull %var.i280) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i284)
  %tobool4.not.i285 = icmp eq i32 %call3.i284, 0
  br i1 %tobool4.not.i285, label %if.end15.i289, label %do.end.i288

do.end.i288:                                      ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.52, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i279, i32 noundef %call3.i284) #9
  br label %nvram_read_u16.exit290

if.end15.i289:                                    ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %var.i280 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %var.i280, align 2
  %82 = ptrtoint ptr %pa_5gh to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %pa_5gh, align 2
  br label %nvram_read_u16.exit290

nvram_read_u16.exit290:                           ; preds = %if.end15.i289, %do.end.i288, %nvram_read_u16.exit278.nvram_read_u16.exit290_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i280) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i279) #6
  %arrayidx50 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 9, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i291) #6
  %83 = call ptr @memset(ptr %buf.i291, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i292) #6
  %84 = ptrtoint ptr %var.i292 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 -1, ptr %var.i292, align 2, !annotation !557
  %call.i293 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.53, ptr noundef nonnull %buf.i291, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %cmp.i294 = icmp slt i32 %call.i293, 0
  br i1 %cmp.i294, label %nvram_read_u16.exit290.nvram_read_u16.exit302_crit_edge, label %if.end.i298

nvram_read_u16.exit290.nvram_read_u16.exit302_crit_edge: ; preds = %nvram_read_u16.exit290
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit302

if.end.i298:                                      ; preds = %nvram_read_u16.exit290
  %call2.i295 = call ptr @strim(ptr noundef nonnull %buf.i291) #6
  %call3.i296 = call i32 @kstrtou16(ptr noundef %call2.i295, i32 noundef 0, ptr noundef nonnull %var.i292) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i296)
  %tobool4.not.i297 = icmp eq i32 %call3.i296, 0
  br i1 %tobool4.not.i297, label %if.end15.i301, label %do.end.i300

do.end.i300:                                      ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.53, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i291, i32 noundef %call3.i296) #9
  br label %nvram_read_u16.exit302

if.end15.i301:                                    ; preds = %if.end.i298
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %var.i292 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %var.i292, align 2
  %87 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %arrayidx50, align 2
  br label %nvram_read_u16.exit302

nvram_read_u16.exit302:                           ; preds = %if.end15.i301, %do.end.i300, %nvram_read_u16.exit290.nvram_read_u16.exit302_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i292) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i291) #6
  %arrayidx54 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 74, i32 %i.0315, i32 9, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i303) #6
  %88 = call ptr @memset(ptr %buf.i303, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i304) #6
  %89 = ptrtoint ptr %var.i304 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %var.i304, align 2, !annotation !557
  %call.i305 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef nonnull %postfix, ptr noundef nonnull @.str.54, ptr noundef nonnull %buf.i303, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp.i306 = icmp slt i32 %call.i305, 0
  br i1 %cmp.i306, label %nvram_read_u16.exit302.nvram_read_u16.exit314_crit_edge, label %if.end.i310

nvram_read_u16.exit302.nvram_read_u16.exit314_crit_edge: ; preds = %nvram_read_u16.exit302
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit314

if.end.i310:                                      ; preds = %nvram_read_u16.exit302
  %call2.i307 = call ptr @strim(ptr noundef nonnull %buf.i303) #6
  %call3.i308 = call i32 @kstrtou16(ptr noundef %call2.i307, i32 noundef 0, ptr noundef nonnull %var.i304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i308)
  %tobool4.not.i309 = icmp eq i32 %call3.i308, 0
  br i1 %tobool4.not.i309, label %if.end15.i313, label %do.end.i312

do.end.i312:                                      ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.54, ptr noundef nonnull %postfix, ptr noundef nonnull %buf.i303, i32 noundef %call3.i308) #9
  br label %nvram_read_u16.exit314

if.end15.i313:                                    ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %var.i304 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %var.i304, align 2
  %92 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx54, align 2
  br label %nvram_read_u16.exit314

nvram_read_u16.exit314:                           ; preds = %if.end15.i313, %do.end.i312, %nvram_read_u16.exit302.nvram_read_u16.exit314_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i304) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i303) #6
  %inc = add nuw nsw i32 %i.0315, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %nvram_read_u16.exit314.for.body_crit_edge

nvram_read_u16.exit314.for.body_crit_edge:        ; preds = %nvram_read_u16.exit314
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %nvram_read_u16.exit314
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %postfix) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm47xx_sprom_fill_auto(ptr noundef %sprom, ptr noundef %prefix, i1 noundef zeroext %fallback) unnamed_addr #0 align 64 {
entry:
  %buf.i4959 = alloca [100 x i8], align 1
  %var.i4960 = alloca i8, align 1
  %buf.i4946 = alloca [100 x i8], align 1
  %var.i4947 = alloca i8, align 1
  %buf.i4933 = alloca [100 x i8], align 1
  %var.i4934 = alloca i8, align 1
  %buf.i4920 = alloca [100 x i8], align 1
  %var.i4921 = alloca i8, align 1
  %buf.i4907 = alloca [100 x i8], align 1
  %var.i4908 = alloca i8, align 1
  %buf.i4894 = alloca [100 x i8], align 1
  %var.i4895 = alloca i8, align 1
  %buf.i4881 = alloca [100 x i8], align 1
  %var.i4882 = alloca i8, align 1
  %buf.i4868 = alloca [100 x i8], align 1
  %var.i4869 = alloca i8, align 1
  %buf.i4855 = alloca [100 x i8], align 1
  %var.i4856 = alloca i8, align 1
  %buf.i4842 = alloca [100 x i8], align 1
  %var.i4843 = alloca i8, align 1
  %buf.i4829 = alloca [100 x i8], align 1
  %var.i4830 = alloca i8, align 1
  %buf.i4816 = alloca [100 x i8], align 1
  %var.i4817 = alloca i8, align 1
  %buf.i4803 = alloca [100 x i8], align 1
  %var.i4804 = alloca i8, align 1
  %buf.i4790 = alloca [100 x i8], align 1
  %var.i4791 = alloca i8, align 1
  %buf.i4777 = alloca [100 x i8], align 1
  %var.i4778 = alloca i8, align 1
  %buf.i4764 = alloca [100 x i8], align 1
  %var.i4765 = alloca i8, align 1
  %buf.i4751 = alloca [100 x i8], align 1
  %var.i4752 = alloca i8, align 1
  %buf.i4738 = alloca [100 x i8], align 1
  %var.i4739 = alloca i8, align 1
  %buf.i4725 = alloca [100 x i8], align 1
  %var.i4726 = alloca i8, align 1
  %buf.i4712 = alloca [100 x i8], align 1
  %var.i4713 = alloca i8, align 1
  %buf.i4699 = alloca [100 x i8], align 1
  %var.i4700 = alloca i8, align 1
  %buf.i4686 = alloca [100 x i8], align 1
  %var.i4687 = alloca i8, align 1
  %buf.i4673 = alloca [100 x i8], align 1
  %var.i4674 = alloca i8, align 1
  %buf.i4660 = alloca [100 x i8], align 1
  %var.i4661 = alloca i8, align 1
  %buf.i4647 = alloca [100 x i8], align 1
  %var.i4648 = alloca i8, align 1
  %buf.i4634 = alloca [100 x i8], align 1
  %var.i4635 = alloca i8, align 1
  %buf.i4621 = alloca [100 x i8], align 1
  %var.i4622 = alloca i8, align 1
  %buf.i4608 = alloca [100 x i8], align 1
  %var.i4609 = alloca i8, align 1
  %buf.i4595 = alloca [100 x i8], align 1
  %var.i4596 = alloca i8, align 1
  %buf.i4582 = alloca [100 x i8], align 1
  %var.i4583 = alloca i8, align 1
  %buf.i4569 = alloca [100 x i8], align 1
  %var.i4570 = alloca i8, align 1
  %buf.i4556 = alloca [100 x i8], align 1
  %var.i4557 = alloca i8, align 1
  %buf.i4543 = alloca [100 x i8], align 1
  %var.i4544 = alloca i8, align 1
  %buf.i4531 = alloca [100 x i8], align 1
  %var.i4532 = alloca i16, align 2
  %buf.i4519 = alloca [100 x i8], align 1
  %var.i4520 = alloca i16, align 2
  %buf.i4507 = alloca [100 x i8], align 1
  %var.i4508 = alloca i32, align 4
  %buf.i4495 = alloca [100 x i8], align 1
  %var.i4496 = alloca i32, align 4
  %buf.i4483 = alloca [100 x i8], align 1
  %var.i4484 = alloca i32, align 4
  %buf.i4471 = alloca [100 x i8], align 1
  %var.i4472 = alloca i32, align 4
  %buf.i4459 = alloca [100 x i8], align 1
  %var.i4460 = alloca i32, align 4
  %buf.i4447 = alloca [100 x i8], align 1
  %var.i4448 = alloca i32, align 4
  %buf.i4435 = alloca [100 x i8], align 1
  %var.i4436 = alloca i32, align 4
  %buf.i4423 = alloca [100 x i8], align 1
  %var.i4424 = alloca i32, align 4
  %buf.i4411 = alloca [100 x i8], align 1
  %var.i4412 = alloca i32, align 4
  %buf.i4399 = alloca [100 x i8], align 1
  %var.i4400 = alloca i32, align 4
  %buf.i4387 = alloca [100 x i8], align 1
  %var.i4388 = alloca i32, align 4
  %buf.i4375 = alloca [100 x i8], align 1
  %var.i4376 = alloca i32, align 4
  %buf.i4363 = alloca [100 x i8], align 1
  %var.i4364 = alloca i32, align 4
  %buf.i4351 = alloca [100 x i8], align 1
  %var.i4352 = alloca i32, align 4
  %buf.i4339 = alloca [100 x i8], align 1
  %var.i4340 = alloca i32, align 4
  %buf.i4327 = alloca [100 x i8], align 1
  %var.i4328 = alloca i32, align 4
  %buf.i4315 = alloca [100 x i8], align 1
  %var.i4316 = alloca i32, align 4
  %buf.i4303 = alloca [100 x i8], align 1
  %var.i4304 = alloca i32, align 4
  %buf.i4291 = alloca [100 x i8], align 1
  %var.i4292 = alloca i32, align 4
  %buf.i4279 = alloca [100 x i8], align 1
  %var.i4280 = alloca i32, align 4
  %buf.i4267 = alloca [100 x i8], align 1
  %var.i4268 = alloca i16, align 2
  %buf.i4255 = alloca [100 x i8], align 1
  %var.i4256 = alloca i16, align 2
  %buf.i4243 = alloca [100 x i8], align 1
  %var.i4244 = alloca i16, align 2
  %buf.i4231 = alloca [100 x i8], align 1
  %var.i4232 = alloca i16, align 2
  %buf.i4219 = alloca [100 x i8], align 1
  %var.i4220 = alloca i16, align 2
  %buf.i4207 = alloca [100 x i8], align 1
  %var.i4208 = alloca i16, align 2
  %buf.i4195 = alloca [100 x i8], align 1
  %var.i4196 = alloca i16, align 2
  %buf.i4183 = alloca [100 x i8], align 1
  %var.i4184 = alloca i16, align 2
  %buf.i4171 = alloca [100 x i8], align 1
  %var.i4172 = alloca i16, align 2
  %buf.i4159 = alloca [100 x i8], align 1
  %var.i4160 = alloca i16, align 2
  %buf.i4147 = alloca [100 x i8], align 1
  %var.i4148 = alloca i16, align 2
  %buf.i4135 = alloca [100 x i8], align 1
  %var.i4136 = alloca i16, align 2
  %buf.i4123 = alloca [100 x i8], align 1
  %var.i4124 = alloca i16, align 2
  %buf.i4111 = alloca [100 x i8], align 1
  %var.i4112 = alloca i16, align 2
  %buf.i4099 = alloca [100 x i8], align 1
  %var.i4100 = alloca i16, align 2
  %buf.i4087 = alloca [100 x i8], align 1
  %var.i4088 = alloca i16, align 2
  %buf.i4075 = alloca [100 x i8], align 1
  %var.i4076 = alloca i16, align 2
  %buf.i4063 = alloca [100 x i8], align 1
  %var.i4064 = alloca i16, align 2
  %buf.i4051 = alloca [100 x i8], align 1
  %var.i4052 = alloca i16, align 2
  %buf.i4039 = alloca [100 x i8], align 1
  %var.i4040 = alloca i16, align 2
  %buf.i4027 = alloca [100 x i8], align 1
  %var.i4028 = alloca i16, align 2
  %buf.i4015 = alloca [100 x i8], align 1
  %var.i4016 = alloca i16, align 2
  %buf.i4003 = alloca [100 x i8], align 1
  %var.i4004 = alloca i16, align 2
  %buf.i3991 = alloca [100 x i8], align 1
  %var.i3992 = alloca i16, align 2
  %buf.i3979 = alloca [100 x i8], align 1
  %var.i3980 = alloca i16, align 2
  %buf.i3967 = alloca [100 x i8], align 1
  %var.i3968 = alloca i16, align 2
  %buf.i3955 = alloca [100 x i8], align 1
  %var.i3956 = alloca i16, align 2
  %buf.i3943 = alloca [100 x i8], align 1
  %var.i3944 = alloca i16, align 2
  %buf.i3931 = alloca [100 x i8], align 1
  %var.i3932 = alloca i16, align 2
  %buf.i3919 = alloca [100 x i8], align 1
  %var.i3920 = alloca i16, align 2
  %buf.i3907 = alloca [100 x i8], align 1
  %var.i3908 = alloca i16, align 2
  %buf.i3895 = alloca [100 x i8], align 1
  %var.i3896 = alloca i16, align 2
  %buf.i3883 = alloca [100 x i8], align 1
  %var.i3884 = alloca i16, align 2
  %buf.i3871 = alloca [100 x i8], align 1
  %var.i3872 = alloca i16, align 2
  %buf.i3859 = alloca [100 x i8], align 1
  %var.i3860 = alloca i16, align 2
  %buf.i3847 = alloca [100 x i8], align 1
  %var.i3848 = alloca i16, align 2
  %buf.i3835 = alloca [100 x i8], align 1
  %var.i3836 = alloca i16, align 2
  %buf.i3823 = alloca [100 x i8], align 1
  %var.i3824 = alloca i16, align 2
  %buf.i3811 = alloca [100 x i8], align 1
  %var.i3812 = alloca i32, align 4
  %buf.i3799 = alloca [100 x i8], align 1
  %var.i3800 = alloca i32, align 4
  %buf.i3787 = alloca [100 x i8], align 1
  %var.i3788 = alloca i32, align 4
  %buf.i3775 = alloca [100 x i8], align 1
  %var.i3776 = alloca i32, align 4
  %buf.i3763 = alloca [100 x i8], align 1
  %var.i3764 = alloca i16, align 2
  %buf.i3750 = alloca [100 x i8], align 1
  %var.i3751 = alloca i8, align 1
  %buf.i3737 = alloca [100 x i8], align 1
  %var.i3738 = alloca i8, align 1
  %buf.i3724 = alloca [100 x i8], align 1
  %var.i3725 = alloca i8, align 1
  %buf.i3711 = alloca [100 x i8], align 1
  %var.i3712 = alloca i8, align 1
  %buf.i3698 = alloca [100 x i8], align 1
  %var.i3699 = alloca i8, align 1
  %buf.i3685 = alloca [100 x i8], align 1
  %var.i3686 = alloca i8, align 1
  %buf.i3672 = alloca [100 x i8], align 1
  %var.i3673 = alloca i8, align 1
  %buf.i3659 = alloca [100 x i8], align 1
  %var.i3660 = alloca i8, align 1
  %buf.i3646 = alloca [100 x i8], align 1
  %var.i3647 = alloca i8, align 1
  %buf.i3633 = alloca [100 x i8], align 1
  %var.i3634 = alloca i8, align 1
  %buf.i3620 = alloca [100 x i8], align 1
  %var.i3621 = alloca i8, align 1
  %buf.i3607 = alloca [100 x i8], align 1
  %var.i3608 = alloca i8, align 1
  %buf.i3594 = alloca [100 x i8], align 1
  %var.i3595 = alloca i8, align 1
  %buf.i3581 = alloca [100 x i8], align 1
  %var.i3582 = alloca i8, align 1
  %buf.i3569 = alloca [100 x i8], align 1
  %var.i3570 = alloca i16, align 2
  %buf.i3556 = alloca [100 x i8], align 1
  %var.i3557 = alloca i8, align 1
  %buf.i3543 = alloca [100 x i8], align 1
  %var.i3544 = alloca i8, align 1
  %buf.i3530 = alloca [100 x i8], align 1
  %var.i3531 = alloca i8, align 1
  %buf.i3517 = alloca [100 x i8], align 1
  %var.i3518 = alloca i8, align 1
  %buf.i3504 = alloca [100 x i8], align 1
  %var.i3505 = alloca i8, align 1
  %buf.i3491 = alloca [100 x i8], align 1
  %var.i3492 = alloca i8, align 1
  %buf.i3478 = alloca [100 x i8], align 1
  %var.i3479 = alloca i8, align 1
  %buf.i3465 = alloca [100 x i8], align 1
  %var.i3466 = alloca i8, align 1
  %buf.i3452 = alloca [100 x i8], align 1
  %var.i3453 = alloca i8, align 1
  %buf.i3439 = alloca [100 x i8], align 1
  %var.i3440 = alloca i8, align 1
  %buf.i3426 = alloca [100 x i8], align 1
  %var.i3427 = alloca i8, align 1
  %buf.i3413 = alloca [100 x i8], align 1
  %var.i3414 = alloca i8, align 1
  %buf.i3400 = alloca [100 x i8], align 1
  %var.i3401 = alloca i8, align 1
  %buf.i3387 = alloca [100 x i8], align 1
  %var.i3388 = alloca i8, align 1
  %buf.i3374 = alloca [100 x i8], align 1
  %var.i3375 = alloca i8, align 1
  %buf.i3361 = alloca [100 x i8], align 1
  %var.i3362 = alloca i8, align 1
  %buf.i3348 = alloca [100 x i8], align 1
  %var.i3349 = alloca i8, align 1
  %buf.i3335 = alloca [100 x i8], align 1
  %var.i3336 = alloca i8, align 1
  %buf.i3322 = alloca [100 x i8], align 1
  %var.i3323 = alloca i8, align 1
  %buf.i3309 = alloca [100 x i8], align 1
  %var.i3310 = alloca i8, align 1
  %buf.i3296 = alloca [100 x i8], align 1
  %var.i3297 = alloca i8, align 1
  %buf.i3283 = alloca [100 x i8], align 1
  %var.i3284 = alloca i8, align 1
  %buf.i3270 = alloca [100 x i8], align 1
  %var.i3271 = alloca i8, align 1
  %buf.i3257 = alloca [100 x i8], align 1
  %var.i3258 = alloca i8, align 1
  %buf.i3244 = alloca [100 x i8], align 1
  %var.i3245 = alloca i8, align 1
  %buf.i3231 = alloca [100 x i8], align 1
  %var.i3232 = alloca i8, align 1
  %buf.i3218 = alloca [100 x i8], align 1
  %var.i3219 = alloca i8, align 1
  %buf.i3205 = alloca [100 x i8], align 1
  %var.i3206 = alloca i8, align 1
  %buf.i3191 = alloca [100 x i8], align 1
  %var.i3192 = alloca i8, align 1
  %buf.i3177 = alloca [100 x i8], align 1
  %var.i3178 = alloca i8, align 1
  %buf.i3163 = alloca [100 x i8], align 1
  %var.i3164 = alloca i8, align 1
  %buf.i3151 = alloca [100 x i8], align 1
  %var.i3152 = alloca i8, align 1
  %buf.i3139 = alloca [100 x i8], align 1
  %var.i3140 = alloca i8, align 1
  %buf.i3126 = alloca [100 x i8], align 1
  %var.i3127 = alloca i8, align 1
  %buf.i3113 = alloca [100 x i8], align 1
  %var.i3114 = alloca i8, align 1
  %buf.i3100 = alloca [100 x i8], align 1
  %var.i3101 = alloca i8, align 1
  %buf.i3087 = alloca [100 x i8], align 1
  %var.i3088 = alloca i8, align 1
  %buf.i3074 = alloca [100 x i8], align 1
  %var.i3075 = alloca i8, align 1
  %buf.i3061 = alloca [100 x i8], align 1
  %var.i3062 = alloca i8, align 1
  %buf.i3048 = alloca [100 x i8], align 1
  %var.i3049 = alloca i8, align 1
  %buf.i3035 = alloca [100 x i8], align 1
  %var.i3036 = alloca i8, align 1
  %buf.i3022 = alloca [100 x i8], align 1
  %var.i3023 = alloca i8, align 1
  %buf.i3009 = alloca [100 x i8], align 1
  %var.i3010 = alloca i8, align 1
  %buf.i2996 = alloca [100 x i8], align 1
  %var.i2997 = alloca i8, align 1
  %buf.i2983 = alloca [100 x i8], align 1
  %var.i2984 = alloca i8, align 1
  %buf.i2970 = alloca [100 x i8], align 1
  %var.i2971 = alloca i8, align 1
  %buf.i2957 = alloca [100 x i8], align 1
  %var.i2958 = alloca i8, align 1
  %buf.i2944 = alloca [100 x i8], align 1
  %var.i2945 = alloca i8, align 1
  %buf.i2931 = alloca [100 x i8], align 1
  %var.i2932 = alloca i8, align 1
  %buf.i2919 = alloca [100 x i8], align 1
  %var.i2920 = alloca i16, align 2
  %buf.i2907 = alloca [100 x i8], align 1
  %var.i2908 = alloca i16, align 2
  %buf.i2895 = alloca [100 x i8], align 1
  %var.i2896 = alloca i16, align 2
  %buf.i2883 = alloca [100 x i8], align 1
  %var.i2884 = alloca i16, align 2
  %buf.i2871 = alloca [100 x i8], align 1
  %var.i2872 = alloca i16, align 2
  %buf.i2859 = alloca [100 x i8], align 1
  %var.i2860 = alloca i16, align 2
  %buf.i2847 = alloca [100 x i8], align 1
  %var.i2848 = alloca i16, align 2
  %buf.i2835 = alloca [100 x i8], align 1
  %var.i2836 = alloca i16, align 2
  %buf.i2823 = alloca [100 x i8], align 1
  %var.i2824 = alloca i16, align 2
  %buf.i2811 = alloca [100 x i8], align 1
  %var.i2812 = alloca i8, align 1
  %buf.i2799 = alloca [100 x i8], align 1
  %var.i2800 = alloca i8, align 1
  %buf.i2787 = alloca [100 x i8], align 1
  %var.i2788 = alloca i8, align 1
  %buf.i2776 = alloca [100 x i8], align 1
  %var.i2777 = alloca i8, align 1
  %buf.i2763 = alloca [100 x i8], align 1
  %var.i2764 = alloca i8, align 1
  %buf.i2750 = alloca [100 x i8], align 1
  %var.i2751 = alloca i8, align 1
  %buf.i2737 = alloca [100 x i8], align 1
  %var.i2738 = alloca i8, align 1
  %buf.i2724 = alloca [100 x i8], align 1
  %var.i2725 = alloca i8, align 1
  %buf.i2711 = alloca [100 x i8], align 1
  %var.i2712 = alloca i8, align 1
  %buf.i2699 = alloca [100 x i8], align 1
  %var.i2700 = alloca i16, align 2
  %buf.i2687 = alloca [100 x i8], align 1
  %var.i2688 = alloca i16, align 2
  %buf.i2675 = alloca [100 x i8], align 1
  %var.i2676 = alloca i16, align 2
  %buf.i2661 = alloca [100 x i8], align 1
  %var.i2662 = alloca i8, align 1
  %buf.i2647 = alloca [100 x i8], align 1
  %var.i2648 = alloca i8, align 1
  %buf.i2633 = alloca [100 x i8], align 1
  %var.i2634 = alloca i8, align 1
  %buf.i2620 = alloca [100 x i8], align 1
  %var.i2621 = alloca i8, align 1
  %buf.i2607 = alloca [100 x i8], align 1
  %var.i2608 = alloca i8, align 1
  %buf.i2596 = alloca [100 x i8], align 1
  %var.i2597 = alloca i8, align 1
  %buf.i2584 = alloca [100 x i8], align 1
  %var.i2585 = alloca i16, align 2
  %buf.i2572 = alloca [100 x i8], align 1
  %var.i2573 = alloca i16, align 2
  %buf.i2560 = alloca [100 x i8], align 1
  %var.i2561 = alloca i16, align 2
  %buf.i2548 = alloca [100 x i8], align 1
  %var.i2549 = alloca i32, align 4
  %buf.i2536 = alloca [100 x i8], align 1
  %var.i2537 = alloca i32, align 4
  %buf.i2527 = alloca [100 x i8], align 1
  %var.i2528 = alloca i32, align 4
  %buf.i2515 = alloca [100 x i8], align 1
  %var.i2516 = alloca i16, align 2
  %buf.i = alloca [100 x i8], align 1
  %var.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %entry.if.end34thread-pre-split_crit_edge, label %if.then

entry.if.end34thread-pre-split_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then:                                          ; preds = %entry
  %dev_id = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i) #6
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i) #6
  %3 = ptrtoint ptr %var.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %var.i, align 2, !annotation !557
  %call.i = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull %buf.i, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call2.i = call ptr @strim(ptr noundef nonnull %buf.i) #6
  %call3.i = call i32 @kstrtou16(ptr noundef %call2.i, i32 noundef 0, ptr noundef nonnull %var.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef nonnull %buf.i, i32 noundef %call3.i) #9
  br label %if.end

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %var.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %var.i, align 2
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %dev_id, align 2
  br label %if.end

if.end:                                           ; preds = %if.end15.i, %do.end.i, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i) #6
  %7 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool8.not = icmp eq i8 %.pr, 0
  br i1 %tobool8.not, label %if.end.if.end34thread-pre-split_crit_edge, label %if.then9

if.end.if.end34thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then9:                                         ; preds = %if.end
  %board_rev = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2515) #6
  %8 = call ptr @memset(ptr %buf.i2515, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2516) #6
  %9 = ptrtoint ptr %var.i2516 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %var.i2516, align 2, !annotation !557
  %call.i2517 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull %buf.i2515, i32 noundef 100, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2517)
  %cmp.i2518 = icmp slt i32 %call.i2517, 0
  br i1 %cmp.i2518, label %if.then9.if.end10_crit_edge, label %if.end.i2522

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i2522:                                     ; preds = %if.then9
  %call2.i2519 = call ptr @strim(ptr noundef nonnull %buf.i2515) #6
  %call3.i2520 = call i32 @kstrtou16(ptr noundef %call2.i2519, i32 noundef 0, ptr noundef nonnull %var.i2516) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2520)
  %tobool4.not.i2521 = icmp eq i32 %call3.i2520, 0
  br i1 %tobool4.not.i2521, label %if.end15.i2525, label %do.end.i2524

do.end.i2524:                                     ; preds = %if.end.i2522
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2523 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef nonnull %buf.i2515, i32 noundef %call3.i2520) #9
  br label %if.end10

if.end15.i2525:                                   ; preds = %if.end.i2522
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %var.i2516 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %var.i2516, align 2
  %12 = ptrtoint ptr %board_rev to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %board_rev, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.end15.i2525, %do.end.i2524, %if.then9.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2516) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2515) #6
  %13 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr4973 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr4973)
  %tobool15.not = icmp eq i8 %.pr4973, 0
  br i1 %tobool15.not, label %if.end10.if.end34thread-pre-split_crit_edge, label %if.then16

if.end10.if.end34thread-pre-split_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then16:                                        ; preds = %if.end10
  %boardflags = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 67
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2527) #6
  %14 = call ptr @memset(ptr %buf.i2527, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i2528) #6
  %15 = ptrtoint ptr %var.i2528 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %var.i2528, align 4, !annotation !557
  %call.i2529 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i2527, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2529)
  %cmp.i2530 = icmp slt i32 %call.i2529, 0
  br i1 %cmp.i2530, label %if.then16.if.end18_crit_edge, label %if.end.i2533

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.i2533:                                     ; preds = %if.then16
  %call2.i2531 = call ptr @strim(ptr noundef nonnull %buf.i2527) #6
  %call.i.i = call i32 @kstrtouint(ptr noundef %call2.i2531, i32 noundef 0, ptr noundef nonnull %var.i2528) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i2532 = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i2532, label %if.end12.i, label %do.end.i2535

do.end.i2535:                                     ; preds = %if.end.i2533
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef nonnull %buf.i2527, i32 noundef %call.i.i) #9
  br label %if.end18

if.end12.i:                                       ; preds = %if.end.i2533
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %var.i2528 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var.i2528, align 4
  %18 = ptrtoint ptr %boardflags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %boardflags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end12.i, %do.end.i2535, %if.then16.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i2528) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2527) #6
  %19 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr4975.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr4975.pr)
  %tobool23.not = icmp ult i8 %.pr4975.pr, 4
  br i1 %tobool23.not, label %if.end18.if.end34thread-pre-split_crit_edge, label %if.then24

if.end18.if.end34thread-pre-split_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34thread-pre-split

if.then24:                                        ; preds = %if.end18
  %boardflags2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 68
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2536) #6
  %20 = call ptr @memset(ptr %buf.i2536, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i2537) #6
  %21 = ptrtoint ptr %var.i2537 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %var.i2537, align 4, !annotation !557
  %call.i2538 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull %buf.i2536, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2538)
  %cmp.i2539 = icmp slt i32 %call.i2538, 0
  br i1 %cmp.i2539, label %if.then24.if.end26_crit_edge, label %if.end.i2543

if.then24.if.end26_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end.i2543:                                     ; preds = %if.then24
  %call2.i2540 = call ptr @strim(ptr noundef nonnull %buf.i2536) #6
  %call.i.i2541 = call i32 @kstrtouint(ptr noundef %call2.i2540, i32 noundef 0, ptr noundef nonnull %var.i2537) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2541)
  %tobool4.not.i2542 = icmp eq i32 %call.i.i2541, 0
  br i1 %tobool4.not.i2542, label %if.end12.i2546, label %do.end.i2545

do.end.i2545:                                     ; preds = %if.end.i2543
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef nonnull %buf.i2536, i32 noundef %call.i.i2541) #9
  br label %if.end26

if.end12.i2546:                                   ; preds = %if.end.i2543
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %var.i2537 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %var.i2537, align 4
  %24 = ptrtoint ptr %boardflags2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %boardflags2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end12.i2546, %do.end.i2545, %if.then24.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i2537) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2536) #6
  %25 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr4977 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %.pr4977)
  %tobool31.not = icmp ult i8 %.pr4977, 11
  br i1 %tobool31.not, label %if.end26.if.end34_crit_edge, label %if.then32

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end26
  %boardflags3 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 69
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2548) #6
  %26 = call ptr @memset(ptr %buf.i2548, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i2549) #6
  %27 = ptrtoint ptr %var.i2549 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %var.i2549, align 4, !annotation !557
  %call.i2550 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull %buf.i2548, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2550)
  %cmp.i2551 = icmp slt i32 %call.i2550, 0
  br i1 %cmp.i2551, label %if.then32.nvram_read_u32.exit2559_crit_edge, label %if.end.i2555

if.then32.nvram_read_u32.exit2559_crit_edge:      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit2559

if.end.i2555:                                     ; preds = %if.then32
  %call2.i2552 = call ptr @strim(ptr noundef nonnull %buf.i2548) #6
  %call.i.i2553 = call i32 @kstrtouint(ptr noundef %call2.i2552, i32 noundef 0, ptr noundef nonnull %var.i2549) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2553)
  %tobool4.not.i2554 = icmp eq i32 %call.i.i2553, 0
  br i1 %tobool4.not.i2554, label %if.end12.i2558, label %do.end.i2557

do.end.i2557:                                     ; preds = %if.end.i2555
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef nonnull %buf.i2548, i32 noundef %call.i.i2553) #9
  br label %nvram_read_u32.exit2559

if.end12.i2558:                                   ; preds = %if.end.i2555
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %var.i2549 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %var.i2549, align 4
  %30 = ptrtoint ptr %boardflags3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %boardflags3, align 4
  br label %nvram_read_u32.exit2559

nvram_read_u32.exit2559:                          ; preds = %if.end12.i2558, %do.end.i2557, %if.then32.nvram_read_u32.exit2559_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i2549) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2548) #6
  br label %if.end34thread-pre-split

if.end34thread-pre-split:                         ; preds = %nvram_read_u32.exit2559, %if.end18.if.end34thread-pre-split_crit_edge, %if.end10.if.end34thread-pre-split_crit_edge, %if.end.if.end34thread-pre-split_crit_edge, %entry.if.end34thread-pre-split_crit_edge
  %31 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr4979 = load i8, ptr %sprom, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %if.end26.if.end34_crit_edge
  %32 = phi i8 [ %.pr4979, %if.end34thread-pre-split ], [ %.pr4977, %if.end26.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %tobool39.not.not = icmp eq i8 %32, 1
  br i1 %tobool39.not.not, label %if.then40, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then40:                                        ; preds = %if.end34
  %boardflags_lo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2560) #6
  %33 = call ptr @memset(ptr %buf.i2560, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2561) #6
  %34 = ptrtoint ptr %var.i2561 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %var.i2561, align 2, !annotation !557
  %call.i2562 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i2560, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2562)
  %cmp.i2563 = icmp slt i32 %call.i2562, 0
  br i1 %cmp.i2563, label %if.then40.nvram_read_u16.exit2571_crit_edge, label %if.end.i2567

if.then40.nvram_read_u16.exit2571_crit_edge:      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2571

if.end.i2567:                                     ; preds = %if.then40
  %call2.i2564 = call ptr @strim(ptr noundef nonnull %buf.i2560) #6
  %call3.i2565 = call i32 @kstrtou16(ptr noundef %call2.i2564, i32 noundef 0, ptr noundef nonnull %var.i2561) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2565)
  %tobool4.not.i2566 = icmp eq i32 %call3.i2565, 0
  br i1 %tobool4.not.i2566, label %if.end15.i2570, label %do.end.i2569

do.end.i2569:                                     ; preds = %if.end.i2567
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2568 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef nonnull %buf.i2560, i32 noundef %call3.i2565) #9
  br label %nvram_read_u16.exit2571

if.end15.i2570:                                   ; preds = %if.end.i2567
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %var.i2561 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %var.i2561, align 2
  %37 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %boardflags_lo, align 2
  br label %nvram_read_u16.exit2571

nvram_read_u16.exit2571:                          ; preds = %if.end15.i2570, %do.end.i2569, %if.then40.nvram_read_u16.exit2571_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2561) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2560) #6
  br label %if.end42

if.end42:                                         ; preds = %nvram_read_u16.exit2571, %if.end34.if.end42_crit_edge
  %38 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %tobool47.not = icmp ult i8 %39, 2
  br i1 %tobool47.not, label %if.end42.if.end49_crit_edge, label %if.then48

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then48:                                        ; preds = %if.end42
  %board_type = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2572) #6
  %40 = call ptr @memset(ptr %buf.i2572, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2573) #6
  %41 = ptrtoint ptr %var.i2573 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %var.i2573, align 2, !annotation !557
  %call.i2574 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull %buf.i2572, i32 noundef 100, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2574)
  %cmp.i2575 = icmp slt i32 %call.i2574, 0
  br i1 %cmp.i2575, label %if.then48.nvram_read_u16.exit2583_crit_edge, label %if.end.i2579

if.then48.nvram_read_u16.exit2583_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2583

if.end.i2579:                                     ; preds = %if.then48
  %call2.i2576 = call ptr @strim(ptr noundef nonnull %buf.i2572) #6
  %call3.i2577 = call i32 @kstrtou16(ptr noundef %call2.i2576, i32 noundef 0, ptr noundef nonnull %var.i2573) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2577)
  %tobool4.not.i2578 = icmp eq i32 %call3.i2577, 0
  br i1 %tobool4.not.i2578, label %if.end15.i2582, label %do.end.i2581

do.end.i2581:                                     ; preds = %if.end.i2579
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2580 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef nonnull %buf.i2572, i32 noundef %call3.i2577) #9
  br label %nvram_read_u16.exit2583

if.end15.i2582:                                   ; preds = %if.end.i2579
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %var.i2573 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %var.i2573, align 2
  %44 = ptrtoint ptr %board_type to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %board_type, align 2
  br label %nvram_read_u16.exit2583

nvram_read_u16.exit2583:                          ; preds = %if.end15.i2582, %do.end.i2581, %if.then48.nvram_read_u16.exit2583_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2573) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2572) #6
  %45 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr4980 = load i8, ptr %sprom, align 4
  br label %if.end49

if.end49:                                         ; preds = %nvram_read_u16.exit2583, %if.end42.if.end49_crit_edge
  %46 = phi i8 [ %.pr4980, %nvram_read_u16.exit2583 ], [ %39, %if.end42.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool54.not = icmp eq i8 %46, 0
  br i1 %tobool54.not, label %if.end49.if.end57_crit_edge, label %if.then55

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.end49
  %board_num = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2584) #6
  %47 = call ptr @memset(ptr %buf.i2584, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2585) #6
  %48 = ptrtoint ptr %var.i2585 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %var.i2585, align 2, !annotation !557
  %call.i2586 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull %buf.i2584, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2586)
  %cmp.i2587 = icmp slt i32 %call.i2586, 0
  br i1 %cmp.i2587, label %if.then55.nvram_read_u16.exit2595_crit_edge, label %if.end.i2591

if.then55.nvram_read_u16.exit2595_crit_edge:      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2595

if.end.i2591:                                     ; preds = %if.then55
  %call2.i2588 = call ptr @strim(ptr noundef nonnull %buf.i2584) #6
  %call3.i2589 = call i32 @kstrtou16(ptr noundef %call2.i2588, i32 noundef 0, ptr noundef nonnull %var.i2585) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2589)
  %tobool4.not.i2590 = icmp eq i32 %call3.i2589, 0
  br i1 %tobool4.not.i2590, label %if.end15.i2594, label %do.end.i2593

do.end.i2593:                                     ; preds = %if.end.i2591
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2592 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef nonnull %buf.i2584, i32 noundef %call3.i2589) #9
  br label %nvram_read_u16.exit2595

if.end15.i2594:                                   ; preds = %if.end.i2591
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %var.i2585 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %var.i2585, align 2
  %51 = ptrtoint ptr %board_num to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %board_num, align 2
  br label %nvram_read_u16.exit2595

nvram_read_u16.exit2595:                          ; preds = %if.end15.i2594, %do.end.i2593, %if.then55.nvram_read_u16.exit2595_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2585) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2584) #6
  br label %if.end57

if.end57:                                         ; preds = %nvram_read_u16.exit2595, %if.end49.if.end57_crit_edge
  %52 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %tobool62.not.not = icmp eq i8 %53, 1
  br i1 %tobool62.not.not, label %if.then63, label %if.end57.if.end65_crit_edge

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end57
  %country_code = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2596) #6
  %54 = call ptr @memset(ptr %buf.i2596, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2597) #6
  %55 = ptrtoint ptr %var.i2597 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %var.i2597, align 1, !annotation !557
  %call.i2598 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull %buf.i2596, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2598)
  %cmp.i2599 = icmp slt i32 %call.i2598, 0
  br i1 %cmp.i2599, label %if.then63.nvram_read_u8.exit_crit_edge, label %if.end.i2603

if.then63.nvram_read_u8.exit_crit_edge:           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit

if.end.i2603:                                     ; preds = %if.then63
  %call2.i2600 = call ptr @strim(ptr noundef nonnull %buf.i2596) #6
  %call3.i2601 = call i32 @kstrtou8(ptr noundef %call2.i2600, i32 noundef 0, ptr noundef nonnull %var.i2597) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2601)
  %tobool4.not.i2602 = icmp eq i32 %call3.i2601, 0
  br i1 %tobool4.not.i2602, label %if.end8.i, label %do.end.i2605

do.end.i2605:                                     ; preds = %if.end.i2603
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef nonnull %buf.i2596, i32 noundef %call3.i2601) #9
  br label %nvram_read_u8.exit

if.end8.i:                                        ; preds = %if.end.i2603
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %var.i2597 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %var.i2597, align 1
  %58 = ptrtoint ptr %country_code to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %country_code, align 1
  br label %nvram_read_u8.exit

nvram_read_u8.exit:                               ; preds = %if.end8.i, %do.end.i2605, %if.then63.nvram_read_u8.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2597) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2596) #6
  %59 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr4981 = load i8, ptr %sprom, align 4
  br label %if.end65

if.end65:                                         ; preds = %nvram_read_u8.exit, %if.end57.if.end65_crit_edge
  %60 = phi i8 [ %.pr4981, %nvram_read_u8.exit ], [ %53, %if.end57.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %tobool70.not = icmp ult i8 %60, 3
  br i1 %tobool70.not, label %if.end65.if.end73_crit_edge, label %if.then71

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %if.end65
  %regrev = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 92
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2607) #6
  %61 = call ptr @memset(ptr %buf.i2607, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2608) #6
  %62 = ptrtoint ptr %var.i2608 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %var.i2608, align 1, !annotation !557
  %call.i2609 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull %buf.i2607, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2609)
  %cmp.i2610 = icmp slt i32 %call.i2609, 0
  br i1 %cmp.i2610, label %if.then71.nvram_read_u8.exit2619_crit_edge, label %if.end.i2614

if.then71.nvram_read_u8.exit2619_crit_edge:       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2619

if.end.i2614:                                     ; preds = %if.then71
  %call2.i2611 = call ptr @strim(ptr noundef nonnull %buf.i2607) #6
  %call3.i2612 = call i32 @kstrtou8(ptr noundef %call2.i2611, i32 noundef 0, ptr noundef nonnull %var.i2608) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2612)
  %tobool4.not.i2613 = icmp eq i32 %call3.i2612, 0
  br i1 %tobool4.not.i2613, label %if.end8.i2617, label %do.end.i2616

do.end.i2616:                                     ; preds = %if.end.i2614
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2615 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef nonnull %buf.i2607, i32 noundef %call3.i2612) #9
  br label %nvram_read_u8.exit2619

if.end8.i2617:                                    ; preds = %if.end.i2614
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %var.i2608 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %var.i2608, align 1
  %65 = ptrtoint ptr %regrev to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %regrev, align 1
  br label %nvram_read_u8.exit2619

nvram_read_u8.exit2619:                           ; preds = %if.end8.i2617, %do.end.i2616, %if.then71.nvram_read_u8.exit2619_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2608) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2607) #6
  br label %if.end73

if.end73:                                         ; preds = %nvram_read_u8.exit2619, %if.end65.if.end73_crit_edge
  %66 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool78.not = icmp eq i8 %67, 0
  br i1 %tobool78.not, label %if.end73.if.end105_crit_edge, label %if.then79

if.end73.if.end105_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then79:                                        ; preds = %if.end73
  %gpio0 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 34
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2620) #6
  %68 = call ptr @memset(ptr %buf.i2620, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2621) #6
  %69 = ptrtoint ptr %var.i2621 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %var.i2621, align 1, !annotation !557
  %call.i2622 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull %buf.i2620, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2622)
  %cmp.i2623 = icmp slt i32 %call.i2622, 0
  br i1 %cmp.i2623, label %if.then79.if.end81_crit_edge, label %if.end.i2627

if.then79.if.end81_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.end.i2627:                                     ; preds = %if.then79
  %call2.i2624 = call ptr @strim(ptr noundef nonnull %buf.i2620) #6
  %call3.i2625 = call i32 @kstrtou8(ptr noundef %call2.i2624, i32 noundef 0, ptr noundef nonnull %var.i2621) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2625)
  %tobool4.not.i2626 = icmp eq i32 %call3.i2625, 0
  br i1 %tobool4.not.i2626, label %if.end8.i2630, label %do.end.i2629

do.end.i2629:                                     ; preds = %if.end.i2627
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef nonnull %buf.i2620, i32 noundef %call3.i2625) #9
  br label %if.end81

if.end8.i2630:                                    ; preds = %if.end.i2627
  %70 = ptrtoint ptr %var.i2621 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %var.i2621, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp12.i = icmp eq i8 %71, -1
  br i1 %cmp12.i, label %if.end8.i2630.if.end81_crit_edge, label %if.end15.i2631

if.end8.i2630.if.end81_crit_edge:                 ; preds = %if.end8.i2630
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.end15.i2631:                                   ; preds = %if.end8.i2630
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %gpio0 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %gpio0, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.end15.i2631, %if.end8.i2630.if.end81_crit_edge, %do.end.i2629, %if.then79.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2621) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2620) #6
  %73 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr4982 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr4982)
  %tobool86.not = icmp eq i8 %.pr4982, 0
  br i1 %tobool86.not, label %if.end81.if.end105_crit_edge, label %if.then87

if.end81.if.end105_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then87:                                        ; preds = %if.end81
  %gpio1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2633) #6
  %74 = call ptr @memset(ptr %buf.i2633, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2634) #6
  %75 = ptrtoint ptr %var.i2634 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %var.i2634, align 1, !annotation !557
  %call.i2635 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull %buf.i2633, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2635)
  %cmp.i2636 = icmp slt i32 %call.i2635, 0
  br i1 %cmp.i2636, label %if.then87.if.end89_crit_edge, label %if.end.i2640

if.then87.if.end89_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.end.i2640:                                     ; preds = %if.then87
  %call2.i2637 = call ptr @strim(ptr noundef nonnull %buf.i2633) #6
  %call3.i2638 = call i32 @kstrtou8(ptr noundef %call2.i2637, i32 noundef 0, ptr noundef nonnull %var.i2634) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2638)
  %tobool4.not.i2639 = icmp eq i32 %call3.i2638, 0
  br i1 %tobool4.not.i2639, label %if.end8.i2643, label %do.end.i2642

do.end.i2642:                                     ; preds = %if.end.i2640
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef nonnull %buf.i2633, i32 noundef %call3.i2638) #9
  br label %if.end89

if.end8.i2643:                                    ; preds = %if.end.i2640
  %76 = ptrtoint ptr %var.i2634 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %var.i2634, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp12.i2644 = icmp eq i8 %77, -1
  br i1 %cmp12.i2644, label %if.end8.i2643.if.end89_crit_edge, label %if.end15.i2645

if.end8.i2643.if.end89_crit_edge:                 ; preds = %if.end8.i2643
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.end15.i2645:                                   ; preds = %if.end8.i2643
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %gpio1, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.end15.i2645, %if.end8.i2643.if.end89_crit_edge, %do.end.i2642, %if.then87.if.end89_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2634) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2633) #6
  %79 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %79)
  %.pr4984 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr4984)
  %tobool94.not = icmp eq i8 %.pr4984, 0
  br i1 %tobool94.not, label %if.end89.if.end105_crit_edge, label %if.then95

if.end89.if.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then95:                                        ; preds = %if.end89
  %gpio2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2647) #6
  %80 = call ptr @memset(ptr %buf.i2647, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2648) #6
  %81 = ptrtoint ptr %var.i2648 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %var.i2648, align 1, !annotation !557
  %call.i2649 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull %buf.i2647, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2649)
  %cmp.i2650 = icmp slt i32 %call.i2649, 0
  br i1 %cmp.i2650, label %if.then95.if.end97_crit_edge, label %if.end.i2654

if.then95.if.end97_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.end.i2654:                                     ; preds = %if.then95
  %call2.i2651 = call ptr @strim(ptr noundef nonnull %buf.i2647) #6
  %call3.i2652 = call i32 @kstrtou8(ptr noundef %call2.i2651, i32 noundef 0, ptr noundef nonnull %var.i2648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2652)
  %tobool4.not.i2653 = icmp eq i32 %call3.i2652, 0
  br i1 %tobool4.not.i2653, label %if.end8.i2657, label %do.end.i2656

do.end.i2656:                                     ; preds = %if.end.i2654
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef nonnull %buf.i2647, i32 noundef %call3.i2652) #9
  br label %if.end97

if.end8.i2657:                                    ; preds = %if.end.i2654
  %82 = ptrtoint ptr %var.i2648 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %var.i2648, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp12.i2658 = icmp eq i8 %83, -1
  br i1 %cmp12.i2658, label %if.end8.i2657.if.end97_crit_edge, label %if.end15.i2659

if.end8.i2657.if.end97_crit_edge:                 ; preds = %if.end8.i2657
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.end15.i2659:                                   ; preds = %if.end8.i2657
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %gpio2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %gpio2, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.end15.i2659, %if.end8.i2657.if.end97_crit_edge, %do.end.i2656, %if.then95.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2648) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2647) #6
  %85 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %85)
  %.pr4986.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr4986.pr)
  %tobool102.not = icmp eq i8 %.pr4986.pr, 0
  br i1 %tobool102.not, label %if.end97.if.end105_crit_edge, label %if.then103

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then103:                                       ; preds = %if.end97
  %gpio3 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2661) #6
  %86 = call ptr @memset(ptr %buf.i2661, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2662) #6
  %87 = ptrtoint ptr %var.i2662 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %var.i2662, align 1, !annotation !557
  %call.i2663 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull %buf.i2661, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2663)
  %cmp.i2664 = icmp slt i32 %call.i2663, 0
  br i1 %cmp.i2664, label %if.then103.nvram_read_u8.exit2674_crit_edge, label %if.end.i2668

if.then103.nvram_read_u8.exit2674_crit_edge:      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2674

if.end.i2668:                                     ; preds = %if.then103
  %call2.i2665 = call ptr @strim(ptr noundef nonnull %buf.i2661) #6
  %call3.i2666 = call i32 @kstrtou8(ptr noundef %call2.i2665, i32 noundef 0, ptr noundef nonnull %var.i2662) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2666)
  %tobool4.not.i2667 = icmp eq i32 %call3.i2666, 0
  br i1 %tobool4.not.i2667, label %if.end8.i2671, label %do.end.i2670

do.end.i2670:                                     ; preds = %if.end.i2668
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2669 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef nonnull %buf.i2661, i32 noundef %call3.i2666) #9
  br label %nvram_read_u8.exit2674

if.end8.i2671:                                    ; preds = %if.end.i2668
  %88 = ptrtoint ptr %var.i2662 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %var.i2662, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp12.i2672 = icmp eq i8 %89, -1
  br i1 %cmp12.i2672, label %if.end8.i2671.nvram_read_u8.exit2674_crit_edge, label %if.end15.i2673

if.end8.i2671.nvram_read_u8.exit2674_crit_edge:   ; preds = %if.end8.i2671
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2674

if.end15.i2673:                                   ; preds = %if.end8.i2671
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %gpio3, align 1
  br label %nvram_read_u8.exit2674

nvram_read_u8.exit2674:                           ; preds = %if.end15.i2673, %if.end8.i2671.nvram_read_u8.exit2674_crit_edge, %do.end.i2670, %if.then103.nvram_read_u8.exit2674_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2662) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2661) #6
  br label %if.end105

if.end105:                                        ; preds = %nvram_read_u8.exit2674, %if.end97.if.end105_crit_edge, %if.end89.if.end105_crit_edge, %if.end81.if.end105_crit_edge, %if.end73.if.end105_crit_edge
  %91 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sprom, align 4
  %conv107 = zext i8 %92 to i32
  %shl108 = shl nuw i32 1, %conv107
  %and109 = and i32 %shl108, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end105.if.end113_crit_edge, label %if.then111

if.end105.if.end113_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then111:                                       ; preds = %if.end105
  %pa0b0 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2675) #6
  %93 = call ptr @memset(ptr %buf.i2675, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2676) #6
  %94 = ptrtoint ptr %var.i2676 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %var.i2676, align 2, !annotation !557
  %call.i2677 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull %buf.i2675, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2677)
  %cmp.i2678 = icmp slt i32 %call.i2677, 0
  br i1 %cmp.i2678, label %if.then111.nvram_read_u16.exit2686_crit_edge, label %if.end.i2682

if.then111.nvram_read_u16.exit2686_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2686

if.end.i2682:                                     ; preds = %if.then111
  %call2.i2679 = call ptr @strim(ptr noundef nonnull %buf.i2675) #6
  %call3.i2680 = call i32 @kstrtou16(ptr noundef %call2.i2679, i32 noundef 0, ptr noundef nonnull %var.i2676) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2680)
  %tobool4.not.i2681 = icmp eq i32 %call3.i2680, 0
  br i1 %tobool4.not.i2681, label %if.end15.i2685, label %do.end.i2684

do.end.i2684:                                     ; preds = %if.end.i2682
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2683 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef nonnull %buf.i2675, i32 noundef %call3.i2680) #9
  br label %nvram_read_u16.exit2686

if.end15.i2685:                                   ; preds = %if.end.i2682
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %var.i2676 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %var.i2676, align 2
  %97 = ptrtoint ptr %pa0b0 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %pa0b0, align 2
  br label %nvram_read_u16.exit2686

nvram_read_u16.exit2686:                          ; preds = %if.end15.i2685, %do.end.i2684, %if.then111.nvram_read_u16.exit2686_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2676) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2675) #6
  br label %if.end113

if.end113:                                        ; preds = %nvram_read_u16.exit2686, %if.end105.if.end113_crit_edge
  %98 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sprom, align 4
  %conv115 = zext i8 %99 to i32
  %shl116 = shl nuw i32 1, %conv115
  %and117 = and i32 %shl116, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end113.if.end121_crit_edge, label %if.then119

if.end113.if.end121_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

if.then119:                                       ; preds = %if.end113
  %pa0b1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2687) #6
  %100 = call ptr @memset(ptr %buf.i2687, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2688) #6
  %101 = ptrtoint ptr %var.i2688 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %var.i2688, align 2, !annotation !557
  %call.i2689 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull %buf.i2687, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2689)
  %cmp.i2690 = icmp slt i32 %call.i2689, 0
  br i1 %cmp.i2690, label %if.then119.nvram_read_u16.exit2698_crit_edge, label %if.end.i2694

if.then119.nvram_read_u16.exit2698_crit_edge:     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2698

if.end.i2694:                                     ; preds = %if.then119
  %call2.i2691 = call ptr @strim(ptr noundef nonnull %buf.i2687) #6
  %call3.i2692 = call i32 @kstrtou16(ptr noundef %call2.i2691, i32 noundef 0, ptr noundef nonnull %var.i2688) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2692)
  %tobool4.not.i2693 = icmp eq i32 %call3.i2692, 0
  br i1 %tobool4.not.i2693, label %if.end15.i2697, label %do.end.i2696

do.end.i2696:                                     ; preds = %if.end.i2694
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2695 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef nonnull %buf.i2687, i32 noundef %call3.i2692) #9
  br label %nvram_read_u16.exit2698

if.end15.i2697:                                   ; preds = %if.end.i2694
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %var.i2688 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %var.i2688, align 2
  %104 = ptrtoint ptr %pa0b1 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %pa0b1, align 2
  br label %nvram_read_u16.exit2698

nvram_read_u16.exit2698:                          ; preds = %if.end15.i2697, %do.end.i2696, %if.then119.nvram_read_u16.exit2698_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2688) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2687) #6
  br label %if.end121

if.end121:                                        ; preds = %nvram_read_u16.exit2698, %if.end113.if.end121_crit_edge
  %105 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sprom, align 4
  %conv123 = zext i8 %106 to i32
  %shl124 = shl nuw i32 1, %conv123
  %and125 = and i32 %shl124, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end121.if.end129_crit_edge, label %if.then127

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then127:                                       ; preds = %if.end121
  %pa0b2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 24
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2699) #6
  %107 = call ptr @memset(ptr %buf.i2699, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2700) #6
  %108 = ptrtoint ptr %var.i2700 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %var.i2700, align 2, !annotation !557
  %call.i2701 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull %buf.i2699, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2701)
  %cmp.i2702 = icmp slt i32 %call.i2701, 0
  br i1 %cmp.i2702, label %if.then127.nvram_read_u16.exit2710_crit_edge, label %if.end.i2706

if.then127.nvram_read_u16.exit2710_crit_edge:     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2710

if.end.i2706:                                     ; preds = %if.then127
  %call2.i2703 = call ptr @strim(ptr noundef nonnull %buf.i2699) #6
  %call3.i2704 = call i32 @kstrtou16(ptr noundef %call2.i2703, i32 noundef 0, ptr noundef nonnull %var.i2700) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2704)
  %tobool4.not.i2705 = icmp eq i32 %call3.i2704, 0
  br i1 %tobool4.not.i2705, label %if.end15.i2709, label %do.end.i2708

do.end.i2708:                                     ; preds = %if.end.i2706
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef nonnull %buf.i2699, i32 noundef %call3.i2704) #9
  br label %nvram_read_u16.exit2710

if.end15.i2709:                                   ; preds = %if.end.i2706
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %var.i2700 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %var.i2700, align 2
  %111 = ptrtoint ptr %pa0b2 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %pa0b2, align 2
  br label %nvram_read_u16.exit2710

nvram_read_u16.exit2710:                          ; preds = %if.end15.i2709, %do.end.i2708, %if.then127.nvram_read_u16.exit2710_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2700) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2699) #6
  br label %if.end129

if.end129:                                        ; preds = %nvram_read_u16.exit2710, %if.end121.if.end129_crit_edge
  %112 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sprom, align 4
  %conv131 = zext i8 %113 to i32
  %shl132 = shl nuw i32 1, %conv131
  %and133 = and i32 %shl132, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.end129.if.end137_crit_edge, label %if.then135

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then135:                                       ; preds = %if.end129
  %itssi_bg = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 43
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2711) #6
  %114 = call ptr @memset(ptr %buf.i2711, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2712) #6
  %115 = ptrtoint ptr %var.i2712 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %var.i2712, align 1, !annotation !557
  %call.i2713 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull %buf.i2711, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2713)
  %cmp.i2714 = icmp slt i32 %call.i2713, 0
  br i1 %cmp.i2714, label %if.then135.nvram_read_u8.exit2723_crit_edge, label %if.end.i2718

if.then135.nvram_read_u8.exit2723_crit_edge:      ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2723

if.end.i2718:                                     ; preds = %if.then135
  %call2.i2715 = call ptr @strim(ptr noundef nonnull %buf.i2711) #6
  %call3.i2716 = call i32 @kstrtou8(ptr noundef %call2.i2715, i32 noundef 0, ptr noundef nonnull %var.i2712) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2716)
  %tobool4.not.i2717 = icmp eq i32 %call3.i2716, 0
  br i1 %tobool4.not.i2717, label %if.end8.i2721, label %do.end.i2720

do.end.i2720:                                     ; preds = %if.end.i2718
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef nonnull %buf.i2711, i32 noundef %call3.i2716) #9
  br label %nvram_read_u8.exit2723

if.end8.i2721:                                    ; preds = %if.end.i2718
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %var.i2712 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %var.i2712, align 1
  %118 = ptrtoint ptr %itssi_bg to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %itssi_bg, align 1
  br label %nvram_read_u8.exit2723

nvram_read_u8.exit2723:                           ; preds = %if.end8.i2721, %do.end.i2720, %if.then135.nvram_read_u8.exit2723_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2712) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2711) #6
  br label %if.end137

if.end137:                                        ; preds = %nvram_read_u8.exit2723, %if.end129.if.end137_crit_edge
  %119 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sprom, align 4
  %conv139 = zext i8 %120 to i32
  %shl140 = shl nuw i32 1, %conv139
  %and141 = and i32 %shl140, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end137.if.end145_crit_edge, label %if.then143

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then143:                                       ; preds = %if.end137
  %maxpwr_bg = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 38
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2724) #6
  %121 = call ptr @memset(ptr %buf.i2724, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2725) #6
  %122 = ptrtoint ptr %var.i2725 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %var.i2725, align 1, !annotation !557
  %call.i2726 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull %buf.i2724, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2726)
  %cmp.i2727 = icmp slt i32 %call.i2726, 0
  br i1 %cmp.i2727, label %if.then143.nvram_read_u8.exit2736_crit_edge, label %if.end.i2731

if.then143.nvram_read_u8.exit2736_crit_edge:      ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2736

if.end.i2731:                                     ; preds = %if.then143
  %call2.i2728 = call ptr @strim(ptr noundef nonnull %buf.i2724) #6
  %call3.i2729 = call i32 @kstrtou8(ptr noundef %call2.i2728, i32 noundef 0, ptr noundef nonnull %var.i2725) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2729)
  %tobool4.not.i2730 = icmp eq i32 %call3.i2729, 0
  br i1 %tobool4.not.i2730, label %if.end8.i2734, label %do.end.i2733

do.end.i2733:                                     ; preds = %if.end.i2731
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2732 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef nonnull %buf.i2724, i32 noundef %call3.i2729) #9
  br label %nvram_read_u8.exit2736

if.end8.i2734:                                    ; preds = %if.end.i2731
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %var.i2725 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %var.i2725, align 1
  %125 = ptrtoint ptr %maxpwr_bg to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %maxpwr_bg, align 1
  br label %nvram_read_u8.exit2736

nvram_read_u8.exit2736:                           ; preds = %if.end8.i2734, %do.end.i2733, %if.then143.nvram_read_u8.exit2736_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2725) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2724) #6
  br label %if.end145

if.end145:                                        ; preds = %nvram_read_u8.exit2736, %if.end137.if.end145_crit_edge
  %126 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sprom, align 4
  %conv147 = zext i8 %127 to i32
  %shl148 = shl nuw i32 1, %conv147
  %and149 = and i32 %shl148, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end145.if.end153_crit_edge, label %if.then151

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.then151:                                       ; preds = %if.end145
  %opo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 81
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2737) #6
  %128 = call ptr @memset(ptr %buf.i2737, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2738) #6
  %129 = ptrtoint ptr %var.i2738 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -1, ptr %var.i2738, align 1, !annotation !557
  %call.i2739 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull %buf.i2737, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2739)
  %cmp.i2740 = icmp slt i32 %call.i2739, 0
  br i1 %cmp.i2740, label %if.then151.nvram_read_u8.exit2749_crit_edge, label %if.end.i2744

if.then151.nvram_read_u8.exit2749_crit_edge:      ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2749

if.end.i2744:                                     ; preds = %if.then151
  %call2.i2741 = call ptr @strim(ptr noundef nonnull %buf.i2737) #6
  %call3.i2742 = call i32 @kstrtou8(ptr noundef %call2.i2741, i32 noundef 0, ptr noundef nonnull %var.i2738) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2742)
  %tobool4.not.i2743 = icmp eq i32 %call3.i2742, 0
  br i1 %tobool4.not.i2743, label %if.end8.i2747, label %do.end.i2746

do.end.i2746:                                     ; preds = %if.end.i2744
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef nonnull %buf.i2737, i32 noundef %call3.i2742) #9
  br label %nvram_read_u8.exit2749

if.end8.i2747:                                    ; preds = %if.end.i2744
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %var.i2738 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %var.i2738, align 1
  %132 = ptrtoint ptr %opo to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %opo, align 1
  br label %nvram_read_u8.exit2749

nvram_read_u8.exit2749:                           ; preds = %if.end8.i2747, %do.end.i2746, %if.then151.nvram_read_u8.exit2749_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2738) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2737) #6
  %133 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %133)
  %.pr4988 = load i8, ptr %sprom, align 4
  br label %if.end153

if.end153:                                        ; preds = %nvram_read_u8.exit2749, %if.end145.if.end153_crit_edge
  %134 = phi i8 [ %.pr4988, %nvram_read_u8.exit2749 ], [ %127, %if.end145.if.end153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool158.not = icmp eq i8 %134, 0
  br i1 %tobool158.not, label %if.end153.if.end161_crit_edge, label %if.then159

if.end153.if.end161_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then159:                                       ; preds = %if.end153
  %ant_available_bg = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2750) #6
  %135 = call ptr @memset(ptr %buf.i2750, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2751) #6
  %136 = ptrtoint ptr %var.i2751 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -1, ptr %var.i2751, align 1, !annotation !557
  %call.i2752 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull %buf.i2750, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2752)
  %cmp.i2753 = icmp slt i32 %call.i2752, 0
  br i1 %cmp.i2753, label %if.then159.nvram_read_u8.exit2762_crit_edge, label %if.end.i2757

if.then159.nvram_read_u8.exit2762_crit_edge:      ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2762

if.end.i2757:                                     ; preds = %if.then159
  %call2.i2754 = call ptr @strim(ptr noundef nonnull %buf.i2750) #6
  %call3.i2755 = call i32 @kstrtou8(ptr noundef %call2.i2754, i32 noundef 0, ptr noundef nonnull %var.i2751) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2755)
  %tobool4.not.i2756 = icmp eq i32 %call3.i2755, 0
  br i1 %tobool4.not.i2756, label %if.end8.i2760, label %do.end.i2759

do.end.i2759:                                     ; preds = %if.end.i2757
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2758 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef nonnull %buf.i2750, i32 noundef %call3.i2755) #9
  br label %nvram_read_u8.exit2762

if.end8.i2760:                                    ; preds = %if.end.i2757
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %var.i2751 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %var.i2751, align 1
  %139 = ptrtoint ptr %ant_available_bg to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %ant_available_bg, align 1
  br label %nvram_read_u8.exit2762

nvram_read_u8.exit2762:                           ; preds = %if.end8.i2760, %do.end.i2759, %if.then159.nvram_read_u8.exit2762_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2751) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2750) #6
  br label %if.end161

if.end161:                                        ; preds = %nvram_read_u8.exit2762, %if.end153.if.end161_crit_edge
  %140 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool166.not = icmp eq i8 %141, 0
  br i1 %tobool166.not, label %if.end161.if.end169_crit_edge, label %if.then167

if.end161.if.end169_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then167:                                       ; preds = %if.end161
  %ant_available_a = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2763) #6
  %142 = call ptr @memset(ptr %buf.i2763, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2764) #6
  %143 = ptrtoint ptr %var.i2764 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %var.i2764, align 1, !annotation !557
  %call.i2765 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %buf.i2763, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2765)
  %cmp.i2766 = icmp slt i32 %call.i2765, 0
  br i1 %cmp.i2766, label %if.then167.nvram_read_u8.exit2775_crit_edge, label %if.end.i2770

if.then167.nvram_read_u8.exit2775_crit_edge:      ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2775

if.end.i2770:                                     ; preds = %if.then167
  %call2.i2767 = call ptr @strim(ptr noundef nonnull %buf.i2763) #6
  %call3.i2768 = call i32 @kstrtou8(ptr noundef %call2.i2767, i32 noundef 0, ptr noundef nonnull %var.i2764) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2768)
  %tobool4.not.i2769 = icmp eq i32 %call3.i2768, 0
  br i1 %tobool4.not.i2769, label %if.end8.i2773, label %do.end.i2772

do.end.i2772:                                     ; preds = %if.end.i2770
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2771 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef nonnull %buf.i2763, i32 noundef %call3.i2768) #9
  br label %nvram_read_u8.exit2775

if.end8.i2773:                                    ; preds = %if.end.i2770
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %var.i2764 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %var.i2764, align 1
  %146 = ptrtoint ptr %ant_available_a to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %ant_available_a, align 1
  br label %nvram_read_u8.exit2775

nvram_read_u8.exit2775:                           ; preds = %if.end8.i2773, %do.end.i2772, %if.then167.nvram_read_u8.exit2775_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2764) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2763) #6
  br label %if.end169

if.end169:                                        ; preds = %nvram_read_u8.exit2775, %if.end161.if.end169_crit_edge
  %147 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %sprom, align 4
  %conv171 = zext i8 %148 to i32
  %shl172 = shl nuw i32 1, %conv171
  %and173 = and i32 %shl172, 2046
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end169.if.end177_crit_edge, label %if.then175

if.end169.if.end177_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

if.then175:                                       ; preds = %if.end169
  %antenna_gain = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 75
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2776) #6
  %149 = call ptr @memset(ptr %buf.i2776, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2777) #6
  %150 = ptrtoint ptr %var.i2777 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -1, ptr %var.i2777, align 1, !annotation !557
  %call.i2778 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %buf.i2776, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2778)
  %cmp.i2779 = icmp slt i32 %call.i2778, 0
  br i1 %cmp.i2779, label %if.then175.nvram_read_s8.exit_crit_edge, label %if.end.i2783

if.then175.nvram_read_s8.exit_crit_edge:          ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit

if.end.i2783:                                     ; preds = %if.then175
  %call2.i2780 = call ptr @strim(ptr noundef nonnull %buf.i2776) #6
  %call3.i2781 = call i32 @kstrtos8(ptr noundef %call2.i2780, i32 noundef 0, ptr noundef nonnull %var.i2777) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2781)
  %tobool4.not.i2782 = icmp eq i32 %call3.i2781, 0
  br i1 %tobool4.not.i2782, label %if.end15.i2786, label %do.end.i2785

do.end.i2785:                                     ; preds = %if.end.i2783
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef nonnull %buf.i2776, i32 noundef %call3.i2781) #9
  br label %nvram_read_s8.exit

if.end15.i2786:                                   ; preds = %if.end.i2783
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %var.i2777 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %var.i2777, align 1
  %153 = ptrtoint ptr %antenna_gain to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %antenna_gain, align 1
  br label %nvram_read_s8.exit

nvram_read_s8.exit:                               ; preds = %if.end15.i2786, %do.end.i2785, %if.then175.nvram_read_s8.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2777) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2776) #6
  br label %if.end177

if.end177:                                        ; preds = %nvram_read_s8.exit, %if.end169.if.end177_crit_edge
  %154 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %sprom, align 4
  %conv179 = zext i8 %155 to i32
  %shl180 = shl nuw i32 1, %conv179
  %and181 = and i32 %shl180, 2046
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end177.if.end186_crit_edge, label %if.then183

if.end177.if.end186_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then183:                                       ; preds = %if.end177
  %a1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 75, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2787) #6
  %156 = call ptr @memset(ptr %buf.i2787, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2788) #6
  %157 = ptrtoint ptr %var.i2788 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -1, ptr %var.i2788, align 1, !annotation !557
  %call.i2789 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull %buf.i2787, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2789)
  %cmp.i2790 = icmp slt i32 %call.i2789, 0
  br i1 %cmp.i2790, label %if.then183.nvram_read_s8.exit2798_crit_edge, label %if.end.i2794

if.then183.nvram_read_s8.exit2798_crit_edge:      ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit2798

if.end.i2794:                                     ; preds = %if.then183
  %call2.i2791 = call ptr @strim(ptr noundef nonnull %buf.i2787) #6
  %call3.i2792 = call i32 @kstrtos8(ptr noundef %call2.i2791, i32 noundef 0, ptr noundef nonnull %var.i2788) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2792)
  %tobool4.not.i2793 = icmp eq i32 %call3.i2792, 0
  br i1 %tobool4.not.i2793, label %if.end15.i2797, label %do.end.i2796

do.end.i2796:                                     ; preds = %if.end.i2794
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2795 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef nonnull %buf.i2787, i32 noundef %call3.i2792) #9
  br label %nvram_read_s8.exit2798

if.end15.i2797:                                   ; preds = %if.end.i2794
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %var.i2788 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %var.i2788, align 1
  %160 = ptrtoint ptr %a1 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %a1, align 1
  br label %nvram_read_s8.exit2798

nvram_read_s8.exit2798:                           ; preds = %if.end15.i2797, %do.end.i2796, %if.then183.nvram_read_s8.exit2798_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2788) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2787) #6
  br label %if.end186

if.end186:                                        ; preds = %nvram_read_s8.exit2798, %if.end177.if.end186_crit_edge
  %161 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sprom, align 4
  %conv188 = zext i8 %162 to i32
  %shl189 = shl nuw i32 1, %conv188
  %and190 = and i32 %shl189, 2032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end186.if.end195_crit_edge, label %if.then192

if.end186.if.end195_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

if.then192:                                       ; preds = %if.end186
  %a2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 75, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2799) #6
  %163 = call ptr @memset(ptr %buf.i2799, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2800) #6
  %164 = ptrtoint ptr %var.i2800 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -1, ptr %var.i2800, align 1, !annotation !557
  %call.i2801 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull %buf.i2799, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2801)
  %cmp.i2802 = icmp slt i32 %call.i2801, 0
  br i1 %cmp.i2802, label %if.then192.nvram_read_s8.exit2810_crit_edge, label %if.end.i2806

if.then192.nvram_read_s8.exit2810_crit_edge:      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit2810

if.end.i2806:                                     ; preds = %if.then192
  %call2.i2803 = call ptr @strim(ptr noundef nonnull %buf.i2799) #6
  %call3.i2804 = call i32 @kstrtos8(ptr noundef %call2.i2803, i32 noundef 0, ptr noundef nonnull %var.i2800) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2804)
  %tobool4.not.i2805 = icmp eq i32 %call3.i2804, 0
  br i1 %tobool4.not.i2805, label %if.end15.i2809, label %do.end.i2808

do.end.i2808:                                     ; preds = %if.end.i2806
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2807 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef nonnull %buf.i2799, i32 noundef %call3.i2804) #9
  br label %nvram_read_s8.exit2810

if.end15.i2809:                                   ; preds = %if.end.i2806
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %var.i2800 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %var.i2800, align 1
  %167 = ptrtoint ptr %a2 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %a2, align 1
  br label %nvram_read_s8.exit2810

nvram_read_s8.exit2810:                           ; preds = %if.end15.i2809, %do.end.i2808, %if.then192.nvram_read_s8.exit2810_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2800) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2799) #6
  br label %if.end195

if.end195:                                        ; preds = %nvram_read_s8.exit2810, %if.end186.if.end195_crit_edge
  %168 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %sprom, align 4
  %conv197 = zext i8 %169 to i32
  %shl198 = shl nuw i32 1, %conv197
  %and199 = and i32 %shl198, 2032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end195.if.end204_crit_edge, label %if.then201

if.end195.if.end204_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.then201:                                       ; preds = %if.end195
  %a3 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 75, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2811) #6
  %170 = call ptr @memset(ptr %buf.i2811, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2812) #6
  %171 = ptrtoint ptr %var.i2812 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -1, ptr %var.i2812, align 1, !annotation !557
  %call.i2813 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull %buf.i2811, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2813)
  %cmp.i2814 = icmp slt i32 %call.i2813, 0
  br i1 %cmp.i2814, label %if.then201.nvram_read_s8.exit2822_crit_edge, label %if.end.i2818

if.then201.nvram_read_s8.exit2822_crit_edge:      ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit2822

if.end.i2818:                                     ; preds = %if.then201
  %call2.i2815 = call ptr @strim(ptr noundef nonnull %buf.i2811) #6
  %call3.i2816 = call i32 @kstrtos8(ptr noundef %call2.i2815, i32 noundef 0, ptr noundef nonnull %var.i2812) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2816)
  %tobool4.not.i2817 = icmp eq i32 %call3.i2816, 0
  br i1 %tobool4.not.i2817, label %if.end15.i2821, label %do.end.i2820

do.end.i2820:                                     ; preds = %if.end.i2818
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2819 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef nonnull %buf.i2811, i32 noundef %call3.i2816) #9
  br label %nvram_read_s8.exit2822

if.end15.i2821:                                   ; preds = %if.end.i2818
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %var.i2812 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %var.i2812, align 1
  %174 = ptrtoint ptr %a3 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %a3, align 1
  br label %nvram_read_s8.exit2822

nvram_read_s8.exit2822:                           ; preds = %if.end15.i2821, %do.end.i2820, %if.then201.nvram_read_s8.exit2822_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2812) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2811) #6
  br label %if.end204

if.end204:                                        ; preds = %nvram_read_s8.exit2822, %if.end195.if.end204_crit_edge
  %175 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %sprom, align 4
  %conv206 = zext i8 %176 to i32
  %shl207 = shl nuw i32 1, %conv206
  %and208 = and i32 %shl207, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end204.if.end212_crit_edge, label %if.then210

if.end204.if.end212_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

if.then210:                                       ; preds = %if.end204
  %pa1b0 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2823) #6
  %177 = call ptr @memset(ptr %buf.i2823, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2824) #6
  %178 = ptrtoint ptr %var.i2824 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %var.i2824, align 2, !annotation !557
  %call.i2825 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull %buf.i2823, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2825)
  %cmp.i2826 = icmp slt i32 %call.i2825, 0
  br i1 %cmp.i2826, label %if.then210.nvram_read_u16.exit2834_crit_edge, label %if.end.i2830

if.then210.nvram_read_u16.exit2834_crit_edge:     ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2834

if.end.i2830:                                     ; preds = %if.then210
  %call2.i2827 = call ptr @strim(ptr noundef nonnull %buf.i2823) #6
  %call3.i2828 = call i32 @kstrtou16(ptr noundef %call2.i2827, i32 noundef 0, ptr noundef nonnull %var.i2824) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2828)
  %tobool4.not.i2829 = icmp eq i32 %call3.i2828, 0
  br i1 %tobool4.not.i2829, label %if.end15.i2833, label %do.end.i2832

do.end.i2832:                                     ; preds = %if.end.i2830
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef nonnull %buf.i2823, i32 noundef %call3.i2828) #9
  br label %nvram_read_u16.exit2834

if.end15.i2833:                                   ; preds = %if.end.i2830
  call void @__sanitizer_cov_trace_pc() #8
  %179 = ptrtoint ptr %var.i2824 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %var.i2824, align 2
  %181 = ptrtoint ptr %pa1b0 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %pa1b0, align 2
  br label %nvram_read_u16.exit2834

nvram_read_u16.exit2834:                          ; preds = %if.end15.i2833, %do.end.i2832, %if.then210.nvram_read_u16.exit2834_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2824) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2823) #6
  br label %if.end212

if.end212:                                        ; preds = %nvram_read_u16.exit2834, %if.end204.if.end212_crit_edge
  %182 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %sprom, align 4
  %conv214 = zext i8 %183 to i32
  %shl215 = shl nuw i32 1, %conv214
  %and216 = and i32 %shl215, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end212.if.end220_crit_edge, label %if.then218

if.end212.if.end220_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then218:                                       ; preds = %if.end212
  %pa1b1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2835) #6
  %184 = call ptr @memset(ptr %buf.i2835, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2836) #6
  %185 = ptrtoint ptr %var.i2836 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -1, ptr %var.i2836, align 2, !annotation !557
  %call.i2837 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull %buf.i2835, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2837)
  %cmp.i2838 = icmp slt i32 %call.i2837, 0
  br i1 %cmp.i2838, label %if.then218.nvram_read_u16.exit2846_crit_edge, label %if.end.i2842

if.then218.nvram_read_u16.exit2846_crit_edge:     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2846

if.end.i2842:                                     ; preds = %if.then218
  %call2.i2839 = call ptr @strim(ptr noundef nonnull %buf.i2835) #6
  %call3.i2840 = call i32 @kstrtou16(ptr noundef %call2.i2839, i32 noundef 0, ptr noundef nonnull %var.i2836) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2840)
  %tobool4.not.i2841 = icmp eq i32 %call3.i2840, 0
  br i1 %tobool4.not.i2841, label %if.end15.i2845, label %do.end.i2844

do.end.i2844:                                     ; preds = %if.end.i2842
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2843 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef nonnull %buf.i2835, i32 noundef %call3.i2840) #9
  br label %nvram_read_u16.exit2846

if.end15.i2845:                                   ; preds = %if.end.i2842
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %var.i2836 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %var.i2836, align 2
  %188 = ptrtoint ptr %pa1b1 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %pa1b1, align 2
  br label %nvram_read_u16.exit2846

nvram_read_u16.exit2846:                          ; preds = %if.end15.i2845, %do.end.i2844, %if.then218.nvram_read_u16.exit2846_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2836) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2835) #6
  br label %if.end220

if.end220:                                        ; preds = %nvram_read_u16.exit2846, %if.end212.if.end220_crit_edge
  %189 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %sprom, align 4
  %conv222 = zext i8 %190 to i32
  %shl223 = shl nuw i32 1, %conv222
  %and224 = and i32 %shl223, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end220.if.end228_crit_edge, label %if.then226

if.end220.if.end228_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228

if.then226:                                       ; preds = %if.end220
  %pa1b2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2847) #6
  %191 = call ptr @memset(ptr %buf.i2847, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2848) #6
  %192 = ptrtoint ptr %var.i2848 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %var.i2848, align 2, !annotation !557
  %call.i2849 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull %buf.i2847, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2849)
  %cmp.i2850 = icmp slt i32 %call.i2849, 0
  br i1 %cmp.i2850, label %if.then226.nvram_read_u16.exit2858_crit_edge, label %if.end.i2854

if.then226.nvram_read_u16.exit2858_crit_edge:     ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2858

if.end.i2854:                                     ; preds = %if.then226
  %call2.i2851 = call ptr @strim(ptr noundef nonnull %buf.i2847) #6
  %call3.i2852 = call i32 @kstrtou16(ptr noundef %call2.i2851, i32 noundef 0, ptr noundef nonnull %var.i2848) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2852)
  %tobool4.not.i2853 = icmp eq i32 %call3.i2852, 0
  br i1 %tobool4.not.i2853, label %if.end15.i2857, label %do.end.i2856

do.end.i2856:                                     ; preds = %if.end.i2854
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2855 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef nonnull %buf.i2847, i32 noundef %call3.i2852) #9
  br label %nvram_read_u16.exit2858

if.end15.i2857:                                   ; preds = %if.end.i2854
  call void @__sanitizer_cov_trace_pc() #8
  %193 = ptrtoint ptr %var.i2848 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %var.i2848, align 2
  %195 = ptrtoint ptr %pa1b2 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %pa1b2, align 2
  br label %nvram_read_u16.exit2858

nvram_read_u16.exit2858:                          ; preds = %if.end15.i2857, %do.end.i2856, %if.then226.nvram_read_u16.exit2858_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2848) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2847) #6
  br label %if.end228

if.end228:                                        ; preds = %nvram_read_u16.exit2858, %if.end220.if.end228_crit_edge
  %196 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %sprom, align 4
  %conv230 = zext i8 %197 to i32
  %shl231 = shl nuw i32 1, %conv230
  %and232 = and i32 %shl231, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end228.if.end236_crit_edge, label %if.then234

if.end228.if.end236_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end236

if.then234:                                       ; preds = %if.end228
  %pa1lob0 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2859) #6
  %198 = call ptr @memset(ptr %buf.i2859, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2860) #6
  %199 = ptrtoint ptr %var.i2860 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %var.i2860, align 2, !annotation !557
  %call.i2861 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull %buf.i2859, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2861)
  %cmp.i2862 = icmp slt i32 %call.i2861, 0
  br i1 %cmp.i2862, label %if.then234.nvram_read_u16.exit2870_crit_edge, label %if.end.i2866

if.then234.nvram_read_u16.exit2870_crit_edge:     ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2870

if.end.i2866:                                     ; preds = %if.then234
  %call2.i2863 = call ptr @strim(ptr noundef nonnull %buf.i2859) #6
  %call3.i2864 = call i32 @kstrtou16(ptr noundef %call2.i2863, i32 noundef 0, ptr noundef nonnull %var.i2860) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2864)
  %tobool4.not.i2865 = icmp eq i32 %call3.i2864, 0
  br i1 %tobool4.not.i2865, label %if.end15.i2869, label %do.end.i2868

do.end.i2868:                                     ; preds = %if.end.i2866
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2867 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef nonnull %buf.i2859, i32 noundef %call3.i2864) #9
  br label %nvram_read_u16.exit2870

if.end15.i2869:                                   ; preds = %if.end.i2866
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %var.i2860 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %var.i2860, align 2
  %202 = ptrtoint ptr %pa1lob0 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %pa1lob0, align 2
  br label %nvram_read_u16.exit2870

nvram_read_u16.exit2870:                          ; preds = %if.end15.i2869, %do.end.i2868, %if.then234.nvram_read_u16.exit2870_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2860) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2859) #6
  br label %if.end236

if.end236:                                        ; preds = %nvram_read_u16.exit2870, %if.end228.if.end236_crit_edge
  %203 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %sprom, align 4
  %conv238 = zext i8 %204 to i32
  %shl239 = shl nuw i32 1, %conv238
  %and240 = and i32 %shl239, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %if.end236.if.end244_crit_edge, label %if.then242

if.end236.if.end244_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then242:                                       ; preds = %if.end236
  %pa1lob1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2871) #6
  %205 = call ptr @memset(ptr %buf.i2871, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2872) #6
  %206 = ptrtoint ptr %var.i2872 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %var.i2872, align 2, !annotation !557
  %call.i2873 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull %buf.i2871, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2873)
  %cmp.i2874 = icmp slt i32 %call.i2873, 0
  br i1 %cmp.i2874, label %if.then242.nvram_read_u16.exit2882_crit_edge, label %if.end.i2878

if.then242.nvram_read_u16.exit2882_crit_edge:     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2882

if.end.i2878:                                     ; preds = %if.then242
  %call2.i2875 = call ptr @strim(ptr noundef nonnull %buf.i2871) #6
  %call3.i2876 = call i32 @kstrtou16(ptr noundef %call2.i2875, i32 noundef 0, ptr noundef nonnull %var.i2872) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2876)
  %tobool4.not.i2877 = icmp eq i32 %call3.i2876, 0
  br i1 %tobool4.not.i2877, label %if.end15.i2881, label %do.end.i2880

do.end.i2880:                                     ; preds = %if.end.i2878
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2879 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef nonnull %buf.i2871, i32 noundef %call3.i2876) #9
  br label %nvram_read_u16.exit2882

if.end15.i2881:                                   ; preds = %if.end.i2878
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %var.i2872 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %var.i2872, align 2
  %209 = ptrtoint ptr %pa1lob1 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %pa1lob1, align 2
  br label %nvram_read_u16.exit2882

nvram_read_u16.exit2882:                          ; preds = %if.end15.i2881, %do.end.i2880, %if.then242.nvram_read_u16.exit2882_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2872) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2871) #6
  br label %if.end244

if.end244:                                        ; preds = %nvram_read_u16.exit2882, %if.end236.if.end244_crit_edge
  %210 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %sprom, align 4
  %conv246 = zext i8 %211 to i32
  %shl247 = shl nuw i32 1, %conv246
  %and248 = and i32 %shl247, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end244.if.end252_crit_edge, label %if.then250

if.end244.if.end252_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then250:                                       ; preds = %if.end244
  %pa1lob2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2883) #6
  %212 = call ptr @memset(ptr %buf.i2883, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2884) #6
  %213 = ptrtoint ptr %var.i2884 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -1, ptr %var.i2884, align 2, !annotation !557
  %call.i2885 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull %buf.i2883, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2885)
  %cmp.i2886 = icmp slt i32 %call.i2885, 0
  br i1 %cmp.i2886, label %if.then250.nvram_read_u16.exit2894_crit_edge, label %if.end.i2890

if.then250.nvram_read_u16.exit2894_crit_edge:     ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2894

if.end.i2890:                                     ; preds = %if.then250
  %call2.i2887 = call ptr @strim(ptr noundef nonnull %buf.i2883) #6
  %call3.i2888 = call i32 @kstrtou16(ptr noundef %call2.i2887, i32 noundef 0, ptr noundef nonnull %var.i2884) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2888)
  %tobool4.not.i2889 = icmp eq i32 %call3.i2888, 0
  br i1 %tobool4.not.i2889, label %if.end15.i2893, label %do.end.i2892

do.end.i2892:                                     ; preds = %if.end.i2890
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2891 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef nonnull %buf.i2883, i32 noundef %call3.i2888) #9
  br label %nvram_read_u16.exit2894

if.end15.i2893:                                   ; preds = %if.end.i2890
  call void @__sanitizer_cov_trace_pc() #8
  %214 = ptrtoint ptr %var.i2884 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %var.i2884, align 2
  %216 = ptrtoint ptr %pa1lob2 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %pa1lob2, align 2
  br label %nvram_read_u16.exit2894

nvram_read_u16.exit2894:                          ; preds = %if.end15.i2893, %do.end.i2892, %if.then250.nvram_read_u16.exit2894_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2884) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2883) #6
  br label %if.end252

if.end252:                                        ; preds = %nvram_read_u16.exit2894, %if.end244.if.end252_crit_edge
  %217 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %sprom, align 4
  %conv254 = zext i8 %218 to i32
  %shl255 = shl nuw i32 1, %conv254
  %and256 = and i32 %shl255, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %if.end252.if.end260_crit_edge, label %if.then258

if.end252.if.end260_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

if.then258:                                       ; preds = %if.end252
  %pa1hib0 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2895) #6
  %219 = call ptr @memset(ptr %buf.i2895, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2896) #6
  %220 = ptrtoint ptr %var.i2896 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 -1, ptr %var.i2896, align 2, !annotation !557
  %call.i2897 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull %buf.i2895, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2897)
  %cmp.i2898 = icmp slt i32 %call.i2897, 0
  br i1 %cmp.i2898, label %if.then258.nvram_read_u16.exit2906_crit_edge, label %if.end.i2902

if.then258.nvram_read_u16.exit2906_crit_edge:     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2906

if.end.i2902:                                     ; preds = %if.then258
  %call2.i2899 = call ptr @strim(ptr noundef nonnull %buf.i2895) #6
  %call3.i2900 = call i32 @kstrtou16(ptr noundef %call2.i2899, i32 noundef 0, ptr noundef nonnull %var.i2896) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2900)
  %tobool4.not.i2901 = icmp eq i32 %call3.i2900, 0
  br i1 %tobool4.not.i2901, label %if.end15.i2905, label %do.end.i2904

do.end.i2904:                                     ; preds = %if.end.i2902
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2903 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef nonnull %buf.i2895, i32 noundef %call3.i2900) #9
  br label %nvram_read_u16.exit2906

if.end15.i2905:                                   ; preds = %if.end.i2902
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %var.i2896 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %var.i2896, align 2
  %223 = ptrtoint ptr %pa1hib0 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %pa1hib0, align 2
  br label %nvram_read_u16.exit2906

nvram_read_u16.exit2906:                          ; preds = %if.end15.i2905, %do.end.i2904, %if.then258.nvram_read_u16.exit2906_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2896) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2895) #6
  br label %if.end260

if.end260:                                        ; preds = %nvram_read_u16.exit2906, %if.end252.if.end260_crit_edge
  %224 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %sprom, align 4
  %conv262 = zext i8 %225 to i32
  %shl263 = shl nuw i32 1, %conv262
  %and264 = and i32 %shl263, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.end260.if.end268_crit_edge, label %if.then266

if.end260.if.end268_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end268

if.then266:                                       ; preds = %if.end260
  %pa1hib1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2907) #6
  %226 = call ptr @memset(ptr %buf.i2907, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2908) #6
  %227 = ptrtoint ptr %var.i2908 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 -1, ptr %var.i2908, align 2, !annotation !557
  %call.i2909 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull %buf.i2907, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2909)
  %cmp.i2910 = icmp slt i32 %call.i2909, 0
  br i1 %cmp.i2910, label %if.then266.nvram_read_u16.exit2918_crit_edge, label %if.end.i2914

if.then266.nvram_read_u16.exit2918_crit_edge:     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2918

if.end.i2914:                                     ; preds = %if.then266
  %call2.i2911 = call ptr @strim(ptr noundef nonnull %buf.i2907) #6
  %call3.i2912 = call i32 @kstrtou16(ptr noundef %call2.i2911, i32 noundef 0, ptr noundef nonnull %var.i2908) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2912)
  %tobool4.not.i2913 = icmp eq i32 %call3.i2912, 0
  br i1 %tobool4.not.i2913, label %if.end15.i2917, label %do.end.i2916

do.end.i2916:                                     ; preds = %if.end.i2914
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef nonnull %buf.i2907, i32 noundef %call3.i2912) #9
  br label %nvram_read_u16.exit2918

if.end15.i2917:                                   ; preds = %if.end.i2914
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %var.i2908 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %var.i2908, align 2
  %230 = ptrtoint ptr %pa1hib1 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %pa1hib1, align 2
  br label %nvram_read_u16.exit2918

nvram_read_u16.exit2918:                          ; preds = %if.end15.i2917, %do.end.i2916, %if.then266.nvram_read_u16.exit2918_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2908) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2907) #6
  br label %if.end268

if.end268:                                        ; preds = %nvram_read_u16.exit2918, %if.end260.if.end268_crit_edge
  %231 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %sprom, align 4
  %conv270 = zext i8 %232 to i32
  %shl271 = shl nuw i32 1, %conv270
  %and272 = and i32 %shl271, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %if.end268.if.end276_crit_edge, label %if.then274

if.end268.if.end276_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end276

if.then274:                                       ; preds = %if.end268
  %pa1hib2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2919) #6
  %233 = call ptr @memset(ptr %buf.i2919, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i2920) #6
  %234 = ptrtoint ptr %var.i2920 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 -1, ptr %var.i2920, align 2, !annotation !557
  %call.i2921 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull %buf.i2919, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2921)
  %cmp.i2922 = icmp slt i32 %call.i2921, 0
  br i1 %cmp.i2922, label %if.then274.nvram_read_u16.exit2930_crit_edge, label %if.end.i2926

if.then274.nvram_read_u16.exit2930_crit_edge:     ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit2930

if.end.i2926:                                     ; preds = %if.then274
  %call2.i2923 = call ptr @strim(ptr noundef nonnull %buf.i2919) #6
  %call3.i2924 = call i32 @kstrtou16(ptr noundef %call2.i2923, i32 noundef 0, ptr noundef nonnull %var.i2920) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2924)
  %tobool4.not.i2925 = icmp eq i32 %call3.i2924, 0
  br i1 %tobool4.not.i2925, label %if.end15.i2929, label %do.end.i2928

do.end.i2928:                                     ; preds = %if.end.i2926
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2927 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef nonnull %buf.i2919, i32 noundef %call3.i2924) #9
  br label %nvram_read_u16.exit2930

if.end15.i2929:                                   ; preds = %if.end.i2926
  call void @__sanitizer_cov_trace_pc() #8
  %235 = ptrtoint ptr %var.i2920 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %var.i2920, align 2
  %237 = ptrtoint ptr %pa1hib2 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %236, ptr %pa1hib2, align 2
  br label %nvram_read_u16.exit2930

nvram_read_u16.exit2930:                          ; preds = %if.end15.i2929, %do.end.i2928, %if.then274.nvram_read_u16.exit2930_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i2920) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2919) #6
  br label %if.end276

if.end276:                                        ; preds = %nvram_read_u16.exit2930, %if.end268.if.end276_crit_edge
  %238 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %sprom, align 4
  %conv278 = zext i8 %239 to i32
  %shl279 = shl nuw i32 1, %conv278
  %and280 = and i32 %shl279, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %if.end276.if.end284_crit_edge, label %if.then282

if.end276.if.end284_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end284

if.then282:                                       ; preds = %if.end276
  %itssi_a = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2931) #6
  %240 = call ptr @memset(ptr %buf.i2931, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2932) #6
  %241 = ptrtoint ptr %var.i2932 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -1, ptr %var.i2932, align 1, !annotation !557
  %call.i2933 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull %buf.i2931, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2933)
  %cmp.i2934 = icmp slt i32 %call.i2933, 0
  br i1 %cmp.i2934, label %if.then282.nvram_read_u8.exit2943_crit_edge, label %if.end.i2938

if.then282.nvram_read_u8.exit2943_crit_edge:      ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2943

if.end.i2938:                                     ; preds = %if.then282
  %call2.i2935 = call ptr @strim(ptr noundef nonnull %buf.i2931) #6
  %call3.i2936 = call i32 @kstrtou8(ptr noundef %call2.i2935, i32 noundef 0, ptr noundef nonnull %var.i2932) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2936)
  %tobool4.not.i2937 = icmp eq i32 %call3.i2936, 0
  br i1 %tobool4.not.i2937, label %if.end8.i2941, label %do.end.i2940

do.end.i2940:                                     ; preds = %if.end.i2938
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2939 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef nonnull %buf.i2931, i32 noundef %call3.i2936) #9
  br label %nvram_read_u8.exit2943

if.end8.i2941:                                    ; preds = %if.end.i2938
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %var.i2932 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %var.i2932, align 1
  %244 = ptrtoint ptr %itssi_a to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %itssi_a, align 1
  br label %nvram_read_u8.exit2943

nvram_read_u8.exit2943:                           ; preds = %if.end8.i2941, %do.end.i2940, %if.then282.nvram_read_u8.exit2943_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2932) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2931) #6
  br label %if.end284

if.end284:                                        ; preds = %nvram_read_u8.exit2943, %if.end276.if.end284_crit_edge
  %245 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %sprom, align 4
  %conv286 = zext i8 %246 to i32
  %shl287 = shl nuw i32 1, %conv286
  %and288 = and i32 %shl287, 1806
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288)
  %tobool289.not = icmp eq i32 %and288, 0
  br i1 %tobool289.not, label %if.end284.if.end292_crit_edge, label %if.then290

if.end284.if.end292_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end292

if.then290:                                       ; preds = %if.end284
  %maxpwr_a = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2944) #6
  %247 = call ptr @memset(ptr %buf.i2944, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2945) #6
  %248 = ptrtoint ptr %var.i2945 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 -1, ptr %var.i2945, align 1, !annotation !557
  %call.i2946 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull %buf.i2944, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2946)
  %cmp.i2947 = icmp slt i32 %call.i2946, 0
  br i1 %cmp.i2947, label %if.then290.nvram_read_u8.exit2956_crit_edge, label %if.end.i2951

if.then290.nvram_read_u8.exit2956_crit_edge:      ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2956

if.end.i2951:                                     ; preds = %if.then290
  %call2.i2948 = call ptr @strim(ptr noundef nonnull %buf.i2944) #6
  %call3.i2949 = call i32 @kstrtou8(ptr noundef %call2.i2948, i32 noundef 0, ptr noundef nonnull %var.i2945) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2949)
  %tobool4.not.i2950 = icmp eq i32 %call3.i2949, 0
  br i1 %tobool4.not.i2950, label %if.end8.i2954, label %do.end.i2953

do.end.i2953:                                     ; preds = %if.end.i2951
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2952 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef nonnull %buf.i2944, i32 noundef %call3.i2949) #9
  br label %nvram_read_u8.exit2956

if.end8.i2954:                                    ; preds = %if.end.i2951
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %var.i2945 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %var.i2945, align 1
  %251 = ptrtoint ptr %maxpwr_a to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %maxpwr_a, align 1
  br label %nvram_read_u8.exit2956

nvram_read_u8.exit2956:                           ; preds = %if.end8.i2954, %do.end.i2953, %if.then290.nvram_read_u8.exit2956_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2945) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2944) #6
  br label %if.end292

if.end292:                                        ; preds = %nvram_read_u8.exit2956, %if.end284.if.end292_crit_edge
  %252 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %sprom, align 4
  %conv294 = zext i8 %253 to i32
  %shl295 = shl nuw i32 1, %conv294
  %and296 = and i32 %shl295, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %if.end292.if.end300_crit_edge, label %if.then298

if.end292.if.end300_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end300

if.then298:                                       ; preds = %if.end292
  %maxpwr_al = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2957) #6
  %254 = call ptr @memset(ptr %buf.i2957, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2958) #6
  %255 = ptrtoint ptr %var.i2958 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 -1, ptr %var.i2958, align 1, !annotation !557
  %call.i2959 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull %buf.i2957, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2959)
  %cmp.i2960 = icmp slt i32 %call.i2959, 0
  br i1 %cmp.i2960, label %if.then298.nvram_read_u8.exit2969_crit_edge, label %if.end.i2964

if.then298.nvram_read_u8.exit2969_crit_edge:      ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2969

if.end.i2964:                                     ; preds = %if.then298
  %call2.i2961 = call ptr @strim(ptr noundef nonnull %buf.i2957) #6
  %call3.i2962 = call i32 @kstrtou8(ptr noundef %call2.i2961, i32 noundef 0, ptr noundef nonnull %var.i2958) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2962)
  %tobool4.not.i2963 = icmp eq i32 %call3.i2962, 0
  br i1 %tobool4.not.i2963, label %if.end8.i2967, label %do.end.i2966

do.end.i2966:                                     ; preds = %if.end.i2964
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2965 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.94, ptr noundef null, ptr noundef nonnull %buf.i2957, i32 noundef %call3.i2962) #9
  br label %nvram_read_u8.exit2969

if.end8.i2967:                                    ; preds = %if.end.i2964
  call void @__sanitizer_cov_trace_pc() #8
  %256 = ptrtoint ptr %var.i2958 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %var.i2958, align 1
  %258 = ptrtoint ptr %maxpwr_al to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %maxpwr_al, align 1
  br label %nvram_read_u8.exit2969

nvram_read_u8.exit2969:                           ; preds = %if.end8.i2967, %do.end.i2966, %if.then298.nvram_read_u8.exit2969_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2958) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2957) #6
  br label %if.end300

if.end300:                                        ; preds = %nvram_read_u8.exit2969, %if.end292.if.end300_crit_edge
  %259 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %sprom, align 4
  %conv302 = zext i8 %260 to i32
  %shl303 = shl nuw i32 1, %conv302
  %and304 = and i32 %shl303, 1804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %if.end300.if.end308_crit_edge, label %if.then306

if.end300.if.end308_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end308

if.then306:                                       ; preds = %if.end300
  %maxpwr_ah = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 41
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2970) #6
  %261 = call ptr @memset(ptr %buf.i2970, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2971) #6
  %262 = ptrtoint ptr %var.i2971 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 -1, ptr %var.i2971, align 1, !annotation !557
  %call.i2972 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull %buf.i2970, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2972)
  %cmp.i2973 = icmp slt i32 %call.i2972, 0
  br i1 %cmp.i2973, label %if.then306.nvram_read_u8.exit2982_crit_edge, label %if.end.i2977

if.then306.nvram_read_u8.exit2982_crit_edge:      ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2982

if.end.i2977:                                     ; preds = %if.then306
  %call2.i2974 = call ptr @strim(ptr noundef nonnull %buf.i2970) #6
  %call3.i2975 = call i32 @kstrtou8(ptr noundef %call2.i2974, i32 noundef 0, ptr noundef nonnull %var.i2971) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2975)
  %tobool4.not.i2976 = icmp eq i32 %call3.i2975, 0
  br i1 %tobool4.not.i2976, label %if.end8.i2980, label %do.end.i2979

do.end.i2979:                                     ; preds = %if.end.i2977
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2978 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef nonnull %buf.i2970, i32 noundef %call3.i2975) #9
  br label %nvram_read_u8.exit2982

if.end8.i2980:                                    ; preds = %if.end.i2977
  call void @__sanitizer_cov_trace_pc() #8
  %263 = ptrtoint ptr %var.i2971 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %var.i2971, align 1
  %265 = ptrtoint ptr %maxpwr_ah to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %maxpwr_ah, align 1
  br label %nvram_read_u8.exit2982

nvram_read_u8.exit2982:                           ; preds = %if.end8.i2980, %do.end.i2979, %if.then306.nvram_read_u8.exit2982_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2971) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2970) #6
  br label %if.end308

if.end308:                                        ; preds = %nvram_read_u8.exit2982, %if.end300.if.end308_crit_edge
  %266 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %sprom, align 4
  %conv310 = zext i8 %267 to i32
  %shl311 = shl nuw i32 1, %conv310
  %and312 = and i32 %shl311, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %if.end308.if.end316_crit_edge, label %if.then314

if.end308.if.end316_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end316

if.then314:                                       ; preds = %if.end308
  %bxa2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 57
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2983) #6
  %268 = call ptr @memset(ptr %buf.i2983, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2984) #6
  %269 = ptrtoint ptr %var.i2984 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -1, ptr %var.i2984, align 1, !annotation !557
  %call.i2985 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull %buf.i2983, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2985)
  %cmp.i2986 = icmp slt i32 %call.i2985, 0
  br i1 %cmp.i2986, label %if.then314.nvram_read_u8.exit2995_crit_edge, label %if.end.i2990

if.then314.nvram_read_u8.exit2995_crit_edge:      ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit2995

if.end.i2990:                                     ; preds = %if.then314
  %call2.i2987 = call ptr @strim(ptr noundef nonnull %buf.i2983) #6
  %call3.i2988 = call i32 @kstrtou8(ptr noundef %call2.i2987, i32 noundef 0, ptr noundef nonnull %var.i2984) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2988)
  %tobool4.not.i2989 = icmp eq i32 %call3.i2988, 0
  br i1 %tobool4.not.i2989, label %if.end8.i2993, label %do.end.i2992

do.end.i2992:                                     ; preds = %if.end.i2990
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i2991 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef nonnull %buf.i2983, i32 noundef %call3.i2988) #9
  br label %nvram_read_u8.exit2995

if.end8.i2993:                                    ; preds = %if.end.i2990
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %var.i2984 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %var.i2984, align 1
  %272 = ptrtoint ptr %bxa2g to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %bxa2g, align 1
  br label %nvram_read_u8.exit2995

nvram_read_u8.exit2995:                           ; preds = %if.end8.i2993, %do.end.i2992, %if.then314.nvram_read_u8.exit2995_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2984) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2983) #6
  br label %if.end316

if.end316:                                        ; preds = %nvram_read_u8.exit2995, %if.end308.if.end316_crit_edge
  %273 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %sprom, align 4
  %conv318 = zext i8 %274 to i32
  %shl319 = shl nuw i32 1, %conv318
  %and320 = and i32 %shl319, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  br i1 %tobool321.not, label %if.end316.if.end324_crit_edge, label %if.then322

if.end316.if.end324_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.then322:                                       ; preds = %if.end316
  %rssisav2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 54
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i2996) #6
  %275 = call ptr @memset(ptr %buf.i2996, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i2997) #6
  %276 = ptrtoint ptr %var.i2997 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 -1, ptr %var.i2997, align 1, !annotation !557
  %call.i2998 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull %buf.i2996, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2998)
  %cmp.i2999 = icmp slt i32 %call.i2998, 0
  br i1 %cmp.i2999, label %if.then322.nvram_read_u8.exit3008_crit_edge, label %if.end.i3003

if.then322.nvram_read_u8.exit3008_crit_edge:      ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3008

if.end.i3003:                                     ; preds = %if.then322
  %call2.i3000 = call ptr @strim(ptr noundef nonnull %buf.i2996) #6
  %call3.i3001 = call i32 @kstrtou8(ptr noundef %call2.i3000, i32 noundef 0, ptr noundef nonnull %var.i2997) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3001)
  %tobool4.not.i3002 = icmp eq i32 %call3.i3001, 0
  br i1 %tobool4.not.i3002, label %if.end8.i3006, label %do.end.i3005

do.end.i3005:                                     ; preds = %if.end.i3003
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3004 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef nonnull %buf.i2996, i32 noundef %call3.i3001) #9
  br label %nvram_read_u8.exit3008

if.end8.i3006:                                    ; preds = %if.end.i3003
  call void @__sanitizer_cov_trace_pc() #8
  %277 = ptrtoint ptr %var.i2997 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %var.i2997, align 1
  %279 = ptrtoint ptr %rssisav2g to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %rssisav2g, align 1
  br label %nvram_read_u8.exit3008

nvram_read_u8.exit3008:                           ; preds = %if.end8.i3006, %do.end.i3005, %if.then322.nvram_read_u8.exit3008_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i2997) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i2996) #6
  br label %if.end324

if.end324:                                        ; preds = %nvram_read_u8.exit3008, %if.end316.if.end324_crit_edge
  %280 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %sprom, align 4
  %conv326 = zext i8 %281 to i32
  %shl327 = shl nuw i32 1, %conv326
  %and328 = and i32 %shl327, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %if.end324.if.end332_crit_edge, label %if.then330

if.end324.if.end332_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end332

if.then330:                                       ; preds = %if.end324
  %rssismc2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 55
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3009) #6
  %282 = call ptr @memset(ptr %buf.i3009, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3010) #6
  %283 = ptrtoint ptr %var.i3010 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 -1, ptr %var.i3010, align 1, !annotation !557
  %call.i3011 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull %buf.i3009, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3011)
  %cmp.i3012 = icmp slt i32 %call.i3011, 0
  br i1 %cmp.i3012, label %if.then330.nvram_read_u8.exit3021_crit_edge, label %if.end.i3016

if.then330.nvram_read_u8.exit3021_crit_edge:      ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3021

if.end.i3016:                                     ; preds = %if.then330
  %call2.i3013 = call ptr @strim(ptr noundef nonnull %buf.i3009) #6
  %call3.i3014 = call i32 @kstrtou8(ptr noundef %call2.i3013, i32 noundef 0, ptr noundef nonnull %var.i3010) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3014)
  %tobool4.not.i3015 = icmp eq i32 %call3.i3014, 0
  br i1 %tobool4.not.i3015, label %if.end8.i3019, label %do.end.i3018

do.end.i3018:                                     ; preds = %if.end.i3016
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3017 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef nonnull %buf.i3009, i32 noundef %call3.i3014) #9
  br label %nvram_read_u8.exit3021

if.end8.i3019:                                    ; preds = %if.end.i3016
  call void @__sanitizer_cov_trace_pc() #8
  %284 = ptrtoint ptr %var.i3010 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %var.i3010, align 1
  %286 = ptrtoint ptr %rssismc2g to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %285, ptr %rssismc2g, align 1
  br label %nvram_read_u8.exit3021

nvram_read_u8.exit3021:                           ; preds = %if.end8.i3019, %do.end.i3018, %if.then330.nvram_read_u8.exit3021_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3010) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3009) #6
  br label %if.end332

if.end332:                                        ; preds = %nvram_read_u8.exit3021, %if.end324.if.end332_crit_edge
  %287 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %sprom, align 4
  %conv334 = zext i8 %288 to i32
  %shl335 = shl nuw i32 1, %conv334
  %and336 = and i32 %shl335, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %if.end332.if.end340_crit_edge, label %if.then338

if.end332.if.end340_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end340

if.then338:                                       ; preds = %if.end332
  %rssismf2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 56
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3022) #6
  %289 = call ptr @memset(ptr %buf.i3022, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3023) #6
  %290 = ptrtoint ptr %var.i3023 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 -1, ptr %var.i3023, align 1, !annotation !557
  %call.i3024 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull %buf.i3022, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3024)
  %cmp.i3025 = icmp slt i32 %call.i3024, 0
  br i1 %cmp.i3025, label %if.then338.nvram_read_u8.exit3034_crit_edge, label %if.end.i3029

if.then338.nvram_read_u8.exit3034_crit_edge:      ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3034

if.end.i3029:                                     ; preds = %if.then338
  %call2.i3026 = call ptr @strim(ptr noundef nonnull %buf.i3022) #6
  %call3.i3027 = call i32 @kstrtou8(ptr noundef %call2.i3026, i32 noundef 0, ptr noundef nonnull %var.i3023) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3027)
  %tobool4.not.i3028 = icmp eq i32 %call3.i3027, 0
  br i1 %tobool4.not.i3028, label %if.end8.i3032, label %do.end.i3031

do.end.i3031:                                     ; preds = %if.end.i3029
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3030 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef nonnull %buf.i3022, i32 noundef %call3.i3027) #9
  br label %nvram_read_u8.exit3034

if.end8.i3032:                                    ; preds = %if.end.i3029
  call void @__sanitizer_cov_trace_pc() #8
  %291 = ptrtoint ptr %var.i3023 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %var.i3023, align 1
  %293 = ptrtoint ptr %rssismf2g to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %292, ptr %rssismf2g, align 1
  br label %nvram_read_u8.exit3034

nvram_read_u8.exit3034:                           ; preds = %if.end8.i3032, %do.end.i3031, %if.then338.nvram_read_u8.exit3034_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3023) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3022) #6
  br label %if.end340

if.end340:                                        ; preds = %nvram_read_u8.exit3034, %if.end332.if.end340_crit_edge
  %294 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %sprom, align 4
  %conv342 = zext i8 %295 to i32
  %shl343 = shl nuw i32 1, %conv342
  %and344 = and i32 %shl343, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %if.end340.if.end348_crit_edge, label %if.then346

if.end340.if.end348_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end348

if.then346:                                       ; preds = %if.end340
  %bxa5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 61
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3035) #6
  %296 = call ptr @memset(ptr %buf.i3035, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3036) #6
  %297 = ptrtoint ptr %var.i3036 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 -1, ptr %var.i3036, align 1, !annotation !557
  %call.i3037 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull %buf.i3035, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3037)
  %cmp.i3038 = icmp slt i32 %call.i3037, 0
  br i1 %cmp.i3038, label %if.then346.nvram_read_u8.exit3047_crit_edge, label %if.end.i3042

if.then346.nvram_read_u8.exit3047_crit_edge:      ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3047

if.end.i3042:                                     ; preds = %if.then346
  %call2.i3039 = call ptr @strim(ptr noundef nonnull %buf.i3035) #6
  %call3.i3040 = call i32 @kstrtou8(ptr noundef %call2.i3039, i32 noundef 0, ptr noundef nonnull %var.i3036) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3040)
  %tobool4.not.i3041 = icmp eq i32 %call3.i3040, 0
  br i1 %tobool4.not.i3041, label %if.end8.i3045, label %do.end.i3044

do.end.i3044:                                     ; preds = %if.end.i3042
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3043 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef nonnull %buf.i3035, i32 noundef %call3.i3040) #9
  br label %nvram_read_u8.exit3047

if.end8.i3045:                                    ; preds = %if.end.i3042
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %var.i3036 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %var.i3036, align 1
  %300 = ptrtoint ptr %bxa5g to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %bxa5g, align 1
  br label %nvram_read_u8.exit3047

nvram_read_u8.exit3047:                           ; preds = %if.end8.i3045, %do.end.i3044, %if.then346.nvram_read_u8.exit3047_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3036) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3035) #6
  br label %if.end348

if.end348:                                        ; preds = %nvram_read_u8.exit3047, %if.end340.if.end348_crit_edge
  %301 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %sprom, align 4
  %conv350 = zext i8 %302 to i32
  %shl351 = shl nuw i32 1, %conv350
  %and352 = and i32 %shl351, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and352)
  %tobool353.not = icmp eq i32 %and352, 0
  br i1 %tobool353.not, label %if.end348.if.end356_crit_edge, label %if.then354

if.end348.if.end356_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end356

if.then354:                                       ; preds = %if.end348
  %rssisav5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3048) #6
  %303 = call ptr @memset(ptr %buf.i3048, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3049) #6
  %304 = ptrtoint ptr %var.i3049 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 -1, ptr %var.i3049, align 1, !annotation !557
  %call.i3050 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull %buf.i3048, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3050)
  %cmp.i3051 = icmp slt i32 %call.i3050, 0
  br i1 %cmp.i3051, label %if.then354.nvram_read_u8.exit3060_crit_edge, label %if.end.i3055

if.then354.nvram_read_u8.exit3060_crit_edge:      ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3060

if.end.i3055:                                     ; preds = %if.then354
  %call2.i3052 = call ptr @strim(ptr noundef nonnull %buf.i3048) #6
  %call3.i3053 = call i32 @kstrtou8(ptr noundef %call2.i3052, i32 noundef 0, ptr noundef nonnull %var.i3049) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3053)
  %tobool4.not.i3054 = icmp eq i32 %call3.i3053, 0
  br i1 %tobool4.not.i3054, label %if.end8.i3058, label %do.end.i3057

do.end.i3057:                                     ; preds = %if.end.i3055
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3056 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef nonnull %buf.i3048, i32 noundef %call3.i3053) #9
  br label %nvram_read_u8.exit3060

if.end8.i3058:                                    ; preds = %if.end.i3055
  call void @__sanitizer_cov_trace_pc() #8
  %305 = ptrtoint ptr %var.i3049 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %var.i3049, align 1
  %307 = ptrtoint ptr %rssisav5g to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %rssisav5g, align 1
  br label %nvram_read_u8.exit3060

nvram_read_u8.exit3060:                           ; preds = %if.end8.i3058, %do.end.i3057, %if.then354.nvram_read_u8.exit3060_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3049) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3048) #6
  br label %if.end356

if.end356:                                        ; preds = %nvram_read_u8.exit3060, %if.end348.if.end356_crit_edge
  %308 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %sprom, align 4
  %conv358 = zext i8 %309 to i32
  %shl359 = shl nuw i32 1, %conv358
  %and360 = and i32 %shl359, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  br i1 %tobool361.not, label %if.end356.if.end364_crit_edge, label %if.then362

if.end356.if.end364_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end364

if.then362:                                       ; preds = %if.end356
  %rssismc5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 59
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3061) #6
  %310 = call ptr @memset(ptr %buf.i3061, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3062) #6
  %311 = ptrtoint ptr %var.i3062 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 -1, ptr %var.i3062, align 1, !annotation !557
  %call.i3063 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull %buf.i3061, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3063)
  %cmp.i3064 = icmp slt i32 %call.i3063, 0
  br i1 %cmp.i3064, label %if.then362.nvram_read_u8.exit3073_crit_edge, label %if.end.i3068

if.then362.nvram_read_u8.exit3073_crit_edge:      ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3073

if.end.i3068:                                     ; preds = %if.then362
  %call2.i3065 = call ptr @strim(ptr noundef nonnull %buf.i3061) #6
  %call3.i3066 = call i32 @kstrtou8(ptr noundef %call2.i3065, i32 noundef 0, ptr noundef nonnull %var.i3062) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3066)
  %tobool4.not.i3067 = icmp eq i32 %call3.i3066, 0
  br i1 %tobool4.not.i3067, label %if.end8.i3071, label %do.end.i3070

do.end.i3070:                                     ; preds = %if.end.i3068
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3069 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef nonnull %buf.i3061, i32 noundef %call3.i3066) #9
  br label %nvram_read_u8.exit3073

if.end8.i3071:                                    ; preds = %if.end.i3068
  call void @__sanitizer_cov_trace_pc() #8
  %312 = ptrtoint ptr %var.i3062 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %var.i3062, align 1
  %314 = ptrtoint ptr %rssismc5g to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %313, ptr %rssismc5g, align 1
  br label %nvram_read_u8.exit3073

nvram_read_u8.exit3073:                           ; preds = %if.end8.i3071, %do.end.i3070, %if.then362.nvram_read_u8.exit3073_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3062) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3061) #6
  br label %if.end364

if.end364:                                        ; preds = %nvram_read_u8.exit3073, %if.end356.if.end364_crit_edge
  %315 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %sprom, align 4
  %conv366 = zext i8 %316 to i32
  %shl367 = shl nuw i32 1, %conv366
  %and368 = and i32 %shl367, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %if.end364.if.end372_crit_edge, label %if.then370

if.end364.if.end372_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end372

if.then370:                                       ; preds = %if.end364
  %rssismf5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 60
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3074) #6
  %317 = call ptr @memset(ptr %buf.i3074, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3075) #6
  %318 = ptrtoint ptr %var.i3075 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 -1, ptr %var.i3075, align 1, !annotation !557
  %call.i3076 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull %buf.i3074, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3076)
  %cmp.i3077 = icmp slt i32 %call.i3076, 0
  br i1 %cmp.i3077, label %if.then370.nvram_read_u8.exit3086_crit_edge, label %if.end.i3081

if.then370.nvram_read_u8.exit3086_crit_edge:      ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3086

if.end.i3081:                                     ; preds = %if.then370
  %call2.i3078 = call ptr @strim(ptr noundef nonnull %buf.i3074) #6
  %call3.i3079 = call i32 @kstrtou8(ptr noundef %call2.i3078, i32 noundef 0, ptr noundef nonnull %var.i3075) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3079)
  %tobool4.not.i3080 = icmp eq i32 %call3.i3079, 0
  br i1 %tobool4.not.i3080, label %if.end8.i3084, label %do.end.i3083

do.end.i3083:                                     ; preds = %if.end.i3081
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3082 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef nonnull %buf.i3074, i32 noundef %call3.i3079) #9
  br label %nvram_read_u8.exit3086

if.end8.i3084:                                    ; preds = %if.end.i3081
  call void @__sanitizer_cov_trace_pc() #8
  %319 = ptrtoint ptr %var.i3075 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %var.i3075, align 1
  %321 = ptrtoint ptr %rssismf5g to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %rssismf5g, align 1
  br label %nvram_read_u8.exit3086

nvram_read_u8.exit3086:                           ; preds = %if.end8.i3084, %do.end.i3083, %if.then370.nvram_read_u8.exit3086_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3075) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3074) #6
  br label %if.end372

if.end372:                                        ; preds = %nvram_read_u8.exit3086, %if.end364.if.end372_crit_edge
  %322 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %sprom, align 4
  %conv374 = zext i8 %323 to i32
  %shl375 = shl nuw i32 1, %conv374
  %and376 = and i32 %shl375, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %if.end372.if.end380_crit_edge, label %if.then378

if.end372.if.end380_crit_edge:                    ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end380

if.then378:                                       ; preds = %if.end372
  %tri2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3087) #6
  %324 = call ptr @memset(ptr %buf.i3087, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3088) #6
  %325 = ptrtoint ptr %var.i3088 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 -1, ptr %var.i3088, align 1, !annotation !557
  %call.i3089 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull %buf.i3087, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3089)
  %cmp.i3090 = icmp slt i32 %call.i3089, 0
  br i1 %cmp.i3090, label %if.then378.nvram_read_u8.exit3099_crit_edge, label %if.end.i3094

if.then378.nvram_read_u8.exit3099_crit_edge:      ; preds = %if.then378
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3099

if.end.i3094:                                     ; preds = %if.then378
  %call2.i3091 = call ptr @strim(ptr noundef nonnull %buf.i3087) #6
  %call3.i3092 = call i32 @kstrtou8(ptr noundef %call2.i3091, i32 noundef 0, ptr noundef nonnull %var.i3088) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3092)
  %tobool4.not.i3093 = icmp eq i32 %call3.i3092, 0
  br i1 %tobool4.not.i3093, label %if.end8.i3097, label %do.end.i3096

do.end.i3096:                                     ; preds = %if.end.i3094
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3095 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef nonnull %buf.i3087, i32 noundef %call3.i3092) #9
  br label %nvram_read_u8.exit3099

if.end8.i3097:                                    ; preds = %if.end.i3094
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %var.i3088 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %var.i3088, align 1
  %328 = ptrtoint ptr %tri2g to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %tri2g, align 1
  br label %nvram_read_u8.exit3099

nvram_read_u8.exit3099:                           ; preds = %if.end8.i3097, %do.end.i3096, %if.then378.nvram_read_u8.exit3099_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3088) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3087) #6
  br label %if.end380

if.end380:                                        ; preds = %nvram_read_u8.exit3099, %if.end372.if.end380_crit_edge
  %329 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %sprom, align 4
  %conv382 = zext i8 %330 to i32
  %shl383 = shl nuw i32 1, %conv382
  %and384 = and i32 %shl383, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %if.end380.if.end388_crit_edge, label %if.then386

if.end380.if.end388_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

if.then386:                                       ; preds = %if.end380
  %tri5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3100) #6
  %331 = call ptr @memset(ptr %buf.i3100, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3101) #6
  %332 = ptrtoint ptr %var.i3101 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -1, ptr %var.i3101, align 1, !annotation !557
  %call.i3102 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull %buf.i3100, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3102)
  %cmp.i3103 = icmp slt i32 %call.i3102, 0
  br i1 %cmp.i3103, label %if.then386.nvram_read_u8.exit3112_crit_edge, label %if.end.i3107

if.then386.nvram_read_u8.exit3112_crit_edge:      ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3112

if.end.i3107:                                     ; preds = %if.then386
  %call2.i3104 = call ptr @strim(ptr noundef nonnull %buf.i3100) #6
  %call3.i3105 = call i32 @kstrtou8(ptr noundef %call2.i3104, i32 noundef 0, ptr noundef nonnull %var.i3101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3105)
  %tobool4.not.i3106 = icmp eq i32 %call3.i3105, 0
  br i1 %tobool4.not.i3106, label %if.end8.i3110, label %do.end.i3109

do.end.i3109:                                     ; preds = %if.end.i3107
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef nonnull %buf.i3100, i32 noundef %call3.i3105) #9
  br label %nvram_read_u8.exit3112

if.end8.i3110:                                    ; preds = %if.end.i3107
  call void @__sanitizer_cov_trace_pc() #8
  %333 = ptrtoint ptr %var.i3101 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %var.i3101, align 1
  %335 = ptrtoint ptr %tri5g to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %334, ptr %tri5g, align 1
  br label %nvram_read_u8.exit3112

nvram_read_u8.exit3112:                           ; preds = %if.end8.i3110, %do.end.i3109, %if.then386.nvram_read_u8.exit3112_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3101) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3100) #6
  br label %if.end388

if.end388:                                        ; preds = %nvram_read_u8.exit3112, %if.end380.if.end388_crit_edge
  %336 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %sprom, align 4
  %conv390 = zext i8 %337 to i32
  %shl391 = shl nuw i32 1, %conv390
  %and392 = and i32 %shl391, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392)
  %tobool393.not = icmp eq i32 %and392, 0
  br i1 %tobool393.not, label %if.end388.if.end396_crit_edge, label %if.then394

if.end388.if.end396_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end396

if.then394:                                       ; preds = %if.end388
  %tri5gl = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3113) #6
  %338 = call ptr @memset(ptr %buf.i3113, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3114) #6
  %339 = ptrtoint ptr %var.i3114 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 -1, ptr %var.i3114, align 1, !annotation !557
  %call.i3115 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull %buf.i3113, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3115)
  %cmp.i3116 = icmp slt i32 %call.i3115, 0
  br i1 %cmp.i3116, label %if.then394.nvram_read_u8.exit3125_crit_edge, label %if.end.i3120

if.then394.nvram_read_u8.exit3125_crit_edge:      ; preds = %if.then394
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3125

if.end.i3120:                                     ; preds = %if.then394
  %call2.i3117 = call ptr @strim(ptr noundef nonnull %buf.i3113) #6
  %call3.i3118 = call i32 @kstrtou8(ptr noundef %call2.i3117, i32 noundef 0, ptr noundef nonnull %var.i3114) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3118)
  %tobool4.not.i3119 = icmp eq i32 %call3.i3118, 0
  br i1 %tobool4.not.i3119, label %if.end8.i3123, label %do.end.i3122

do.end.i3122:                                     ; preds = %if.end.i3120
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef nonnull %buf.i3113, i32 noundef %call3.i3118) #9
  br label %nvram_read_u8.exit3125

if.end8.i3123:                                    ; preds = %if.end.i3120
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %var.i3114 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %var.i3114, align 1
  %342 = ptrtoint ptr %tri5gl to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %tri5gl, align 1
  br label %nvram_read_u8.exit3125

nvram_read_u8.exit3125:                           ; preds = %if.end8.i3123, %do.end.i3122, %if.then394.nvram_read_u8.exit3125_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3114) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3113) #6
  br label %if.end396

if.end396:                                        ; preds = %nvram_read_u8.exit3125, %if.end388.if.end396_crit_edge
  %343 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %sprom, align 4
  %conv398 = zext i8 %344 to i32
  %shl399 = shl nuw i32 1, %conv398
  %and400 = and i32 %shl399, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and400)
  %tobool401.not = icmp eq i32 %and400, 0
  br i1 %tobool401.not, label %if.end396.if.end404_crit_edge, label %if.then402

if.end396.if.end404_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end404

if.then402:                                       ; preds = %if.end396
  %tri5gh = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 47
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3126) #6
  %345 = call ptr @memset(ptr %buf.i3126, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3127) #6
  %346 = ptrtoint ptr %var.i3127 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 -1, ptr %var.i3127, align 1, !annotation !557
  %call.i3128 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull %buf.i3126, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3128)
  %cmp.i3129 = icmp slt i32 %call.i3128, 0
  br i1 %cmp.i3129, label %if.then402.nvram_read_u8.exit3138_crit_edge, label %if.end.i3133

if.then402.nvram_read_u8.exit3138_crit_edge:      ; preds = %if.then402
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3138

if.end.i3133:                                     ; preds = %if.then402
  %call2.i3130 = call ptr @strim(ptr noundef nonnull %buf.i3126) #6
  %call3.i3131 = call i32 @kstrtou8(ptr noundef %call2.i3130, i32 noundef 0, ptr noundef nonnull %var.i3127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3131)
  %tobool4.not.i3132 = icmp eq i32 %call3.i3131, 0
  br i1 %tobool4.not.i3132, label %if.end8.i3136, label %do.end.i3135

do.end.i3135:                                     ; preds = %if.end.i3133
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef nonnull %buf.i3126, i32 noundef %call3.i3131) #9
  br label %nvram_read_u8.exit3138

if.end8.i3136:                                    ; preds = %if.end.i3133
  call void @__sanitizer_cov_trace_pc() #8
  %347 = ptrtoint ptr %var.i3127 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %var.i3127, align 1
  %349 = ptrtoint ptr %tri5gh to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %348, ptr %tri5gh, align 1
  br label %nvram_read_u8.exit3138

nvram_read_u8.exit3138:                           ; preds = %if.end8.i3136, %do.end.i3135, %if.then402.nvram_read_u8.exit3138_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3127) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3126) #6
  br label %if.end404

if.end404:                                        ; preds = %nvram_read_u8.exit3138, %if.end396.if.end404_crit_edge
  %350 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %sprom, align 4
  %conv406 = zext i8 %351 to i32
  %shl407 = shl nuw i32 1, %conv406
  %and408 = and i32 %shl407, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %if.end404.if.end412_crit_edge, label %if.then410

if.end404.if.end412_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end412

if.then410:                                       ; preds = %if.end404
  %rxpo2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 52
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3139) #6
  %352 = call ptr @memset(ptr %buf.i3139, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3140) #6
  %353 = ptrtoint ptr %var.i3140 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 -1, ptr %var.i3140, align 1, !annotation !557
  %call.i3141 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull %buf.i3139, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3141)
  %cmp.i3142 = icmp slt i32 %call.i3141, 0
  br i1 %cmp.i3142, label %if.then410.nvram_read_s8.exit3150_crit_edge, label %if.end.i3146

if.then410.nvram_read_s8.exit3150_crit_edge:      ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit3150

if.end.i3146:                                     ; preds = %if.then410
  %call2.i3143 = call ptr @strim(ptr noundef nonnull %buf.i3139) #6
  %call3.i3144 = call i32 @kstrtos8(ptr noundef %call2.i3143, i32 noundef 0, ptr noundef nonnull %var.i3140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3144)
  %tobool4.not.i3145 = icmp eq i32 %call3.i3144, 0
  br i1 %tobool4.not.i3145, label %if.end15.i3149, label %do.end.i3148

do.end.i3148:                                     ; preds = %if.end.i3146
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef nonnull %buf.i3139, i32 noundef %call3.i3144) #9
  br label %nvram_read_s8.exit3150

if.end15.i3149:                                   ; preds = %if.end.i3146
  call void @__sanitizer_cov_trace_pc() #8
  %354 = ptrtoint ptr %var.i3140 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %var.i3140, align 1
  %356 = ptrtoint ptr %rxpo2g to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %rxpo2g, align 1
  br label %nvram_read_s8.exit3150

nvram_read_s8.exit3150:                           ; preds = %if.end15.i3149, %do.end.i3148, %if.then410.nvram_read_s8.exit3150_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3140) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3139) #6
  br label %if.end412

if.end412:                                        ; preds = %nvram_read_s8.exit3150, %if.end404.if.end412_crit_edge
  %357 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %sprom, align 4
  %conv414 = zext i8 %358 to i32
  %shl415 = shl nuw i32 1, %conv414
  %and416 = and i32 %shl415, 1800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %if.end412.if.end420_crit_edge, label %if.then418

if.end412.if.end420_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end420

if.then418:                                       ; preds = %if.end412
  %rxpo5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3151) #6
  %359 = call ptr @memset(ptr %buf.i3151, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3152) #6
  %360 = ptrtoint ptr %var.i3152 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 -1, ptr %var.i3152, align 1, !annotation !557
  %call.i3153 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull %buf.i3151, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3153)
  %cmp.i3154 = icmp slt i32 %call.i3153, 0
  br i1 %cmp.i3154, label %if.then418.nvram_read_s8.exit3162_crit_edge, label %if.end.i3158

if.then418.nvram_read_s8.exit3162_crit_edge:      ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_s8.exit3162

if.end.i3158:                                     ; preds = %if.then418
  %call2.i3155 = call ptr @strim(ptr noundef nonnull %buf.i3151) #6
  %call3.i3156 = call i32 @kstrtos8(ptr noundef %call2.i3155, i32 noundef 0, ptr noundef nonnull %var.i3152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3156)
  %tobool4.not.i3157 = icmp eq i32 %call3.i3156, 0
  br i1 %tobool4.not.i3157, label %if.end15.i3161, label %do.end.i3160

do.end.i3160:                                     ; preds = %if.end.i3158
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef nonnull %buf.i3151, i32 noundef %call3.i3156) #9
  br label %nvram_read_s8.exit3162

if.end15.i3161:                                   ; preds = %if.end.i3158
  call void @__sanitizer_cov_trace_pc() #8
  %361 = ptrtoint ptr %var.i3152 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %var.i3152, align 1
  %363 = ptrtoint ptr %rxpo5g to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %rxpo5g, align 1
  br label %nvram_read_s8.exit3162

nvram_read_s8.exit3162:                           ; preds = %if.end15.i3161, %do.end.i3160, %if.then418.nvram_read_s8.exit3162_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3152) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3151) #6
  %364 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %364)
  %.pr4989 = load i8, ptr %sprom, align 4
  br label %if.end420

if.end420:                                        ; preds = %nvram_read_s8.exit3162, %if.end412.if.end420_crit_edge
  %365 = phi i8 [ %.pr4989, %nvram_read_s8.exit3162 ], [ %358, %if.end412.if.end420_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %365)
  %tobool425.not = icmp ult i8 %365, 4
  br i1 %tobool425.not, label %if.end420.if.end428_crit_edge, label %if.then426

if.end420.if.end428_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end428

if.then426:                                       ; preds = %if.end420
  %txchain = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 93
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3163) #6
  %366 = call ptr @memset(ptr %buf.i3163, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3164) #6
  %367 = ptrtoint ptr %var.i3164 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -1, ptr %var.i3164, align 1, !annotation !557
  %call.i3165 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull %buf.i3163, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3165)
  %cmp.i3166 = icmp slt i32 %call.i3165, 0
  br i1 %cmp.i3166, label %if.then426.nvram_read_u8.exit3176_crit_edge, label %if.end.i3170

if.then426.nvram_read_u8.exit3176_crit_edge:      ; preds = %if.then426
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3176

if.end.i3170:                                     ; preds = %if.then426
  %call2.i3167 = call ptr @strim(ptr noundef nonnull %buf.i3163) #6
  %call3.i3168 = call i32 @kstrtou8(ptr noundef %call2.i3167, i32 noundef 0, ptr noundef nonnull %var.i3164) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3168)
  %tobool4.not.i3169 = icmp eq i32 %call3.i3168, 0
  br i1 %tobool4.not.i3169, label %if.end8.i3173, label %do.end.i3172

do.end.i3172:                                     ; preds = %if.end.i3170
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef nonnull %buf.i3163, i32 noundef %call3.i3168) #9
  br label %nvram_read_u8.exit3176

if.end8.i3173:                                    ; preds = %if.end.i3170
  %368 = ptrtoint ptr %var.i3164 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %var.i3164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %369)
  %cmp12.i3174 = icmp eq i8 %369, 15
  br i1 %cmp12.i3174, label %if.end8.i3173.nvram_read_u8.exit3176_crit_edge, label %if.end15.i3175

if.end8.i3173.nvram_read_u8.exit3176_crit_edge:   ; preds = %if.end8.i3173
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3176

if.end15.i3175:                                   ; preds = %if.end8.i3173
  call void @__sanitizer_cov_trace_pc() #8
  %370 = ptrtoint ptr %txchain to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %369, ptr %txchain, align 1
  br label %nvram_read_u8.exit3176

nvram_read_u8.exit3176:                           ; preds = %if.end15.i3175, %if.end8.i3173.nvram_read_u8.exit3176_crit_edge, %do.end.i3172, %if.then426.nvram_read_u8.exit3176_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3164) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3163) #6
  br label %if.end428

if.end428:                                        ; preds = %nvram_read_u8.exit3176, %if.end420.if.end428_crit_edge
  %371 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %372)
  %tobool433.not = icmp ult i8 %372, 4
  br i1 %tobool433.not, label %if.end428.if.end444_crit_edge, label %if.then434

if.end428.if.end444_crit_edge:                    ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end444

if.then434:                                       ; preds = %if.end428
  %rxchain = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 94
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3177) #6
  %373 = call ptr @memset(ptr %buf.i3177, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3178) #6
  %374 = ptrtoint ptr %var.i3178 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 -1, ptr %var.i3178, align 1, !annotation !557
  %call.i3179 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull %buf.i3177, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3179)
  %cmp.i3180 = icmp slt i32 %call.i3179, 0
  br i1 %cmp.i3180, label %if.then434.if.end436_crit_edge, label %if.end.i3184

if.then434.if.end436_crit_edge:                   ; preds = %if.then434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end436

if.end.i3184:                                     ; preds = %if.then434
  %call2.i3181 = call ptr @strim(ptr noundef nonnull %buf.i3177) #6
  %call3.i3182 = call i32 @kstrtou8(ptr noundef %call2.i3181, i32 noundef 0, ptr noundef nonnull %var.i3178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3182)
  %tobool4.not.i3183 = icmp eq i32 %call3.i3182, 0
  br i1 %tobool4.not.i3183, label %if.end8.i3187, label %do.end.i3186

do.end.i3186:                                     ; preds = %if.end.i3184
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef nonnull %buf.i3177, i32 noundef %call3.i3182) #9
  br label %if.end436

if.end8.i3187:                                    ; preds = %if.end.i3184
  %375 = ptrtoint ptr %var.i3178 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %var.i3178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %376)
  %cmp12.i3188 = icmp eq i8 %376, 15
  br i1 %cmp12.i3188, label %if.end8.i3187.if.end436_crit_edge, label %if.end15.i3189

if.end8.i3187.if.end436_crit_edge:                ; preds = %if.end8.i3187
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end436

if.end15.i3189:                                   ; preds = %if.end8.i3187
  call void @__sanitizer_cov_trace_pc() #8
  %377 = ptrtoint ptr %rxchain to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %376, ptr %rxchain, align 1
  br label %if.end436

if.end436:                                        ; preds = %if.end15.i3189, %if.end8.i3187.if.end436_crit_edge, %do.end.i3186, %if.then434.if.end436_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3178) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3177) #6
  %378 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %378)
  %.pr4990 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr4990)
  %tobool441.not = icmp ult i8 %.pr4990, 4
  br i1 %tobool441.not, label %if.end436.if.end444_crit_edge, label %if.then442

if.end436.if.end444_crit_edge:                    ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end444

if.then442:                                       ; preds = %if.end436
  %antswitch = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 95
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3191) #6
  %379 = call ptr @memset(ptr %buf.i3191, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3192) #6
  %380 = ptrtoint ptr %var.i3192 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 -1, ptr %var.i3192, align 1, !annotation !557
  %call.i3193 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull %buf.i3191, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3193)
  %cmp.i3194 = icmp slt i32 %call.i3193, 0
  br i1 %cmp.i3194, label %if.then442.nvram_read_u8.exit3204_crit_edge, label %if.end.i3198

if.then442.nvram_read_u8.exit3204_crit_edge:      ; preds = %if.then442
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3204

if.end.i3198:                                     ; preds = %if.then442
  %call2.i3195 = call ptr @strim(ptr noundef nonnull %buf.i3191) #6
  %call3.i3196 = call i32 @kstrtou8(ptr noundef %call2.i3195, i32 noundef 0, ptr noundef nonnull %var.i3192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3196)
  %tobool4.not.i3197 = icmp eq i32 %call3.i3196, 0
  br i1 %tobool4.not.i3197, label %if.end8.i3201, label %do.end.i3200

do.end.i3200:                                     ; preds = %if.end.i3198
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef nonnull %buf.i3191, i32 noundef %call3.i3196) #9
  br label %nvram_read_u8.exit3204

if.end8.i3201:                                    ; preds = %if.end.i3198
  %381 = ptrtoint ptr %var.i3192 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %var.i3192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %382)
  %cmp12.i3202 = icmp eq i8 %382, -1
  br i1 %cmp12.i3202, label %if.end8.i3201.nvram_read_u8.exit3204_crit_edge, label %if.end15.i3203

if.end8.i3201.nvram_read_u8.exit3204_crit_edge:   ; preds = %if.end8.i3201
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3204

if.end15.i3203:                                   ; preds = %if.end8.i3201
  call void @__sanitizer_cov_trace_pc() #8
  %383 = ptrtoint ptr %antswitch to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %antswitch, align 1
  br label %nvram_read_u8.exit3204

nvram_read_u8.exit3204:                           ; preds = %if.end15.i3203, %if.end8.i3201.nvram_read_u8.exit3204_crit_edge, %do.end.i3200, %if.then442.nvram_read_u8.exit3204_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3192) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3191) #6
  br label %if.end444

if.end444:                                        ; preds = %nvram_read_u8.exit3204, %if.end436.if.end444_crit_edge, %if.end428.if.end444_crit_edge
  %384 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %sprom, align 4
  %conv446 = zext i8 %385 to i32
  %shl447 = shl nuw i32 1, %conv446
  %and448 = and i32 %shl447, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448)
  %tobool449.not = icmp eq i32 %and448, 0
  br i1 %tobool449.not, label %if.end444.if.end452_crit_edge, label %if.then450

if.end444.if.end452_crit_edge:                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end452

if.then450:                                       ; preds = %if.end444
  %fem = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3205) #6
  %386 = call ptr @memset(ptr %buf.i3205, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3206) #6
  %387 = ptrtoint ptr %var.i3206 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 -1, ptr %var.i3206, align 1, !annotation !557
  %call.i3207 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull %buf.i3205, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3207)
  %cmp.i3208 = icmp slt i32 %call.i3207, 0
  br i1 %cmp.i3208, label %if.then450.nvram_read_u8.exit3217_crit_edge, label %if.end.i3212

if.then450.nvram_read_u8.exit3217_crit_edge:      ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3217

if.end.i3212:                                     ; preds = %if.then450
  %call2.i3209 = call ptr @strim(ptr noundef nonnull %buf.i3205) #6
  %call3.i3210 = call i32 @kstrtou8(ptr noundef %call2.i3209, i32 noundef 0, ptr noundef nonnull %var.i3206) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3210)
  %tobool4.not.i3211 = icmp eq i32 %call3.i3210, 0
  br i1 %tobool4.not.i3211, label %if.end8.i3215, label %do.end.i3214

do.end.i3214:                                     ; preds = %if.end.i3212
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef nonnull %buf.i3205, i32 noundef %call3.i3210) #9
  br label %nvram_read_u8.exit3217

if.end8.i3215:                                    ; preds = %if.end.i3212
  call void @__sanitizer_cov_trace_pc() #8
  %388 = ptrtoint ptr %var.i3206 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %var.i3206, align 1
  %390 = ptrtoint ptr %fem to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %389, ptr %fem, align 1
  br label %nvram_read_u8.exit3217

nvram_read_u8.exit3217:                           ; preds = %if.end8.i3215, %do.end.i3214, %if.then450.nvram_read_u8.exit3217_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3206) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3205) #6
  br label %if.end452

if.end452:                                        ; preds = %nvram_read_u8.exit3217, %if.end444.if.end452_crit_edge
  %391 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %sprom, align 4
  %conv454 = zext i8 %392 to i32
  %shl455 = shl nuw i32 1, %conv454
  %and456 = and i32 %shl455, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and456)
  %tobool457.not = icmp eq i32 %and456, 0
  br i1 %tobool457.not, label %if.end452.if.end462_crit_edge, label %if.then458

if.end452.if.end462_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end462

if.then458:                                       ; preds = %if.end452
  %extpa_gain = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3218) #6
  %393 = call ptr @memset(ptr %buf.i3218, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3219) #6
  %394 = ptrtoint ptr %var.i3219 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 -1, ptr %var.i3219, align 1, !annotation !557
  %call.i3220 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull %buf.i3218, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3220)
  %cmp.i3221 = icmp slt i32 %call.i3220, 0
  br i1 %cmp.i3221, label %if.then458.nvram_read_u8.exit3230_crit_edge, label %if.end.i3225

if.then458.nvram_read_u8.exit3230_crit_edge:      ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3230

if.end.i3225:                                     ; preds = %if.then458
  %call2.i3222 = call ptr @strim(ptr noundef nonnull %buf.i3218) #6
  %call3.i3223 = call i32 @kstrtou8(ptr noundef %call2.i3222, i32 noundef 0, ptr noundef nonnull %var.i3219) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3223)
  %tobool4.not.i3224 = icmp eq i32 %call3.i3223, 0
  br i1 %tobool4.not.i3224, label %if.end8.i3228, label %do.end.i3227

do.end.i3227:                                     ; preds = %if.end.i3225
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef nonnull %buf.i3218, i32 noundef %call3.i3223) #9
  br label %nvram_read_u8.exit3230

if.end8.i3228:                                    ; preds = %if.end.i3225
  call void @__sanitizer_cov_trace_pc() #8
  %395 = ptrtoint ptr %var.i3219 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %var.i3219, align 1
  %397 = ptrtoint ptr %extpa_gain to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %extpa_gain, align 1
  br label %nvram_read_u8.exit3230

nvram_read_u8.exit3230:                           ; preds = %if.end8.i3228, %do.end.i3227, %if.then458.nvram_read_u8.exit3230_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3219) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3218) #6
  br label %if.end462

if.end462:                                        ; preds = %nvram_read_u8.exit3230, %if.end452.if.end462_crit_edge
  %398 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %sprom, align 4
  %conv464 = zext i8 %399 to i32
  %shl465 = shl nuw i32 1, %conv464
  %and466 = and i32 %shl465, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and466)
  %tobool467.not = icmp eq i32 %and466, 0
  br i1 %tobool467.not, label %if.end462.if.end472_crit_edge, label %if.then468

if.end462.if.end472_crit_edge:                    ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.then468:                                       ; preds = %if.end462
  %pdet_range = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3231) #6
  %400 = call ptr @memset(ptr %buf.i3231, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3232) #6
  %401 = ptrtoint ptr %var.i3232 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 -1, ptr %var.i3232, align 1, !annotation !557
  %call.i3233 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull %buf.i3231, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3233)
  %cmp.i3234 = icmp slt i32 %call.i3233, 0
  br i1 %cmp.i3234, label %if.then468.nvram_read_u8.exit3243_crit_edge, label %if.end.i3238

if.then468.nvram_read_u8.exit3243_crit_edge:      ; preds = %if.then468
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3243

if.end.i3238:                                     ; preds = %if.then468
  %call2.i3235 = call ptr @strim(ptr noundef nonnull %buf.i3231) #6
  %call3.i3236 = call i32 @kstrtou8(ptr noundef %call2.i3235, i32 noundef 0, ptr noundef nonnull %var.i3232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3236)
  %tobool4.not.i3237 = icmp eq i32 %call3.i3236, 0
  br i1 %tobool4.not.i3237, label %if.end8.i3241, label %do.end.i3240

do.end.i3240:                                     ; preds = %if.end.i3238
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.115, ptr noundef null, ptr noundef nonnull %buf.i3231, i32 noundef %call3.i3236) #9
  br label %nvram_read_u8.exit3243

if.end8.i3241:                                    ; preds = %if.end.i3238
  call void @__sanitizer_cov_trace_pc() #8
  %402 = ptrtoint ptr %var.i3232 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %var.i3232, align 1
  %404 = ptrtoint ptr %pdet_range to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %pdet_range, align 1
  br label %nvram_read_u8.exit3243

nvram_read_u8.exit3243:                           ; preds = %if.end8.i3241, %do.end.i3240, %if.then468.nvram_read_u8.exit3243_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3232) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3231) #6
  br label %if.end472

if.end472:                                        ; preds = %nvram_read_u8.exit3243, %if.end462.if.end472_crit_edge
  %405 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %sprom, align 4
  %conv474 = zext i8 %406 to i32
  %shl475 = shl nuw i32 1, %conv474
  %and476 = and i32 %shl475, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and476)
  %tobool477.not = icmp eq i32 %and476, 0
  br i1 %tobool477.not, label %if.end472.if.end482_crit_edge, label %if.then478

if.end472.if.end482_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end482

if.then478:                                       ; preds = %if.end472
  %tr_iso = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3244) #6
  %407 = call ptr @memset(ptr %buf.i3244, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3245) #6
  %408 = ptrtoint ptr %var.i3245 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 -1, ptr %var.i3245, align 1, !annotation !557
  %call.i3246 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull %buf.i3244, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3246)
  %cmp.i3247 = icmp slt i32 %call.i3246, 0
  br i1 %cmp.i3247, label %if.then478.nvram_read_u8.exit3256_crit_edge, label %if.end.i3251

if.then478.nvram_read_u8.exit3256_crit_edge:      ; preds = %if.then478
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3256

if.end.i3251:                                     ; preds = %if.then478
  %call2.i3248 = call ptr @strim(ptr noundef nonnull %buf.i3244) #6
  %call3.i3249 = call i32 @kstrtou8(ptr noundef %call2.i3248, i32 noundef 0, ptr noundef nonnull %var.i3245) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3249)
  %tobool4.not.i3250 = icmp eq i32 %call3.i3249, 0
  br i1 %tobool4.not.i3250, label %if.end8.i3254, label %do.end.i3253

do.end.i3253:                                     ; preds = %if.end.i3251
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef nonnull %buf.i3244, i32 noundef %call3.i3249) #9
  br label %nvram_read_u8.exit3256

if.end8.i3254:                                    ; preds = %if.end.i3251
  call void @__sanitizer_cov_trace_pc() #8
  %409 = ptrtoint ptr %var.i3245 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %var.i3245, align 1
  %411 = ptrtoint ptr %tr_iso to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %410, ptr %tr_iso, align 1
  br label %nvram_read_u8.exit3256

nvram_read_u8.exit3256:                           ; preds = %if.end8.i3254, %do.end.i3253, %if.then478.nvram_read_u8.exit3256_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3245) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3244) #6
  br label %if.end482

if.end482:                                        ; preds = %nvram_read_u8.exit3256, %if.end472.if.end482_crit_edge
  %412 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %sprom, align 4
  %conv484 = zext i8 %413 to i32
  %shl485 = shl nuw i32 1, %conv484
  %and486 = and i32 %shl485, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and486)
  %tobool487.not = icmp eq i32 %and486, 0
  br i1 %tobool487.not, label %if.end482.if.end492_crit_edge, label %if.then488

if.end482.if.end492_crit_edge:                    ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end492

if.then488:                                       ; preds = %if.end482
  %antswlut = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3257) #6
  %414 = call ptr @memset(ptr %buf.i3257, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3258) #6
  %415 = ptrtoint ptr %var.i3258 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 -1, ptr %var.i3258, align 1, !annotation !557
  %call.i3259 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull %buf.i3257, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3259)
  %cmp.i3260 = icmp slt i32 %call.i3259, 0
  br i1 %cmp.i3260, label %if.then488.nvram_read_u8.exit3269_crit_edge, label %if.end.i3264

if.then488.nvram_read_u8.exit3269_crit_edge:      ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3269

if.end.i3264:                                     ; preds = %if.then488
  %call2.i3261 = call ptr @strim(ptr noundef nonnull %buf.i3257) #6
  %call3.i3262 = call i32 @kstrtou8(ptr noundef %call2.i3261, i32 noundef 0, ptr noundef nonnull %var.i3258) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3262)
  %tobool4.not.i3263 = icmp eq i32 %call3.i3262, 0
  br i1 %tobool4.not.i3263, label %if.end8.i3267, label %do.end.i3266

do.end.i3266:                                     ; preds = %if.end.i3264
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.117, ptr noundef null, ptr noundef nonnull %buf.i3257, i32 noundef %call3.i3262) #9
  br label %nvram_read_u8.exit3269

if.end8.i3267:                                    ; preds = %if.end.i3264
  call void @__sanitizer_cov_trace_pc() #8
  %416 = ptrtoint ptr %var.i3258 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %var.i3258, align 1
  %418 = ptrtoint ptr %antswlut to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %417, ptr %antswlut, align 1
  br label %nvram_read_u8.exit3269

nvram_read_u8.exit3269:                           ; preds = %if.end8.i3267, %do.end.i3266, %if.then488.nvram_read_u8.exit3269_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3258) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3257) #6
  br label %if.end492

if.end492:                                        ; preds = %nvram_read_u8.exit3269, %if.end482.if.end492_crit_edge
  %419 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %sprom, align 4
  %conv494 = zext i8 %420 to i32
  %shl495 = shl nuw i32 1, %conv494
  %and496 = and i32 %shl495, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and496)
  %tobool497.not = icmp eq i32 %and496, 0
  br i1 %tobool497.not, label %if.end492.if.end502_crit_edge, label %if.then498

if.end492.if.end502_crit_edge:                    ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end502

if.then498:                                       ; preds = %if.end492
  %ghz5 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3270) #6
  %421 = call ptr @memset(ptr %buf.i3270, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3271) #6
  %422 = ptrtoint ptr %var.i3271 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 -1, ptr %var.i3271, align 1, !annotation !557
  %call.i3272 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull %buf.i3270, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3272)
  %cmp.i3273 = icmp slt i32 %call.i3272, 0
  br i1 %cmp.i3273, label %if.then498.nvram_read_u8.exit3282_crit_edge, label %if.end.i3277

if.then498.nvram_read_u8.exit3282_crit_edge:      ; preds = %if.then498
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3282

if.end.i3277:                                     ; preds = %if.then498
  %call2.i3274 = call ptr @strim(ptr noundef nonnull %buf.i3270) #6
  %call3.i3275 = call i32 @kstrtou8(ptr noundef %call2.i3274, i32 noundef 0, ptr noundef nonnull %var.i3271) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3275)
  %tobool4.not.i3276 = icmp eq i32 %call3.i3275, 0
  br i1 %tobool4.not.i3276, label %if.end8.i3280, label %do.end.i3279

do.end.i3279:                                     ; preds = %if.end.i3277
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef nonnull %buf.i3270, i32 noundef %call3.i3275) #9
  br label %nvram_read_u8.exit3282

if.end8.i3280:                                    ; preds = %if.end.i3277
  call void @__sanitizer_cov_trace_pc() #8
  %423 = ptrtoint ptr %var.i3271 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %var.i3271, align 1
  %425 = ptrtoint ptr %ghz5 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %ghz5, align 1
  br label %nvram_read_u8.exit3282

nvram_read_u8.exit3282:                           ; preds = %if.end8.i3280, %do.end.i3279, %if.then498.nvram_read_u8.exit3282_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3271) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3270) #6
  br label %if.end502

if.end502:                                        ; preds = %nvram_read_u8.exit3282, %if.end492.if.end502_crit_edge
  %426 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %sprom, align 4
  %conv504 = zext i8 %427 to i32
  %shl505 = shl nuw i32 1, %conv504
  %and506 = and i32 %shl505, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and506)
  %tobool507.not = icmp eq i32 %and506, 0
  br i1 %tobool507.not, label %if.end502.if.end513_crit_edge, label %if.then508

if.end502.if.end513_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end513

if.then508:                                       ; preds = %if.end502
  %extpa_gain511 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3283) #6
  %428 = call ptr @memset(ptr %buf.i3283, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3284) #6
  %429 = ptrtoint ptr %var.i3284 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 -1, ptr %var.i3284, align 1, !annotation !557
  %call.i3285 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull %buf.i3283, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3285)
  %cmp.i3286 = icmp slt i32 %call.i3285, 0
  br i1 %cmp.i3286, label %if.then508.nvram_read_u8.exit3295_crit_edge, label %if.end.i3290

if.then508.nvram_read_u8.exit3295_crit_edge:      ; preds = %if.then508
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3295

if.end.i3290:                                     ; preds = %if.then508
  %call2.i3287 = call ptr @strim(ptr noundef nonnull %buf.i3283) #6
  %call3.i3288 = call i32 @kstrtou8(ptr noundef %call2.i3287, i32 noundef 0, ptr noundef nonnull %var.i3284) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3288)
  %tobool4.not.i3289 = icmp eq i32 %call3.i3288, 0
  br i1 %tobool4.not.i3289, label %if.end8.i3293, label %do.end.i3292

do.end.i3292:                                     ; preds = %if.end.i3290
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef nonnull %buf.i3283, i32 noundef %call3.i3288) #9
  br label %nvram_read_u8.exit3295

if.end8.i3293:                                    ; preds = %if.end.i3290
  call void @__sanitizer_cov_trace_pc() #8
  %430 = ptrtoint ptr %var.i3284 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %var.i3284, align 1
  %432 = ptrtoint ptr %extpa_gain511 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %431, ptr %extpa_gain511, align 1
  br label %nvram_read_u8.exit3295

nvram_read_u8.exit3295:                           ; preds = %if.end8.i3293, %do.end.i3292, %if.then508.nvram_read_u8.exit3295_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3284) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3283) #6
  br label %if.end513

if.end513:                                        ; preds = %nvram_read_u8.exit3295, %if.end502.if.end513_crit_edge
  %433 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %sprom, align 4
  %conv515 = zext i8 %434 to i32
  %shl516 = shl nuw i32 1, %conv515
  %and517 = and i32 %shl516, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and517)
  %tobool518.not = icmp eq i32 %and517, 0
  br i1 %tobool518.not, label %if.end513.if.end524_crit_edge, label %if.then519

if.end513.if.end524_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end524

if.then519:                                       ; preds = %if.end513
  %pdet_range522 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3296) #6
  %435 = call ptr @memset(ptr %buf.i3296, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3297) #6
  %436 = ptrtoint ptr %var.i3297 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 -1, ptr %var.i3297, align 1, !annotation !557
  %call.i3298 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull %buf.i3296, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3298)
  %cmp.i3299 = icmp slt i32 %call.i3298, 0
  br i1 %cmp.i3299, label %if.then519.nvram_read_u8.exit3308_crit_edge, label %if.end.i3303

if.then519.nvram_read_u8.exit3308_crit_edge:      ; preds = %if.then519
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3308

if.end.i3303:                                     ; preds = %if.then519
  %call2.i3300 = call ptr @strim(ptr noundef nonnull %buf.i3296) #6
  %call3.i3301 = call i32 @kstrtou8(ptr noundef %call2.i3300, i32 noundef 0, ptr noundef nonnull %var.i3297) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3301)
  %tobool4.not.i3302 = icmp eq i32 %call3.i3301, 0
  br i1 %tobool4.not.i3302, label %if.end8.i3306, label %do.end.i3305

do.end.i3305:                                     ; preds = %if.end.i3303
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.120, ptr noundef null, ptr noundef nonnull %buf.i3296, i32 noundef %call3.i3301) #9
  br label %nvram_read_u8.exit3308

if.end8.i3306:                                    ; preds = %if.end.i3303
  call void @__sanitizer_cov_trace_pc() #8
  %437 = ptrtoint ptr %var.i3297 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %var.i3297, align 1
  %439 = ptrtoint ptr %pdet_range522 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %pdet_range522, align 1
  br label %nvram_read_u8.exit3308

nvram_read_u8.exit3308:                           ; preds = %if.end8.i3306, %do.end.i3305, %if.then519.nvram_read_u8.exit3308_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3297) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3296) #6
  br label %if.end524

if.end524:                                        ; preds = %nvram_read_u8.exit3308, %if.end513.if.end524_crit_edge
  %440 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %sprom, align 4
  %conv526 = zext i8 %441 to i32
  %shl527 = shl nuw i32 1, %conv526
  %and528 = and i32 %shl527, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528)
  %tobool529.not = icmp eq i32 %and528, 0
  br i1 %tobool529.not, label %if.end524.if.end535_crit_edge, label %if.then530

if.end524.if.end535_crit_edge:                    ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end535

if.then530:                                       ; preds = %if.end524
  %tr_iso533 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3309) #6
  %442 = call ptr @memset(ptr %buf.i3309, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3310) #6
  %443 = ptrtoint ptr %var.i3310 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 -1, ptr %var.i3310, align 1, !annotation !557
  %call.i3311 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull %buf.i3309, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3311)
  %cmp.i3312 = icmp slt i32 %call.i3311, 0
  br i1 %cmp.i3312, label %if.then530.nvram_read_u8.exit3321_crit_edge, label %if.end.i3316

if.then530.nvram_read_u8.exit3321_crit_edge:      ; preds = %if.then530
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3321

if.end.i3316:                                     ; preds = %if.then530
  %call2.i3313 = call ptr @strim(ptr noundef nonnull %buf.i3309) #6
  %call3.i3314 = call i32 @kstrtou8(ptr noundef %call2.i3313, i32 noundef 0, ptr noundef nonnull %var.i3310) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3314)
  %tobool4.not.i3315 = icmp eq i32 %call3.i3314, 0
  br i1 %tobool4.not.i3315, label %if.end8.i3319, label %do.end.i3318

do.end.i3318:                                     ; preds = %if.end.i3316
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef nonnull %buf.i3309, i32 noundef %call3.i3314) #9
  br label %nvram_read_u8.exit3321

if.end8.i3319:                                    ; preds = %if.end.i3316
  call void @__sanitizer_cov_trace_pc() #8
  %444 = ptrtoint ptr %var.i3310 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %var.i3310, align 1
  %446 = ptrtoint ptr %tr_iso533 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %tr_iso533, align 1
  br label %nvram_read_u8.exit3321

nvram_read_u8.exit3321:                           ; preds = %if.end8.i3319, %do.end.i3318, %if.then530.nvram_read_u8.exit3321_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3310) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3309) #6
  br label %if.end535

if.end535:                                        ; preds = %nvram_read_u8.exit3321, %if.end524.if.end535_crit_edge
  %447 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %sprom, align 4
  %conv537 = zext i8 %448 to i32
  %shl538 = shl nuw i32 1, %conv537
  %and539 = and i32 %shl538, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and539)
  %tobool540.not = icmp eq i32 %and539, 0
  br i1 %tobool540.not, label %if.end535.if.end546_crit_edge, label %if.then541

if.end535.if.end546_crit_edge:                    ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end546

if.then541:                                       ; preds = %if.end535
  %antswlut544 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 76, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3322) #6
  %449 = call ptr @memset(ptr %buf.i3322, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3323) #6
  %450 = ptrtoint ptr %var.i3323 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 -1, ptr %var.i3323, align 1, !annotation !557
  %call.i3324 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull %buf.i3322, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3324)
  %cmp.i3325 = icmp slt i32 %call.i3324, 0
  br i1 %cmp.i3325, label %if.then541.nvram_read_u8.exit3334_crit_edge, label %if.end.i3329

if.then541.nvram_read_u8.exit3334_crit_edge:      ; preds = %if.then541
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3334

if.end.i3329:                                     ; preds = %if.then541
  %call2.i3326 = call ptr @strim(ptr noundef nonnull %buf.i3322) #6
  %call3.i3327 = call i32 @kstrtou8(ptr noundef %call2.i3326, i32 noundef 0, ptr noundef nonnull %var.i3323) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3327)
  %tobool4.not.i3328 = icmp eq i32 %call3.i3327, 0
  br i1 %tobool4.not.i3328, label %if.end8.i3332, label %do.end.i3331

do.end.i3331:                                     ; preds = %if.end.i3329
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef nonnull %buf.i3322, i32 noundef %call3.i3327) #9
  br label %nvram_read_u8.exit3334

if.end8.i3332:                                    ; preds = %if.end.i3329
  call void @__sanitizer_cov_trace_pc() #8
  %451 = ptrtoint ptr %var.i3323 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %var.i3323, align 1
  %453 = ptrtoint ptr %antswlut544 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %antswlut544, align 1
  br label %nvram_read_u8.exit3334

nvram_read_u8.exit3334:                           ; preds = %if.end8.i3332, %do.end.i3331, %if.then541.nvram_read_u8.exit3334_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3323) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3322) #6
  br label %if.end546

if.end546:                                        ; preds = %nvram_read_u8.exit3334, %if.end535.if.end546_crit_edge
  %454 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %sprom, align 4
  %conv548 = zext i8 %455 to i32
  %shl549 = shl nuw i32 1, %conv548
  %and550 = and i32 %shl549, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and550)
  %tobool551.not = icmp eq i32 %and550, 0
  br i1 %tobool551.not, label %if.end546.if.end554_crit_edge, label %if.then552

if.end546.if.end554_crit_edge:                    ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end554

if.then552:                                       ; preds = %if.end546
  %txpid2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 48
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3335) #6
  %456 = call ptr @memset(ptr %buf.i3335, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3336) #6
  %457 = ptrtoint ptr %var.i3336 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 -1, ptr %var.i3336, align 1, !annotation !557
  %call.i3337 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull %buf.i3335, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3337)
  %cmp.i3338 = icmp slt i32 %call.i3337, 0
  br i1 %cmp.i3338, label %if.then552.nvram_read_u8.exit3347_crit_edge, label %if.end.i3342

if.then552.nvram_read_u8.exit3347_crit_edge:      ; preds = %if.then552
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3347

if.end.i3342:                                     ; preds = %if.then552
  %call2.i3339 = call ptr @strim(ptr noundef nonnull %buf.i3335) #6
  %call3.i3340 = call i32 @kstrtou8(ptr noundef %call2.i3339, i32 noundef 0, ptr noundef nonnull %var.i3336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3340)
  %tobool4.not.i3341 = icmp eq i32 %call3.i3340, 0
  br i1 %tobool4.not.i3341, label %if.end8.i3345, label %do.end.i3344

do.end.i3344:                                     ; preds = %if.end.i3342
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef nonnull %buf.i3335, i32 noundef %call3.i3340) #9
  br label %nvram_read_u8.exit3347

if.end8.i3345:                                    ; preds = %if.end.i3342
  call void @__sanitizer_cov_trace_pc() #8
  %458 = ptrtoint ptr %var.i3336 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %var.i3336, align 1
  %460 = ptrtoint ptr %txpid2g to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %459, ptr %txpid2g, align 1
  br label %nvram_read_u8.exit3347

nvram_read_u8.exit3347:                           ; preds = %if.end8.i3345, %do.end.i3344, %if.then552.nvram_read_u8.exit3347_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3336) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3335) #6
  br label %if.end554

if.end554:                                        ; preds = %nvram_read_u8.exit3347, %if.end546.if.end554_crit_edge
  %461 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %sprom, align 4
  %conv556 = zext i8 %462 to i32
  %shl557 = shl nuw i32 1, %conv556
  %and558 = and i32 %shl557, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and558)
  %tobool559.not = icmp eq i32 %and558, 0
  br i1 %tobool559.not, label %if.end554.if.end564_crit_edge, label %if.then560

if.end554.if.end564_crit_edge:                    ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end564

if.then560:                                       ; preds = %if.end554
  %arrayidx562 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 48, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3348) #6
  %463 = call ptr @memset(ptr %buf.i3348, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3349) #6
  %464 = ptrtoint ptr %var.i3349 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 -1, ptr %var.i3349, align 1, !annotation !557
  %call.i3350 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull %buf.i3348, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3350)
  %cmp.i3351 = icmp slt i32 %call.i3350, 0
  br i1 %cmp.i3351, label %if.then560.nvram_read_u8.exit3360_crit_edge, label %if.end.i3355

if.then560.nvram_read_u8.exit3360_crit_edge:      ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3360

if.end.i3355:                                     ; preds = %if.then560
  %call2.i3352 = call ptr @strim(ptr noundef nonnull %buf.i3348) #6
  %call3.i3353 = call i32 @kstrtou8(ptr noundef %call2.i3352, i32 noundef 0, ptr noundef nonnull %var.i3349) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3353)
  %tobool4.not.i3354 = icmp eq i32 %call3.i3353, 0
  br i1 %tobool4.not.i3354, label %if.end8.i3358, label %do.end.i3357

do.end.i3357:                                     ; preds = %if.end.i3355
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.124, ptr noundef null, ptr noundef nonnull %buf.i3348, i32 noundef %call3.i3353) #9
  br label %nvram_read_u8.exit3360

if.end8.i3358:                                    ; preds = %if.end.i3355
  call void @__sanitizer_cov_trace_pc() #8
  %465 = ptrtoint ptr %var.i3349 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %var.i3349, align 1
  %467 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %466, ptr %arrayidx562, align 1
  br label %nvram_read_u8.exit3360

nvram_read_u8.exit3360:                           ; preds = %if.end8.i3358, %do.end.i3357, %if.then560.nvram_read_u8.exit3360_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3349) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3348) #6
  br label %if.end564

if.end564:                                        ; preds = %nvram_read_u8.exit3360, %if.end554.if.end564_crit_edge
  %468 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %sprom, align 4
  %conv566 = zext i8 %469 to i32
  %shl567 = shl nuw i32 1, %conv566
  %and568 = and i32 %shl567, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and568)
  %tobool569.not = icmp eq i32 %and568, 0
  br i1 %tobool569.not, label %if.end564.if.end574_crit_edge, label %if.then570

if.end564.if.end574_crit_edge:                    ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end574

if.then570:                                       ; preds = %if.end564
  %arrayidx572 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 48, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3361) #6
  %470 = call ptr @memset(ptr %buf.i3361, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3362) #6
  %471 = ptrtoint ptr %var.i3362 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 -1, ptr %var.i3362, align 1, !annotation !557
  %call.i3363 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull %buf.i3361, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3363)
  %cmp.i3364 = icmp slt i32 %call.i3363, 0
  br i1 %cmp.i3364, label %if.then570.nvram_read_u8.exit3373_crit_edge, label %if.end.i3368

if.then570.nvram_read_u8.exit3373_crit_edge:      ; preds = %if.then570
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3373

if.end.i3368:                                     ; preds = %if.then570
  %call2.i3365 = call ptr @strim(ptr noundef nonnull %buf.i3361) #6
  %call3.i3366 = call i32 @kstrtou8(ptr noundef %call2.i3365, i32 noundef 0, ptr noundef nonnull %var.i3362) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3366)
  %tobool4.not.i3367 = icmp eq i32 %call3.i3366, 0
  br i1 %tobool4.not.i3367, label %if.end8.i3371, label %do.end.i3370

do.end.i3370:                                     ; preds = %if.end.i3368
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef nonnull %buf.i3361, i32 noundef %call3.i3366) #9
  br label %nvram_read_u8.exit3373

if.end8.i3371:                                    ; preds = %if.end.i3368
  call void @__sanitizer_cov_trace_pc() #8
  %472 = ptrtoint ptr %var.i3362 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %var.i3362, align 1
  %474 = ptrtoint ptr %arrayidx572 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 %473, ptr %arrayidx572, align 1
  br label %nvram_read_u8.exit3373

nvram_read_u8.exit3373:                           ; preds = %if.end8.i3371, %do.end.i3370, %if.then570.nvram_read_u8.exit3373_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3362) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3361) #6
  br label %if.end574

if.end574:                                        ; preds = %nvram_read_u8.exit3373, %if.end564.if.end574_crit_edge
  %475 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %sprom, align 4
  %conv576 = zext i8 %476 to i32
  %shl577 = shl nuw i32 1, %conv576
  %and578 = and i32 %shl577, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and578)
  %tobool579.not = icmp eq i32 %and578, 0
  br i1 %tobool579.not, label %if.end574.if.end584_crit_edge, label %if.then580

if.end574.if.end584_crit_edge:                    ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end584

if.then580:                                       ; preds = %if.end574
  %arrayidx582 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 48, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3374) #6
  %477 = call ptr @memset(ptr %buf.i3374, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3375) #6
  %478 = ptrtoint ptr %var.i3375 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 -1, ptr %var.i3375, align 1, !annotation !557
  %call.i3376 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull %buf.i3374, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3376)
  %cmp.i3377 = icmp slt i32 %call.i3376, 0
  br i1 %cmp.i3377, label %if.then580.nvram_read_u8.exit3386_crit_edge, label %if.end.i3381

if.then580.nvram_read_u8.exit3386_crit_edge:      ; preds = %if.then580
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3386

if.end.i3381:                                     ; preds = %if.then580
  %call2.i3378 = call ptr @strim(ptr noundef nonnull %buf.i3374) #6
  %call3.i3379 = call i32 @kstrtou8(ptr noundef %call2.i3378, i32 noundef 0, ptr noundef nonnull %var.i3375) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3379)
  %tobool4.not.i3380 = icmp eq i32 %call3.i3379, 0
  br i1 %tobool4.not.i3380, label %if.end8.i3384, label %do.end.i3383

do.end.i3383:                                     ; preds = %if.end.i3381
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef nonnull %buf.i3374, i32 noundef %call3.i3379) #9
  br label %nvram_read_u8.exit3386

if.end8.i3384:                                    ; preds = %if.end.i3381
  call void @__sanitizer_cov_trace_pc() #8
  %479 = ptrtoint ptr %var.i3375 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %var.i3375, align 1
  %481 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %480, ptr %arrayidx582, align 1
  br label %nvram_read_u8.exit3386

nvram_read_u8.exit3386:                           ; preds = %if.end8.i3384, %do.end.i3383, %if.then580.nvram_read_u8.exit3386_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3375) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3374) #6
  br label %if.end584

if.end584:                                        ; preds = %nvram_read_u8.exit3386, %if.end574.if.end584_crit_edge
  %482 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %sprom, align 4
  %conv586 = zext i8 %483 to i32
  %shl587 = shl nuw i32 1, %conv586
  %and588 = and i32 %shl587, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and588)
  %tobool589.not = icmp eq i32 %and588, 0
  br i1 %tobool589.not, label %if.end584.if.end593_crit_edge, label %if.then590

if.end584.if.end593_crit_edge:                    ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end593

if.then590:                                       ; preds = %if.end584
  %txpid5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 50
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3387) #6
  %484 = call ptr @memset(ptr %buf.i3387, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3388) #6
  %485 = ptrtoint ptr %var.i3388 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 -1, ptr %var.i3388, align 1, !annotation !557
  %call.i3389 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull %buf.i3387, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3389)
  %cmp.i3390 = icmp slt i32 %call.i3389, 0
  br i1 %cmp.i3390, label %if.then590.nvram_read_u8.exit3399_crit_edge, label %if.end.i3394

if.then590.nvram_read_u8.exit3399_crit_edge:      ; preds = %if.then590
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3399

if.end.i3394:                                     ; preds = %if.then590
  %call2.i3391 = call ptr @strim(ptr noundef nonnull %buf.i3387) #6
  %call3.i3392 = call i32 @kstrtou8(ptr noundef %call2.i3391, i32 noundef 0, ptr noundef nonnull %var.i3388) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3392)
  %tobool4.not.i3393 = icmp eq i32 %call3.i3392, 0
  br i1 %tobool4.not.i3393, label %if.end8.i3397, label %do.end.i3396

do.end.i3396:                                     ; preds = %if.end.i3394
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef nonnull %buf.i3387, i32 noundef %call3.i3392) #9
  br label %nvram_read_u8.exit3399

if.end8.i3397:                                    ; preds = %if.end.i3394
  call void @__sanitizer_cov_trace_pc() #8
  %486 = ptrtoint ptr %var.i3388 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %var.i3388, align 1
  %488 = ptrtoint ptr %txpid5g to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %487, ptr %txpid5g, align 1
  br label %nvram_read_u8.exit3399

nvram_read_u8.exit3399:                           ; preds = %if.end8.i3397, %do.end.i3396, %if.then590.nvram_read_u8.exit3399_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3388) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3387) #6
  br label %if.end593

if.end593:                                        ; preds = %nvram_read_u8.exit3399, %if.end584.if.end593_crit_edge
  %489 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %sprom, align 4
  %conv595 = zext i8 %490 to i32
  %shl596 = shl nuw i32 1, %conv595
  %and597 = and i32 %shl596, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and597)
  %tobool598.not = icmp eq i32 %and597, 0
  br i1 %tobool598.not, label %if.end593.if.end603_crit_edge, label %if.then599

if.end593.if.end603_crit_edge:                    ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end603

if.then599:                                       ; preds = %if.end593
  %arrayidx601 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 50, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3400) #6
  %491 = call ptr @memset(ptr %buf.i3400, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3401) #6
  %492 = ptrtoint ptr %var.i3401 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 -1, ptr %var.i3401, align 1, !annotation !557
  %call.i3402 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %buf.i3400, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3402)
  %cmp.i3403 = icmp slt i32 %call.i3402, 0
  br i1 %cmp.i3403, label %if.then599.nvram_read_u8.exit3412_crit_edge, label %if.end.i3407

if.then599.nvram_read_u8.exit3412_crit_edge:      ; preds = %if.then599
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3412

if.end.i3407:                                     ; preds = %if.then599
  %call2.i3404 = call ptr @strim(ptr noundef nonnull %buf.i3400) #6
  %call3.i3405 = call i32 @kstrtou8(ptr noundef %call2.i3404, i32 noundef 0, ptr noundef nonnull %var.i3401) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3405)
  %tobool4.not.i3406 = icmp eq i32 %call3.i3405, 0
  br i1 %tobool4.not.i3406, label %if.end8.i3410, label %do.end.i3409

do.end.i3409:                                     ; preds = %if.end.i3407
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef nonnull %buf.i3400, i32 noundef %call3.i3405) #9
  br label %nvram_read_u8.exit3412

if.end8.i3410:                                    ; preds = %if.end.i3407
  call void @__sanitizer_cov_trace_pc() #8
  %493 = ptrtoint ptr %var.i3401 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %var.i3401, align 1
  %495 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 %494, ptr %arrayidx601, align 1
  br label %nvram_read_u8.exit3412

nvram_read_u8.exit3412:                           ; preds = %if.end8.i3410, %do.end.i3409, %if.then599.nvram_read_u8.exit3412_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3401) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3400) #6
  br label %if.end603

if.end603:                                        ; preds = %nvram_read_u8.exit3412, %if.end593.if.end603_crit_edge
  %496 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %sprom, align 4
  %conv605 = zext i8 %497 to i32
  %shl606 = shl nuw i32 1, %conv605
  %and607 = and i32 %shl606, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and607)
  %tobool608.not = icmp eq i32 %and607, 0
  br i1 %tobool608.not, label %if.end603.if.end613_crit_edge, label %if.then609

if.end603.if.end613_crit_edge:                    ; preds = %if.end603
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end613

if.then609:                                       ; preds = %if.end603
  %arrayidx611 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 50, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3413) #6
  %498 = call ptr @memset(ptr %buf.i3413, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3414) #6
  %499 = ptrtoint ptr %var.i3414 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 -1, ptr %var.i3414, align 1, !annotation !557
  %call.i3415 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull %buf.i3413, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3415)
  %cmp.i3416 = icmp slt i32 %call.i3415, 0
  br i1 %cmp.i3416, label %if.then609.nvram_read_u8.exit3425_crit_edge, label %if.end.i3420

if.then609.nvram_read_u8.exit3425_crit_edge:      ; preds = %if.then609
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3425

if.end.i3420:                                     ; preds = %if.then609
  %call2.i3417 = call ptr @strim(ptr noundef nonnull %buf.i3413) #6
  %call3.i3418 = call i32 @kstrtou8(ptr noundef %call2.i3417, i32 noundef 0, ptr noundef nonnull %var.i3414) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3418)
  %tobool4.not.i3419 = icmp eq i32 %call3.i3418, 0
  br i1 %tobool4.not.i3419, label %if.end8.i3423, label %do.end.i3422

do.end.i3422:                                     ; preds = %if.end.i3420
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef nonnull %buf.i3413, i32 noundef %call3.i3418) #9
  br label %nvram_read_u8.exit3425

if.end8.i3423:                                    ; preds = %if.end.i3420
  call void @__sanitizer_cov_trace_pc() #8
  %500 = ptrtoint ptr %var.i3414 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %var.i3414, align 1
  %502 = ptrtoint ptr %arrayidx611 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %501, ptr %arrayidx611, align 1
  br label %nvram_read_u8.exit3425

nvram_read_u8.exit3425:                           ; preds = %if.end8.i3423, %do.end.i3422, %if.then609.nvram_read_u8.exit3425_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3414) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3413) #6
  br label %if.end613

if.end613:                                        ; preds = %nvram_read_u8.exit3425, %if.end603.if.end613_crit_edge
  %503 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %sprom, align 4
  %conv615 = zext i8 %504 to i32
  %shl616 = shl nuw i32 1, %conv615
  %and617 = and i32 %shl616, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and617)
  %tobool618.not = icmp eq i32 %and617, 0
  br i1 %tobool618.not, label %if.end613.if.end623_crit_edge, label %if.then619

if.end613.if.end623_crit_edge:                    ; preds = %if.end613
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end623

if.then619:                                       ; preds = %if.end613
  %arrayidx621 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 50, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3426) #6
  %505 = call ptr @memset(ptr %buf.i3426, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3427) #6
  %506 = ptrtoint ptr %var.i3427 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 -1, ptr %var.i3427, align 1, !annotation !557
  %call.i3428 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull %buf.i3426, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3428)
  %cmp.i3429 = icmp slt i32 %call.i3428, 0
  br i1 %cmp.i3429, label %if.then619.nvram_read_u8.exit3438_crit_edge, label %if.end.i3433

if.then619.nvram_read_u8.exit3438_crit_edge:      ; preds = %if.then619
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3438

if.end.i3433:                                     ; preds = %if.then619
  %call2.i3430 = call ptr @strim(ptr noundef nonnull %buf.i3426) #6
  %call3.i3431 = call i32 @kstrtou8(ptr noundef %call2.i3430, i32 noundef 0, ptr noundef nonnull %var.i3427) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3431)
  %tobool4.not.i3432 = icmp eq i32 %call3.i3431, 0
  br i1 %tobool4.not.i3432, label %if.end8.i3436, label %do.end.i3435

do.end.i3435:                                     ; preds = %if.end.i3433
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.130, ptr noundef null, ptr noundef nonnull %buf.i3426, i32 noundef %call3.i3431) #9
  br label %nvram_read_u8.exit3438

if.end8.i3436:                                    ; preds = %if.end.i3433
  call void @__sanitizer_cov_trace_pc() #8
  %507 = ptrtoint ptr %var.i3427 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %var.i3427, align 1
  %509 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %508, ptr %arrayidx621, align 1
  br label %nvram_read_u8.exit3438

nvram_read_u8.exit3438:                           ; preds = %if.end8.i3436, %do.end.i3435, %if.then619.nvram_read_u8.exit3438_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3427) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3426) #6
  br label %if.end623

if.end623:                                        ; preds = %nvram_read_u8.exit3438, %if.end613.if.end623_crit_edge
  %510 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %sprom, align 4
  %conv625 = zext i8 %511 to i32
  %shl626 = shl nuw i32 1, %conv625
  %and627 = and i32 %shl626, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and627)
  %tobool628.not = icmp eq i32 %and627, 0
  br i1 %tobool628.not, label %if.end623.if.end632_crit_edge, label %if.then629

if.end623.if.end632_crit_edge:                    ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end632

if.then629:                                       ; preds = %if.end623
  %txpid5gl = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 49
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3439) #6
  %512 = call ptr @memset(ptr %buf.i3439, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3440) #6
  %513 = ptrtoint ptr %var.i3440 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 -1, ptr %var.i3440, align 1, !annotation !557
  %call.i3441 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull %buf.i3439, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3441)
  %cmp.i3442 = icmp slt i32 %call.i3441, 0
  br i1 %cmp.i3442, label %if.then629.nvram_read_u8.exit3451_crit_edge, label %if.end.i3446

if.then629.nvram_read_u8.exit3451_crit_edge:      ; preds = %if.then629
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3451

if.end.i3446:                                     ; preds = %if.then629
  %call2.i3443 = call ptr @strim(ptr noundef nonnull %buf.i3439) #6
  %call3.i3444 = call i32 @kstrtou8(ptr noundef %call2.i3443, i32 noundef 0, ptr noundef nonnull %var.i3440) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3444)
  %tobool4.not.i3445 = icmp eq i32 %call3.i3444, 0
  br i1 %tobool4.not.i3445, label %if.end8.i3449, label %do.end.i3448

do.end.i3448:                                     ; preds = %if.end.i3446
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3447 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef nonnull %buf.i3439, i32 noundef %call3.i3444) #9
  br label %nvram_read_u8.exit3451

if.end8.i3449:                                    ; preds = %if.end.i3446
  call void @__sanitizer_cov_trace_pc() #8
  %514 = ptrtoint ptr %var.i3440 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %var.i3440, align 1
  %516 = ptrtoint ptr %txpid5gl to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 %515, ptr %txpid5gl, align 1
  br label %nvram_read_u8.exit3451

nvram_read_u8.exit3451:                           ; preds = %if.end8.i3449, %do.end.i3448, %if.then629.nvram_read_u8.exit3451_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3440) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3439) #6
  br label %if.end632

if.end632:                                        ; preds = %nvram_read_u8.exit3451, %if.end623.if.end632_crit_edge
  %517 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %sprom, align 4
  %conv634 = zext i8 %518 to i32
  %shl635 = shl nuw i32 1, %conv634
  %and636 = and i32 %shl635, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and636)
  %tobool637.not = icmp eq i32 %and636, 0
  br i1 %tobool637.not, label %if.end632.if.end642_crit_edge, label %if.then638

if.end632.if.end642_crit_edge:                    ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end642

if.then638:                                       ; preds = %if.end632
  %arrayidx640 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 49, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3452) #6
  %519 = call ptr @memset(ptr %buf.i3452, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3453) #6
  %520 = ptrtoint ptr %var.i3453 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 -1, ptr %var.i3453, align 1, !annotation !557
  %call.i3454 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull %buf.i3452, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3454)
  %cmp.i3455 = icmp slt i32 %call.i3454, 0
  br i1 %cmp.i3455, label %if.then638.nvram_read_u8.exit3464_crit_edge, label %if.end.i3459

if.then638.nvram_read_u8.exit3464_crit_edge:      ; preds = %if.then638
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3464

if.end.i3459:                                     ; preds = %if.then638
  %call2.i3456 = call ptr @strim(ptr noundef nonnull %buf.i3452) #6
  %call3.i3457 = call i32 @kstrtou8(ptr noundef %call2.i3456, i32 noundef 0, ptr noundef nonnull %var.i3453) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3457)
  %tobool4.not.i3458 = icmp eq i32 %call3.i3457, 0
  br i1 %tobool4.not.i3458, label %if.end8.i3462, label %do.end.i3461

do.end.i3461:                                     ; preds = %if.end.i3459
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3460 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.132, ptr noundef null, ptr noundef nonnull %buf.i3452, i32 noundef %call3.i3457) #9
  br label %nvram_read_u8.exit3464

if.end8.i3462:                                    ; preds = %if.end.i3459
  call void @__sanitizer_cov_trace_pc() #8
  %521 = ptrtoint ptr %var.i3453 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %var.i3453, align 1
  %523 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %522, ptr %arrayidx640, align 1
  br label %nvram_read_u8.exit3464

nvram_read_u8.exit3464:                           ; preds = %if.end8.i3462, %do.end.i3461, %if.then638.nvram_read_u8.exit3464_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3453) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3452) #6
  br label %if.end642

if.end642:                                        ; preds = %nvram_read_u8.exit3464, %if.end632.if.end642_crit_edge
  %524 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %sprom, align 4
  %conv644 = zext i8 %525 to i32
  %shl645 = shl nuw i32 1, %conv644
  %and646 = and i32 %shl645, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and646)
  %tobool647.not = icmp eq i32 %and646, 0
  br i1 %tobool647.not, label %if.end642.if.end652_crit_edge, label %if.then648

if.end642.if.end652_crit_edge:                    ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end652

if.then648:                                       ; preds = %if.end642
  %arrayidx650 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 49, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3465) #6
  %526 = call ptr @memset(ptr %buf.i3465, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3466) #6
  %527 = ptrtoint ptr %var.i3466 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 -1, ptr %var.i3466, align 1, !annotation !557
  %call.i3467 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull %buf.i3465, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3467)
  %cmp.i3468 = icmp slt i32 %call.i3467, 0
  br i1 %cmp.i3468, label %if.then648.nvram_read_u8.exit3477_crit_edge, label %if.end.i3472

if.then648.nvram_read_u8.exit3477_crit_edge:      ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3477

if.end.i3472:                                     ; preds = %if.then648
  %call2.i3469 = call ptr @strim(ptr noundef nonnull %buf.i3465) #6
  %call3.i3470 = call i32 @kstrtou8(ptr noundef %call2.i3469, i32 noundef 0, ptr noundef nonnull %var.i3466) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3470)
  %tobool4.not.i3471 = icmp eq i32 %call3.i3470, 0
  br i1 %tobool4.not.i3471, label %if.end8.i3475, label %do.end.i3474

do.end.i3474:                                     ; preds = %if.end.i3472
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3473 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.133, ptr noundef null, ptr noundef nonnull %buf.i3465, i32 noundef %call3.i3470) #9
  br label %nvram_read_u8.exit3477

if.end8.i3475:                                    ; preds = %if.end.i3472
  call void @__sanitizer_cov_trace_pc() #8
  %528 = ptrtoint ptr %var.i3466 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %var.i3466, align 1
  %530 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %529, ptr %arrayidx650, align 1
  br label %nvram_read_u8.exit3477

nvram_read_u8.exit3477:                           ; preds = %if.end8.i3475, %do.end.i3474, %if.then648.nvram_read_u8.exit3477_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3466) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3465) #6
  br label %if.end652

if.end652:                                        ; preds = %nvram_read_u8.exit3477, %if.end642.if.end652_crit_edge
  %531 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %sprom, align 4
  %conv654 = zext i8 %532 to i32
  %shl655 = shl nuw i32 1, %conv654
  %and656 = and i32 %shl655, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and656)
  %tobool657.not = icmp eq i32 %and656, 0
  br i1 %tobool657.not, label %if.end652.if.end662_crit_edge, label %if.then658

if.end652.if.end662_crit_edge:                    ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end662

if.then658:                                       ; preds = %if.end652
  %arrayidx660 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 49, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3478) #6
  %533 = call ptr @memset(ptr %buf.i3478, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3479) #6
  %534 = ptrtoint ptr %var.i3479 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 -1, ptr %var.i3479, align 1, !annotation !557
  %call.i3480 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull %buf.i3478, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3480)
  %cmp.i3481 = icmp slt i32 %call.i3480, 0
  br i1 %cmp.i3481, label %if.then658.nvram_read_u8.exit3490_crit_edge, label %if.end.i3485

if.then658.nvram_read_u8.exit3490_crit_edge:      ; preds = %if.then658
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3490

if.end.i3485:                                     ; preds = %if.then658
  %call2.i3482 = call ptr @strim(ptr noundef nonnull %buf.i3478) #6
  %call3.i3483 = call i32 @kstrtou8(ptr noundef %call2.i3482, i32 noundef 0, ptr noundef nonnull %var.i3479) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3483)
  %tobool4.not.i3484 = icmp eq i32 %call3.i3483, 0
  br i1 %tobool4.not.i3484, label %if.end8.i3488, label %do.end.i3487

do.end.i3487:                                     ; preds = %if.end.i3485
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.134, ptr noundef null, ptr noundef nonnull %buf.i3478, i32 noundef %call3.i3483) #9
  br label %nvram_read_u8.exit3490

if.end8.i3488:                                    ; preds = %if.end.i3485
  call void @__sanitizer_cov_trace_pc() #8
  %535 = ptrtoint ptr %var.i3479 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %var.i3479, align 1
  %537 = ptrtoint ptr %arrayidx660 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %536, ptr %arrayidx660, align 1
  br label %nvram_read_u8.exit3490

nvram_read_u8.exit3490:                           ; preds = %if.end8.i3488, %do.end.i3487, %if.then658.nvram_read_u8.exit3490_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3479) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3478) #6
  br label %if.end662

if.end662:                                        ; preds = %nvram_read_u8.exit3490, %if.end652.if.end662_crit_edge
  %538 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %sprom, align 4
  %conv664 = zext i8 %539 to i32
  %shl665 = shl nuw i32 1, %conv664
  %and666 = and i32 %shl665, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and666)
  %tobool667.not = icmp eq i32 %and666, 0
  br i1 %tobool667.not, label %if.end662.if.end671_crit_edge, label %if.then668

if.end662.if.end671_crit_edge:                    ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end671

if.then668:                                       ; preds = %if.end662
  %txpid5gh = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 51
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3491) #6
  %540 = call ptr @memset(ptr %buf.i3491, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3492) #6
  %541 = ptrtoint ptr %var.i3492 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 -1, ptr %var.i3492, align 1, !annotation !557
  %call.i3493 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull %buf.i3491, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3493)
  %cmp.i3494 = icmp slt i32 %call.i3493, 0
  br i1 %cmp.i3494, label %if.then668.nvram_read_u8.exit3503_crit_edge, label %if.end.i3498

if.then668.nvram_read_u8.exit3503_crit_edge:      ; preds = %if.then668
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3503

if.end.i3498:                                     ; preds = %if.then668
  %call2.i3495 = call ptr @strim(ptr noundef nonnull %buf.i3491) #6
  %call3.i3496 = call i32 @kstrtou8(ptr noundef %call2.i3495, i32 noundef 0, ptr noundef nonnull %var.i3492) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3496)
  %tobool4.not.i3497 = icmp eq i32 %call3.i3496, 0
  br i1 %tobool4.not.i3497, label %if.end8.i3501, label %do.end.i3500

do.end.i3500:                                     ; preds = %if.end.i3498
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef nonnull %buf.i3491, i32 noundef %call3.i3496) #9
  br label %nvram_read_u8.exit3503

if.end8.i3501:                                    ; preds = %if.end.i3498
  call void @__sanitizer_cov_trace_pc() #8
  %542 = ptrtoint ptr %var.i3492 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %var.i3492, align 1
  %544 = ptrtoint ptr %txpid5gh to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %543, ptr %txpid5gh, align 1
  br label %nvram_read_u8.exit3503

nvram_read_u8.exit3503:                           ; preds = %if.end8.i3501, %do.end.i3500, %if.then668.nvram_read_u8.exit3503_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3492) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3491) #6
  br label %if.end671

if.end671:                                        ; preds = %nvram_read_u8.exit3503, %if.end662.if.end671_crit_edge
  %545 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %sprom, align 4
  %conv673 = zext i8 %546 to i32
  %shl674 = shl nuw i32 1, %conv673
  %and675 = and i32 %shl674, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and675)
  %tobool676.not = icmp eq i32 %and675, 0
  br i1 %tobool676.not, label %if.end671.if.end681_crit_edge, label %if.then677

if.end671.if.end681_crit_edge:                    ; preds = %if.end671
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end681

if.then677:                                       ; preds = %if.end671
  %arrayidx679 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 51, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3504) #6
  %547 = call ptr @memset(ptr %buf.i3504, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3505) #6
  %548 = ptrtoint ptr %var.i3505 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 -1, ptr %var.i3505, align 1, !annotation !557
  %call.i3506 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %buf.i3504, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3506)
  %cmp.i3507 = icmp slt i32 %call.i3506, 0
  br i1 %cmp.i3507, label %if.then677.nvram_read_u8.exit3516_crit_edge, label %if.end.i3511

if.then677.nvram_read_u8.exit3516_crit_edge:      ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3516

if.end.i3511:                                     ; preds = %if.then677
  %call2.i3508 = call ptr @strim(ptr noundef nonnull %buf.i3504) #6
  %call3.i3509 = call i32 @kstrtou8(ptr noundef %call2.i3508, i32 noundef 0, ptr noundef nonnull %var.i3505) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3509)
  %tobool4.not.i3510 = icmp eq i32 %call3.i3509, 0
  br i1 %tobool4.not.i3510, label %if.end8.i3514, label %do.end.i3513

do.end.i3513:                                     ; preds = %if.end.i3511
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef nonnull %buf.i3504, i32 noundef %call3.i3509) #9
  br label %nvram_read_u8.exit3516

if.end8.i3514:                                    ; preds = %if.end.i3511
  call void @__sanitizer_cov_trace_pc() #8
  %549 = ptrtoint ptr %var.i3505 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %var.i3505, align 1
  %551 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 %550, ptr %arrayidx679, align 1
  br label %nvram_read_u8.exit3516

nvram_read_u8.exit3516:                           ; preds = %if.end8.i3514, %do.end.i3513, %if.then677.nvram_read_u8.exit3516_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3505) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3504) #6
  br label %if.end681

if.end681:                                        ; preds = %nvram_read_u8.exit3516, %if.end671.if.end681_crit_edge
  %552 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %sprom, align 4
  %conv683 = zext i8 %553 to i32
  %shl684 = shl nuw i32 1, %conv683
  %and685 = and i32 %shl684, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and685)
  %tobool686.not = icmp eq i32 %and685, 0
  br i1 %tobool686.not, label %if.end681.if.end691_crit_edge, label %if.then687

if.end681.if.end691_crit_edge:                    ; preds = %if.end681
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end691

if.then687:                                       ; preds = %if.end681
  %arrayidx689 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 51, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3517) #6
  %554 = call ptr @memset(ptr %buf.i3517, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3518) #6
  %555 = ptrtoint ptr %var.i3518 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 -1, ptr %var.i3518, align 1, !annotation !557
  %call.i3519 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %buf.i3517, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3519)
  %cmp.i3520 = icmp slt i32 %call.i3519, 0
  br i1 %cmp.i3520, label %if.then687.nvram_read_u8.exit3529_crit_edge, label %if.end.i3524

if.then687.nvram_read_u8.exit3529_crit_edge:      ; preds = %if.then687
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3529

if.end.i3524:                                     ; preds = %if.then687
  %call2.i3521 = call ptr @strim(ptr noundef nonnull %buf.i3517) #6
  %call3.i3522 = call i32 @kstrtou8(ptr noundef %call2.i3521, i32 noundef 0, ptr noundef nonnull %var.i3518) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3522)
  %tobool4.not.i3523 = icmp eq i32 %call3.i3522, 0
  br i1 %tobool4.not.i3523, label %if.end8.i3527, label %do.end.i3526

do.end.i3526:                                     ; preds = %if.end.i3524
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3525 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.137, ptr noundef null, ptr noundef nonnull %buf.i3517, i32 noundef %call3.i3522) #9
  br label %nvram_read_u8.exit3529

if.end8.i3527:                                    ; preds = %if.end.i3524
  call void @__sanitizer_cov_trace_pc() #8
  %556 = ptrtoint ptr %var.i3518 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %var.i3518, align 1
  %558 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %557, ptr %arrayidx689, align 1
  br label %nvram_read_u8.exit3529

nvram_read_u8.exit3529:                           ; preds = %if.end8.i3527, %do.end.i3526, %if.then687.nvram_read_u8.exit3529_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3518) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3517) #6
  br label %if.end691

if.end691:                                        ; preds = %nvram_read_u8.exit3529, %if.end681.if.end691_crit_edge
  %559 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %sprom, align 4
  %conv693 = zext i8 %560 to i32
  %shl694 = shl nuw i32 1, %conv693
  %and695 = and i32 %shl694, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and695)
  %tobool696.not = icmp eq i32 %and695, 0
  br i1 %tobool696.not, label %if.end691.if.end701_crit_edge, label %if.then697

if.end691.if.end701_crit_edge:                    ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end701

if.then697:                                       ; preds = %if.end691
  %arrayidx699 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 51, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3530) #6
  %561 = call ptr @memset(ptr %buf.i3530, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3531) #6
  %562 = ptrtoint ptr %var.i3531 to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 -1, ptr %var.i3531, align 1, !annotation !557
  %call.i3532 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull %buf.i3530, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3532)
  %cmp.i3533 = icmp slt i32 %call.i3532, 0
  br i1 %cmp.i3533, label %if.then697.nvram_read_u8.exit3542_crit_edge, label %if.end.i3537

if.then697.nvram_read_u8.exit3542_crit_edge:      ; preds = %if.then697
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3542

if.end.i3537:                                     ; preds = %if.then697
  %call2.i3534 = call ptr @strim(ptr noundef nonnull %buf.i3530) #6
  %call3.i3535 = call i32 @kstrtou8(ptr noundef %call2.i3534, i32 noundef 0, ptr noundef nonnull %var.i3531) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3535)
  %tobool4.not.i3536 = icmp eq i32 %call3.i3535, 0
  br i1 %tobool4.not.i3536, label %if.end8.i3540, label %do.end.i3539

do.end.i3539:                                     ; preds = %if.end.i3537
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef nonnull %buf.i3530, i32 noundef %call3.i3535) #9
  br label %nvram_read_u8.exit3542

if.end8.i3540:                                    ; preds = %if.end.i3537
  call void @__sanitizer_cov_trace_pc() #8
  %563 = ptrtoint ptr %var.i3531 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %var.i3531, align 1
  %565 = ptrtoint ptr %arrayidx699 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 %564, ptr %arrayidx699, align 1
  br label %nvram_read_u8.exit3542

nvram_read_u8.exit3542:                           ; preds = %if.end8.i3540, %do.end.i3539, %if.then697.nvram_read_u8.exit3542_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3531) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3530) #6
  %566 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %566)
  %.pr4992 = load i8, ptr %sprom, align 4
  br label %if.end701

if.end701:                                        ; preds = %nvram_read_u8.exit3542, %if.end691.if.end701_crit_edge
  %567 = phi i8 [ %.pr4992, %nvram_read_u8.exit3542 ], [ %560, %if.end691.if.end701_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %567)
  %tobool706.not = icmp ult i8 %567, 8
  br i1 %tobool706.not, label %if.end701.if.end709_crit_edge, label %if.then707

if.end701.if.end709_crit_edge:                    ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end709

if.then707:                                       ; preds = %if.end701
  %tempthresh = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 100
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3543) #6
  %568 = call ptr @memset(ptr %buf.i3543, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3544) #6
  %569 = ptrtoint ptr %var.i3544 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 -1, ptr %var.i3544, align 1, !annotation !557
  %call.i3545 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull %buf.i3543, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3545)
  %cmp.i3546 = icmp slt i32 %call.i3545, 0
  br i1 %cmp.i3546, label %if.then707.nvram_read_u8.exit3555_crit_edge, label %if.end.i3550

if.then707.nvram_read_u8.exit3555_crit_edge:      ; preds = %if.then707
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3555

if.end.i3550:                                     ; preds = %if.then707
  %call2.i3547 = call ptr @strim(ptr noundef nonnull %buf.i3543) #6
  %call3.i3548 = call i32 @kstrtou8(ptr noundef %call2.i3547, i32 noundef 0, ptr noundef nonnull %var.i3544) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3548)
  %tobool4.not.i3549 = icmp eq i32 %call3.i3548, 0
  br i1 %tobool4.not.i3549, label %if.end8.i3553, label %do.end.i3552

do.end.i3552:                                     ; preds = %if.end.i3550
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef nonnull %buf.i3543, i32 noundef %call3.i3548) #9
  br label %nvram_read_u8.exit3555

if.end8.i3553:                                    ; preds = %if.end.i3550
  call void @__sanitizer_cov_trace_pc() #8
  %570 = ptrtoint ptr %var.i3544 to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %var.i3544, align 1
  %572 = ptrtoint ptr %tempthresh to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %571, ptr %tempthresh, align 1
  br label %nvram_read_u8.exit3555

nvram_read_u8.exit3555:                           ; preds = %if.end8.i3553, %do.end.i3552, %if.then707.nvram_read_u8.exit3555_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3544) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3543) #6
  br label %if.end709

if.end709:                                        ; preds = %nvram_read_u8.exit3555, %if.end701.if.end709_crit_edge
  %573 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %574)
  %tobool714.not = icmp ult i8 %574, 8
  br i1 %tobool714.not, label %if.end709.if.end757_crit_edge, label %if.then715

if.end709.if.end757_crit_edge:                    ; preds = %if.end709
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then715:                                       ; preds = %if.end709
  %tempoffset = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 101
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3556) #6
  %575 = call ptr @memset(ptr %buf.i3556, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3557) #6
  %576 = ptrtoint ptr %var.i3557 to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 -1, ptr %var.i3557, align 1, !annotation !557
  %call.i3558 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull %buf.i3556, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3558)
  %cmp.i3559 = icmp slt i32 %call.i3558, 0
  br i1 %cmp.i3559, label %if.then715.if.end717_crit_edge, label %if.end.i3563

if.then715.if.end717_crit_edge:                   ; preds = %if.then715
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end717

if.end.i3563:                                     ; preds = %if.then715
  %call2.i3560 = call ptr @strim(ptr noundef nonnull %buf.i3556) #6
  %call3.i3561 = call i32 @kstrtou8(ptr noundef %call2.i3560, i32 noundef 0, ptr noundef nonnull %var.i3557) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3561)
  %tobool4.not.i3562 = icmp eq i32 %call3.i3561, 0
  br i1 %tobool4.not.i3562, label %if.end8.i3566, label %do.end.i3565

do.end.i3565:                                     ; preds = %if.end.i3563
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef nonnull %buf.i3556, i32 noundef %call3.i3561) #9
  br label %if.end717

if.end8.i3566:                                    ; preds = %if.end.i3563
  call void @__sanitizer_cov_trace_pc() #8
  %577 = ptrtoint ptr %var.i3557 to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %var.i3557, align 1
  %579 = ptrtoint ptr %tempoffset to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 %578, ptr %tempoffset, align 1
  br label %if.end717

if.end717:                                        ; preds = %if.end8.i3566, %do.end.i3565, %if.then715.if.end717_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3557) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3556) #6
  %580 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %580)
  %.pr4993 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr4993)
  %tobool722.not = icmp ult i8 %.pr4993, 8
  br i1 %tobool722.not, label %if.end717.if.end757_crit_edge, label %if.then723

if.end717.if.end757_crit_edge:                    ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then723:                                       ; preds = %if.end717
  %rawtempsense = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 102
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3569) #6
  %581 = call ptr @memset(ptr %buf.i3569, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3570) #6
  %582 = ptrtoint ptr %var.i3570 to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 -1, ptr %var.i3570, align 2, !annotation !557
  %call.i3571 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull %buf.i3569, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3571)
  %cmp.i3572 = icmp slt i32 %call.i3571, 0
  br i1 %cmp.i3572, label %if.then723.if.end725_crit_edge, label %if.end.i3576

if.then723.if.end725_crit_edge:                   ; preds = %if.then723
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end725

if.end.i3576:                                     ; preds = %if.then723
  %call2.i3573 = call ptr @strim(ptr noundef nonnull %buf.i3569) #6
  %call3.i3574 = call i32 @kstrtou16(ptr noundef %call2.i3573, i32 noundef 0, ptr noundef nonnull %var.i3570) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3574)
  %tobool4.not.i3575 = icmp eq i32 %call3.i3574, 0
  br i1 %tobool4.not.i3575, label %if.end15.i3579, label %do.end.i3578

do.end.i3578:                                     ; preds = %if.end.i3576
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef nonnull %buf.i3569, i32 noundef %call3.i3574) #9
  br label %if.end725

if.end15.i3579:                                   ; preds = %if.end.i3576
  call void @__sanitizer_cov_trace_pc() #8
  %583 = ptrtoint ptr %var.i3570 to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %var.i3570, align 2
  %585 = ptrtoint ptr %rawtempsense to i32
  call void @__asan_store2_noabort(i32 %585)
  store i16 %584, ptr %rawtempsense, align 2
  br label %if.end725

if.end725:                                        ; preds = %if.end15.i3579, %do.end.i3578, %if.then723.if.end725_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3570) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3569) #6
  %586 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %586)
  %.pr4995 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr4995)
  %tobool730.not = icmp ult i8 %.pr4995, 8
  br i1 %tobool730.not, label %if.end725.if.end757_crit_edge, label %if.then731

if.end725.if.end757_crit_edge:                    ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then731:                                       ; preds = %if.end725
  %measpower = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 103
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3581) #6
  %587 = call ptr @memset(ptr %buf.i3581, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3582) #6
  %588 = ptrtoint ptr %var.i3582 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 -1, ptr %var.i3582, align 1, !annotation !557
  %call.i3583 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull %buf.i3581, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3583)
  %cmp.i3584 = icmp slt i32 %call.i3583, 0
  br i1 %cmp.i3584, label %if.then731.if.end733_crit_edge, label %if.end.i3588

if.then731.if.end733_crit_edge:                   ; preds = %if.then731
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end733

if.end.i3588:                                     ; preds = %if.then731
  %call2.i3585 = call ptr @strim(ptr noundef nonnull %buf.i3581) #6
  %call3.i3586 = call i32 @kstrtou8(ptr noundef %call2.i3585, i32 noundef 0, ptr noundef nonnull %var.i3582) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3586)
  %tobool4.not.i3587 = icmp eq i32 %call3.i3586, 0
  br i1 %tobool4.not.i3587, label %if.end8.i3591, label %do.end.i3590

do.end.i3590:                                     ; preds = %if.end.i3588
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef nonnull %buf.i3581, i32 noundef %call3.i3586) #9
  br label %if.end733

if.end8.i3591:                                    ; preds = %if.end.i3588
  call void @__sanitizer_cov_trace_pc() #8
  %589 = ptrtoint ptr %var.i3582 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %var.i3582, align 1
  %591 = ptrtoint ptr %measpower to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %590, ptr %measpower, align 1
  br label %if.end733

if.end733:                                        ; preds = %if.end8.i3591, %do.end.i3590, %if.then731.if.end733_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3582) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3581) #6
  %592 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %592)
  %.pr4997.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr4997.pr)
  %tobool738.not = icmp ult i8 %.pr4997.pr, 8
  br i1 %tobool738.not, label %if.end733.if.end757_crit_edge, label %if.then739

if.end733.if.end757_crit_edge:                    ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then739:                                       ; preds = %if.end733
  %tempsense_slope = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 104
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3594) #6
  %593 = call ptr @memset(ptr %buf.i3594, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3595) #6
  %594 = ptrtoint ptr %var.i3595 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 -1, ptr %var.i3595, align 1, !annotation !557
  %call.i3596 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull %buf.i3594, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3596)
  %cmp.i3597 = icmp slt i32 %call.i3596, 0
  br i1 %cmp.i3597, label %if.then739.if.end741_crit_edge, label %if.end.i3601

if.then739.if.end741_crit_edge:                   ; preds = %if.then739
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end741

if.end.i3601:                                     ; preds = %if.then739
  %call2.i3598 = call ptr @strim(ptr noundef nonnull %buf.i3594) #6
  %call3.i3599 = call i32 @kstrtou8(ptr noundef %call2.i3598, i32 noundef 0, ptr noundef nonnull %var.i3595) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3599)
  %tobool4.not.i3600 = icmp eq i32 %call3.i3599, 0
  br i1 %tobool4.not.i3600, label %if.end8.i3604, label %do.end.i3603

do.end.i3603:                                     ; preds = %if.end.i3601
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3602 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.143, ptr noundef null, ptr noundef nonnull %buf.i3594, i32 noundef %call3.i3599) #9
  br label %if.end741

if.end8.i3604:                                    ; preds = %if.end.i3601
  call void @__sanitizer_cov_trace_pc() #8
  %595 = ptrtoint ptr %var.i3595 to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %var.i3595, align 1
  %597 = ptrtoint ptr %tempsense_slope to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %596, ptr %tempsense_slope, align 1
  br label %if.end741

if.end741:                                        ; preds = %if.end8.i3604, %do.end.i3603, %if.then739.if.end741_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3595) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3594) #6
  %598 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %598)
  %.pr4999 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr4999)
  %tobool746.not = icmp ult i8 %.pr4999, 8
  br i1 %tobool746.not, label %if.end741.if.end757_crit_edge, label %if.then747

if.end741.if.end757_crit_edge:                    ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then747:                                       ; preds = %if.end741
  %tempcorrx = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 105
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3607) #6
  %599 = call ptr @memset(ptr %buf.i3607, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3608) #6
  %600 = ptrtoint ptr %var.i3608 to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 -1, ptr %var.i3608, align 1, !annotation !557
  %call.i3609 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull %buf.i3607, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3609)
  %cmp.i3610 = icmp slt i32 %call.i3609, 0
  br i1 %cmp.i3610, label %if.then747.if.end749_crit_edge, label %if.end.i3614

if.then747.if.end749_crit_edge:                   ; preds = %if.then747
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end749

if.end.i3614:                                     ; preds = %if.then747
  %call2.i3611 = call ptr @strim(ptr noundef nonnull %buf.i3607) #6
  %call3.i3612 = call i32 @kstrtou8(ptr noundef %call2.i3611, i32 noundef 0, ptr noundef nonnull %var.i3608) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3612)
  %tobool4.not.i3613 = icmp eq i32 %call3.i3612, 0
  br i1 %tobool4.not.i3613, label %if.end8.i3617, label %do.end.i3616

do.end.i3616:                                     ; preds = %if.end.i3614
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3615 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.144, ptr noundef null, ptr noundef nonnull %buf.i3607, i32 noundef %call3.i3612) #9
  br label %if.end749

if.end8.i3617:                                    ; preds = %if.end.i3614
  call void @__sanitizer_cov_trace_pc() #8
  %601 = ptrtoint ptr %var.i3608 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %var.i3608, align 1
  %603 = ptrtoint ptr %tempcorrx to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %602, ptr %tempcorrx, align 1
  br label %if.end749

if.end749:                                        ; preds = %if.end8.i3617, %do.end.i3616, %if.then747.if.end749_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3608) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3607) #6
  %604 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %604)
  %.pr5001.pr.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr5001.pr.pr)
  %tobool754.not = icmp ult i8 %.pr5001.pr.pr, 8
  br i1 %tobool754.not, label %if.end749.if.end757_crit_edge, label %if.then755

if.end749.if.end757_crit_edge:                    ; preds = %if.end749
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end757

if.then755:                                       ; preds = %if.end749
  %tempsense_option = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 106
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3620) #6
  %605 = call ptr @memset(ptr %buf.i3620, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3621) #6
  %606 = ptrtoint ptr %var.i3621 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 -1, ptr %var.i3621, align 1, !annotation !557
  %call.i3622 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull %buf.i3620, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3622)
  %cmp.i3623 = icmp slt i32 %call.i3622, 0
  br i1 %cmp.i3623, label %if.then755.nvram_read_u8.exit3632_crit_edge, label %if.end.i3627

if.then755.nvram_read_u8.exit3632_crit_edge:      ; preds = %if.then755
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3632

if.end.i3627:                                     ; preds = %if.then755
  %call2.i3624 = call ptr @strim(ptr noundef nonnull %buf.i3620) #6
  %call3.i3625 = call i32 @kstrtou8(ptr noundef %call2.i3624, i32 noundef 0, ptr noundef nonnull %var.i3621) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3625)
  %tobool4.not.i3626 = icmp eq i32 %call3.i3625, 0
  br i1 %tobool4.not.i3626, label %if.end8.i3630, label %do.end.i3629

do.end.i3629:                                     ; preds = %if.end.i3627
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef nonnull %buf.i3620, i32 noundef %call3.i3625) #9
  br label %nvram_read_u8.exit3632

if.end8.i3630:                                    ; preds = %if.end.i3627
  call void @__sanitizer_cov_trace_pc() #8
  %607 = ptrtoint ptr %var.i3621 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %var.i3621, align 1
  %609 = ptrtoint ptr %tempsense_option to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %608, ptr %tempsense_option, align 1
  br label %nvram_read_u8.exit3632

nvram_read_u8.exit3632:                           ; preds = %if.end8.i3630, %do.end.i3629, %if.then755.nvram_read_u8.exit3632_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3621) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3620) #6
  br label %if.end757

if.end757:                                        ; preds = %nvram_read_u8.exit3632, %if.end749.if.end757_crit_edge, %if.end741.if.end757_crit_edge, %if.end733.if.end757_crit_edge, %if.end725.if.end757_crit_edge, %if.end717.if.end757_crit_edge, %if.end709.if.end757_crit_edge
  %610 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %sprom, align 4
  %conv759 = zext i8 %611 to i32
  %shl760 = shl nuw i32 1, %conv759
  %and761 = and i32 %shl760, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and761)
  %tobool762.not = icmp eq i32 %and761, 0
  br i1 %tobool762.not, label %if.end757.if.end765_crit_edge, label %if.then763

if.end757.if.end765_crit_edge:                    ; preds = %if.end757
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end765

if.then763:                                       ; preds = %if.end757
  %freqoffset_corr = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 107
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3633) #6
  %612 = call ptr @memset(ptr %buf.i3633, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3634) #6
  %613 = ptrtoint ptr %var.i3634 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 -1, ptr %var.i3634, align 1, !annotation !557
  %call.i3635 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull %buf.i3633, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3635)
  %cmp.i3636 = icmp slt i32 %call.i3635, 0
  br i1 %cmp.i3636, label %if.then763.nvram_read_u8.exit3645_crit_edge, label %if.end.i3640

if.then763.nvram_read_u8.exit3645_crit_edge:      ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3645

if.end.i3640:                                     ; preds = %if.then763
  %call2.i3637 = call ptr @strim(ptr noundef nonnull %buf.i3633) #6
  %call3.i3638 = call i32 @kstrtou8(ptr noundef %call2.i3637, i32 noundef 0, ptr noundef nonnull %var.i3634) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3638)
  %tobool4.not.i3639 = icmp eq i32 %call3.i3638, 0
  br i1 %tobool4.not.i3639, label %if.end8.i3643, label %do.end.i3642

do.end.i3642:                                     ; preds = %if.end.i3640
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef nonnull %buf.i3633, i32 noundef %call3.i3638) #9
  br label %nvram_read_u8.exit3645

if.end8.i3643:                                    ; preds = %if.end.i3640
  call void @__sanitizer_cov_trace_pc() #8
  %614 = ptrtoint ptr %var.i3634 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %var.i3634, align 1
  %616 = ptrtoint ptr %freqoffset_corr to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %615, ptr %freqoffset_corr, align 1
  br label %nvram_read_u8.exit3645

nvram_read_u8.exit3645:                           ; preds = %if.end8.i3643, %do.end.i3642, %if.then763.nvram_read_u8.exit3645_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3634) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3633) #6
  br label %if.end765

if.end765:                                        ; preds = %nvram_read_u8.exit3645, %if.end757.if.end765_crit_edge
  %617 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %sprom, align 4
  %conv767 = zext i8 %618 to i32
  %shl768 = shl nuw i32 1, %conv767
  %and769 = and i32 %shl768, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and769)
  %tobool770.not = icmp eq i32 %and769, 0
  br i1 %tobool770.not, label %if.end765.if.end773_crit_edge, label %if.then771

if.end765.if.end773_crit_edge:                    ; preds = %if.end765
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end773

if.then771:                                       ; preds = %if.end765
  %iqcal_swp_dis = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 108
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3646) #6
  %619 = call ptr @memset(ptr %buf.i3646, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3647) #6
  %620 = ptrtoint ptr %var.i3647 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 -1, ptr %var.i3647, align 1, !annotation !557
  %call.i3648 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull %buf.i3646, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3648)
  %cmp.i3649 = icmp slt i32 %call.i3648, 0
  br i1 %cmp.i3649, label %if.then771.nvram_read_u8.exit3658_crit_edge, label %if.end.i3653

if.then771.nvram_read_u8.exit3658_crit_edge:      ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3658

if.end.i3653:                                     ; preds = %if.then771
  %call2.i3650 = call ptr @strim(ptr noundef nonnull %buf.i3646) #6
  %call3.i3651 = call i32 @kstrtou8(ptr noundef %call2.i3650, i32 noundef 0, ptr noundef nonnull %var.i3647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3651)
  %tobool4.not.i3652 = icmp eq i32 %call3.i3651, 0
  br i1 %tobool4.not.i3652, label %if.end8.i3656, label %do.end.i3655

do.end.i3655:                                     ; preds = %if.end.i3653
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.147, ptr noundef null, ptr noundef nonnull %buf.i3646, i32 noundef %call3.i3651) #9
  br label %nvram_read_u8.exit3658

if.end8.i3656:                                    ; preds = %if.end.i3653
  call void @__sanitizer_cov_trace_pc() #8
  %621 = ptrtoint ptr %var.i3647 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %var.i3647, align 1
  %623 = ptrtoint ptr %iqcal_swp_dis to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 %622, ptr %iqcal_swp_dis, align 1
  br label %nvram_read_u8.exit3658

nvram_read_u8.exit3658:                           ; preds = %if.end8.i3656, %do.end.i3655, %if.then771.nvram_read_u8.exit3658_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3647) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3646) #6
  br label %if.end773

if.end773:                                        ; preds = %nvram_read_u8.exit3658, %if.end765.if.end773_crit_edge
  %624 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %sprom, align 4
  %conv775 = zext i8 %625 to i32
  %shl776 = shl nuw i32 1, %conv775
  %and777 = and i32 %shl776, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and777)
  %tobool778.not = icmp eq i32 %and777, 0
  br i1 %tobool778.not, label %if.end773.if.end781_crit_edge, label %if.then779

if.end773.if.end781_crit_edge:                    ; preds = %if.end773
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end781

if.then779:                                       ; preds = %if.end773
  %hw_iqcal_en = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 109
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3659) #6
  %626 = call ptr @memset(ptr %buf.i3659, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3660) #6
  %627 = ptrtoint ptr %var.i3660 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 -1, ptr %var.i3660, align 1, !annotation !557
  %call.i3661 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull %buf.i3659, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3661)
  %cmp.i3662 = icmp slt i32 %call.i3661, 0
  br i1 %cmp.i3662, label %if.then779.nvram_read_u8.exit3671_crit_edge, label %if.end.i3666

if.then779.nvram_read_u8.exit3671_crit_edge:      ; preds = %if.then779
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3671

if.end.i3666:                                     ; preds = %if.then779
  %call2.i3663 = call ptr @strim(ptr noundef nonnull %buf.i3659) #6
  %call3.i3664 = call i32 @kstrtou8(ptr noundef %call2.i3663, i32 noundef 0, ptr noundef nonnull %var.i3660) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3664)
  %tobool4.not.i3665 = icmp eq i32 %call3.i3664, 0
  br i1 %tobool4.not.i3665, label %if.end8.i3669, label %do.end.i3668

do.end.i3668:                                     ; preds = %if.end.i3666
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.148, ptr noundef null, ptr noundef nonnull %buf.i3659, i32 noundef %call3.i3664) #9
  br label %nvram_read_u8.exit3671

if.end8.i3669:                                    ; preds = %if.end.i3666
  call void @__sanitizer_cov_trace_pc() #8
  %628 = ptrtoint ptr %var.i3660 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %var.i3660, align 1
  %630 = ptrtoint ptr %hw_iqcal_en to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 %629, ptr %hw_iqcal_en, align 1
  br label %nvram_read_u8.exit3671

nvram_read_u8.exit3671:                           ; preds = %if.end8.i3669, %do.end.i3668, %if.then779.nvram_read_u8.exit3671_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3660) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3659) #6
  br label %if.end781

if.end781:                                        ; preds = %nvram_read_u8.exit3671, %if.end773.if.end781_crit_edge
  %631 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %sprom, align 4
  %conv783 = zext i8 %632 to i32
  %shl784 = shl nuw i32 1, %conv783
  %and785 = and i32 %shl784, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and785)
  %tobool786.not = icmp eq i32 %and785, 0
  br i1 %tobool786.not, label %if.end781.if.end789_crit_edge, label %if.then787

if.end781.if.end789_crit_edge:                    ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end789

if.then787:                                       ; preds = %if.end781
  %elna2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 110
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3672) #6
  %633 = call ptr @memset(ptr %buf.i3672, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3673) #6
  %634 = ptrtoint ptr %var.i3673 to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 -1, ptr %var.i3673, align 1, !annotation !557
  %call.i3674 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull %buf.i3672, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3674)
  %cmp.i3675 = icmp slt i32 %call.i3674, 0
  br i1 %cmp.i3675, label %if.then787.nvram_read_u8.exit3684_crit_edge, label %if.end.i3679

if.then787.nvram_read_u8.exit3684_crit_edge:      ; preds = %if.then787
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3684

if.end.i3679:                                     ; preds = %if.then787
  %call2.i3676 = call ptr @strim(ptr noundef nonnull %buf.i3672) #6
  %call3.i3677 = call i32 @kstrtou8(ptr noundef %call2.i3676, i32 noundef 0, ptr noundef nonnull %var.i3673) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3677)
  %tobool4.not.i3678 = icmp eq i32 %call3.i3677, 0
  br i1 %tobool4.not.i3678, label %if.end8.i3682, label %do.end.i3681

do.end.i3681:                                     ; preds = %if.end.i3679
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef nonnull %buf.i3672, i32 noundef %call3.i3677) #9
  br label %nvram_read_u8.exit3684

if.end8.i3682:                                    ; preds = %if.end.i3679
  call void @__sanitizer_cov_trace_pc() #8
  %635 = ptrtoint ptr %var.i3673 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %var.i3673, align 1
  %637 = ptrtoint ptr %elna2g to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 %636, ptr %elna2g, align 1
  br label %nvram_read_u8.exit3684

nvram_read_u8.exit3684:                           ; preds = %if.end8.i3682, %do.end.i3681, %if.then787.nvram_read_u8.exit3684_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3673) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3672) #6
  br label %if.end789

if.end789:                                        ; preds = %nvram_read_u8.exit3684, %if.end781.if.end789_crit_edge
  %638 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %sprom, align 4
  %conv791 = zext i8 %639 to i32
  %shl792 = shl nuw i32 1, %conv791
  %and793 = and i32 %shl792, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and793)
  %tobool794.not = icmp eq i32 %and793, 0
  br i1 %tobool794.not, label %if.end789.if.end797_crit_edge, label %if.then795

if.end789.if.end797_crit_edge:                    ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end797

if.then795:                                       ; preds = %if.end789
  %elna5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 111
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3685) #6
  %640 = call ptr @memset(ptr %buf.i3685, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3686) #6
  %641 = ptrtoint ptr %var.i3686 to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 -1, ptr %var.i3686, align 1, !annotation !557
  %call.i3687 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull %buf.i3685, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3687)
  %cmp.i3688 = icmp slt i32 %call.i3687, 0
  br i1 %cmp.i3688, label %if.then795.nvram_read_u8.exit3697_crit_edge, label %if.end.i3692

if.then795.nvram_read_u8.exit3697_crit_edge:      ; preds = %if.then795
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3697

if.end.i3692:                                     ; preds = %if.then795
  %call2.i3689 = call ptr @strim(ptr noundef nonnull %buf.i3685) #6
  %call3.i3690 = call i32 @kstrtou8(ptr noundef %call2.i3689, i32 noundef 0, ptr noundef nonnull %var.i3686) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3690)
  %tobool4.not.i3691 = icmp eq i32 %call3.i3690, 0
  br i1 %tobool4.not.i3691, label %if.end8.i3695, label %do.end.i3694

do.end.i3694:                                     ; preds = %if.end.i3692
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef nonnull %buf.i3685, i32 noundef %call3.i3690) #9
  br label %nvram_read_u8.exit3697

if.end8.i3695:                                    ; preds = %if.end.i3692
  call void @__sanitizer_cov_trace_pc() #8
  %642 = ptrtoint ptr %var.i3686 to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %var.i3686, align 1
  %644 = ptrtoint ptr %elna5g to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %643, ptr %elna5g, align 1
  br label %nvram_read_u8.exit3697

nvram_read_u8.exit3697:                           ; preds = %if.end8.i3695, %do.end.i3694, %if.then795.nvram_read_u8.exit3697_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3686) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3685) #6
  %645 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %645)
  %.pr5003 = load i8, ptr %sprom, align 4
  br label %if.end797

if.end797:                                        ; preds = %nvram_read_u8.exit3697, %if.end789.if.end797_crit_edge
  %646 = phi i8 [ %.pr5003, %nvram_read_u8.exit3697 ], [ %639, %if.end789.if.end797_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %646)
  %tobool802.not = icmp ult i8 %646, 8
  br i1 %tobool802.not, label %if.end797.if.end805_crit_edge, label %if.then803

if.end797.if.end805_crit_edge:                    ; preds = %if.end797
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end805

if.then803:                                       ; preds = %if.end797
  %phycal_tempdelta = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 112
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3698) #6
  %647 = call ptr @memset(ptr %buf.i3698, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3699) #6
  %648 = ptrtoint ptr %var.i3699 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 -1, ptr %var.i3699, align 1, !annotation !557
  %call.i3700 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull %buf.i3698, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3700)
  %cmp.i3701 = icmp slt i32 %call.i3700, 0
  br i1 %cmp.i3701, label %if.then803.nvram_read_u8.exit3710_crit_edge, label %if.end.i3705

if.then803.nvram_read_u8.exit3710_crit_edge:      ; preds = %if.then803
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3710

if.end.i3705:                                     ; preds = %if.then803
  %call2.i3702 = call ptr @strim(ptr noundef nonnull %buf.i3698) #6
  %call3.i3703 = call i32 @kstrtou8(ptr noundef %call2.i3702, i32 noundef 0, ptr noundef nonnull %var.i3699) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3703)
  %tobool4.not.i3704 = icmp eq i32 %call3.i3703, 0
  br i1 %tobool4.not.i3704, label %if.end8.i3708, label %do.end.i3707

do.end.i3707:                                     ; preds = %if.end.i3705
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.151, ptr noundef null, ptr noundef nonnull %buf.i3698, i32 noundef %call3.i3703) #9
  br label %nvram_read_u8.exit3710

if.end8.i3708:                                    ; preds = %if.end.i3705
  call void @__sanitizer_cov_trace_pc() #8
  %649 = ptrtoint ptr %var.i3699 to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %var.i3699, align 1
  %651 = ptrtoint ptr %phycal_tempdelta to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 %650, ptr %phycal_tempdelta, align 1
  br label %nvram_read_u8.exit3710

nvram_read_u8.exit3710:                           ; preds = %if.end8.i3708, %do.end.i3707, %if.then803.nvram_read_u8.exit3710_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3699) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3698) #6
  br label %if.end805

if.end805:                                        ; preds = %nvram_read_u8.exit3710, %if.end797.if.end805_crit_edge
  %652 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %653)
  %tobool810.not = icmp ult i8 %653, 8
  br i1 %tobool810.not, label %if.end805.if.end837_crit_edge, label %if.then811

if.end805.if.end837_crit_edge:                    ; preds = %if.end805
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

if.then811:                                       ; preds = %if.end805
  %temps_period = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 113
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3711) #6
  %654 = call ptr @memset(ptr %buf.i3711, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3712) #6
  %655 = ptrtoint ptr %var.i3712 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 -1, ptr %var.i3712, align 1, !annotation !557
  %call.i3713 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull %buf.i3711, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3713)
  %cmp.i3714 = icmp slt i32 %call.i3713, 0
  br i1 %cmp.i3714, label %if.then811.if.end813_crit_edge, label %if.end.i3718

if.then811.if.end813_crit_edge:                   ; preds = %if.then811
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end813

if.end.i3718:                                     ; preds = %if.then811
  %call2.i3715 = call ptr @strim(ptr noundef nonnull %buf.i3711) #6
  %call3.i3716 = call i32 @kstrtou8(ptr noundef %call2.i3715, i32 noundef 0, ptr noundef nonnull %var.i3712) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3716)
  %tobool4.not.i3717 = icmp eq i32 %call3.i3716, 0
  br i1 %tobool4.not.i3717, label %if.end8.i3721, label %do.end.i3720

do.end.i3720:                                     ; preds = %if.end.i3718
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef nonnull %buf.i3711, i32 noundef %call3.i3716) #9
  br label %if.end813

if.end8.i3721:                                    ; preds = %if.end.i3718
  call void @__sanitizer_cov_trace_pc() #8
  %656 = ptrtoint ptr %var.i3712 to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %var.i3712, align 1
  %658 = ptrtoint ptr %temps_period to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %657, ptr %temps_period, align 1
  br label %if.end813

if.end813:                                        ; preds = %if.end8.i3721, %do.end.i3720, %if.then811.if.end813_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3712) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3711) #6
  %659 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %659)
  %.pr5004 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr5004)
  %tobool818.not = icmp ult i8 %.pr5004, 8
  br i1 %tobool818.not, label %if.end813.if.end837_crit_edge, label %if.then819

if.end813.if.end837_crit_edge:                    ; preds = %if.end813
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

if.then819:                                       ; preds = %if.end813
  %temps_hysteresis = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 114
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3724) #6
  %660 = call ptr @memset(ptr %buf.i3724, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3725) #6
  %661 = ptrtoint ptr %var.i3725 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 -1, ptr %var.i3725, align 1, !annotation !557
  %call.i3726 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull %buf.i3724, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3726)
  %cmp.i3727 = icmp slt i32 %call.i3726, 0
  br i1 %cmp.i3727, label %if.then819.if.end821_crit_edge, label %if.end.i3731

if.then819.if.end821_crit_edge:                   ; preds = %if.then819
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end821

if.end.i3731:                                     ; preds = %if.then819
  %call2.i3728 = call ptr @strim(ptr noundef nonnull %buf.i3724) #6
  %call3.i3729 = call i32 @kstrtou8(ptr noundef %call2.i3728, i32 noundef 0, ptr noundef nonnull %var.i3725) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3729)
  %tobool4.not.i3730 = icmp eq i32 %call3.i3729, 0
  br i1 %tobool4.not.i3730, label %if.end8.i3734, label %do.end.i3733

do.end.i3733:                                     ; preds = %if.end.i3731
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3732 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.153, ptr noundef null, ptr noundef nonnull %buf.i3724, i32 noundef %call3.i3729) #9
  br label %if.end821

if.end8.i3734:                                    ; preds = %if.end.i3731
  call void @__sanitizer_cov_trace_pc() #8
  %662 = ptrtoint ptr %var.i3725 to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %var.i3725, align 1
  %664 = ptrtoint ptr %temps_hysteresis to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 %663, ptr %temps_hysteresis, align 1
  br label %if.end821

if.end821:                                        ; preds = %if.end8.i3734, %do.end.i3733, %if.then819.if.end821_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3725) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3724) #6
  %665 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %665)
  %.pr5006 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr5006)
  %tobool826.not = icmp ult i8 %.pr5006, 8
  br i1 %tobool826.not, label %if.end821.if.end837_crit_edge, label %if.then827

if.end821.if.end837_crit_edge:                    ; preds = %if.end821
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

if.then827:                                       ; preds = %if.end821
  %measpower1 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 115
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3737) #6
  %666 = call ptr @memset(ptr %buf.i3737, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3738) #6
  %667 = ptrtoint ptr %var.i3738 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 -1, ptr %var.i3738, align 1, !annotation !557
  %call.i3739 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull %buf.i3737, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3739)
  %cmp.i3740 = icmp slt i32 %call.i3739, 0
  br i1 %cmp.i3740, label %if.then827.if.end829_crit_edge, label %if.end.i3744

if.then827.if.end829_crit_edge:                   ; preds = %if.then827
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end829

if.end.i3744:                                     ; preds = %if.then827
  %call2.i3741 = call ptr @strim(ptr noundef nonnull %buf.i3737) #6
  %call3.i3742 = call i32 @kstrtou8(ptr noundef %call2.i3741, i32 noundef 0, ptr noundef nonnull %var.i3738) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3742)
  %tobool4.not.i3743 = icmp eq i32 %call3.i3742, 0
  br i1 %tobool4.not.i3743, label %if.end8.i3747, label %do.end.i3746

do.end.i3746:                                     ; preds = %if.end.i3744
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef nonnull %buf.i3737, i32 noundef %call3.i3742) #9
  br label %if.end829

if.end8.i3747:                                    ; preds = %if.end.i3744
  call void @__sanitizer_cov_trace_pc() #8
  %668 = ptrtoint ptr %var.i3738 to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %var.i3738, align 1
  %670 = ptrtoint ptr %measpower1 to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %669, ptr %measpower1, align 1
  br label %if.end829

if.end829:                                        ; preds = %if.end8.i3747, %do.end.i3746, %if.then827.if.end829_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3738) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3737) #6
  %671 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %671)
  %.pr5008.pr = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %.pr5008.pr)
  %tobool834.not = icmp ult i8 %.pr5008.pr, 8
  br i1 %tobool834.not, label %if.end829.if.end837_crit_edge, label %if.then835

if.end829.if.end837_crit_edge:                    ; preds = %if.end829
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

if.then835:                                       ; preds = %if.end829
  %measpower2 = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 116
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3750) #6
  %672 = call ptr @memset(ptr %buf.i3750, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i3751) #6
  %673 = ptrtoint ptr %var.i3751 to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 -1, ptr %var.i3751, align 1, !annotation !557
  %call.i3752 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull %buf.i3750, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3752)
  %cmp.i3753 = icmp slt i32 %call.i3752, 0
  br i1 %cmp.i3753, label %if.then835.nvram_read_u8.exit3762_crit_edge, label %if.end.i3757

if.then835.nvram_read_u8.exit3762_crit_edge:      ; preds = %if.then835
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit3762

if.end.i3757:                                     ; preds = %if.then835
  %call2.i3754 = call ptr @strim(ptr noundef nonnull %buf.i3750) #6
  %call3.i3755 = call i32 @kstrtou8(ptr noundef %call2.i3754, i32 noundef 0, ptr noundef nonnull %var.i3751) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3755)
  %tobool4.not.i3756 = icmp eq i32 %call3.i3755, 0
  br i1 %tobool4.not.i3756, label %if.end8.i3760, label %do.end.i3759

do.end.i3759:                                     ; preds = %if.end.i3757
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3758 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.155, ptr noundef null, ptr noundef nonnull %buf.i3750, i32 noundef %call3.i3755) #9
  br label %nvram_read_u8.exit3762

if.end8.i3760:                                    ; preds = %if.end.i3757
  call void @__sanitizer_cov_trace_pc() #8
  %674 = ptrtoint ptr %var.i3751 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %var.i3751, align 1
  %676 = ptrtoint ptr %measpower2 to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 %675, ptr %measpower2, align 1
  br label %nvram_read_u8.exit3762

nvram_read_u8.exit3762:                           ; preds = %if.end8.i3760, %do.end.i3759, %if.then835.nvram_read_u8.exit3762_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i3751) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3750) #6
  br label %if.end837

if.end837:                                        ; preds = %nvram_read_u8.exit3762, %if.end829.if.end837_crit_edge, %if.end821.if.end837_crit_edge, %if.end813.if.end837_crit_edge, %if.end805.if.end837_crit_edge
  %677 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %677)
  %678 = load i8, ptr %sprom, align 4
  %conv839 = zext i8 %678 to i32
  %shl840 = shl nuw i32 1, %conv839
  %and841 = and i32 %shl840, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and841)
  %tobool842.not = icmp eq i32 %and841, 0
  br i1 %tobool842.not, label %if.end837.if.end845_crit_edge, label %if.then843

if.end837.if.end845_crit_edge:                    ; preds = %if.end837
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end845

if.then843:                                       ; preds = %if.end837
  %cck2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 62
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3763) #6
  %679 = call ptr @memset(ptr %buf.i3763, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3764) #6
  %680 = ptrtoint ptr %var.i3764 to i32
  call void @__asan_store2_noabort(i32 %680)
  store i16 -1, ptr %var.i3764, align 2, !annotation !557
  %call.i3765 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull %buf.i3763, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3765)
  %cmp.i3766 = icmp slt i32 %call.i3765, 0
  br i1 %cmp.i3766, label %if.then843.nvram_read_u16.exit3774_crit_edge, label %if.end.i3770

if.then843.nvram_read_u16.exit3774_crit_edge:     ; preds = %if.then843
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3774

if.end.i3770:                                     ; preds = %if.then843
  %call2.i3767 = call ptr @strim(ptr noundef nonnull %buf.i3763) #6
  %call3.i3768 = call i32 @kstrtou16(ptr noundef %call2.i3767, i32 noundef 0, ptr noundef nonnull %var.i3764) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3768)
  %tobool4.not.i3769 = icmp eq i32 %call3.i3768, 0
  br i1 %tobool4.not.i3769, label %if.end15.i3773, label %do.end.i3772

do.end.i3772:                                     ; preds = %if.end.i3770
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3771 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef nonnull %buf.i3763, i32 noundef %call3.i3768) #9
  br label %nvram_read_u16.exit3774

if.end15.i3773:                                   ; preds = %if.end.i3770
  call void @__sanitizer_cov_trace_pc() #8
  %681 = ptrtoint ptr %var.i3764 to i32
  call void @__asan_load2_noabort(i32 %681)
  %682 = load i16, ptr %var.i3764, align 2
  %683 = ptrtoint ptr %cck2gpo to i32
  call void @__asan_store2_noabort(i32 %683)
  store i16 %682, ptr %cck2gpo, align 2
  br label %nvram_read_u16.exit3774

nvram_read_u16.exit3774:                          ; preds = %if.end15.i3773, %do.end.i3772, %if.then843.nvram_read_u16.exit3774_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3764) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3763) #6
  br label %if.end845

if.end845:                                        ; preds = %nvram_read_u16.exit3774, %if.end837.if.end845_crit_edge
  %684 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %sprom, align 4
  %conv847 = zext i8 %685 to i32
  %shl848 = shl nuw i32 1, %conv847
  %and849 = and i32 %shl848, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and849)
  %tobool850.not = icmp eq i32 %and849, 0
  br i1 %tobool850.not, label %if.end845.if.end853_crit_edge, label %if.then851

if.end845.if.end853_crit_edge:                    ; preds = %if.end845
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end853

if.then851:                                       ; preds = %if.end845
  %ofdm2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 63
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3775) #6
  %686 = call ptr @memset(ptr %buf.i3775, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i3776) #6
  %687 = ptrtoint ptr %var.i3776 to i32
  call void @__asan_store4_noabort(i32 %687)
  store i32 -1, ptr %var.i3776, align 4, !annotation !557
  %call.i3777 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull %buf.i3775, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3777)
  %cmp.i3778 = icmp slt i32 %call.i3777, 0
  br i1 %cmp.i3778, label %if.then851.nvram_read_u32.exit3786_crit_edge, label %if.end.i3782

if.then851.nvram_read_u32.exit3786_crit_edge:     ; preds = %if.then851
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit3786

if.end.i3782:                                     ; preds = %if.then851
  %call2.i3779 = call ptr @strim(ptr noundef nonnull %buf.i3775) #6
  %call.i.i3780 = call i32 @kstrtouint(ptr noundef %call2.i3779, i32 noundef 0, ptr noundef nonnull %var.i3776) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3780)
  %tobool4.not.i3781 = icmp eq i32 %call.i.i3780, 0
  br i1 %tobool4.not.i3781, label %if.end12.i3785, label %do.end.i3784

do.end.i3784:                                     ; preds = %if.end.i3782
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3783 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef nonnull %buf.i3775, i32 noundef %call.i.i3780) #9
  br label %nvram_read_u32.exit3786

if.end12.i3785:                                   ; preds = %if.end.i3782
  call void @__sanitizer_cov_trace_pc() #8
  %688 = ptrtoint ptr %var.i3776 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %var.i3776, align 4
  %690 = ptrtoint ptr %ofdm2gpo to i32
  call void @__asan_store4_noabort(i32 %690)
  store i32 %689, ptr %ofdm2gpo, align 4
  br label %nvram_read_u32.exit3786

nvram_read_u32.exit3786:                          ; preds = %if.end12.i3785, %do.end.i3784, %if.then851.nvram_read_u32.exit3786_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i3776) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3775) #6
  br label %if.end853

if.end853:                                        ; preds = %nvram_read_u32.exit3786, %if.end845.if.end853_crit_edge
  %691 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %sprom, align 4
  %conv855 = zext i8 %692 to i32
  %shl856 = shl nuw i32 1, %conv855
  %and857 = and i32 %shl856, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and857)
  %tobool858.not = icmp eq i32 %and857, 0
  br i1 %tobool858.not, label %if.end853.if.end861_crit_edge, label %if.then859

if.end853.if.end861_crit_edge:                    ; preds = %if.end853
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end861

if.then859:                                       ; preds = %if.end853
  %ofdm5gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 65
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3787) #6
  %693 = call ptr @memset(ptr %buf.i3787, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i3788) #6
  %694 = ptrtoint ptr %var.i3788 to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 -1, ptr %var.i3788, align 4, !annotation !557
  %call.i3789 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull %buf.i3787, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3789)
  %cmp.i3790 = icmp slt i32 %call.i3789, 0
  br i1 %cmp.i3790, label %if.then859.nvram_read_u32.exit3798_crit_edge, label %if.end.i3794

if.then859.nvram_read_u32.exit3798_crit_edge:     ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit3798

if.end.i3794:                                     ; preds = %if.then859
  %call2.i3791 = call ptr @strim(ptr noundef nonnull %buf.i3787) #6
  %call.i.i3792 = call i32 @kstrtouint(ptr noundef %call2.i3791, i32 noundef 0, ptr noundef nonnull %var.i3788) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3792)
  %tobool4.not.i3793 = icmp eq i32 %call.i.i3792, 0
  br i1 %tobool4.not.i3793, label %if.end12.i3797, label %do.end.i3796

do.end.i3796:                                     ; preds = %if.end.i3794
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3795 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef nonnull %buf.i3787, i32 noundef %call.i.i3792) #9
  br label %nvram_read_u32.exit3798

if.end12.i3797:                                   ; preds = %if.end.i3794
  call void @__sanitizer_cov_trace_pc() #8
  %695 = ptrtoint ptr %var.i3788 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %var.i3788, align 4
  %697 = ptrtoint ptr %ofdm5gpo to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %696, ptr %ofdm5gpo, align 4
  br label %nvram_read_u32.exit3798

nvram_read_u32.exit3798:                          ; preds = %if.end12.i3797, %do.end.i3796, %if.then859.nvram_read_u32.exit3798_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i3788) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3787) #6
  br label %if.end861

if.end861:                                        ; preds = %nvram_read_u32.exit3798, %if.end853.if.end861_crit_edge
  %698 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %sprom, align 4
  %conv863 = zext i8 %699 to i32
  %shl864 = shl nuw i32 1, %conv863
  %and865 = and i32 %shl864, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and865)
  %tobool866.not = icmp eq i32 %and865, 0
  br i1 %tobool866.not, label %if.end861.if.end869_crit_edge, label %if.then867

if.end861.if.end869_crit_edge:                    ; preds = %if.end861
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end869

if.then867:                                       ; preds = %if.end861
  %ofdm5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 64
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3799) #6
  %700 = call ptr @memset(ptr %buf.i3799, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i3800) #6
  %701 = ptrtoint ptr %var.i3800 to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 -1, ptr %var.i3800, align 4, !annotation !557
  %call.i3801 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull %buf.i3799, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3801)
  %cmp.i3802 = icmp slt i32 %call.i3801, 0
  br i1 %cmp.i3802, label %if.then867.nvram_read_u32.exit3810_crit_edge, label %if.end.i3806

if.then867.nvram_read_u32.exit3810_crit_edge:     ; preds = %if.then867
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit3810

if.end.i3806:                                     ; preds = %if.then867
  %call2.i3803 = call ptr @strim(ptr noundef nonnull %buf.i3799) #6
  %call.i.i3804 = call i32 @kstrtouint(ptr noundef %call2.i3803, i32 noundef 0, ptr noundef nonnull %var.i3800) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3804)
  %tobool4.not.i3805 = icmp eq i32 %call.i.i3804, 0
  br i1 %tobool4.not.i3805, label %if.end12.i3809, label %do.end.i3808

do.end.i3808:                                     ; preds = %if.end.i3806
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3807 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef nonnull %buf.i3799, i32 noundef %call.i.i3804) #9
  br label %nvram_read_u32.exit3810

if.end12.i3809:                                   ; preds = %if.end.i3806
  call void @__sanitizer_cov_trace_pc() #8
  %702 = ptrtoint ptr %var.i3800 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %var.i3800, align 4
  %704 = ptrtoint ptr %ofdm5glpo to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 %703, ptr %ofdm5glpo, align 4
  br label %nvram_read_u32.exit3810

nvram_read_u32.exit3810:                          ; preds = %if.end12.i3809, %do.end.i3808, %if.then867.nvram_read_u32.exit3810_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i3800) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3799) #6
  br label %if.end869

if.end869:                                        ; preds = %nvram_read_u32.exit3810, %if.end861.if.end869_crit_edge
  %705 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %sprom, align 4
  %conv871 = zext i8 %706 to i32
  %shl872 = shl nuw i32 1, %conv871
  %and873 = and i32 %shl872, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and873)
  %tobool874.not = icmp eq i32 %and873, 0
  br i1 %tobool874.not, label %if.end869.if.end877_crit_edge, label %if.then875

if.end869.if.end877_crit_edge:                    ; preds = %if.end869
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end877

if.then875:                                       ; preds = %if.end869
  %ofdm5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 66
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3811) #6
  %707 = call ptr @memset(ptr %buf.i3811, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i3812) #6
  %708 = ptrtoint ptr %var.i3812 to i32
  call void @__asan_store4_noabort(i32 %708)
  store i32 -1, ptr %var.i3812, align 4, !annotation !557
  %call.i3813 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull %buf.i3811, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3813)
  %cmp.i3814 = icmp slt i32 %call.i3813, 0
  br i1 %cmp.i3814, label %if.then875.nvram_read_u32.exit3822_crit_edge, label %if.end.i3818

if.then875.nvram_read_u32.exit3822_crit_edge:     ; preds = %if.then875
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit3822

if.end.i3818:                                     ; preds = %if.then875
  %call2.i3815 = call ptr @strim(ptr noundef nonnull %buf.i3811) #6
  %call.i.i3816 = call i32 @kstrtouint(ptr noundef %call2.i3815, i32 noundef 0, ptr noundef nonnull %var.i3812) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3816)
  %tobool4.not.i3817 = icmp eq i32 %call.i.i3816, 0
  br i1 %tobool4.not.i3817, label %if.end12.i3821, label %do.end.i3820

do.end.i3820:                                     ; preds = %if.end.i3818
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3819 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.160, ptr noundef null, ptr noundef nonnull %buf.i3811, i32 noundef %call.i.i3816) #9
  br label %nvram_read_u32.exit3822

if.end12.i3821:                                   ; preds = %if.end.i3818
  call void @__sanitizer_cov_trace_pc() #8
  %709 = ptrtoint ptr %var.i3812 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %var.i3812, align 4
  %711 = ptrtoint ptr %ofdm5ghpo to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %710, ptr %ofdm5ghpo, align 4
  br label %nvram_read_u32.exit3822

nvram_read_u32.exit3822:                          ; preds = %if.end12.i3821, %do.end.i3820, %if.then875.nvram_read_u32.exit3822_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i3812) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3811) #6
  br label %if.end877

if.end877:                                        ; preds = %nvram_read_u32.exit3822, %if.end869.if.end877_crit_edge
  %712 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %sprom, align 4
  %conv879 = zext i8 %713 to i32
  %shl880 = shl nuw i32 1, %conv879
  %and881 = and i32 %shl880, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and881)
  %tobool882.not = icmp eq i32 %and881, 0
  br i1 %tobool882.not, label %if.end877.if.end886_crit_edge, label %if.then883

if.end877.if.end886_crit_edge:                    ; preds = %if.end877
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end886

if.then883:                                       ; preds = %if.end877
  %mcs2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 77
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3823) #6
  %714 = call ptr @memset(ptr %buf.i3823, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3824) #6
  %715 = ptrtoint ptr %var.i3824 to i32
  call void @__asan_store2_noabort(i32 %715)
  store i16 -1, ptr %var.i3824, align 2, !annotation !557
  %call.i3825 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull %buf.i3823, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3825)
  %cmp.i3826 = icmp slt i32 %call.i3825, 0
  br i1 %cmp.i3826, label %if.then883.nvram_read_u16.exit3834_crit_edge, label %if.end.i3830

if.then883.nvram_read_u16.exit3834_crit_edge:     ; preds = %if.then883
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3834

if.end.i3830:                                     ; preds = %if.then883
  %call2.i3827 = call ptr @strim(ptr noundef nonnull %buf.i3823) #6
  %call3.i3828 = call i32 @kstrtou16(ptr noundef %call2.i3827, i32 noundef 0, ptr noundef nonnull %var.i3824) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3828)
  %tobool4.not.i3829 = icmp eq i32 %call3.i3828, 0
  br i1 %tobool4.not.i3829, label %if.end15.i3833, label %do.end.i3832

do.end.i3832:                                     ; preds = %if.end.i3830
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef nonnull %buf.i3823, i32 noundef %call3.i3828) #9
  br label %nvram_read_u16.exit3834

if.end15.i3833:                                   ; preds = %if.end.i3830
  call void @__sanitizer_cov_trace_pc() #8
  %716 = ptrtoint ptr %var.i3824 to i32
  call void @__asan_load2_noabort(i32 %716)
  %717 = load i16, ptr %var.i3824, align 2
  %718 = ptrtoint ptr %mcs2gpo to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 %717, ptr %mcs2gpo, align 2
  br label %nvram_read_u16.exit3834

nvram_read_u16.exit3834:                          ; preds = %if.end15.i3833, %do.end.i3832, %if.then883.nvram_read_u16.exit3834_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3824) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3823) #6
  br label %if.end886

if.end886:                                        ; preds = %nvram_read_u16.exit3834, %if.end877.if.end886_crit_edge
  %719 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %sprom, align 4
  %conv888 = zext i8 %720 to i32
  %shl889 = shl nuw i32 1, %conv888
  %and890 = and i32 %shl889, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and890)
  %tobool891.not = icmp eq i32 %and890, 0
  br i1 %tobool891.not, label %if.end886.if.end896_crit_edge, label %if.then892

if.end886.if.end896_crit_edge:                    ; preds = %if.end886
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end896

if.then892:                                       ; preds = %if.end886
  %arrayidx894 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3835) #6
  %721 = call ptr @memset(ptr %buf.i3835, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3836) #6
  %722 = ptrtoint ptr %var.i3836 to i32
  call void @__asan_store2_noabort(i32 %722)
  store i16 -1, ptr %var.i3836, align 2, !annotation !557
  %call.i3837 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull %buf.i3835, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3837)
  %cmp.i3838 = icmp slt i32 %call.i3837, 0
  br i1 %cmp.i3838, label %if.then892.nvram_read_u16.exit3846_crit_edge, label %if.end.i3842

if.then892.nvram_read_u16.exit3846_crit_edge:     ; preds = %if.then892
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3846

if.end.i3842:                                     ; preds = %if.then892
  %call2.i3839 = call ptr @strim(ptr noundef nonnull %buf.i3835) #6
  %call3.i3840 = call i32 @kstrtou16(ptr noundef %call2.i3839, i32 noundef 0, ptr noundef nonnull %var.i3836) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3840)
  %tobool4.not.i3841 = icmp eq i32 %call3.i3840, 0
  br i1 %tobool4.not.i3841, label %if.end15.i3845, label %do.end.i3844

do.end.i3844:                                     ; preds = %if.end.i3842
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3843 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.162, ptr noundef null, ptr noundef nonnull %buf.i3835, i32 noundef %call3.i3840) #9
  br label %nvram_read_u16.exit3846

if.end15.i3845:                                   ; preds = %if.end.i3842
  call void @__sanitizer_cov_trace_pc() #8
  %723 = ptrtoint ptr %var.i3836 to i32
  call void @__asan_load2_noabort(i32 %723)
  %724 = load i16, ptr %var.i3836, align 2
  %725 = ptrtoint ptr %arrayidx894 to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 %724, ptr %arrayidx894, align 2
  br label %nvram_read_u16.exit3846

nvram_read_u16.exit3846:                          ; preds = %if.end15.i3845, %do.end.i3844, %if.then892.nvram_read_u16.exit3846_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3836) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3835) #6
  br label %if.end896

if.end896:                                        ; preds = %nvram_read_u16.exit3846, %if.end886.if.end896_crit_edge
  %726 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %sprom, align 4
  %conv898 = zext i8 %727 to i32
  %shl899 = shl nuw i32 1, %conv898
  %and900 = and i32 %shl899, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and900)
  %tobool901.not = icmp eq i32 %and900, 0
  br i1 %tobool901.not, label %if.end896.if.end906_crit_edge, label %if.then902

if.end896.if.end906_crit_edge:                    ; preds = %if.end896
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end906

if.then902:                                       ; preds = %if.end896
  %arrayidx904 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3847) #6
  %728 = call ptr @memset(ptr %buf.i3847, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3848) #6
  %729 = ptrtoint ptr %var.i3848 to i32
  call void @__asan_store2_noabort(i32 %729)
  store i16 -1, ptr %var.i3848, align 2, !annotation !557
  %call.i3849 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull %buf.i3847, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3849)
  %cmp.i3850 = icmp slt i32 %call.i3849, 0
  br i1 %cmp.i3850, label %if.then902.nvram_read_u16.exit3858_crit_edge, label %if.end.i3854

if.then902.nvram_read_u16.exit3858_crit_edge:     ; preds = %if.then902
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3858

if.end.i3854:                                     ; preds = %if.then902
  %call2.i3851 = call ptr @strim(ptr noundef nonnull %buf.i3847) #6
  %call3.i3852 = call i32 @kstrtou16(ptr noundef %call2.i3851, i32 noundef 0, ptr noundef nonnull %var.i3848) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3852)
  %tobool4.not.i3853 = icmp eq i32 %call3.i3852, 0
  br i1 %tobool4.not.i3853, label %if.end15.i3857, label %do.end.i3856

do.end.i3856:                                     ; preds = %if.end.i3854
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3855 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef nonnull %buf.i3847, i32 noundef %call3.i3852) #9
  br label %nvram_read_u16.exit3858

if.end15.i3857:                                   ; preds = %if.end.i3854
  call void @__sanitizer_cov_trace_pc() #8
  %730 = ptrtoint ptr %var.i3848 to i32
  call void @__asan_load2_noabort(i32 %730)
  %731 = load i16, ptr %var.i3848, align 2
  %732 = ptrtoint ptr %arrayidx904 to i32
  call void @__asan_store2_noabort(i32 %732)
  store i16 %731, ptr %arrayidx904, align 2
  br label %nvram_read_u16.exit3858

nvram_read_u16.exit3858:                          ; preds = %if.end15.i3857, %do.end.i3856, %if.then902.nvram_read_u16.exit3858_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3848) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3847) #6
  br label %if.end906

if.end906:                                        ; preds = %nvram_read_u16.exit3858, %if.end896.if.end906_crit_edge
  %733 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %sprom, align 4
  %conv908 = zext i8 %734 to i32
  %shl909 = shl nuw i32 1, %conv908
  %and910 = and i32 %shl909, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and910)
  %tobool911.not = icmp eq i32 %and910, 0
  br i1 %tobool911.not, label %if.end906.if.end916_crit_edge, label %if.then912

if.end906.if.end916_crit_edge:                    ; preds = %if.end906
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end916

if.then912:                                       ; preds = %if.end906
  %arrayidx914 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3859) #6
  %735 = call ptr @memset(ptr %buf.i3859, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3860) #6
  %736 = ptrtoint ptr %var.i3860 to i32
  call void @__asan_store2_noabort(i32 %736)
  store i16 -1, ptr %var.i3860, align 2, !annotation !557
  %call.i3861 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull %buf.i3859, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3861)
  %cmp.i3862 = icmp slt i32 %call.i3861, 0
  br i1 %cmp.i3862, label %if.then912.nvram_read_u16.exit3870_crit_edge, label %if.end.i3866

if.then912.nvram_read_u16.exit3870_crit_edge:     ; preds = %if.then912
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3870

if.end.i3866:                                     ; preds = %if.then912
  %call2.i3863 = call ptr @strim(ptr noundef nonnull %buf.i3859) #6
  %call3.i3864 = call i32 @kstrtou16(ptr noundef %call2.i3863, i32 noundef 0, ptr noundef nonnull %var.i3860) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3864)
  %tobool4.not.i3865 = icmp eq i32 %call3.i3864, 0
  br i1 %tobool4.not.i3865, label %if.end15.i3869, label %do.end.i3868

do.end.i3868:                                     ; preds = %if.end.i3866
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3867 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.164, ptr noundef null, ptr noundef nonnull %buf.i3859, i32 noundef %call3.i3864) #9
  br label %nvram_read_u16.exit3870

if.end15.i3869:                                   ; preds = %if.end.i3866
  call void @__sanitizer_cov_trace_pc() #8
  %737 = ptrtoint ptr %var.i3860 to i32
  call void @__asan_load2_noabort(i32 %737)
  %738 = load i16, ptr %var.i3860, align 2
  %739 = ptrtoint ptr %arrayidx914 to i32
  call void @__asan_store2_noabort(i32 %739)
  store i16 %738, ptr %arrayidx914, align 2
  br label %nvram_read_u16.exit3870

nvram_read_u16.exit3870:                          ; preds = %if.end15.i3869, %do.end.i3868, %if.then912.nvram_read_u16.exit3870_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3860) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3859) #6
  br label %if.end916

if.end916:                                        ; preds = %nvram_read_u16.exit3870, %if.end906.if.end916_crit_edge
  %740 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %sprom, align 4
  %conv918 = zext i8 %741 to i32
  %shl919 = shl nuw i32 1, %conv918
  %and920 = and i32 %shl919, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and920)
  %tobool921.not = icmp eq i32 %and920, 0
  br i1 %tobool921.not, label %if.end916.if.end926_crit_edge, label %if.then922

if.end916.if.end926_crit_edge:                    ; preds = %if.end916
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end926

if.then922:                                       ; preds = %if.end916
  %arrayidx924 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3871) #6
  %742 = call ptr @memset(ptr %buf.i3871, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3872) #6
  %743 = ptrtoint ptr %var.i3872 to i32
  call void @__asan_store2_noabort(i32 %743)
  store i16 -1, ptr %var.i3872, align 2, !annotation !557
  %call.i3873 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull %buf.i3871, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3873)
  %cmp.i3874 = icmp slt i32 %call.i3873, 0
  br i1 %cmp.i3874, label %if.then922.nvram_read_u16.exit3882_crit_edge, label %if.end.i3878

if.then922.nvram_read_u16.exit3882_crit_edge:     ; preds = %if.then922
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3882

if.end.i3878:                                     ; preds = %if.then922
  %call2.i3875 = call ptr @strim(ptr noundef nonnull %buf.i3871) #6
  %call3.i3876 = call i32 @kstrtou16(ptr noundef %call2.i3875, i32 noundef 0, ptr noundef nonnull %var.i3872) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3876)
  %tobool4.not.i3877 = icmp eq i32 %call3.i3876, 0
  br i1 %tobool4.not.i3877, label %if.end15.i3881, label %do.end.i3880

do.end.i3880:                                     ; preds = %if.end.i3878
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3879 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.165, ptr noundef null, ptr noundef nonnull %buf.i3871, i32 noundef %call3.i3876) #9
  br label %nvram_read_u16.exit3882

if.end15.i3881:                                   ; preds = %if.end.i3878
  call void @__sanitizer_cov_trace_pc() #8
  %744 = ptrtoint ptr %var.i3872 to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %var.i3872, align 2
  %746 = ptrtoint ptr %arrayidx924 to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 %745, ptr %arrayidx924, align 2
  br label %nvram_read_u16.exit3882

nvram_read_u16.exit3882:                          ; preds = %if.end15.i3881, %do.end.i3880, %if.then922.nvram_read_u16.exit3882_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3872) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3871) #6
  br label %if.end926

if.end926:                                        ; preds = %nvram_read_u16.exit3882, %if.end916.if.end926_crit_edge
  %747 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %sprom, align 4
  %conv928 = zext i8 %748 to i32
  %shl929 = shl nuw i32 1, %conv928
  %and930 = and i32 %shl929, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and930)
  %tobool931.not = icmp eq i32 %and930, 0
  br i1 %tobool931.not, label %if.end926.if.end936_crit_edge, label %if.then932

if.end926.if.end936_crit_edge:                    ; preds = %if.end926
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end936

if.then932:                                       ; preds = %if.end926
  %arrayidx934 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3883) #6
  %749 = call ptr @memset(ptr %buf.i3883, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3884) #6
  %750 = ptrtoint ptr %var.i3884 to i32
  call void @__asan_store2_noabort(i32 %750)
  store i16 -1, ptr %var.i3884, align 2, !annotation !557
  %call.i3885 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull %buf.i3883, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3885)
  %cmp.i3886 = icmp slt i32 %call.i3885, 0
  br i1 %cmp.i3886, label %if.then932.nvram_read_u16.exit3894_crit_edge, label %if.end.i3890

if.then932.nvram_read_u16.exit3894_crit_edge:     ; preds = %if.then932
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3894

if.end.i3890:                                     ; preds = %if.then932
  %call2.i3887 = call ptr @strim(ptr noundef nonnull %buf.i3883) #6
  %call3.i3888 = call i32 @kstrtou16(ptr noundef %call2.i3887, i32 noundef 0, ptr noundef nonnull %var.i3884) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3888)
  %tobool4.not.i3889 = icmp eq i32 %call3.i3888, 0
  br i1 %tobool4.not.i3889, label %if.end15.i3893, label %do.end.i3892

do.end.i3892:                                     ; preds = %if.end.i3890
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3891 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef nonnull %buf.i3883, i32 noundef %call3.i3888) #9
  br label %nvram_read_u16.exit3894

if.end15.i3893:                                   ; preds = %if.end.i3890
  call void @__sanitizer_cov_trace_pc() #8
  %751 = ptrtoint ptr %var.i3884 to i32
  call void @__asan_load2_noabort(i32 %751)
  %752 = load i16, ptr %var.i3884, align 2
  %753 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_store2_noabort(i32 %753)
  store i16 %752, ptr %arrayidx934, align 2
  br label %nvram_read_u16.exit3894

nvram_read_u16.exit3894:                          ; preds = %if.end15.i3893, %do.end.i3892, %if.then932.nvram_read_u16.exit3894_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3884) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3883) #6
  br label %if.end936

if.end936:                                        ; preds = %nvram_read_u16.exit3894, %if.end926.if.end936_crit_edge
  %754 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %sprom, align 4
  %conv938 = zext i8 %755 to i32
  %shl939 = shl nuw i32 1, %conv938
  %and940 = and i32 %shl939, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and940)
  %tobool941.not = icmp eq i32 %and940, 0
  br i1 %tobool941.not, label %if.end936.if.end946_crit_edge, label %if.then942

if.end936.if.end946_crit_edge:                    ; preds = %if.end936
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end946

if.then942:                                       ; preds = %if.end936
  %arrayidx944 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3895) #6
  %756 = call ptr @memset(ptr %buf.i3895, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3896) #6
  %757 = ptrtoint ptr %var.i3896 to i32
  call void @__asan_store2_noabort(i32 %757)
  store i16 -1, ptr %var.i3896, align 2, !annotation !557
  %call.i3897 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull %buf.i3895, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3897)
  %cmp.i3898 = icmp slt i32 %call.i3897, 0
  br i1 %cmp.i3898, label %if.then942.nvram_read_u16.exit3906_crit_edge, label %if.end.i3902

if.then942.nvram_read_u16.exit3906_crit_edge:     ; preds = %if.then942
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3906

if.end.i3902:                                     ; preds = %if.then942
  %call2.i3899 = call ptr @strim(ptr noundef nonnull %buf.i3895) #6
  %call3.i3900 = call i32 @kstrtou16(ptr noundef %call2.i3899, i32 noundef 0, ptr noundef nonnull %var.i3896) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3900)
  %tobool4.not.i3901 = icmp eq i32 %call3.i3900, 0
  br i1 %tobool4.not.i3901, label %if.end15.i3905, label %do.end.i3904

do.end.i3904:                                     ; preds = %if.end.i3902
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3903 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.167, ptr noundef null, ptr noundef nonnull %buf.i3895, i32 noundef %call3.i3900) #9
  br label %nvram_read_u16.exit3906

if.end15.i3905:                                   ; preds = %if.end.i3902
  call void @__sanitizer_cov_trace_pc() #8
  %758 = ptrtoint ptr %var.i3896 to i32
  call void @__asan_load2_noabort(i32 %758)
  %759 = load i16, ptr %var.i3896, align 2
  %760 = ptrtoint ptr %arrayidx944 to i32
  call void @__asan_store2_noabort(i32 %760)
  store i16 %759, ptr %arrayidx944, align 2
  br label %nvram_read_u16.exit3906

nvram_read_u16.exit3906:                          ; preds = %if.end15.i3905, %do.end.i3904, %if.then942.nvram_read_u16.exit3906_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3896) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3895) #6
  br label %if.end946

if.end946:                                        ; preds = %nvram_read_u16.exit3906, %if.end936.if.end946_crit_edge
  %761 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %sprom, align 4
  %conv948 = zext i8 %762 to i32
  %shl949 = shl nuw i32 1, %conv948
  %and950 = and i32 %shl949, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and950)
  %tobool951.not = icmp eq i32 %and950, 0
  br i1 %tobool951.not, label %if.end946.if.end956_crit_edge, label %if.then952

if.end946.if.end956_crit_edge:                    ; preds = %if.end946
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end956

if.then952:                                       ; preds = %if.end946
  %arrayidx954 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 77, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3907) #6
  %763 = call ptr @memset(ptr %buf.i3907, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3908) #6
  %764 = ptrtoint ptr %var.i3908 to i32
  call void @__asan_store2_noabort(i32 %764)
  store i16 -1, ptr %var.i3908, align 2, !annotation !557
  %call.i3909 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull %buf.i3907, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3909)
  %cmp.i3910 = icmp slt i32 %call.i3909, 0
  br i1 %cmp.i3910, label %if.then952.nvram_read_u16.exit3918_crit_edge, label %if.end.i3914

if.then952.nvram_read_u16.exit3918_crit_edge:     ; preds = %if.then952
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3918

if.end.i3914:                                     ; preds = %if.then952
  %call2.i3911 = call ptr @strim(ptr noundef nonnull %buf.i3907) #6
  %call3.i3912 = call i32 @kstrtou16(ptr noundef %call2.i3911, i32 noundef 0, ptr noundef nonnull %var.i3908) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3912)
  %tobool4.not.i3913 = icmp eq i32 %call3.i3912, 0
  br i1 %tobool4.not.i3913, label %if.end15.i3917, label %do.end.i3916

do.end.i3916:                                     ; preds = %if.end.i3914
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef nonnull %buf.i3907, i32 noundef %call3.i3912) #9
  br label %nvram_read_u16.exit3918

if.end15.i3917:                                   ; preds = %if.end.i3914
  call void @__sanitizer_cov_trace_pc() #8
  %765 = ptrtoint ptr %var.i3908 to i32
  call void @__asan_load2_noabort(i32 %765)
  %766 = load i16, ptr %var.i3908, align 2
  %767 = ptrtoint ptr %arrayidx954 to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 %766, ptr %arrayidx954, align 2
  br label %nvram_read_u16.exit3918

nvram_read_u16.exit3918:                          ; preds = %if.end15.i3917, %do.end.i3916, %if.then952.nvram_read_u16.exit3918_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3908) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3907) #6
  br label %if.end956

if.end956:                                        ; preds = %nvram_read_u16.exit3918, %if.end946.if.end956_crit_edge
  %768 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %sprom, align 4
  %conv958 = zext i8 %769 to i32
  %shl959 = shl nuw i32 1, %conv958
  %and960 = and i32 %shl959, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and960)
  %tobool961.not = icmp eq i32 %and960, 0
  br i1 %tobool961.not, label %if.end956.if.end965_crit_edge, label %if.then962

if.end956.if.end965_crit_edge:                    ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end965

if.then962:                                       ; preds = %if.end956
  %mcs5gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 78
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3919) #6
  %770 = call ptr @memset(ptr %buf.i3919, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3920) #6
  %771 = ptrtoint ptr %var.i3920 to i32
  call void @__asan_store2_noabort(i32 %771)
  store i16 -1, ptr %var.i3920, align 2, !annotation !557
  %call.i3921 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull %buf.i3919, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3921)
  %cmp.i3922 = icmp slt i32 %call.i3921, 0
  br i1 %cmp.i3922, label %if.then962.nvram_read_u16.exit3930_crit_edge, label %if.end.i3926

if.then962.nvram_read_u16.exit3930_crit_edge:     ; preds = %if.then962
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3930

if.end.i3926:                                     ; preds = %if.then962
  %call2.i3923 = call ptr @strim(ptr noundef nonnull %buf.i3919) #6
  %call3.i3924 = call i32 @kstrtou16(ptr noundef %call2.i3923, i32 noundef 0, ptr noundef nonnull %var.i3920) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3924)
  %tobool4.not.i3925 = icmp eq i32 %call3.i3924, 0
  br i1 %tobool4.not.i3925, label %if.end15.i3929, label %do.end.i3928

do.end.i3928:                                     ; preds = %if.end.i3926
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3927 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef nonnull %buf.i3919, i32 noundef %call3.i3924) #9
  br label %nvram_read_u16.exit3930

if.end15.i3929:                                   ; preds = %if.end.i3926
  call void @__sanitizer_cov_trace_pc() #8
  %772 = ptrtoint ptr %var.i3920 to i32
  call void @__asan_load2_noabort(i32 %772)
  %773 = load i16, ptr %var.i3920, align 2
  %774 = ptrtoint ptr %mcs5gpo to i32
  call void @__asan_store2_noabort(i32 %774)
  store i16 %773, ptr %mcs5gpo, align 2
  br label %nvram_read_u16.exit3930

nvram_read_u16.exit3930:                          ; preds = %if.end15.i3929, %do.end.i3928, %if.then962.nvram_read_u16.exit3930_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3920) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3919) #6
  br label %if.end965

if.end965:                                        ; preds = %nvram_read_u16.exit3930, %if.end956.if.end965_crit_edge
  %775 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %sprom, align 4
  %conv967 = zext i8 %776 to i32
  %shl968 = shl nuw i32 1, %conv967
  %and969 = and i32 %shl968, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and969)
  %tobool970.not = icmp eq i32 %and969, 0
  br i1 %tobool970.not, label %if.end965.if.end975_crit_edge, label %if.then971

if.end965.if.end975_crit_edge:                    ; preds = %if.end965
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end975

if.then971:                                       ; preds = %if.end965
  %arrayidx973 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3931) #6
  %777 = call ptr @memset(ptr %buf.i3931, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3932) #6
  %778 = ptrtoint ptr %var.i3932 to i32
  call void @__asan_store2_noabort(i32 %778)
  store i16 -1, ptr %var.i3932, align 2, !annotation !557
  %call.i3933 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull %buf.i3931, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3933)
  %cmp.i3934 = icmp slt i32 %call.i3933, 0
  br i1 %cmp.i3934, label %if.then971.nvram_read_u16.exit3942_crit_edge, label %if.end.i3938

if.then971.nvram_read_u16.exit3942_crit_edge:     ; preds = %if.then971
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3942

if.end.i3938:                                     ; preds = %if.then971
  %call2.i3935 = call ptr @strim(ptr noundef nonnull %buf.i3931) #6
  %call3.i3936 = call i32 @kstrtou16(ptr noundef %call2.i3935, i32 noundef 0, ptr noundef nonnull %var.i3932) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3936)
  %tobool4.not.i3937 = icmp eq i32 %call3.i3936, 0
  br i1 %tobool4.not.i3937, label %if.end15.i3941, label %do.end.i3940

do.end.i3940:                                     ; preds = %if.end.i3938
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3939 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef nonnull %buf.i3931, i32 noundef %call3.i3936) #9
  br label %nvram_read_u16.exit3942

if.end15.i3941:                                   ; preds = %if.end.i3938
  call void @__sanitizer_cov_trace_pc() #8
  %779 = ptrtoint ptr %var.i3932 to i32
  call void @__asan_load2_noabort(i32 %779)
  %780 = load i16, ptr %var.i3932, align 2
  %781 = ptrtoint ptr %arrayidx973 to i32
  call void @__asan_store2_noabort(i32 %781)
  store i16 %780, ptr %arrayidx973, align 2
  br label %nvram_read_u16.exit3942

nvram_read_u16.exit3942:                          ; preds = %if.end15.i3941, %do.end.i3940, %if.then971.nvram_read_u16.exit3942_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3932) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3931) #6
  br label %if.end975

if.end975:                                        ; preds = %nvram_read_u16.exit3942, %if.end965.if.end975_crit_edge
  %782 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %782)
  %783 = load i8, ptr %sprom, align 4
  %conv977 = zext i8 %783 to i32
  %shl978 = shl nuw i32 1, %conv977
  %and979 = and i32 %shl978, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and979)
  %tobool980.not = icmp eq i32 %and979, 0
  br i1 %tobool980.not, label %if.end975.if.end985_crit_edge, label %if.then981

if.end975.if.end985_crit_edge:                    ; preds = %if.end975
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end985

if.then981:                                       ; preds = %if.end975
  %arrayidx983 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3943) #6
  %784 = call ptr @memset(ptr %buf.i3943, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3944) #6
  %785 = ptrtoint ptr %var.i3944 to i32
  call void @__asan_store2_noabort(i32 %785)
  store i16 -1, ptr %var.i3944, align 2, !annotation !557
  %call.i3945 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull %buf.i3943, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3945)
  %cmp.i3946 = icmp slt i32 %call.i3945, 0
  br i1 %cmp.i3946, label %if.then981.nvram_read_u16.exit3954_crit_edge, label %if.end.i3950

if.then981.nvram_read_u16.exit3954_crit_edge:     ; preds = %if.then981
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3954

if.end.i3950:                                     ; preds = %if.then981
  %call2.i3947 = call ptr @strim(ptr noundef nonnull %buf.i3943) #6
  %call3.i3948 = call i32 @kstrtou16(ptr noundef %call2.i3947, i32 noundef 0, ptr noundef nonnull %var.i3944) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3948)
  %tobool4.not.i3949 = icmp eq i32 %call3.i3948, 0
  br i1 %tobool4.not.i3949, label %if.end15.i3953, label %do.end.i3952

do.end.i3952:                                     ; preds = %if.end.i3950
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3951 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef nonnull %buf.i3943, i32 noundef %call3.i3948) #9
  br label %nvram_read_u16.exit3954

if.end15.i3953:                                   ; preds = %if.end.i3950
  call void @__sanitizer_cov_trace_pc() #8
  %786 = ptrtoint ptr %var.i3944 to i32
  call void @__asan_load2_noabort(i32 %786)
  %787 = load i16, ptr %var.i3944, align 2
  %788 = ptrtoint ptr %arrayidx983 to i32
  call void @__asan_store2_noabort(i32 %788)
  store i16 %787, ptr %arrayidx983, align 2
  br label %nvram_read_u16.exit3954

nvram_read_u16.exit3954:                          ; preds = %if.end15.i3953, %do.end.i3952, %if.then981.nvram_read_u16.exit3954_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3944) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3943) #6
  br label %if.end985

if.end985:                                        ; preds = %nvram_read_u16.exit3954, %if.end975.if.end985_crit_edge
  %789 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %789)
  %790 = load i8, ptr %sprom, align 4
  %conv987 = zext i8 %790 to i32
  %shl988 = shl nuw i32 1, %conv987
  %and989 = and i32 %shl988, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and989)
  %tobool990.not = icmp eq i32 %and989, 0
  br i1 %tobool990.not, label %if.end985.if.end995_crit_edge, label %if.then991

if.end985.if.end995_crit_edge:                    ; preds = %if.end985
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end995

if.then991:                                       ; preds = %if.end985
  %arrayidx993 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3955) #6
  %791 = call ptr @memset(ptr %buf.i3955, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3956) #6
  %792 = ptrtoint ptr %var.i3956 to i32
  call void @__asan_store2_noabort(i32 %792)
  store i16 -1, ptr %var.i3956, align 2, !annotation !557
  %call.i3957 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull %buf.i3955, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3957)
  %cmp.i3958 = icmp slt i32 %call.i3957, 0
  br i1 %cmp.i3958, label %if.then991.nvram_read_u16.exit3966_crit_edge, label %if.end.i3962

if.then991.nvram_read_u16.exit3966_crit_edge:     ; preds = %if.then991
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3966

if.end.i3962:                                     ; preds = %if.then991
  %call2.i3959 = call ptr @strim(ptr noundef nonnull %buf.i3955) #6
  %call3.i3960 = call i32 @kstrtou16(ptr noundef %call2.i3959, i32 noundef 0, ptr noundef nonnull %var.i3956) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3960)
  %tobool4.not.i3961 = icmp eq i32 %call3.i3960, 0
  br i1 %tobool4.not.i3961, label %if.end15.i3965, label %do.end.i3964

do.end.i3964:                                     ; preds = %if.end.i3962
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3963 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef nonnull %buf.i3955, i32 noundef %call3.i3960) #9
  br label %nvram_read_u16.exit3966

if.end15.i3965:                                   ; preds = %if.end.i3962
  call void @__sanitizer_cov_trace_pc() #8
  %793 = ptrtoint ptr %var.i3956 to i32
  call void @__asan_load2_noabort(i32 %793)
  %794 = load i16, ptr %var.i3956, align 2
  %795 = ptrtoint ptr %arrayidx993 to i32
  call void @__asan_store2_noabort(i32 %795)
  store i16 %794, ptr %arrayidx993, align 2
  br label %nvram_read_u16.exit3966

nvram_read_u16.exit3966:                          ; preds = %if.end15.i3965, %do.end.i3964, %if.then991.nvram_read_u16.exit3966_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3956) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3955) #6
  br label %if.end995

if.end995:                                        ; preds = %nvram_read_u16.exit3966, %if.end985.if.end995_crit_edge
  %796 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %sprom, align 4
  %conv997 = zext i8 %797 to i32
  %shl998 = shl nuw i32 1, %conv997
  %and999 = and i32 %shl998, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and999)
  %tobool1000.not = icmp eq i32 %and999, 0
  br i1 %tobool1000.not, label %if.end995.if.end1005_crit_edge, label %if.then1001

if.end995.if.end1005_crit_edge:                   ; preds = %if.end995
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1005

if.then1001:                                      ; preds = %if.end995
  %arrayidx1003 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3967) #6
  %798 = call ptr @memset(ptr %buf.i3967, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3968) #6
  %799 = ptrtoint ptr %var.i3968 to i32
  call void @__asan_store2_noabort(i32 %799)
  store i16 -1, ptr %var.i3968, align 2, !annotation !557
  %call.i3969 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull %buf.i3967, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3969)
  %cmp.i3970 = icmp slt i32 %call.i3969, 0
  br i1 %cmp.i3970, label %if.then1001.nvram_read_u16.exit3978_crit_edge, label %if.end.i3974

if.then1001.nvram_read_u16.exit3978_crit_edge:    ; preds = %if.then1001
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3978

if.end.i3974:                                     ; preds = %if.then1001
  %call2.i3971 = call ptr @strim(ptr noundef nonnull %buf.i3967) #6
  %call3.i3972 = call i32 @kstrtou16(ptr noundef %call2.i3971, i32 noundef 0, ptr noundef nonnull %var.i3968) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3972)
  %tobool4.not.i3973 = icmp eq i32 %call3.i3972, 0
  br i1 %tobool4.not.i3973, label %if.end15.i3977, label %do.end.i3976

do.end.i3976:                                     ; preds = %if.end.i3974
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3975 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef nonnull %buf.i3967, i32 noundef %call3.i3972) #9
  br label %nvram_read_u16.exit3978

if.end15.i3977:                                   ; preds = %if.end.i3974
  call void @__sanitizer_cov_trace_pc() #8
  %800 = ptrtoint ptr %var.i3968 to i32
  call void @__asan_load2_noabort(i32 %800)
  %801 = load i16, ptr %var.i3968, align 2
  %802 = ptrtoint ptr %arrayidx1003 to i32
  call void @__asan_store2_noabort(i32 %802)
  store i16 %801, ptr %arrayidx1003, align 2
  br label %nvram_read_u16.exit3978

nvram_read_u16.exit3978:                          ; preds = %if.end15.i3977, %do.end.i3976, %if.then1001.nvram_read_u16.exit3978_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3968) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3967) #6
  br label %if.end1005

if.end1005:                                       ; preds = %nvram_read_u16.exit3978, %if.end995.if.end1005_crit_edge
  %803 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %sprom, align 4
  %conv1007 = zext i8 %804 to i32
  %shl1008 = shl nuw i32 1, %conv1007
  %and1009 = and i32 %shl1008, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1009)
  %tobool1010.not = icmp eq i32 %and1009, 0
  br i1 %tobool1010.not, label %if.end1005.if.end1015_crit_edge, label %if.then1011

if.end1005.if.end1015_crit_edge:                  ; preds = %if.end1005
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1015

if.then1011:                                      ; preds = %if.end1005
  %arrayidx1013 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3979) #6
  %805 = call ptr @memset(ptr %buf.i3979, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3980) #6
  %806 = ptrtoint ptr %var.i3980 to i32
  call void @__asan_store2_noabort(i32 %806)
  store i16 -1, ptr %var.i3980, align 2, !annotation !557
  %call.i3981 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull %buf.i3979, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3981)
  %cmp.i3982 = icmp slt i32 %call.i3981, 0
  br i1 %cmp.i3982, label %if.then1011.nvram_read_u16.exit3990_crit_edge, label %if.end.i3986

if.then1011.nvram_read_u16.exit3990_crit_edge:    ; preds = %if.then1011
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit3990

if.end.i3986:                                     ; preds = %if.then1011
  %call2.i3983 = call ptr @strim(ptr noundef nonnull %buf.i3979) #6
  %call3.i3984 = call i32 @kstrtou16(ptr noundef %call2.i3983, i32 noundef 0, ptr noundef nonnull %var.i3980) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3984)
  %tobool4.not.i3985 = icmp eq i32 %call3.i3984, 0
  br i1 %tobool4.not.i3985, label %if.end15.i3989, label %do.end.i3988

do.end.i3988:                                     ; preds = %if.end.i3986
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3987 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef nonnull %buf.i3979, i32 noundef %call3.i3984) #9
  br label %nvram_read_u16.exit3990

if.end15.i3989:                                   ; preds = %if.end.i3986
  call void @__sanitizer_cov_trace_pc() #8
  %807 = ptrtoint ptr %var.i3980 to i32
  call void @__asan_load2_noabort(i32 %807)
  %808 = load i16, ptr %var.i3980, align 2
  %809 = ptrtoint ptr %arrayidx1013 to i32
  call void @__asan_store2_noabort(i32 %809)
  store i16 %808, ptr %arrayidx1013, align 2
  br label %nvram_read_u16.exit3990

nvram_read_u16.exit3990:                          ; preds = %if.end15.i3989, %do.end.i3988, %if.then1011.nvram_read_u16.exit3990_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3980) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3979) #6
  br label %if.end1015

if.end1015:                                       ; preds = %nvram_read_u16.exit3990, %if.end1005.if.end1015_crit_edge
  %810 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %sprom, align 4
  %conv1017 = zext i8 %811 to i32
  %shl1018 = shl nuw i32 1, %conv1017
  %and1019 = and i32 %shl1018, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1019)
  %tobool1020.not = icmp eq i32 %and1019, 0
  br i1 %tobool1020.not, label %if.end1015.if.end1025_crit_edge, label %if.then1021

if.end1015.if.end1025_crit_edge:                  ; preds = %if.end1015
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1025

if.then1021:                                      ; preds = %if.end1015
  %arrayidx1023 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i3991) #6
  %812 = call ptr @memset(ptr %buf.i3991, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i3992) #6
  %813 = ptrtoint ptr %var.i3992 to i32
  call void @__asan_store2_noabort(i32 %813)
  store i16 -1, ptr %var.i3992, align 2, !annotation !557
  %call.i3993 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull %buf.i3991, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3993)
  %cmp.i3994 = icmp slt i32 %call.i3993, 0
  br i1 %cmp.i3994, label %if.then1021.nvram_read_u16.exit4002_crit_edge, label %if.end.i3998

if.then1021.nvram_read_u16.exit4002_crit_edge:    ; preds = %if.then1021
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4002

if.end.i3998:                                     ; preds = %if.then1021
  %call2.i3995 = call ptr @strim(ptr noundef nonnull %buf.i3991) #6
  %call3.i3996 = call i32 @kstrtou16(ptr noundef %call2.i3995, i32 noundef 0, ptr noundef nonnull %var.i3992) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i3996)
  %tobool4.not.i3997 = icmp eq i32 %call3.i3996, 0
  br i1 %tobool4.not.i3997, label %if.end15.i4001, label %do.end.i4000

do.end.i4000:                                     ; preds = %if.end.i3998
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i3999 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef nonnull %buf.i3991, i32 noundef %call3.i3996) #9
  br label %nvram_read_u16.exit4002

if.end15.i4001:                                   ; preds = %if.end.i3998
  call void @__sanitizer_cov_trace_pc() #8
  %814 = ptrtoint ptr %var.i3992 to i32
  call void @__asan_load2_noabort(i32 %814)
  %815 = load i16, ptr %var.i3992, align 2
  %816 = ptrtoint ptr %arrayidx1023 to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 %815, ptr %arrayidx1023, align 2
  br label %nvram_read_u16.exit4002

nvram_read_u16.exit4002:                          ; preds = %if.end15.i4001, %do.end.i4000, %if.then1021.nvram_read_u16.exit4002_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i3992) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i3991) #6
  br label %if.end1025

if.end1025:                                       ; preds = %nvram_read_u16.exit4002, %if.end1015.if.end1025_crit_edge
  %817 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %817)
  %818 = load i8, ptr %sprom, align 4
  %conv1027 = zext i8 %818 to i32
  %shl1028 = shl nuw i32 1, %conv1027
  %and1029 = and i32 %shl1028, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1029)
  %tobool1030.not = icmp eq i32 %and1029, 0
  br i1 %tobool1030.not, label %if.end1025.if.end1035_crit_edge, label %if.then1031

if.end1025.if.end1035_crit_edge:                  ; preds = %if.end1025
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1035

if.then1031:                                      ; preds = %if.end1025
  %arrayidx1033 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 78, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4003) #6
  %819 = call ptr @memset(ptr %buf.i4003, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4004) #6
  %820 = ptrtoint ptr %var.i4004 to i32
  call void @__asan_store2_noabort(i32 %820)
  store i16 -1, ptr %var.i4004, align 2, !annotation !557
  %call.i4005 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull %buf.i4003, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4005)
  %cmp.i4006 = icmp slt i32 %call.i4005, 0
  br i1 %cmp.i4006, label %if.then1031.nvram_read_u16.exit4014_crit_edge, label %if.end.i4010

if.then1031.nvram_read_u16.exit4014_crit_edge:    ; preds = %if.then1031
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4014

if.end.i4010:                                     ; preds = %if.then1031
  %call2.i4007 = call ptr @strim(ptr noundef nonnull %buf.i4003) #6
  %call3.i4008 = call i32 @kstrtou16(ptr noundef %call2.i4007, i32 noundef 0, ptr noundef nonnull %var.i4004) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4008)
  %tobool4.not.i4009 = icmp eq i32 %call3.i4008, 0
  br i1 %tobool4.not.i4009, label %if.end15.i4013, label %do.end.i4012

do.end.i4012:                                     ; preds = %if.end.i4010
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4011 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.176, ptr noundef null, ptr noundef nonnull %buf.i4003, i32 noundef %call3.i4008) #9
  br label %nvram_read_u16.exit4014

if.end15.i4013:                                   ; preds = %if.end.i4010
  call void @__sanitizer_cov_trace_pc() #8
  %821 = ptrtoint ptr %var.i4004 to i32
  call void @__asan_load2_noabort(i32 %821)
  %822 = load i16, ptr %var.i4004, align 2
  %823 = ptrtoint ptr %arrayidx1033 to i32
  call void @__asan_store2_noabort(i32 %823)
  store i16 %822, ptr %arrayidx1033, align 2
  br label %nvram_read_u16.exit4014

nvram_read_u16.exit4014:                          ; preds = %if.end15.i4013, %do.end.i4012, %if.then1031.nvram_read_u16.exit4014_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4004) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4003) #6
  br label %if.end1035

if.end1035:                                       ; preds = %nvram_read_u16.exit4014, %if.end1025.if.end1035_crit_edge
  %824 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %824)
  %825 = load i8, ptr %sprom, align 4
  %conv1037 = zext i8 %825 to i32
  %shl1038 = shl nuw i32 1, %conv1037
  %and1039 = and i32 %shl1038, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1039)
  %tobool1040.not = icmp eq i32 %and1039, 0
  br i1 %tobool1040.not, label %if.end1035.if.end1044_crit_edge, label %if.then1041

if.end1035.if.end1044_crit_edge:                  ; preds = %if.end1035
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1044

if.then1041:                                      ; preds = %if.end1035
  %mcs5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4015) #6
  %826 = call ptr @memset(ptr %buf.i4015, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4016) #6
  %827 = ptrtoint ptr %var.i4016 to i32
  call void @__asan_store2_noabort(i32 %827)
  store i16 -1, ptr %var.i4016, align 2, !annotation !557
  %call.i4017 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull %buf.i4015, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4017)
  %cmp.i4018 = icmp slt i32 %call.i4017, 0
  br i1 %cmp.i4018, label %if.then1041.nvram_read_u16.exit4026_crit_edge, label %if.end.i4022

if.then1041.nvram_read_u16.exit4026_crit_edge:    ; preds = %if.then1041
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4026

if.end.i4022:                                     ; preds = %if.then1041
  %call2.i4019 = call ptr @strim(ptr noundef nonnull %buf.i4015) #6
  %call3.i4020 = call i32 @kstrtou16(ptr noundef %call2.i4019, i32 noundef 0, ptr noundef nonnull %var.i4016) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4020)
  %tobool4.not.i4021 = icmp eq i32 %call3.i4020, 0
  br i1 %tobool4.not.i4021, label %if.end15.i4025, label %do.end.i4024

do.end.i4024:                                     ; preds = %if.end.i4022
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4023 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.177, ptr noundef null, ptr noundef nonnull %buf.i4015, i32 noundef %call3.i4020) #9
  br label %nvram_read_u16.exit4026

if.end15.i4025:                                   ; preds = %if.end.i4022
  call void @__sanitizer_cov_trace_pc() #8
  %828 = ptrtoint ptr %var.i4016 to i32
  call void @__asan_load2_noabort(i32 %828)
  %829 = load i16, ptr %var.i4016, align 2
  %830 = ptrtoint ptr %mcs5glpo to i32
  call void @__asan_store2_noabort(i32 %830)
  store i16 %829, ptr %mcs5glpo, align 2
  br label %nvram_read_u16.exit4026

nvram_read_u16.exit4026:                          ; preds = %if.end15.i4025, %do.end.i4024, %if.then1041.nvram_read_u16.exit4026_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4016) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4015) #6
  br label %if.end1044

if.end1044:                                       ; preds = %nvram_read_u16.exit4026, %if.end1035.if.end1044_crit_edge
  %831 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %831)
  %832 = load i8, ptr %sprom, align 4
  %conv1046 = zext i8 %832 to i32
  %shl1047 = shl nuw i32 1, %conv1046
  %and1048 = and i32 %shl1047, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1048)
  %tobool1049.not = icmp eq i32 %and1048, 0
  br i1 %tobool1049.not, label %if.end1044.if.end1054_crit_edge, label %if.then1050

if.end1044.if.end1054_crit_edge:                  ; preds = %if.end1044
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1054

if.then1050:                                      ; preds = %if.end1044
  %arrayidx1052 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4027) #6
  %833 = call ptr @memset(ptr %buf.i4027, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4028) #6
  %834 = ptrtoint ptr %var.i4028 to i32
  call void @__asan_store2_noabort(i32 %834)
  store i16 -1, ptr %var.i4028, align 2, !annotation !557
  %call.i4029 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull %buf.i4027, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4029)
  %cmp.i4030 = icmp slt i32 %call.i4029, 0
  br i1 %cmp.i4030, label %if.then1050.nvram_read_u16.exit4038_crit_edge, label %if.end.i4034

if.then1050.nvram_read_u16.exit4038_crit_edge:    ; preds = %if.then1050
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4038

if.end.i4034:                                     ; preds = %if.then1050
  %call2.i4031 = call ptr @strim(ptr noundef nonnull %buf.i4027) #6
  %call3.i4032 = call i32 @kstrtou16(ptr noundef %call2.i4031, i32 noundef 0, ptr noundef nonnull %var.i4028) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4032)
  %tobool4.not.i4033 = icmp eq i32 %call3.i4032, 0
  br i1 %tobool4.not.i4033, label %if.end15.i4037, label %do.end.i4036

do.end.i4036:                                     ; preds = %if.end.i4034
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4035 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef nonnull %buf.i4027, i32 noundef %call3.i4032) #9
  br label %nvram_read_u16.exit4038

if.end15.i4037:                                   ; preds = %if.end.i4034
  call void @__sanitizer_cov_trace_pc() #8
  %835 = ptrtoint ptr %var.i4028 to i32
  call void @__asan_load2_noabort(i32 %835)
  %836 = load i16, ptr %var.i4028, align 2
  %837 = ptrtoint ptr %arrayidx1052 to i32
  call void @__asan_store2_noabort(i32 %837)
  store i16 %836, ptr %arrayidx1052, align 2
  br label %nvram_read_u16.exit4038

nvram_read_u16.exit4038:                          ; preds = %if.end15.i4037, %do.end.i4036, %if.then1050.nvram_read_u16.exit4038_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4028) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4027) #6
  br label %if.end1054

if.end1054:                                       ; preds = %nvram_read_u16.exit4038, %if.end1044.if.end1054_crit_edge
  %838 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %838)
  %839 = load i8, ptr %sprom, align 4
  %conv1056 = zext i8 %839 to i32
  %shl1057 = shl nuw i32 1, %conv1056
  %and1058 = and i32 %shl1057, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1058)
  %tobool1059.not = icmp eq i32 %and1058, 0
  br i1 %tobool1059.not, label %if.end1054.if.end1064_crit_edge, label %if.then1060

if.end1054.if.end1064_crit_edge:                  ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1064

if.then1060:                                      ; preds = %if.end1054
  %arrayidx1062 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4039) #6
  %840 = call ptr @memset(ptr %buf.i4039, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4040) #6
  %841 = ptrtoint ptr %var.i4040 to i32
  call void @__asan_store2_noabort(i32 %841)
  store i16 -1, ptr %var.i4040, align 2, !annotation !557
  %call.i4041 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull %buf.i4039, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4041)
  %cmp.i4042 = icmp slt i32 %call.i4041, 0
  br i1 %cmp.i4042, label %if.then1060.nvram_read_u16.exit4050_crit_edge, label %if.end.i4046

if.then1060.nvram_read_u16.exit4050_crit_edge:    ; preds = %if.then1060
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4050

if.end.i4046:                                     ; preds = %if.then1060
  %call2.i4043 = call ptr @strim(ptr noundef nonnull %buf.i4039) #6
  %call3.i4044 = call i32 @kstrtou16(ptr noundef %call2.i4043, i32 noundef 0, ptr noundef nonnull %var.i4040) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4044)
  %tobool4.not.i4045 = icmp eq i32 %call3.i4044, 0
  br i1 %tobool4.not.i4045, label %if.end15.i4049, label %do.end.i4048

do.end.i4048:                                     ; preds = %if.end.i4046
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4047 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.179, ptr noundef null, ptr noundef nonnull %buf.i4039, i32 noundef %call3.i4044) #9
  br label %nvram_read_u16.exit4050

if.end15.i4049:                                   ; preds = %if.end.i4046
  call void @__sanitizer_cov_trace_pc() #8
  %842 = ptrtoint ptr %var.i4040 to i32
  call void @__asan_load2_noabort(i32 %842)
  %843 = load i16, ptr %var.i4040, align 2
  %844 = ptrtoint ptr %arrayidx1062 to i32
  call void @__asan_store2_noabort(i32 %844)
  store i16 %843, ptr %arrayidx1062, align 2
  br label %nvram_read_u16.exit4050

nvram_read_u16.exit4050:                          ; preds = %if.end15.i4049, %do.end.i4048, %if.then1060.nvram_read_u16.exit4050_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4040) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4039) #6
  br label %if.end1064

if.end1064:                                       ; preds = %nvram_read_u16.exit4050, %if.end1054.if.end1064_crit_edge
  %845 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %sprom, align 4
  %conv1066 = zext i8 %846 to i32
  %shl1067 = shl nuw i32 1, %conv1066
  %and1068 = and i32 %shl1067, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1068)
  %tobool1069.not = icmp eq i32 %and1068, 0
  br i1 %tobool1069.not, label %if.end1064.if.end1074_crit_edge, label %if.then1070

if.end1064.if.end1074_crit_edge:                  ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1074

if.then1070:                                      ; preds = %if.end1064
  %arrayidx1072 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4051) #6
  %847 = call ptr @memset(ptr %buf.i4051, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4052) #6
  %848 = ptrtoint ptr %var.i4052 to i32
  call void @__asan_store2_noabort(i32 %848)
  store i16 -1, ptr %var.i4052, align 2, !annotation !557
  %call.i4053 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull %buf.i4051, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4053)
  %cmp.i4054 = icmp slt i32 %call.i4053, 0
  br i1 %cmp.i4054, label %if.then1070.nvram_read_u16.exit4062_crit_edge, label %if.end.i4058

if.then1070.nvram_read_u16.exit4062_crit_edge:    ; preds = %if.then1070
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4062

if.end.i4058:                                     ; preds = %if.then1070
  %call2.i4055 = call ptr @strim(ptr noundef nonnull %buf.i4051) #6
  %call3.i4056 = call i32 @kstrtou16(ptr noundef %call2.i4055, i32 noundef 0, ptr noundef nonnull %var.i4052) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4056)
  %tobool4.not.i4057 = icmp eq i32 %call3.i4056, 0
  br i1 %tobool4.not.i4057, label %if.end15.i4061, label %do.end.i4060

do.end.i4060:                                     ; preds = %if.end.i4058
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4059 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef nonnull %buf.i4051, i32 noundef %call3.i4056) #9
  br label %nvram_read_u16.exit4062

if.end15.i4061:                                   ; preds = %if.end.i4058
  call void @__sanitizer_cov_trace_pc() #8
  %849 = ptrtoint ptr %var.i4052 to i32
  call void @__asan_load2_noabort(i32 %849)
  %850 = load i16, ptr %var.i4052, align 2
  %851 = ptrtoint ptr %arrayidx1072 to i32
  call void @__asan_store2_noabort(i32 %851)
  store i16 %850, ptr %arrayidx1072, align 2
  br label %nvram_read_u16.exit4062

nvram_read_u16.exit4062:                          ; preds = %if.end15.i4061, %do.end.i4060, %if.then1070.nvram_read_u16.exit4062_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4052) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4051) #6
  br label %if.end1074

if.end1074:                                       ; preds = %nvram_read_u16.exit4062, %if.end1064.if.end1074_crit_edge
  %852 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %sprom, align 4
  %conv1076 = zext i8 %853 to i32
  %shl1077 = shl nuw i32 1, %conv1076
  %and1078 = and i32 %shl1077, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1078)
  %tobool1079.not = icmp eq i32 %and1078, 0
  br i1 %tobool1079.not, label %if.end1074.if.end1084_crit_edge, label %if.then1080

if.end1074.if.end1084_crit_edge:                  ; preds = %if.end1074
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1084

if.then1080:                                      ; preds = %if.end1074
  %arrayidx1082 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4063) #6
  %854 = call ptr @memset(ptr %buf.i4063, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4064) #6
  %855 = ptrtoint ptr %var.i4064 to i32
  call void @__asan_store2_noabort(i32 %855)
  store i16 -1, ptr %var.i4064, align 2, !annotation !557
  %call.i4065 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull %buf.i4063, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4065)
  %cmp.i4066 = icmp slt i32 %call.i4065, 0
  br i1 %cmp.i4066, label %if.then1080.nvram_read_u16.exit4074_crit_edge, label %if.end.i4070

if.then1080.nvram_read_u16.exit4074_crit_edge:    ; preds = %if.then1080
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4074

if.end.i4070:                                     ; preds = %if.then1080
  %call2.i4067 = call ptr @strim(ptr noundef nonnull %buf.i4063) #6
  %call3.i4068 = call i32 @kstrtou16(ptr noundef %call2.i4067, i32 noundef 0, ptr noundef nonnull %var.i4064) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4068)
  %tobool4.not.i4069 = icmp eq i32 %call3.i4068, 0
  br i1 %tobool4.not.i4069, label %if.end15.i4073, label %do.end.i4072

do.end.i4072:                                     ; preds = %if.end.i4070
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4071 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef nonnull %buf.i4063, i32 noundef %call3.i4068) #9
  br label %nvram_read_u16.exit4074

if.end15.i4073:                                   ; preds = %if.end.i4070
  call void @__sanitizer_cov_trace_pc() #8
  %856 = ptrtoint ptr %var.i4064 to i32
  call void @__asan_load2_noabort(i32 %856)
  %857 = load i16, ptr %var.i4064, align 2
  %858 = ptrtoint ptr %arrayidx1082 to i32
  call void @__asan_store2_noabort(i32 %858)
  store i16 %857, ptr %arrayidx1082, align 2
  br label %nvram_read_u16.exit4074

nvram_read_u16.exit4074:                          ; preds = %if.end15.i4073, %do.end.i4072, %if.then1080.nvram_read_u16.exit4074_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4064) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4063) #6
  br label %if.end1084

if.end1084:                                       ; preds = %nvram_read_u16.exit4074, %if.end1074.if.end1084_crit_edge
  %859 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %859)
  %860 = load i8, ptr %sprom, align 4
  %conv1086 = zext i8 %860 to i32
  %shl1087 = shl nuw i32 1, %conv1086
  %and1088 = and i32 %shl1087, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1088)
  %tobool1089.not = icmp eq i32 %and1088, 0
  br i1 %tobool1089.not, label %if.end1084.if.end1094_crit_edge, label %if.then1090

if.end1084.if.end1094_crit_edge:                  ; preds = %if.end1084
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1094

if.then1090:                                      ; preds = %if.end1084
  %arrayidx1092 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4075) #6
  %861 = call ptr @memset(ptr %buf.i4075, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4076) #6
  %862 = ptrtoint ptr %var.i4076 to i32
  call void @__asan_store2_noabort(i32 %862)
  store i16 -1, ptr %var.i4076, align 2, !annotation !557
  %call.i4077 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull %buf.i4075, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4077)
  %cmp.i4078 = icmp slt i32 %call.i4077, 0
  br i1 %cmp.i4078, label %if.then1090.nvram_read_u16.exit4086_crit_edge, label %if.end.i4082

if.then1090.nvram_read_u16.exit4086_crit_edge:    ; preds = %if.then1090
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4086

if.end.i4082:                                     ; preds = %if.then1090
  %call2.i4079 = call ptr @strim(ptr noundef nonnull %buf.i4075) #6
  %call3.i4080 = call i32 @kstrtou16(ptr noundef %call2.i4079, i32 noundef 0, ptr noundef nonnull %var.i4076) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4080)
  %tobool4.not.i4081 = icmp eq i32 %call3.i4080, 0
  br i1 %tobool4.not.i4081, label %if.end15.i4085, label %do.end.i4084

do.end.i4084:                                     ; preds = %if.end.i4082
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4083 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef nonnull %buf.i4075, i32 noundef %call3.i4080) #9
  br label %nvram_read_u16.exit4086

if.end15.i4085:                                   ; preds = %if.end.i4082
  call void @__sanitizer_cov_trace_pc() #8
  %863 = ptrtoint ptr %var.i4076 to i32
  call void @__asan_load2_noabort(i32 %863)
  %864 = load i16, ptr %var.i4076, align 2
  %865 = ptrtoint ptr %arrayidx1092 to i32
  call void @__asan_store2_noabort(i32 %865)
  store i16 %864, ptr %arrayidx1092, align 2
  br label %nvram_read_u16.exit4086

nvram_read_u16.exit4086:                          ; preds = %if.end15.i4085, %do.end.i4084, %if.then1090.nvram_read_u16.exit4086_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4076) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4075) #6
  br label %if.end1094

if.end1094:                                       ; preds = %nvram_read_u16.exit4086, %if.end1084.if.end1094_crit_edge
  %866 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %866)
  %867 = load i8, ptr %sprom, align 4
  %conv1096 = zext i8 %867 to i32
  %shl1097 = shl nuw i32 1, %conv1096
  %and1098 = and i32 %shl1097, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1098)
  %tobool1099.not = icmp eq i32 %and1098, 0
  br i1 %tobool1099.not, label %if.end1094.if.end1104_crit_edge, label %if.then1100

if.end1094.if.end1104_crit_edge:                  ; preds = %if.end1094
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1104

if.then1100:                                      ; preds = %if.end1094
  %arrayidx1102 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4087) #6
  %868 = call ptr @memset(ptr %buf.i4087, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4088) #6
  %869 = ptrtoint ptr %var.i4088 to i32
  call void @__asan_store2_noabort(i32 %869)
  store i16 -1, ptr %var.i4088, align 2, !annotation !557
  %call.i4089 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull %buf.i4087, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4089)
  %cmp.i4090 = icmp slt i32 %call.i4089, 0
  br i1 %cmp.i4090, label %if.then1100.nvram_read_u16.exit4098_crit_edge, label %if.end.i4094

if.then1100.nvram_read_u16.exit4098_crit_edge:    ; preds = %if.then1100
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4098

if.end.i4094:                                     ; preds = %if.then1100
  %call2.i4091 = call ptr @strim(ptr noundef nonnull %buf.i4087) #6
  %call3.i4092 = call i32 @kstrtou16(ptr noundef %call2.i4091, i32 noundef 0, ptr noundef nonnull %var.i4088) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4092)
  %tobool4.not.i4093 = icmp eq i32 %call3.i4092, 0
  br i1 %tobool4.not.i4093, label %if.end15.i4097, label %do.end.i4096

do.end.i4096:                                     ; preds = %if.end.i4094
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4095 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.183, ptr noundef null, ptr noundef nonnull %buf.i4087, i32 noundef %call3.i4092) #9
  br label %nvram_read_u16.exit4098

if.end15.i4097:                                   ; preds = %if.end.i4094
  call void @__sanitizer_cov_trace_pc() #8
  %870 = ptrtoint ptr %var.i4088 to i32
  call void @__asan_load2_noabort(i32 %870)
  %871 = load i16, ptr %var.i4088, align 2
  %872 = ptrtoint ptr %arrayidx1102 to i32
  call void @__asan_store2_noabort(i32 %872)
  store i16 %871, ptr %arrayidx1102, align 2
  br label %nvram_read_u16.exit4098

nvram_read_u16.exit4098:                          ; preds = %if.end15.i4097, %do.end.i4096, %if.then1100.nvram_read_u16.exit4098_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4088) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4087) #6
  br label %if.end1104

if.end1104:                                       ; preds = %nvram_read_u16.exit4098, %if.end1094.if.end1104_crit_edge
  %873 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %873)
  %874 = load i8, ptr %sprom, align 4
  %conv1106 = zext i8 %874 to i32
  %shl1107 = shl nuw i32 1, %conv1106
  %and1108 = and i32 %shl1107, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1108)
  %tobool1109.not = icmp eq i32 %and1108, 0
  br i1 %tobool1109.not, label %if.end1104.if.end1114_crit_edge, label %if.then1110

if.end1104.if.end1114_crit_edge:                  ; preds = %if.end1104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1114

if.then1110:                                      ; preds = %if.end1104
  %arrayidx1112 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 79, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4099) #6
  %875 = call ptr @memset(ptr %buf.i4099, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4100) #6
  %876 = ptrtoint ptr %var.i4100 to i32
  call void @__asan_store2_noabort(i32 %876)
  store i16 -1, ptr %var.i4100, align 2, !annotation !557
  %call.i4101 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull %buf.i4099, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4101)
  %cmp.i4102 = icmp slt i32 %call.i4101, 0
  br i1 %cmp.i4102, label %if.then1110.nvram_read_u16.exit4110_crit_edge, label %if.end.i4106

if.then1110.nvram_read_u16.exit4110_crit_edge:    ; preds = %if.then1110
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4110

if.end.i4106:                                     ; preds = %if.then1110
  %call2.i4103 = call ptr @strim(ptr noundef nonnull %buf.i4099) #6
  %call3.i4104 = call i32 @kstrtou16(ptr noundef %call2.i4103, i32 noundef 0, ptr noundef nonnull %var.i4100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4104)
  %tobool4.not.i4105 = icmp eq i32 %call3.i4104, 0
  br i1 %tobool4.not.i4105, label %if.end15.i4109, label %do.end.i4108

do.end.i4108:                                     ; preds = %if.end.i4106
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef nonnull %buf.i4099, i32 noundef %call3.i4104) #9
  br label %nvram_read_u16.exit4110

if.end15.i4109:                                   ; preds = %if.end.i4106
  call void @__sanitizer_cov_trace_pc() #8
  %877 = ptrtoint ptr %var.i4100 to i32
  call void @__asan_load2_noabort(i32 %877)
  %878 = load i16, ptr %var.i4100, align 2
  %879 = ptrtoint ptr %arrayidx1112 to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 %878, ptr %arrayidx1112, align 2
  br label %nvram_read_u16.exit4110

nvram_read_u16.exit4110:                          ; preds = %if.end15.i4109, %do.end.i4108, %if.then1110.nvram_read_u16.exit4110_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4100) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4099) #6
  br label %if.end1114

if.end1114:                                       ; preds = %nvram_read_u16.exit4110, %if.end1104.if.end1114_crit_edge
  %880 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %880)
  %881 = load i8, ptr %sprom, align 4
  %conv1116 = zext i8 %881 to i32
  %shl1117 = shl nuw i32 1, %conv1116
  %and1118 = and i32 %shl1117, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1118)
  %tobool1119.not = icmp eq i32 %and1118, 0
  br i1 %tobool1119.not, label %if.end1114.if.end1123_crit_edge, label %if.then1120

if.end1114.if.end1123_crit_edge:                  ; preds = %if.end1114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1123

if.then1120:                                      ; preds = %if.end1114
  %mcs5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 80
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4111) #6
  %882 = call ptr @memset(ptr %buf.i4111, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4112) #6
  %883 = ptrtoint ptr %var.i4112 to i32
  call void @__asan_store2_noabort(i32 %883)
  store i16 -1, ptr %var.i4112, align 2, !annotation !557
  %call.i4113 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull %buf.i4111, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4113)
  %cmp.i4114 = icmp slt i32 %call.i4113, 0
  br i1 %cmp.i4114, label %if.then1120.nvram_read_u16.exit4122_crit_edge, label %if.end.i4118

if.then1120.nvram_read_u16.exit4122_crit_edge:    ; preds = %if.then1120
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4122

if.end.i4118:                                     ; preds = %if.then1120
  %call2.i4115 = call ptr @strim(ptr noundef nonnull %buf.i4111) #6
  %call3.i4116 = call i32 @kstrtou16(ptr noundef %call2.i4115, i32 noundef 0, ptr noundef nonnull %var.i4112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4116)
  %tobool4.not.i4117 = icmp eq i32 %call3.i4116, 0
  br i1 %tobool4.not.i4117, label %if.end15.i4121, label %do.end.i4120

do.end.i4120:                                     ; preds = %if.end.i4118
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef nonnull %buf.i4111, i32 noundef %call3.i4116) #9
  br label %nvram_read_u16.exit4122

if.end15.i4121:                                   ; preds = %if.end.i4118
  call void @__sanitizer_cov_trace_pc() #8
  %884 = ptrtoint ptr %var.i4112 to i32
  call void @__asan_load2_noabort(i32 %884)
  %885 = load i16, ptr %var.i4112, align 2
  %886 = ptrtoint ptr %mcs5ghpo to i32
  call void @__asan_store2_noabort(i32 %886)
  store i16 %885, ptr %mcs5ghpo, align 2
  br label %nvram_read_u16.exit4122

nvram_read_u16.exit4122:                          ; preds = %if.end15.i4121, %do.end.i4120, %if.then1120.nvram_read_u16.exit4122_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4112) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4111) #6
  br label %if.end1123

if.end1123:                                       ; preds = %nvram_read_u16.exit4122, %if.end1114.if.end1123_crit_edge
  %887 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %887)
  %888 = load i8, ptr %sprom, align 4
  %conv1125 = zext i8 %888 to i32
  %shl1126 = shl nuw i32 1, %conv1125
  %and1127 = and i32 %shl1126, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1127)
  %tobool1128.not = icmp eq i32 %and1127, 0
  br i1 %tobool1128.not, label %if.end1123.if.end1133_crit_edge, label %if.then1129

if.end1123.if.end1133_crit_edge:                  ; preds = %if.end1123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1133

if.then1129:                                      ; preds = %if.end1123
  %arrayidx1131 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4123) #6
  %889 = call ptr @memset(ptr %buf.i4123, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4124) #6
  %890 = ptrtoint ptr %var.i4124 to i32
  call void @__asan_store2_noabort(i32 %890)
  store i16 -1, ptr %var.i4124, align 2, !annotation !557
  %call.i4125 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull %buf.i4123, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4125)
  %cmp.i4126 = icmp slt i32 %call.i4125, 0
  br i1 %cmp.i4126, label %if.then1129.nvram_read_u16.exit4134_crit_edge, label %if.end.i4130

if.then1129.nvram_read_u16.exit4134_crit_edge:    ; preds = %if.then1129
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4134

if.end.i4130:                                     ; preds = %if.then1129
  %call2.i4127 = call ptr @strim(ptr noundef nonnull %buf.i4123) #6
  %call3.i4128 = call i32 @kstrtou16(ptr noundef %call2.i4127, i32 noundef 0, ptr noundef nonnull %var.i4124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4128)
  %tobool4.not.i4129 = icmp eq i32 %call3.i4128, 0
  br i1 %tobool4.not.i4129, label %if.end15.i4133, label %do.end.i4132

do.end.i4132:                                     ; preds = %if.end.i4130
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef nonnull %buf.i4123, i32 noundef %call3.i4128) #9
  br label %nvram_read_u16.exit4134

if.end15.i4133:                                   ; preds = %if.end.i4130
  call void @__sanitizer_cov_trace_pc() #8
  %891 = ptrtoint ptr %var.i4124 to i32
  call void @__asan_load2_noabort(i32 %891)
  %892 = load i16, ptr %var.i4124, align 2
  %893 = ptrtoint ptr %arrayidx1131 to i32
  call void @__asan_store2_noabort(i32 %893)
  store i16 %892, ptr %arrayidx1131, align 2
  br label %nvram_read_u16.exit4134

nvram_read_u16.exit4134:                          ; preds = %if.end15.i4133, %do.end.i4132, %if.then1129.nvram_read_u16.exit4134_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4124) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4123) #6
  br label %if.end1133

if.end1133:                                       ; preds = %nvram_read_u16.exit4134, %if.end1123.if.end1133_crit_edge
  %894 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %894)
  %895 = load i8, ptr %sprom, align 4
  %conv1135 = zext i8 %895 to i32
  %shl1136 = shl nuw i32 1, %conv1135
  %and1137 = and i32 %shl1136, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1137)
  %tobool1138.not = icmp eq i32 %and1137, 0
  br i1 %tobool1138.not, label %if.end1133.if.end1143_crit_edge, label %if.then1139

if.end1133.if.end1143_crit_edge:                  ; preds = %if.end1133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1143

if.then1139:                                      ; preds = %if.end1133
  %arrayidx1141 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4135) #6
  %896 = call ptr @memset(ptr %buf.i4135, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4136) #6
  %897 = ptrtoint ptr %var.i4136 to i32
  call void @__asan_store2_noabort(i32 %897)
  store i16 -1, ptr %var.i4136, align 2, !annotation !557
  %call.i4137 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull %buf.i4135, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4137)
  %cmp.i4138 = icmp slt i32 %call.i4137, 0
  br i1 %cmp.i4138, label %if.then1139.nvram_read_u16.exit4146_crit_edge, label %if.end.i4142

if.then1139.nvram_read_u16.exit4146_crit_edge:    ; preds = %if.then1139
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4146

if.end.i4142:                                     ; preds = %if.then1139
  %call2.i4139 = call ptr @strim(ptr noundef nonnull %buf.i4135) #6
  %call3.i4140 = call i32 @kstrtou16(ptr noundef %call2.i4139, i32 noundef 0, ptr noundef nonnull %var.i4136) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4140)
  %tobool4.not.i4141 = icmp eq i32 %call3.i4140, 0
  br i1 %tobool4.not.i4141, label %if.end15.i4145, label %do.end.i4144

do.end.i4144:                                     ; preds = %if.end.i4142
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef nonnull %buf.i4135, i32 noundef %call3.i4140) #9
  br label %nvram_read_u16.exit4146

if.end15.i4145:                                   ; preds = %if.end.i4142
  call void @__sanitizer_cov_trace_pc() #8
  %898 = ptrtoint ptr %var.i4136 to i32
  call void @__asan_load2_noabort(i32 %898)
  %899 = load i16, ptr %var.i4136, align 2
  %900 = ptrtoint ptr %arrayidx1141 to i32
  call void @__asan_store2_noabort(i32 %900)
  store i16 %899, ptr %arrayidx1141, align 2
  br label %nvram_read_u16.exit4146

nvram_read_u16.exit4146:                          ; preds = %if.end15.i4145, %do.end.i4144, %if.then1139.nvram_read_u16.exit4146_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4136) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4135) #6
  br label %if.end1143

if.end1143:                                       ; preds = %nvram_read_u16.exit4146, %if.end1133.if.end1143_crit_edge
  %901 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %sprom, align 4
  %conv1145 = zext i8 %902 to i32
  %shl1146 = shl nuw i32 1, %conv1145
  %and1147 = and i32 %shl1146, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1147)
  %tobool1148.not = icmp eq i32 %and1147, 0
  br i1 %tobool1148.not, label %if.end1143.if.end1153_crit_edge, label %if.then1149

if.end1143.if.end1153_crit_edge:                  ; preds = %if.end1143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1153

if.then1149:                                      ; preds = %if.end1143
  %arrayidx1151 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 3
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4147) #6
  %903 = call ptr @memset(ptr %buf.i4147, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4148) #6
  %904 = ptrtoint ptr %var.i4148 to i32
  call void @__asan_store2_noabort(i32 %904)
  store i16 -1, ptr %var.i4148, align 2, !annotation !557
  %call.i4149 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull %buf.i4147, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4149)
  %cmp.i4150 = icmp slt i32 %call.i4149, 0
  br i1 %cmp.i4150, label %if.then1149.nvram_read_u16.exit4158_crit_edge, label %if.end.i4154

if.then1149.nvram_read_u16.exit4158_crit_edge:    ; preds = %if.then1149
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4158

if.end.i4154:                                     ; preds = %if.then1149
  %call2.i4151 = call ptr @strim(ptr noundef nonnull %buf.i4147) #6
  %call3.i4152 = call i32 @kstrtou16(ptr noundef %call2.i4151, i32 noundef 0, ptr noundef nonnull %var.i4148) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4152)
  %tobool4.not.i4153 = icmp eq i32 %call3.i4152, 0
  br i1 %tobool4.not.i4153, label %if.end15.i4157, label %do.end.i4156

do.end.i4156:                                     ; preds = %if.end.i4154
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.188, ptr noundef null, ptr noundef nonnull %buf.i4147, i32 noundef %call3.i4152) #9
  br label %nvram_read_u16.exit4158

if.end15.i4157:                                   ; preds = %if.end.i4154
  call void @__sanitizer_cov_trace_pc() #8
  %905 = ptrtoint ptr %var.i4148 to i32
  call void @__asan_load2_noabort(i32 %905)
  %906 = load i16, ptr %var.i4148, align 2
  %907 = ptrtoint ptr %arrayidx1151 to i32
  call void @__asan_store2_noabort(i32 %907)
  store i16 %906, ptr %arrayidx1151, align 2
  br label %nvram_read_u16.exit4158

nvram_read_u16.exit4158:                          ; preds = %if.end15.i4157, %do.end.i4156, %if.then1149.nvram_read_u16.exit4158_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4148) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4147) #6
  br label %if.end1153

if.end1153:                                       ; preds = %nvram_read_u16.exit4158, %if.end1143.if.end1153_crit_edge
  %908 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %908)
  %909 = load i8, ptr %sprom, align 4
  %conv1155 = zext i8 %909 to i32
  %shl1156 = shl nuw i32 1, %conv1155
  %and1157 = and i32 %shl1156, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1157)
  %tobool1158.not = icmp eq i32 %and1157, 0
  br i1 %tobool1158.not, label %if.end1153.if.end1163_crit_edge, label %if.then1159

if.end1153.if.end1163_crit_edge:                  ; preds = %if.end1153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1163

if.then1159:                                      ; preds = %if.end1153
  %arrayidx1161 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4159) #6
  %910 = call ptr @memset(ptr %buf.i4159, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4160) #6
  %911 = ptrtoint ptr %var.i4160 to i32
  call void @__asan_store2_noabort(i32 %911)
  store i16 -1, ptr %var.i4160, align 2, !annotation !557
  %call.i4161 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull %buf.i4159, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4161)
  %cmp.i4162 = icmp slt i32 %call.i4161, 0
  br i1 %cmp.i4162, label %if.then1159.nvram_read_u16.exit4170_crit_edge, label %if.end.i4166

if.then1159.nvram_read_u16.exit4170_crit_edge:    ; preds = %if.then1159
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4170

if.end.i4166:                                     ; preds = %if.then1159
  %call2.i4163 = call ptr @strim(ptr noundef nonnull %buf.i4159) #6
  %call3.i4164 = call i32 @kstrtou16(ptr noundef %call2.i4163, i32 noundef 0, ptr noundef nonnull %var.i4160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4164)
  %tobool4.not.i4165 = icmp eq i32 %call3.i4164, 0
  br i1 %tobool4.not.i4165, label %if.end15.i4169, label %do.end.i4168

do.end.i4168:                                     ; preds = %if.end.i4166
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef nonnull %buf.i4159, i32 noundef %call3.i4164) #9
  br label %nvram_read_u16.exit4170

if.end15.i4169:                                   ; preds = %if.end.i4166
  call void @__sanitizer_cov_trace_pc() #8
  %912 = ptrtoint ptr %var.i4160 to i32
  call void @__asan_load2_noabort(i32 %912)
  %913 = load i16, ptr %var.i4160, align 2
  %914 = ptrtoint ptr %arrayidx1161 to i32
  call void @__asan_store2_noabort(i32 %914)
  store i16 %913, ptr %arrayidx1161, align 2
  br label %nvram_read_u16.exit4170

nvram_read_u16.exit4170:                          ; preds = %if.end15.i4169, %do.end.i4168, %if.then1159.nvram_read_u16.exit4170_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4160) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4159) #6
  br label %if.end1163

if.end1163:                                       ; preds = %nvram_read_u16.exit4170, %if.end1153.if.end1163_crit_edge
  %915 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %sprom, align 4
  %conv1165 = zext i8 %916 to i32
  %shl1166 = shl nuw i32 1, %conv1165
  %and1167 = and i32 %shl1166, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1167)
  %tobool1168.not = icmp eq i32 %and1167, 0
  br i1 %tobool1168.not, label %if.end1163.if.end1173_crit_edge, label %if.then1169

if.end1163.if.end1173_crit_edge:                  ; preds = %if.end1163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1173

if.then1169:                                      ; preds = %if.end1163
  %arrayidx1171 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4171) #6
  %917 = call ptr @memset(ptr %buf.i4171, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4172) #6
  %918 = ptrtoint ptr %var.i4172 to i32
  call void @__asan_store2_noabort(i32 %918)
  store i16 -1, ptr %var.i4172, align 2, !annotation !557
  %call.i4173 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull %buf.i4171, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4173)
  %cmp.i4174 = icmp slt i32 %call.i4173, 0
  br i1 %cmp.i4174, label %if.then1169.nvram_read_u16.exit4182_crit_edge, label %if.end.i4178

if.then1169.nvram_read_u16.exit4182_crit_edge:    ; preds = %if.then1169
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4182

if.end.i4178:                                     ; preds = %if.then1169
  %call2.i4175 = call ptr @strim(ptr noundef nonnull %buf.i4171) #6
  %call3.i4176 = call i32 @kstrtou16(ptr noundef %call2.i4175, i32 noundef 0, ptr noundef nonnull %var.i4172) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4176)
  %tobool4.not.i4177 = icmp eq i32 %call3.i4176, 0
  br i1 %tobool4.not.i4177, label %if.end15.i4181, label %do.end.i4180

do.end.i4180:                                     ; preds = %if.end.i4178
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef nonnull %buf.i4171, i32 noundef %call3.i4176) #9
  br label %nvram_read_u16.exit4182

if.end15.i4181:                                   ; preds = %if.end.i4178
  call void @__sanitizer_cov_trace_pc() #8
  %919 = ptrtoint ptr %var.i4172 to i32
  call void @__asan_load2_noabort(i32 %919)
  %920 = load i16, ptr %var.i4172, align 2
  %921 = ptrtoint ptr %arrayidx1171 to i32
  call void @__asan_store2_noabort(i32 %921)
  store i16 %920, ptr %arrayidx1171, align 2
  br label %nvram_read_u16.exit4182

nvram_read_u16.exit4182:                          ; preds = %if.end15.i4181, %do.end.i4180, %if.then1169.nvram_read_u16.exit4182_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4172) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4171) #6
  br label %if.end1173

if.end1173:                                       ; preds = %nvram_read_u16.exit4182, %if.end1163.if.end1173_crit_edge
  %922 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %922)
  %923 = load i8, ptr %sprom, align 4
  %conv1175 = zext i8 %923 to i32
  %shl1176 = shl nuw i32 1, %conv1175
  %and1177 = and i32 %shl1176, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1177)
  %tobool1178.not = icmp eq i32 %and1177, 0
  br i1 %tobool1178.not, label %if.end1173.if.end1183_crit_edge, label %if.then1179

if.end1173.if.end1183_crit_edge:                  ; preds = %if.end1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1183

if.then1179:                                      ; preds = %if.end1173
  %arrayidx1181 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4183) #6
  %924 = call ptr @memset(ptr %buf.i4183, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4184) #6
  %925 = ptrtoint ptr %var.i4184 to i32
  call void @__asan_store2_noabort(i32 %925)
  store i16 -1, ptr %var.i4184, align 2, !annotation !557
  %call.i4185 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull %buf.i4183, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4185)
  %cmp.i4186 = icmp slt i32 %call.i4185, 0
  br i1 %cmp.i4186, label %if.then1179.nvram_read_u16.exit4194_crit_edge, label %if.end.i4190

if.then1179.nvram_read_u16.exit4194_crit_edge:    ; preds = %if.then1179
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4194

if.end.i4190:                                     ; preds = %if.then1179
  %call2.i4187 = call ptr @strim(ptr noundef nonnull %buf.i4183) #6
  %call3.i4188 = call i32 @kstrtou16(ptr noundef %call2.i4187, i32 noundef 0, ptr noundef nonnull %var.i4184) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4188)
  %tobool4.not.i4189 = icmp eq i32 %call3.i4188, 0
  br i1 %tobool4.not.i4189, label %if.end15.i4193, label %do.end.i4192

do.end.i4192:                                     ; preds = %if.end.i4190
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef nonnull %buf.i4183, i32 noundef %call3.i4188) #9
  br label %nvram_read_u16.exit4194

if.end15.i4193:                                   ; preds = %if.end.i4190
  call void @__sanitizer_cov_trace_pc() #8
  %926 = ptrtoint ptr %var.i4184 to i32
  call void @__asan_load2_noabort(i32 %926)
  %927 = load i16, ptr %var.i4184, align 2
  %928 = ptrtoint ptr %arrayidx1181 to i32
  call void @__asan_store2_noabort(i32 %928)
  store i16 %927, ptr %arrayidx1181, align 2
  br label %nvram_read_u16.exit4194

nvram_read_u16.exit4194:                          ; preds = %if.end15.i4193, %do.end.i4192, %if.then1179.nvram_read_u16.exit4194_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4184) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4183) #6
  br label %if.end1183

if.end1183:                                       ; preds = %nvram_read_u16.exit4194, %if.end1173.if.end1183_crit_edge
  %929 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %929)
  %930 = load i8, ptr %sprom, align 4
  %conv1185 = zext i8 %930 to i32
  %shl1186 = shl nuw i32 1, %conv1185
  %and1187 = and i32 %shl1186, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1187)
  %tobool1188.not = icmp eq i32 %and1187, 0
  br i1 %tobool1188.not, label %if.end1183.if.end1193_crit_edge, label %if.then1189

if.end1183.if.end1193_crit_edge:                  ; preds = %if.end1183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1193

if.then1189:                                      ; preds = %if.end1183
  %arrayidx1191 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 80, i32 7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4195) #6
  %931 = call ptr @memset(ptr %buf.i4195, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4196) #6
  %932 = ptrtoint ptr %var.i4196 to i32
  call void @__asan_store2_noabort(i32 %932)
  store i16 -1, ptr %var.i4196, align 2, !annotation !557
  %call.i4197 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull %buf.i4195, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4197)
  %cmp.i4198 = icmp slt i32 %call.i4197, 0
  br i1 %cmp.i4198, label %if.then1189.nvram_read_u16.exit4206_crit_edge, label %if.end.i4202

if.then1189.nvram_read_u16.exit4206_crit_edge:    ; preds = %if.then1189
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4206

if.end.i4202:                                     ; preds = %if.then1189
  %call2.i4199 = call ptr @strim(ptr noundef nonnull %buf.i4195) #6
  %call3.i4200 = call i32 @kstrtou16(ptr noundef %call2.i4199, i32 noundef 0, ptr noundef nonnull %var.i4196) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4200)
  %tobool4.not.i4201 = icmp eq i32 %call3.i4200, 0
  br i1 %tobool4.not.i4201, label %if.end15.i4205, label %do.end.i4204

do.end.i4204:                                     ; preds = %if.end.i4202
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.192, ptr noundef null, ptr noundef nonnull %buf.i4195, i32 noundef %call3.i4200) #9
  br label %nvram_read_u16.exit4206

if.end15.i4205:                                   ; preds = %if.end.i4202
  call void @__sanitizer_cov_trace_pc() #8
  %933 = ptrtoint ptr %var.i4196 to i32
  call void @__asan_load2_noabort(i32 %933)
  %934 = load i16, ptr %var.i4196, align 2
  %935 = ptrtoint ptr %arrayidx1191 to i32
  call void @__asan_store2_noabort(i32 %935)
  store i16 %934, ptr %arrayidx1191, align 2
  br label %nvram_read_u16.exit4206

nvram_read_u16.exit4206:                          ; preds = %if.end15.i4205, %do.end.i4204, %if.then1189.nvram_read_u16.exit4206_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4196) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4195) #6
  br label %if.end1193

if.end1193:                                       ; preds = %nvram_read_u16.exit4206, %if.end1183.if.end1193_crit_edge
  %936 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %936)
  %937 = load i8, ptr %sprom, align 4
  %conv1195 = zext i8 %937 to i32
  %shl1196 = shl nuw i32 1, %conv1195
  %and1197 = and i32 %shl1196, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1197)
  %tobool1198.not = icmp eq i32 %and1197, 0
  br i1 %tobool1198.not, label %if.end1193.if.end1201_crit_edge, label %if.then1199

if.end1193.if.end1201_crit_edge:                  ; preds = %if.end1193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1201

if.then1199:                                      ; preds = %if.end1193
  %cddpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 96
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4207) #6
  %938 = call ptr @memset(ptr %buf.i4207, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4208) #6
  %939 = ptrtoint ptr %var.i4208 to i32
  call void @__asan_store2_noabort(i32 %939)
  store i16 -1, ptr %var.i4208, align 2, !annotation !557
  %call.i4209 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %buf.i4207, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4209)
  %cmp.i4210 = icmp slt i32 %call.i4209, 0
  br i1 %cmp.i4210, label %if.then1199.nvram_read_u16.exit4218_crit_edge, label %if.end.i4214

if.then1199.nvram_read_u16.exit4218_crit_edge:    ; preds = %if.then1199
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4218

if.end.i4214:                                     ; preds = %if.then1199
  %call2.i4211 = call ptr @strim(ptr noundef nonnull %buf.i4207) #6
  %call3.i4212 = call i32 @kstrtou16(ptr noundef %call2.i4211, i32 noundef 0, ptr noundef nonnull %var.i4208) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4212)
  %tobool4.not.i4213 = icmp eq i32 %call3.i4212, 0
  br i1 %tobool4.not.i4213, label %if.end15.i4217, label %do.end.i4216

do.end.i4216:                                     ; preds = %if.end.i4214
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.193, ptr noundef null, ptr noundef nonnull %buf.i4207, i32 noundef %call3.i4212) #9
  br label %nvram_read_u16.exit4218

if.end15.i4217:                                   ; preds = %if.end.i4214
  call void @__sanitizer_cov_trace_pc() #8
  %940 = ptrtoint ptr %var.i4208 to i32
  call void @__asan_load2_noabort(i32 %940)
  %941 = load i16, ptr %var.i4208, align 2
  %942 = ptrtoint ptr %cddpo to i32
  call void @__asan_store2_noabort(i32 %942)
  store i16 %941, ptr %cddpo, align 2
  br label %nvram_read_u16.exit4218

nvram_read_u16.exit4218:                          ; preds = %if.end15.i4217, %do.end.i4216, %if.then1199.nvram_read_u16.exit4218_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4208) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4207) #6
  br label %if.end1201

if.end1201:                                       ; preds = %nvram_read_u16.exit4218, %if.end1193.if.end1201_crit_edge
  %943 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %sprom, align 4
  %conv1203 = zext i8 %944 to i32
  %shl1204 = shl nuw i32 1, %conv1203
  %and1205 = and i32 %shl1204, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1205)
  %tobool1206.not = icmp eq i32 %and1205, 0
  br i1 %tobool1206.not, label %if.end1201.if.end1209_crit_edge, label %if.then1207

if.end1201.if.end1209_crit_edge:                  ; preds = %if.end1201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1209

if.then1207:                                      ; preds = %if.end1201
  %stbcpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 97
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4219) #6
  %945 = call ptr @memset(ptr %buf.i4219, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4220) #6
  %946 = ptrtoint ptr %var.i4220 to i32
  call void @__asan_store2_noabort(i32 %946)
  store i16 -1, ptr %var.i4220, align 2, !annotation !557
  %call.i4221 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull %buf.i4219, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4221)
  %cmp.i4222 = icmp slt i32 %call.i4221, 0
  br i1 %cmp.i4222, label %if.then1207.nvram_read_u16.exit4230_crit_edge, label %if.end.i4226

if.then1207.nvram_read_u16.exit4230_crit_edge:    ; preds = %if.then1207
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4230

if.end.i4226:                                     ; preds = %if.then1207
  %call2.i4223 = call ptr @strim(ptr noundef nonnull %buf.i4219) #6
  %call3.i4224 = call i32 @kstrtou16(ptr noundef %call2.i4223, i32 noundef 0, ptr noundef nonnull %var.i4220) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4224)
  %tobool4.not.i4225 = icmp eq i32 %call3.i4224, 0
  br i1 %tobool4.not.i4225, label %if.end15.i4229, label %do.end.i4228

do.end.i4228:                                     ; preds = %if.end.i4226
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef nonnull %buf.i4219, i32 noundef %call3.i4224) #9
  br label %nvram_read_u16.exit4230

if.end15.i4229:                                   ; preds = %if.end.i4226
  call void @__sanitizer_cov_trace_pc() #8
  %947 = ptrtoint ptr %var.i4220 to i32
  call void @__asan_load2_noabort(i32 %947)
  %948 = load i16, ptr %var.i4220, align 2
  %949 = ptrtoint ptr %stbcpo to i32
  call void @__asan_store2_noabort(i32 %949)
  store i16 %948, ptr %stbcpo, align 2
  br label %nvram_read_u16.exit4230

nvram_read_u16.exit4230:                          ; preds = %if.end15.i4229, %do.end.i4228, %if.then1207.nvram_read_u16.exit4230_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4220) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4219) #6
  br label %if.end1209

if.end1209:                                       ; preds = %nvram_read_u16.exit4230, %if.end1201.if.end1209_crit_edge
  %950 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %950)
  %951 = load i8, ptr %sprom, align 4
  %conv1211 = zext i8 %951 to i32
  %shl1212 = shl nuw i32 1, %conv1211
  %and1213 = and i32 %shl1212, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1213)
  %tobool1214.not = icmp eq i32 %and1213, 0
  br i1 %tobool1214.not, label %if.end1209.if.end1217_crit_edge, label %if.then1215

if.end1209.if.end1217_crit_edge:                  ; preds = %if.end1209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1217

if.then1215:                                      ; preds = %if.end1209
  %bw40po = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 98
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4231) #6
  %952 = call ptr @memset(ptr %buf.i4231, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4232) #6
  %953 = ptrtoint ptr %var.i4232 to i32
  call void @__asan_store2_noabort(i32 %953)
  store i16 -1, ptr %var.i4232, align 2, !annotation !557
  %call.i4233 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull %buf.i4231, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4233)
  %cmp.i4234 = icmp slt i32 %call.i4233, 0
  br i1 %cmp.i4234, label %if.then1215.nvram_read_u16.exit4242_crit_edge, label %if.end.i4238

if.then1215.nvram_read_u16.exit4242_crit_edge:    ; preds = %if.then1215
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4242

if.end.i4238:                                     ; preds = %if.then1215
  %call2.i4235 = call ptr @strim(ptr noundef nonnull %buf.i4231) #6
  %call3.i4236 = call i32 @kstrtou16(ptr noundef %call2.i4235, i32 noundef 0, ptr noundef nonnull %var.i4232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4236)
  %tobool4.not.i4237 = icmp eq i32 %call3.i4236, 0
  br i1 %tobool4.not.i4237, label %if.end15.i4241, label %do.end.i4240

do.end.i4240:                                     ; preds = %if.end.i4238
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.195, ptr noundef null, ptr noundef nonnull %buf.i4231, i32 noundef %call3.i4236) #9
  br label %nvram_read_u16.exit4242

if.end15.i4241:                                   ; preds = %if.end.i4238
  call void @__sanitizer_cov_trace_pc() #8
  %954 = ptrtoint ptr %var.i4232 to i32
  call void @__asan_load2_noabort(i32 %954)
  %955 = load i16, ptr %var.i4232, align 2
  %956 = ptrtoint ptr %bw40po to i32
  call void @__asan_store2_noabort(i32 %956)
  store i16 %955, ptr %bw40po, align 2
  br label %nvram_read_u16.exit4242

nvram_read_u16.exit4242:                          ; preds = %if.end15.i4241, %do.end.i4240, %if.then1215.nvram_read_u16.exit4242_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4232) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4231) #6
  br label %if.end1217

if.end1217:                                       ; preds = %nvram_read_u16.exit4242, %if.end1209.if.end1217_crit_edge
  %957 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %sprom, align 4
  %conv1219 = zext i8 %958 to i32
  %shl1220 = shl nuw i32 1, %conv1219
  %and1221 = and i32 %shl1220, 496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1221)
  %tobool1222.not = icmp eq i32 %and1221, 0
  br i1 %tobool1222.not, label %if.end1217.if.end1225_crit_edge, label %if.then1223

if.end1217.if.end1225_crit_edge:                  ; preds = %if.end1217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1225

if.then1223:                                      ; preds = %if.end1217
  %bwduppo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 99
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4243) #6
  %959 = call ptr @memset(ptr %buf.i4243, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4244) #6
  %960 = ptrtoint ptr %var.i4244 to i32
  call void @__asan_store2_noabort(i32 %960)
  store i16 -1, ptr %var.i4244, align 2, !annotation !557
  %call.i4245 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull %buf.i4243, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4245)
  %cmp.i4246 = icmp slt i32 %call.i4245, 0
  br i1 %cmp.i4246, label %if.then1223.nvram_read_u16.exit4254_crit_edge, label %if.end.i4250

if.then1223.nvram_read_u16.exit4254_crit_edge:    ; preds = %if.then1223
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4254

if.end.i4250:                                     ; preds = %if.then1223
  %call2.i4247 = call ptr @strim(ptr noundef nonnull %buf.i4243) #6
  %call3.i4248 = call i32 @kstrtou16(ptr noundef %call2.i4247, i32 noundef 0, ptr noundef nonnull %var.i4244) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4248)
  %tobool4.not.i4249 = icmp eq i32 %call3.i4248, 0
  br i1 %tobool4.not.i4249, label %if.end15.i4253, label %do.end.i4252

do.end.i4252:                                     ; preds = %if.end.i4250
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.196, ptr noundef null, ptr noundef nonnull %buf.i4243, i32 noundef %call3.i4248) #9
  br label %nvram_read_u16.exit4254

if.end15.i4253:                                   ; preds = %if.end.i4250
  call void @__sanitizer_cov_trace_pc() #8
  %961 = ptrtoint ptr %var.i4244 to i32
  call void @__asan_load2_noabort(i32 %961)
  %962 = load i16, ptr %var.i4244, align 2
  %963 = ptrtoint ptr %bwduppo to i32
  call void @__asan_store2_noabort(i32 %963)
  store i16 %962, ptr %bwduppo, align 2
  br label %nvram_read_u16.exit4254

nvram_read_u16.exit4254:                          ; preds = %if.end15.i4253, %do.end.i4252, %if.then1223.nvram_read_u16.exit4254_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4244) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4243) #6
  %964 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %964)
  %.pr5010 = load i8, ptr %sprom, align 4
  br label %if.end1225

if.end1225:                                       ; preds = %nvram_read_u16.exit4254, %if.end1217.if.end1225_crit_edge
  %965 = phi i8 [ %.pr5010, %nvram_read_u16.exit4254 ], [ %958, %if.end1217.if.end1225_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %965)
  %tobool1230.not = icmp ult i8 %965, 9
  br i1 %tobool1230.not, label %if.end1225.if.end1233_crit_edge, label %if.then1231

if.end1225.if.end1233_crit_edge:                  ; preds = %if.end1225
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1233

if.then1231:                                      ; preds = %if.end1225
  %cckbw202gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 118
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4255) #6
  %966 = call ptr @memset(ptr %buf.i4255, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4256) #6
  %967 = ptrtoint ptr %var.i4256 to i32
  call void @__asan_store2_noabort(i32 %967)
  store i16 -1, ptr %var.i4256, align 2, !annotation !557
  %call.i4257 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull %buf.i4255, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4257)
  %cmp.i4258 = icmp slt i32 %call.i4257, 0
  br i1 %cmp.i4258, label %if.then1231.nvram_read_u16.exit4266_crit_edge, label %if.end.i4262

if.then1231.nvram_read_u16.exit4266_crit_edge:    ; preds = %if.then1231
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4266

if.end.i4262:                                     ; preds = %if.then1231
  %call2.i4259 = call ptr @strim(ptr noundef nonnull %buf.i4255) #6
  %call3.i4260 = call i32 @kstrtou16(ptr noundef %call2.i4259, i32 noundef 0, ptr noundef nonnull %var.i4256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4260)
  %tobool4.not.i4261 = icmp eq i32 %call3.i4260, 0
  br i1 %tobool4.not.i4261, label %if.end15.i4265, label %do.end.i4264

do.end.i4264:                                     ; preds = %if.end.i4262
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.197, ptr noundef null, ptr noundef nonnull %buf.i4255, i32 noundef %call3.i4260) #9
  br label %nvram_read_u16.exit4266

if.end15.i4265:                                   ; preds = %if.end.i4262
  call void @__sanitizer_cov_trace_pc() #8
  %968 = ptrtoint ptr %var.i4256 to i32
  call void @__asan_load2_noabort(i32 %968)
  %969 = load i16, ptr %var.i4256, align 2
  %970 = ptrtoint ptr %cckbw202gpo to i32
  call void @__asan_store2_noabort(i32 %970)
  store i16 %969, ptr %cckbw202gpo, align 2
  br label %nvram_read_u16.exit4266

nvram_read_u16.exit4266:                          ; preds = %if.end15.i4265, %do.end.i4264, %if.then1231.nvram_read_u16.exit4266_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4256) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4255) #6
  br label %if.end1233

if.end1233:                                       ; preds = %nvram_read_u16.exit4266, %if.end1225.if.end1233_crit_edge
  %971 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %972)
  %tobool1238.not = icmp ult i8 %972, 9
  br i1 %tobool1238.not, label %if.end1233.if.end1241_crit_edge, label %if.then1239

if.end1233.if.end1241_crit_edge:                  ; preds = %if.end1233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1241

if.then1239:                                      ; preds = %if.end1233
  %cckbw20ul2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 119
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4267) #6
  %973 = call ptr @memset(ptr %buf.i4267, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4268) #6
  %974 = ptrtoint ptr %var.i4268 to i32
  call void @__asan_store2_noabort(i32 %974)
  store i16 -1, ptr %var.i4268, align 2, !annotation !557
  %call.i4269 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull %buf.i4267, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4269)
  %cmp.i4270 = icmp slt i32 %call.i4269, 0
  br i1 %cmp.i4270, label %if.then1239.nvram_read_u16.exit4278_crit_edge, label %if.end.i4274

if.then1239.nvram_read_u16.exit4278_crit_edge:    ; preds = %if.then1239
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4278

if.end.i4274:                                     ; preds = %if.then1239
  %call2.i4271 = call ptr @strim(ptr noundef nonnull %buf.i4267) #6
  %call3.i4272 = call i32 @kstrtou16(ptr noundef %call2.i4271, i32 noundef 0, ptr noundef nonnull %var.i4268) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4272)
  %tobool4.not.i4273 = icmp eq i32 %call3.i4272, 0
  br i1 %tobool4.not.i4273, label %if.end15.i4277, label %do.end.i4276

do.end.i4276:                                     ; preds = %if.end.i4274
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.198, ptr noundef null, ptr noundef nonnull %buf.i4267, i32 noundef %call3.i4272) #9
  br label %nvram_read_u16.exit4278

if.end15.i4277:                                   ; preds = %if.end.i4274
  call void @__sanitizer_cov_trace_pc() #8
  %975 = ptrtoint ptr %var.i4268 to i32
  call void @__asan_load2_noabort(i32 %975)
  %976 = load i16, ptr %var.i4268, align 2
  %977 = ptrtoint ptr %cckbw20ul2gpo to i32
  call void @__asan_store2_noabort(i32 %977)
  store i16 %976, ptr %cckbw20ul2gpo, align 2
  br label %nvram_read_u16.exit4278

nvram_read_u16.exit4278:                          ; preds = %if.end15.i4277, %do.end.i4276, %if.then1239.nvram_read_u16.exit4278_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4268) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4267) #6
  br label %if.end1241

if.end1241:                                       ; preds = %nvram_read_u16.exit4278, %if.end1233.if.end1241_crit_edge
  %978 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %978)
  %979 = load i8, ptr %sprom, align 4
  %conv1243 = zext i8 %979 to i32
  %shl1244 = shl nuw i32 1, %conv1243
  %and1245 = and i32 %shl1244, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1245)
  %tobool1246.not = icmp eq i32 %and1245, 0
  br i1 %tobool1246.not, label %if.end1241.if.end1249_crit_edge, label %if.then1247

if.end1241.if.end1249_crit_edge:                  ; preds = %if.end1241
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1249

if.then1247:                                      ; preds = %if.end1241
  %legofdmbw202gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 120
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4279) #6
  %980 = call ptr @memset(ptr %buf.i4279, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4280) #6
  %981 = ptrtoint ptr %var.i4280 to i32
  call void @__asan_store4_noabort(i32 %981)
  store i32 -1, ptr %var.i4280, align 4, !annotation !557
  %call.i4281 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull %buf.i4279, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4281)
  %cmp.i4282 = icmp slt i32 %call.i4281, 0
  br i1 %cmp.i4282, label %if.then1247.nvram_read_u32.exit4290_crit_edge, label %if.end.i4286

if.then1247.nvram_read_u32.exit4290_crit_edge:    ; preds = %if.then1247
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4290

if.end.i4286:                                     ; preds = %if.then1247
  %call2.i4283 = call ptr @strim(ptr noundef nonnull %buf.i4279) #6
  %call.i.i4284 = call i32 @kstrtouint(ptr noundef %call2.i4283, i32 noundef 0, ptr noundef nonnull %var.i4280) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4284)
  %tobool4.not.i4285 = icmp eq i32 %call.i.i4284, 0
  br i1 %tobool4.not.i4285, label %if.end12.i4289, label %do.end.i4288

do.end.i4288:                                     ; preds = %if.end.i4286
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.199, ptr noundef null, ptr noundef nonnull %buf.i4279, i32 noundef %call.i.i4284) #9
  br label %nvram_read_u32.exit4290

if.end12.i4289:                                   ; preds = %if.end.i4286
  call void @__sanitizer_cov_trace_pc() #8
  %982 = ptrtoint ptr %var.i4280 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %var.i4280, align 4
  %984 = ptrtoint ptr %legofdmbw202gpo to i32
  call void @__asan_store4_noabort(i32 %984)
  store i32 %983, ptr %legofdmbw202gpo, align 4
  br label %nvram_read_u32.exit4290

nvram_read_u32.exit4290:                          ; preds = %if.end12.i4289, %do.end.i4288, %if.then1247.nvram_read_u32.exit4290_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4280) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4279) #6
  br label %if.end1249

if.end1249:                                       ; preds = %nvram_read_u32.exit4290, %if.end1241.if.end1249_crit_edge
  %985 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %985)
  %986 = load i8, ptr %sprom, align 4
  %conv1251 = zext i8 %986 to i32
  %shl1252 = shl nuw i32 1, %conv1251
  %and1253 = and i32 %shl1252, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1253)
  %tobool1254.not = icmp eq i32 %and1253, 0
  br i1 %tobool1254.not, label %if.end1249.if.end1257_crit_edge, label %if.then1255

if.end1249.if.end1257_crit_edge:                  ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1257

if.then1255:                                      ; preds = %if.end1249
  %legofdmbw20ul2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 121
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4291) #6
  %987 = call ptr @memset(ptr %buf.i4291, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4292) #6
  %988 = ptrtoint ptr %var.i4292 to i32
  call void @__asan_store4_noabort(i32 %988)
  store i32 -1, ptr %var.i4292, align 4, !annotation !557
  %call.i4293 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull %buf.i4291, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4293)
  %cmp.i4294 = icmp slt i32 %call.i4293, 0
  br i1 %cmp.i4294, label %if.then1255.nvram_read_u32.exit4302_crit_edge, label %if.end.i4298

if.then1255.nvram_read_u32.exit4302_crit_edge:    ; preds = %if.then1255
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4302

if.end.i4298:                                     ; preds = %if.then1255
  %call2.i4295 = call ptr @strim(ptr noundef nonnull %buf.i4291) #6
  %call.i.i4296 = call i32 @kstrtouint(ptr noundef %call2.i4295, i32 noundef 0, ptr noundef nonnull %var.i4292) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4296)
  %tobool4.not.i4297 = icmp eq i32 %call.i.i4296, 0
  br i1 %tobool4.not.i4297, label %if.end12.i4301, label %do.end.i4300

do.end.i4300:                                     ; preds = %if.end.i4298
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.200, ptr noundef null, ptr noundef nonnull %buf.i4291, i32 noundef %call.i.i4296) #9
  br label %nvram_read_u32.exit4302

if.end12.i4301:                                   ; preds = %if.end.i4298
  call void @__sanitizer_cov_trace_pc() #8
  %989 = ptrtoint ptr %var.i4292 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %var.i4292, align 4
  %991 = ptrtoint ptr %legofdmbw20ul2gpo to i32
  call void @__asan_store4_noabort(i32 %991)
  store i32 %990, ptr %legofdmbw20ul2gpo, align 4
  br label %nvram_read_u32.exit4302

nvram_read_u32.exit4302:                          ; preds = %if.end12.i4301, %do.end.i4300, %if.then1255.nvram_read_u32.exit4302_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4292) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4291) #6
  br label %if.end1257

if.end1257:                                       ; preds = %nvram_read_u32.exit4302, %if.end1249.if.end1257_crit_edge
  %992 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %992)
  %993 = load i8, ptr %sprom, align 4
  %conv1259 = zext i8 %993 to i32
  %shl1260 = shl nuw i32 1, %conv1259
  %and1261 = and i32 %shl1260, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1261)
  %tobool1262.not = icmp eq i32 %and1261, 0
  br i1 %tobool1262.not, label %if.end1257.if.end1265_crit_edge, label %if.then1263

if.end1257.if.end1265_crit_edge:                  ; preds = %if.end1257
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1265

if.then1263:                                      ; preds = %if.end1257
  %legofdmbw205glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 122
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4303) #6
  %994 = call ptr @memset(ptr %buf.i4303, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4304) #6
  %995 = ptrtoint ptr %var.i4304 to i32
  call void @__asan_store4_noabort(i32 %995)
  store i32 -1, ptr %var.i4304, align 4, !annotation !557
  %call.i4305 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull %buf.i4303, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4305)
  %cmp.i4306 = icmp slt i32 %call.i4305, 0
  br i1 %cmp.i4306, label %if.then1263.nvram_read_u32.exit4314_crit_edge, label %if.end.i4310

if.then1263.nvram_read_u32.exit4314_crit_edge:    ; preds = %if.then1263
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4314

if.end.i4310:                                     ; preds = %if.then1263
  %call2.i4307 = call ptr @strim(ptr noundef nonnull %buf.i4303) #6
  %call.i.i4308 = call i32 @kstrtouint(ptr noundef %call2.i4307, i32 noundef 0, ptr noundef nonnull %var.i4304) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4308)
  %tobool4.not.i4309 = icmp eq i32 %call.i.i4308, 0
  br i1 %tobool4.not.i4309, label %if.end12.i4313, label %do.end.i4312

do.end.i4312:                                     ; preds = %if.end.i4310
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.201, ptr noundef null, ptr noundef nonnull %buf.i4303, i32 noundef %call.i.i4308) #9
  br label %nvram_read_u32.exit4314

if.end12.i4313:                                   ; preds = %if.end.i4310
  call void @__sanitizer_cov_trace_pc() #8
  %996 = ptrtoint ptr %var.i4304 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load i32, ptr %var.i4304, align 4
  %998 = ptrtoint ptr %legofdmbw205glpo to i32
  call void @__asan_store4_noabort(i32 %998)
  store i32 %997, ptr %legofdmbw205glpo, align 4
  br label %nvram_read_u32.exit4314

nvram_read_u32.exit4314:                          ; preds = %if.end12.i4313, %do.end.i4312, %if.then1263.nvram_read_u32.exit4314_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4304) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4303) #6
  br label %if.end1265

if.end1265:                                       ; preds = %nvram_read_u32.exit4314, %if.end1257.if.end1265_crit_edge
  %999 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %999)
  %1000 = load i8, ptr %sprom, align 4
  %conv1267 = zext i8 %1000 to i32
  %shl1268 = shl nuw i32 1, %conv1267
  %and1269 = and i32 %shl1268, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1269)
  %tobool1270.not = icmp eq i32 %and1269, 0
  br i1 %tobool1270.not, label %if.end1265.if.end1273_crit_edge, label %if.then1271

if.end1265.if.end1273_crit_edge:                  ; preds = %if.end1265
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1273

if.then1271:                                      ; preds = %if.end1265
  %legofdmbw20ul5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 123
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4315) #6
  %1001 = call ptr @memset(ptr %buf.i4315, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4316) #6
  %1002 = ptrtoint ptr %var.i4316 to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 -1, ptr %var.i4316, align 4, !annotation !557
  %call.i4317 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull %buf.i4315, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4317)
  %cmp.i4318 = icmp slt i32 %call.i4317, 0
  br i1 %cmp.i4318, label %if.then1271.nvram_read_u32.exit4326_crit_edge, label %if.end.i4322

if.then1271.nvram_read_u32.exit4326_crit_edge:    ; preds = %if.then1271
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4326

if.end.i4322:                                     ; preds = %if.then1271
  %call2.i4319 = call ptr @strim(ptr noundef nonnull %buf.i4315) #6
  %call.i.i4320 = call i32 @kstrtouint(ptr noundef %call2.i4319, i32 noundef 0, ptr noundef nonnull %var.i4316) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4320)
  %tobool4.not.i4321 = icmp eq i32 %call.i.i4320, 0
  br i1 %tobool4.not.i4321, label %if.end12.i4325, label %do.end.i4324

do.end.i4324:                                     ; preds = %if.end.i4322
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.202, ptr noundef null, ptr noundef nonnull %buf.i4315, i32 noundef %call.i.i4320) #9
  br label %nvram_read_u32.exit4326

if.end12.i4325:                                   ; preds = %if.end.i4322
  call void @__sanitizer_cov_trace_pc() #8
  %1003 = ptrtoint ptr %var.i4316 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %var.i4316, align 4
  %1005 = ptrtoint ptr %legofdmbw20ul5glpo to i32
  call void @__asan_store4_noabort(i32 %1005)
  store i32 %1004, ptr %legofdmbw20ul5glpo, align 4
  br label %nvram_read_u32.exit4326

nvram_read_u32.exit4326:                          ; preds = %if.end12.i4325, %do.end.i4324, %if.then1271.nvram_read_u32.exit4326_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4316) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4315) #6
  br label %if.end1273

if.end1273:                                       ; preds = %nvram_read_u32.exit4326, %if.end1265.if.end1273_crit_edge
  %1006 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1006)
  %1007 = load i8, ptr %sprom, align 4
  %conv1275 = zext i8 %1007 to i32
  %shl1276 = shl nuw i32 1, %conv1275
  %and1277 = and i32 %shl1276, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1277)
  %tobool1278.not = icmp eq i32 %and1277, 0
  br i1 %tobool1278.not, label %if.end1273.if.end1281_crit_edge, label %if.then1279

if.end1273.if.end1281_crit_edge:                  ; preds = %if.end1273
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1281

if.then1279:                                      ; preds = %if.end1273
  %legofdmbw205gmpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 124
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4327) #6
  %1008 = call ptr @memset(ptr %buf.i4327, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4328) #6
  %1009 = ptrtoint ptr %var.i4328 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store i32 -1, ptr %var.i4328, align 4, !annotation !557
  %call.i4329 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull %buf.i4327, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4329)
  %cmp.i4330 = icmp slt i32 %call.i4329, 0
  br i1 %cmp.i4330, label %if.then1279.nvram_read_u32.exit4338_crit_edge, label %if.end.i4334

if.then1279.nvram_read_u32.exit4338_crit_edge:    ; preds = %if.then1279
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4338

if.end.i4334:                                     ; preds = %if.then1279
  %call2.i4331 = call ptr @strim(ptr noundef nonnull %buf.i4327) #6
  %call.i.i4332 = call i32 @kstrtouint(ptr noundef %call2.i4331, i32 noundef 0, ptr noundef nonnull %var.i4328) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4332)
  %tobool4.not.i4333 = icmp eq i32 %call.i.i4332, 0
  br i1 %tobool4.not.i4333, label %if.end12.i4337, label %do.end.i4336

do.end.i4336:                                     ; preds = %if.end.i4334
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.203, ptr noundef null, ptr noundef nonnull %buf.i4327, i32 noundef %call.i.i4332) #9
  br label %nvram_read_u32.exit4338

if.end12.i4337:                                   ; preds = %if.end.i4334
  call void @__sanitizer_cov_trace_pc() #8
  %1010 = ptrtoint ptr %var.i4328 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load i32, ptr %var.i4328, align 4
  %1012 = ptrtoint ptr %legofdmbw205gmpo to i32
  call void @__asan_store4_noabort(i32 %1012)
  store i32 %1011, ptr %legofdmbw205gmpo, align 4
  br label %nvram_read_u32.exit4338

nvram_read_u32.exit4338:                          ; preds = %if.end12.i4337, %do.end.i4336, %if.then1279.nvram_read_u32.exit4338_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4328) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4327) #6
  br label %if.end1281

if.end1281:                                       ; preds = %nvram_read_u32.exit4338, %if.end1273.if.end1281_crit_edge
  %1013 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %sprom, align 4
  %conv1283 = zext i8 %1014 to i32
  %shl1284 = shl nuw i32 1, %conv1283
  %and1285 = and i32 %shl1284, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1285)
  %tobool1286.not = icmp eq i32 %and1285, 0
  br i1 %tobool1286.not, label %if.end1281.if.end1289_crit_edge, label %if.then1287

if.end1281.if.end1289_crit_edge:                  ; preds = %if.end1281
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1289

if.then1287:                                      ; preds = %if.end1281
  %legofdmbw20ul5gmpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 125
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4339) #6
  %1015 = call ptr @memset(ptr %buf.i4339, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4340) #6
  %1016 = ptrtoint ptr %var.i4340 to i32
  call void @__asan_store4_noabort(i32 %1016)
  store i32 -1, ptr %var.i4340, align 4, !annotation !557
  %call.i4341 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull %buf.i4339, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4341)
  %cmp.i4342 = icmp slt i32 %call.i4341, 0
  br i1 %cmp.i4342, label %if.then1287.nvram_read_u32.exit4350_crit_edge, label %if.end.i4346

if.then1287.nvram_read_u32.exit4350_crit_edge:    ; preds = %if.then1287
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4350

if.end.i4346:                                     ; preds = %if.then1287
  %call2.i4343 = call ptr @strim(ptr noundef nonnull %buf.i4339) #6
  %call.i.i4344 = call i32 @kstrtouint(ptr noundef %call2.i4343, i32 noundef 0, ptr noundef nonnull %var.i4340) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4344)
  %tobool4.not.i4345 = icmp eq i32 %call.i.i4344, 0
  br i1 %tobool4.not.i4345, label %if.end12.i4349, label %do.end.i4348

do.end.i4348:                                     ; preds = %if.end.i4346
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef nonnull %buf.i4339, i32 noundef %call.i.i4344) #9
  br label %nvram_read_u32.exit4350

if.end12.i4349:                                   ; preds = %if.end.i4346
  call void @__sanitizer_cov_trace_pc() #8
  %1017 = ptrtoint ptr %var.i4340 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load i32, ptr %var.i4340, align 4
  %1019 = ptrtoint ptr %legofdmbw20ul5gmpo to i32
  call void @__asan_store4_noabort(i32 %1019)
  store i32 %1018, ptr %legofdmbw20ul5gmpo, align 4
  br label %nvram_read_u32.exit4350

nvram_read_u32.exit4350:                          ; preds = %if.end12.i4349, %do.end.i4348, %if.then1287.nvram_read_u32.exit4350_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4340) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4339) #6
  br label %if.end1289

if.end1289:                                       ; preds = %nvram_read_u32.exit4350, %if.end1281.if.end1289_crit_edge
  %1020 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1020)
  %1021 = load i8, ptr %sprom, align 4
  %conv1291 = zext i8 %1021 to i32
  %shl1292 = shl nuw i32 1, %conv1291
  %and1293 = and i32 %shl1292, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1293)
  %tobool1294.not = icmp eq i32 %and1293, 0
  br i1 %tobool1294.not, label %if.end1289.if.end1297_crit_edge, label %if.then1295

if.end1289.if.end1297_crit_edge:                  ; preds = %if.end1289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1297

if.then1295:                                      ; preds = %if.end1289
  %legofdmbw205ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 126
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4351) #6
  %1022 = call ptr @memset(ptr %buf.i4351, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4352) #6
  %1023 = ptrtoint ptr %var.i4352 to i32
  call void @__asan_store4_noabort(i32 %1023)
  store i32 -1, ptr %var.i4352, align 4, !annotation !557
  %call.i4353 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull %buf.i4351, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4353)
  %cmp.i4354 = icmp slt i32 %call.i4353, 0
  br i1 %cmp.i4354, label %if.then1295.nvram_read_u32.exit4362_crit_edge, label %if.end.i4358

if.then1295.nvram_read_u32.exit4362_crit_edge:    ; preds = %if.then1295
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4362

if.end.i4358:                                     ; preds = %if.then1295
  %call2.i4355 = call ptr @strim(ptr noundef nonnull %buf.i4351) #6
  %call.i.i4356 = call i32 @kstrtouint(ptr noundef %call2.i4355, i32 noundef 0, ptr noundef nonnull %var.i4352) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4356)
  %tobool4.not.i4357 = icmp eq i32 %call.i.i4356, 0
  br i1 %tobool4.not.i4357, label %if.end12.i4361, label %do.end.i4360

do.end.i4360:                                     ; preds = %if.end.i4358
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.205, ptr noundef null, ptr noundef nonnull %buf.i4351, i32 noundef %call.i.i4356) #9
  br label %nvram_read_u32.exit4362

if.end12.i4361:                                   ; preds = %if.end.i4358
  call void @__sanitizer_cov_trace_pc() #8
  %1024 = ptrtoint ptr %var.i4352 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load i32, ptr %var.i4352, align 4
  %1026 = ptrtoint ptr %legofdmbw205ghpo to i32
  call void @__asan_store4_noabort(i32 %1026)
  store i32 %1025, ptr %legofdmbw205ghpo, align 4
  br label %nvram_read_u32.exit4362

nvram_read_u32.exit4362:                          ; preds = %if.end12.i4361, %do.end.i4360, %if.then1295.nvram_read_u32.exit4362_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4352) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4351) #6
  br label %if.end1297

if.end1297:                                       ; preds = %nvram_read_u32.exit4362, %if.end1289.if.end1297_crit_edge
  %1027 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1027)
  %1028 = load i8, ptr %sprom, align 4
  %conv1299 = zext i8 %1028 to i32
  %shl1300 = shl nuw i32 1, %conv1299
  %and1301 = and i32 %shl1300, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1301)
  %tobool1302.not = icmp eq i32 %and1301, 0
  br i1 %tobool1302.not, label %if.end1297.if.end1305_crit_edge, label %if.then1303

if.end1297.if.end1305_crit_edge:                  ; preds = %if.end1297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1305

if.then1303:                                      ; preds = %if.end1297
  %legofdmbw20ul5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 127
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4363) #6
  %1029 = call ptr @memset(ptr %buf.i4363, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4364) #6
  %1030 = ptrtoint ptr %var.i4364 to i32
  call void @__asan_store4_noabort(i32 %1030)
  store i32 -1, ptr %var.i4364, align 4, !annotation !557
  %call.i4365 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull %buf.i4363, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4365)
  %cmp.i4366 = icmp slt i32 %call.i4365, 0
  br i1 %cmp.i4366, label %if.then1303.nvram_read_u32.exit4374_crit_edge, label %if.end.i4370

if.then1303.nvram_read_u32.exit4374_crit_edge:    ; preds = %if.then1303
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4374

if.end.i4370:                                     ; preds = %if.then1303
  %call2.i4367 = call ptr @strim(ptr noundef nonnull %buf.i4363) #6
  %call.i.i4368 = call i32 @kstrtouint(ptr noundef %call2.i4367, i32 noundef 0, ptr noundef nonnull %var.i4364) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4368)
  %tobool4.not.i4369 = icmp eq i32 %call.i.i4368, 0
  br i1 %tobool4.not.i4369, label %if.end12.i4373, label %do.end.i4372

do.end.i4372:                                     ; preds = %if.end.i4370
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.206, ptr noundef null, ptr noundef nonnull %buf.i4363, i32 noundef %call.i.i4368) #9
  br label %nvram_read_u32.exit4374

if.end12.i4373:                                   ; preds = %if.end.i4370
  call void @__sanitizer_cov_trace_pc() #8
  %1031 = ptrtoint ptr %var.i4364 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load i32, ptr %var.i4364, align 4
  %1033 = ptrtoint ptr %legofdmbw20ul5ghpo to i32
  call void @__asan_store4_noabort(i32 %1033)
  store i32 %1032, ptr %legofdmbw20ul5ghpo, align 4
  br label %nvram_read_u32.exit4374

nvram_read_u32.exit4374:                          ; preds = %if.end12.i4373, %do.end.i4372, %if.then1303.nvram_read_u32.exit4374_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4364) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4363) #6
  %1034 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1034)
  %.pr5011 = load i8, ptr %sprom, align 4
  br label %if.end1305

if.end1305:                                       ; preds = %nvram_read_u32.exit4374, %if.end1297.if.end1305_crit_edge
  %1035 = phi i8 [ %.pr5011, %nvram_read_u32.exit4374 ], [ %1028, %if.end1297.if.end1305_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1035)
  %tobool1310.not = icmp ult i8 %1035, 9
  br i1 %tobool1310.not, label %if.end1305.if.end1313_crit_edge, label %if.then1311

if.end1305.if.end1313_crit_edge:                  ; preds = %if.end1305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1313

if.then1311:                                      ; preds = %if.end1305
  %mcsbw202gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 128
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4375) #6
  %1036 = call ptr @memset(ptr %buf.i4375, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4376) #6
  %1037 = ptrtoint ptr %var.i4376 to i32
  call void @__asan_store4_noabort(i32 %1037)
  store i32 -1, ptr %var.i4376, align 4, !annotation !557
  %call.i4377 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull %buf.i4375, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4377)
  %cmp.i4378 = icmp slt i32 %call.i4377, 0
  br i1 %cmp.i4378, label %if.then1311.nvram_read_u32.exit4386_crit_edge, label %if.end.i4382

if.then1311.nvram_read_u32.exit4386_crit_edge:    ; preds = %if.then1311
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4386

if.end.i4382:                                     ; preds = %if.then1311
  %call2.i4379 = call ptr @strim(ptr noundef nonnull %buf.i4375) #6
  %call.i.i4380 = call i32 @kstrtouint(ptr noundef %call2.i4379, i32 noundef 0, ptr noundef nonnull %var.i4376) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4380)
  %tobool4.not.i4381 = icmp eq i32 %call.i.i4380, 0
  br i1 %tobool4.not.i4381, label %if.end12.i4385, label %do.end.i4384

do.end.i4384:                                     ; preds = %if.end.i4382
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef nonnull %buf.i4375, i32 noundef %call.i.i4380) #9
  br label %nvram_read_u32.exit4386

if.end12.i4385:                                   ; preds = %if.end.i4382
  call void @__sanitizer_cov_trace_pc() #8
  %1038 = ptrtoint ptr %var.i4376 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load i32, ptr %var.i4376, align 4
  %1040 = ptrtoint ptr %mcsbw202gpo to i32
  call void @__asan_store4_noabort(i32 %1040)
  store i32 %1039, ptr %mcsbw202gpo, align 4
  br label %nvram_read_u32.exit4386

nvram_read_u32.exit4386:                          ; preds = %if.end12.i4385, %do.end.i4384, %if.then1311.nvram_read_u32.exit4386_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4376) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4375) #6
  br label %if.end1313

if.end1313:                                       ; preds = %nvram_read_u32.exit4386, %if.end1305.if.end1313_crit_edge
  %1041 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1041)
  %1042 = load i8, ptr %sprom, align 4
  %conv1315 = zext i8 %1042 to i32
  %shl1316 = shl nuw i32 1, %conv1315
  %and1317 = and i32 %shl1316, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1317)
  %tobool1318.not = icmp eq i32 %and1317, 0
  br i1 %tobool1318.not, label %if.end1313.if.end1321_crit_edge, label %if.then1319

if.end1313.if.end1321_crit_edge:                  ; preds = %if.end1313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1321

if.then1319:                                      ; preds = %if.end1313
  %mcsbw20ul2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 129
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4387) #6
  %1043 = call ptr @memset(ptr %buf.i4387, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4388) #6
  %1044 = ptrtoint ptr %var.i4388 to i32
  call void @__asan_store4_noabort(i32 %1044)
  store i32 -1, ptr %var.i4388, align 4, !annotation !557
  %call.i4389 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull %buf.i4387, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4389)
  %cmp.i4390 = icmp slt i32 %call.i4389, 0
  br i1 %cmp.i4390, label %if.then1319.nvram_read_u32.exit4398_crit_edge, label %if.end.i4394

if.then1319.nvram_read_u32.exit4398_crit_edge:    ; preds = %if.then1319
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4398

if.end.i4394:                                     ; preds = %if.then1319
  %call2.i4391 = call ptr @strim(ptr noundef nonnull %buf.i4387) #6
  %call.i.i4392 = call i32 @kstrtouint(ptr noundef %call2.i4391, i32 noundef 0, ptr noundef nonnull %var.i4388) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4392)
  %tobool4.not.i4393 = icmp eq i32 %call.i.i4392, 0
  br i1 %tobool4.not.i4393, label %if.end12.i4397, label %do.end.i4396

do.end.i4396:                                     ; preds = %if.end.i4394
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef nonnull %buf.i4387, i32 noundef %call.i.i4392) #9
  br label %nvram_read_u32.exit4398

if.end12.i4397:                                   ; preds = %if.end.i4394
  call void @__sanitizer_cov_trace_pc() #8
  %1045 = ptrtoint ptr %var.i4388 to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load i32, ptr %var.i4388, align 4
  %1047 = ptrtoint ptr %mcsbw20ul2gpo to i32
  call void @__asan_store4_noabort(i32 %1047)
  store i32 %1046, ptr %mcsbw20ul2gpo, align 4
  br label %nvram_read_u32.exit4398

nvram_read_u32.exit4398:                          ; preds = %if.end12.i4397, %do.end.i4396, %if.then1319.nvram_read_u32.exit4398_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4388) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4387) #6
  %1048 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1048)
  %.pr5012 = load i8, ptr %sprom, align 4
  br label %if.end1321

if.end1321:                                       ; preds = %nvram_read_u32.exit4398, %if.end1313.if.end1321_crit_edge
  %1049 = phi i8 [ %.pr5012, %nvram_read_u32.exit4398 ], [ %1042, %if.end1313.if.end1321_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1049)
  %tobool1326.not = icmp ult i8 %1049, 9
  br i1 %tobool1326.not, label %if.end1321.if.end1329_crit_edge, label %if.then1327

if.end1321.if.end1329_crit_edge:                  ; preds = %if.end1321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1329

if.then1327:                                      ; preds = %if.end1321
  %mcsbw402gpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 130
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4399) #6
  %1050 = call ptr @memset(ptr %buf.i4399, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4400) #6
  %1051 = ptrtoint ptr %var.i4400 to i32
  call void @__asan_store4_noabort(i32 %1051)
  store i32 -1, ptr %var.i4400, align 4, !annotation !557
  %call.i4401 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull %buf.i4399, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4401)
  %cmp.i4402 = icmp slt i32 %call.i4401, 0
  br i1 %cmp.i4402, label %if.then1327.nvram_read_u32.exit4410_crit_edge, label %if.end.i4406

if.then1327.nvram_read_u32.exit4410_crit_edge:    ; preds = %if.then1327
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4410

if.end.i4406:                                     ; preds = %if.then1327
  %call2.i4403 = call ptr @strim(ptr noundef nonnull %buf.i4399) #6
  %call.i.i4404 = call i32 @kstrtouint(ptr noundef %call2.i4403, i32 noundef 0, ptr noundef nonnull %var.i4400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4404)
  %tobool4.not.i4405 = icmp eq i32 %call.i.i4404, 0
  br i1 %tobool4.not.i4405, label %if.end12.i4409, label %do.end.i4408

do.end.i4408:                                     ; preds = %if.end.i4406
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.209, ptr noundef null, ptr noundef nonnull %buf.i4399, i32 noundef %call.i.i4404) #9
  br label %nvram_read_u32.exit4410

if.end12.i4409:                                   ; preds = %if.end.i4406
  call void @__sanitizer_cov_trace_pc() #8
  %1052 = ptrtoint ptr %var.i4400 to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load i32, ptr %var.i4400, align 4
  %1054 = ptrtoint ptr %mcsbw402gpo to i32
  call void @__asan_store4_noabort(i32 %1054)
  store i32 %1053, ptr %mcsbw402gpo, align 4
  br label %nvram_read_u32.exit4410

nvram_read_u32.exit4410:                          ; preds = %if.end12.i4409, %do.end.i4408, %if.then1327.nvram_read_u32.exit4410_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4400) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4399) #6
  br label %if.end1329

if.end1329:                                       ; preds = %nvram_read_u32.exit4410, %if.end1321.if.end1329_crit_edge
  %1055 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1055)
  %1056 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1056)
  %tobool1334.not = icmp ult i8 %1056, 9
  br i1 %tobool1334.not, label %if.end1329.if.end1337_crit_edge, label %if.then1335

if.end1329.if.end1337_crit_edge:                  ; preds = %if.end1329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1337

if.then1335:                                      ; preds = %if.end1329
  %mcsbw205glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 131
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4411) #6
  %1057 = call ptr @memset(ptr %buf.i4411, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4412) #6
  %1058 = ptrtoint ptr %var.i4412 to i32
  call void @__asan_store4_noabort(i32 %1058)
  store i32 -1, ptr %var.i4412, align 4, !annotation !557
  %call.i4413 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull %buf.i4411, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4413)
  %cmp.i4414 = icmp slt i32 %call.i4413, 0
  br i1 %cmp.i4414, label %if.then1335.nvram_read_u32.exit4422_crit_edge, label %if.end.i4418

if.then1335.nvram_read_u32.exit4422_crit_edge:    ; preds = %if.then1335
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4422

if.end.i4418:                                     ; preds = %if.then1335
  %call2.i4415 = call ptr @strim(ptr noundef nonnull %buf.i4411) #6
  %call.i.i4416 = call i32 @kstrtouint(ptr noundef %call2.i4415, i32 noundef 0, ptr noundef nonnull %var.i4412) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4416)
  %tobool4.not.i4417 = icmp eq i32 %call.i.i4416, 0
  br i1 %tobool4.not.i4417, label %if.end12.i4421, label %do.end.i4420

do.end.i4420:                                     ; preds = %if.end.i4418
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef nonnull %buf.i4411, i32 noundef %call.i.i4416) #9
  br label %nvram_read_u32.exit4422

if.end12.i4421:                                   ; preds = %if.end.i4418
  call void @__sanitizer_cov_trace_pc() #8
  %1059 = ptrtoint ptr %var.i4412 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %var.i4412, align 4
  %1061 = ptrtoint ptr %mcsbw205glpo to i32
  call void @__asan_store4_noabort(i32 %1061)
  store i32 %1060, ptr %mcsbw205glpo, align 4
  br label %nvram_read_u32.exit4422

nvram_read_u32.exit4422:                          ; preds = %if.end12.i4421, %do.end.i4420, %if.then1335.nvram_read_u32.exit4422_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4412) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4411) #6
  br label %if.end1337

if.end1337:                                       ; preds = %nvram_read_u32.exit4422, %if.end1329.if.end1337_crit_edge
  %1062 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1062)
  %1063 = load i8, ptr %sprom, align 4
  %conv1339 = zext i8 %1063 to i32
  %shl1340 = shl nuw i32 1, %conv1339
  %and1341 = and i32 %shl1340, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1341)
  %tobool1342.not = icmp eq i32 %and1341, 0
  br i1 %tobool1342.not, label %if.end1337.if.end1345_crit_edge, label %if.then1343

if.end1337.if.end1345_crit_edge:                  ; preds = %if.end1337
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1345

if.then1343:                                      ; preds = %if.end1337
  %mcsbw20ul5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 132
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4423) #6
  %1064 = call ptr @memset(ptr %buf.i4423, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4424) #6
  %1065 = ptrtoint ptr %var.i4424 to i32
  call void @__asan_store4_noabort(i32 %1065)
  store i32 -1, ptr %var.i4424, align 4, !annotation !557
  %call.i4425 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull %buf.i4423, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4425)
  %cmp.i4426 = icmp slt i32 %call.i4425, 0
  br i1 %cmp.i4426, label %if.then1343.nvram_read_u32.exit4434_crit_edge, label %if.end.i4430

if.then1343.nvram_read_u32.exit4434_crit_edge:    ; preds = %if.then1343
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4434

if.end.i4430:                                     ; preds = %if.then1343
  %call2.i4427 = call ptr @strim(ptr noundef nonnull %buf.i4423) #6
  %call.i.i4428 = call i32 @kstrtouint(ptr noundef %call2.i4427, i32 noundef 0, ptr noundef nonnull %var.i4424) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4428)
  %tobool4.not.i4429 = icmp eq i32 %call.i.i4428, 0
  br i1 %tobool4.not.i4429, label %if.end12.i4433, label %do.end.i4432

do.end.i4432:                                     ; preds = %if.end.i4430
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.211, ptr noundef null, ptr noundef nonnull %buf.i4423, i32 noundef %call.i.i4428) #9
  br label %nvram_read_u32.exit4434

if.end12.i4433:                                   ; preds = %if.end.i4430
  call void @__sanitizer_cov_trace_pc() #8
  %1066 = ptrtoint ptr %var.i4424 to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load i32, ptr %var.i4424, align 4
  %1068 = ptrtoint ptr %mcsbw20ul5glpo to i32
  call void @__asan_store4_noabort(i32 %1068)
  store i32 %1067, ptr %mcsbw20ul5glpo, align 4
  br label %nvram_read_u32.exit4434

nvram_read_u32.exit4434:                          ; preds = %if.end12.i4433, %do.end.i4432, %if.then1343.nvram_read_u32.exit4434_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4424) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4423) #6
  %1069 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1069)
  %.pr5013 = load i8, ptr %sprom, align 4
  br label %if.end1345

if.end1345:                                       ; preds = %nvram_read_u32.exit4434, %if.end1337.if.end1345_crit_edge
  %1070 = phi i8 [ %.pr5013, %nvram_read_u32.exit4434 ], [ %1063, %if.end1337.if.end1345_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1070)
  %tobool1350.not = icmp ult i8 %1070, 9
  br i1 %tobool1350.not, label %if.end1345.if.end1353_crit_edge, label %if.then1351

if.end1345.if.end1353_crit_edge:                  ; preds = %if.end1345
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1353

if.then1351:                                      ; preds = %if.end1345
  %mcsbw405glpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 133
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4435) #6
  %1071 = call ptr @memset(ptr %buf.i4435, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4436) #6
  %1072 = ptrtoint ptr %var.i4436 to i32
  call void @__asan_store4_noabort(i32 %1072)
  store i32 -1, ptr %var.i4436, align 4, !annotation !557
  %call.i4437 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull %buf.i4435, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4437)
  %cmp.i4438 = icmp slt i32 %call.i4437, 0
  br i1 %cmp.i4438, label %if.then1351.nvram_read_u32.exit4446_crit_edge, label %if.end.i4442

if.then1351.nvram_read_u32.exit4446_crit_edge:    ; preds = %if.then1351
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4446

if.end.i4442:                                     ; preds = %if.then1351
  %call2.i4439 = call ptr @strim(ptr noundef nonnull %buf.i4435) #6
  %call.i.i4440 = call i32 @kstrtouint(ptr noundef %call2.i4439, i32 noundef 0, ptr noundef nonnull %var.i4436) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4440)
  %tobool4.not.i4441 = icmp eq i32 %call.i.i4440, 0
  br i1 %tobool4.not.i4441, label %if.end12.i4445, label %do.end.i4444

do.end.i4444:                                     ; preds = %if.end.i4442
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.212, ptr noundef null, ptr noundef nonnull %buf.i4435, i32 noundef %call.i.i4440) #9
  br label %nvram_read_u32.exit4446

if.end12.i4445:                                   ; preds = %if.end.i4442
  call void @__sanitizer_cov_trace_pc() #8
  %1073 = ptrtoint ptr %var.i4436 to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %var.i4436, align 4
  %1075 = ptrtoint ptr %mcsbw405glpo to i32
  call void @__asan_store4_noabort(i32 %1075)
  store i32 %1074, ptr %mcsbw405glpo, align 4
  br label %nvram_read_u32.exit4446

nvram_read_u32.exit4446:                          ; preds = %if.end12.i4445, %do.end.i4444, %if.then1351.nvram_read_u32.exit4446_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4436) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4435) #6
  br label %if.end1353

if.end1353:                                       ; preds = %nvram_read_u32.exit4446, %if.end1345.if.end1353_crit_edge
  %1076 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1076)
  %1077 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1077)
  %tobool1358.not = icmp ult i8 %1077, 9
  br i1 %tobool1358.not, label %if.end1353.if.end1361_crit_edge, label %if.then1359

if.end1353.if.end1361_crit_edge:                  ; preds = %if.end1353
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1361

if.then1359:                                      ; preds = %if.end1353
  %mcsbw205gmpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 134
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4447) #6
  %1078 = call ptr @memset(ptr %buf.i4447, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4448) #6
  %1079 = ptrtoint ptr %var.i4448 to i32
  call void @__asan_store4_noabort(i32 %1079)
  store i32 -1, ptr %var.i4448, align 4, !annotation !557
  %call.i4449 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull %buf.i4447, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4449)
  %cmp.i4450 = icmp slt i32 %call.i4449, 0
  br i1 %cmp.i4450, label %if.then1359.nvram_read_u32.exit4458_crit_edge, label %if.end.i4454

if.then1359.nvram_read_u32.exit4458_crit_edge:    ; preds = %if.then1359
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4458

if.end.i4454:                                     ; preds = %if.then1359
  %call2.i4451 = call ptr @strim(ptr noundef nonnull %buf.i4447) #6
  %call.i.i4452 = call i32 @kstrtouint(ptr noundef %call2.i4451, i32 noundef 0, ptr noundef nonnull %var.i4448) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4452)
  %tobool4.not.i4453 = icmp eq i32 %call.i.i4452, 0
  br i1 %tobool4.not.i4453, label %if.end12.i4457, label %do.end.i4456

do.end.i4456:                                     ; preds = %if.end.i4454
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.213, ptr noundef null, ptr noundef nonnull %buf.i4447, i32 noundef %call.i.i4452) #9
  br label %nvram_read_u32.exit4458

if.end12.i4457:                                   ; preds = %if.end.i4454
  call void @__sanitizer_cov_trace_pc() #8
  %1080 = ptrtoint ptr %var.i4448 to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load i32, ptr %var.i4448, align 4
  %1082 = ptrtoint ptr %mcsbw205gmpo to i32
  call void @__asan_store4_noabort(i32 %1082)
  store i32 %1081, ptr %mcsbw205gmpo, align 4
  br label %nvram_read_u32.exit4458

nvram_read_u32.exit4458:                          ; preds = %if.end12.i4457, %do.end.i4456, %if.then1359.nvram_read_u32.exit4458_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4448) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4447) #6
  br label %if.end1361

if.end1361:                                       ; preds = %nvram_read_u32.exit4458, %if.end1353.if.end1361_crit_edge
  %1083 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1083)
  %1084 = load i8, ptr %sprom, align 4
  %conv1363 = zext i8 %1084 to i32
  %shl1364 = shl nuw i32 1, %conv1363
  %and1365 = and i32 %shl1364, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1365)
  %tobool1366.not = icmp eq i32 %and1365, 0
  br i1 %tobool1366.not, label %if.end1361.if.end1369_crit_edge, label %if.then1367

if.end1361.if.end1369_crit_edge:                  ; preds = %if.end1361
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1369

if.then1367:                                      ; preds = %if.end1361
  %mcsbw20ul5gmpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 135
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4459) #6
  %1085 = call ptr @memset(ptr %buf.i4459, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4460) #6
  %1086 = ptrtoint ptr %var.i4460 to i32
  call void @__asan_store4_noabort(i32 %1086)
  store i32 -1, ptr %var.i4460, align 4, !annotation !557
  %call.i4461 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull %buf.i4459, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4461)
  %cmp.i4462 = icmp slt i32 %call.i4461, 0
  br i1 %cmp.i4462, label %if.then1367.nvram_read_u32.exit4470_crit_edge, label %if.end.i4466

if.then1367.nvram_read_u32.exit4470_crit_edge:    ; preds = %if.then1367
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4470

if.end.i4466:                                     ; preds = %if.then1367
  %call2.i4463 = call ptr @strim(ptr noundef nonnull %buf.i4459) #6
  %call.i.i4464 = call i32 @kstrtouint(ptr noundef %call2.i4463, i32 noundef 0, ptr noundef nonnull %var.i4460) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4464)
  %tobool4.not.i4465 = icmp eq i32 %call.i.i4464, 0
  br i1 %tobool4.not.i4465, label %if.end12.i4469, label %do.end.i4468

do.end.i4468:                                     ; preds = %if.end.i4466
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.214, ptr noundef null, ptr noundef nonnull %buf.i4459, i32 noundef %call.i.i4464) #9
  br label %nvram_read_u32.exit4470

if.end12.i4469:                                   ; preds = %if.end.i4466
  call void @__sanitizer_cov_trace_pc() #8
  %1087 = ptrtoint ptr %var.i4460 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %var.i4460, align 4
  %1089 = ptrtoint ptr %mcsbw20ul5gmpo to i32
  call void @__asan_store4_noabort(i32 %1089)
  store i32 %1088, ptr %mcsbw20ul5gmpo, align 4
  br label %nvram_read_u32.exit4470

nvram_read_u32.exit4470:                          ; preds = %if.end12.i4469, %do.end.i4468, %if.then1367.nvram_read_u32.exit4470_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4460) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4459) #6
  %1090 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1090)
  %.pr5014 = load i8, ptr %sprom, align 4
  br label %if.end1369

if.end1369:                                       ; preds = %nvram_read_u32.exit4470, %if.end1361.if.end1369_crit_edge
  %1091 = phi i8 [ %.pr5014, %nvram_read_u32.exit4470 ], [ %1084, %if.end1361.if.end1369_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1091)
  %tobool1374.not = icmp ult i8 %1091, 9
  br i1 %tobool1374.not, label %if.end1369.if.end1377_crit_edge, label %if.then1375

if.end1369.if.end1377_crit_edge:                  ; preds = %if.end1369
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1377

if.then1375:                                      ; preds = %if.end1369
  %mcsbw405gmpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 136
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4471) #6
  %1092 = call ptr @memset(ptr %buf.i4471, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4472) #6
  %1093 = ptrtoint ptr %var.i4472 to i32
  call void @__asan_store4_noabort(i32 %1093)
  store i32 -1, ptr %var.i4472, align 4, !annotation !557
  %call.i4473 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull %buf.i4471, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4473)
  %cmp.i4474 = icmp slt i32 %call.i4473, 0
  br i1 %cmp.i4474, label %if.then1375.nvram_read_u32.exit4482_crit_edge, label %if.end.i4478

if.then1375.nvram_read_u32.exit4482_crit_edge:    ; preds = %if.then1375
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4482

if.end.i4478:                                     ; preds = %if.then1375
  %call2.i4475 = call ptr @strim(ptr noundef nonnull %buf.i4471) #6
  %call.i.i4476 = call i32 @kstrtouint(ptr noundef %call2.i4475, i32 noundef 0, ptr noundef nonnull %var.i4472) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4476)
  %tobool4.not.i4477 = icmp eq i32 %call.i.i4476, 0
  br i1 %tobool4.not.i4477, label %if.end12.i4481, label %do.end.i4480

do.end.i4480:                                     ; preds = %if.end.i4478
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.215, ptr noundef null, ptr noundef nonnull %buf.i4471, i32 noundef %call.i.i4476) #9
  br label %nvram_read_u32.exit4482

if.end12.i4481:                                   ; preds = %if.end.i4478
  call void @__sanitizer_cov_trace_pc() #8
  %1094 = ptrtoint ptr %var.i4472 to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load i32, ptr %var.i4472, align 4
  %1096 = ptrtoint ptr %mcsbw405gmpo to i32
  call void @__asan_store4_noabort(i32 %1096)
  store i32 %1095, ptr %mcsbw405gmpo, align 4
  br label %nvram_read_u32.exit4482

nvram_read_u32.exit4482:                          ; preds = %if.end12.i4481, %do.end.i4480, %if.then1375.nvram_read_u32.exit4482_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4472) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4471) #6
  br label %if.end1377

if.end1377:                                       ; preds = %nvram_read_u32.exit4482, %if.end1369.if.end1377_crit_edge
  %1097 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1097)
  %1098 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1098)
  %tobool1382.not = icmp ult i8 %1098, 9
  br i1 %tobool1382.not, label %if.end1377.if.end1385_crit_edge, label %if.then1383

if.end1377.if.end1385_crit_edge:                  ; preds = %if.end1377
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1385

if.then1383:                                      ; preds = %if.end1377
  %mcsbw205ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 137
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4483) #6
  %1099 = call ptr @memset(ptr %buf.i4483, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4484) #6
  %1100 = ptrtoint ptr %var.i4484 to i32
  call void @__asan_store4_noabort(i32 %1100)
  store i32 -1, ptr %var.i4484, align 4, !annotation !557
  %call.i4485 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull %buf.i4483, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4485)
  %cmp.i4486 = icmp slt i32 %call.i4485, 0
  br i1 %cmp.i4486, label %if.then1383.nvram_read_u32.exit4494_crit_edge, label %if.end.i4490

if.then1383.nvram_read_u32.exit4494_crit_edge:    ; preds = %if.then1383
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4494

if.end.i4490:                                     ; preds = %if.then1383
  %call2.i4487 = call ptr @strim(ptr noundef nonnull %buf.i4483) #6
  %call.i.i4488 = call i32 @kstrtouint(ptr noundef %call2.i4487, i32 noundef 0, ptr noundef nonnull %var.i4484) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4488)
  %tobool4.not.i4489 = icmp eq i32 %call.i.i4488, 0
  br i1 %tobool4.not.i4489, label %if.end12.i4493, label %do.end.i4492

do.end.i4492:                                     ; preds = %if.end.i4490
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.216, ptr noundef null, ptr noundef nonnull %buf.i4483, i32 noundef %call.i.i4488) #9
  br label %nvram_read_u32.exit4494

if.end12.i4493:                                   ; preds = %if.end.i4490
  call void @__sanitizer_cov_trace_pc() #8
  %1101 = ptrtoint ptr %var.i4484 to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %var.i4484, align 4
  %1103 = ptrtoint ptr %mcsbw205ghpo to i32
  call void @__asan_store4_noabort(i32 %1103)
  store i32 %1102, ptr %mcsbw205ghpo, align 4
  br label %nvram_read_u32.exit4494

nvram_read_u32.exit4494:                          ; preds = %if.end12.i4493, %do.end.i4492, %if.then1383.nvram_read_u32.exit4494_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4484) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4483) #6
  br label %if.end1385

if.end1385:                                       ; preds = %nvram_read_u32.exit4494, %if.end1377.if.end1385_crit_edge
  %1104 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1104)
  %1105 = load i8, ptr %sprom, align 4
  %conv1387 = zext i8 %1105 to i32
  %shl1388 = shl nuw i32 1, %conv1387
  %and1389 = and i32 %shl1388, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1389)
  %tobool1390.not = icmp eq i32 %and1389, 0
  br i1 %tobool1390.not, label %if.end1385.if.end1393_crit_edge, label %if.then1391

if.end1385.if.end1393_crit_edge:                  ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1393

if.then1391:                                      ; preds = %if.end1385
  %mcsbw20ul5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 138
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4495) #6
  %1106 = call ptr @memset(ptr %buf.i4495, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4496) #6
  %1107 = ptrtoint ptr %var.i4496 to i32
  call void @__asan_store4_noabort(i32 %1107)
  store i32 -1, ptr %var.i4496, align 4, !annotation !557
  %call.i4497 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull %buf.i4495, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4497)
  %cmp.i4498 = icmp slt i32 %call.i4497, 0
  br i1 %cmp.i4498, label %if.then1391.nvram_read_u32.exit4506_crit_edge, label %if.end.i4502

if.then1391.nvram_read_u32.exit4506_crit_edge:    ; preds = %if.then1391
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4506

if.end.i4502:                                     ; preds = %if.then1391
  %call2.i4499 = call ptr @strim(ptr noundef nonnull %buf.i4495) #6
  %call.i.i4500 = call i32 @kstrtouint(ptr noundef %call2.i4499, i32 noundef 0, ptr noundef nonnull %var.i4496) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4500)
  %tobool4.not.i4501 = icmp eq i32 %call.i.i4500, 0
  br i1 %tobool4.not.i4501, label %if.end12.i4505, label %do.end.i4504

do.end.i4504:                                     ; preds = %if.end.i4502
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.217, ptr noundef null, ptr noundef nonnull %buf.i4495, i32 noundef %call.i.i4500) #9
  br label %nvram_read_u32.exit4506

if.end12.i4505:                                   ; preds = %if.end.i4502
  call void @__sanitizer_cov_trace_pc() #8
  %1108 = ptrtoint ptr %var.i4496 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load i32, ptr %var.i4496, align 4
  %1110 = ptrtoint ptr %mcsbw20ul5ghpo to i32
  call void @__asan_store4_noabort(i32 %1110)
  store i32 %1109, ptr %mcsbw20ul5ghpo, align 4
  br label %nvram_read_u32.exit4506

nvram_read_u32.exit4506:                          ; preds = %if.end12.i4505, %do.end.i4504, %if.then1391.nvram_read_u32.exit4506_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4496) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4495) #6
  %1111 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1111)
  %.pr5015 = load i8, ptr %sprom, align 4
  br label %if.end1393

if.end1393:                                       ; preds = %nvram_read_u32.exit4506, %if.end1385.if.end1393_crit_edge
  %1112 = phi i8 [ %.pr5015, %nvram_read_u32.exit4506 ], [ %1105, %if.end1385.if.end1393_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1112)
  %tobool1398.not = icmp ult i8 %1112, 9
  br i1 %tobool1398.not, label %if.end1393.if.end1401_crit_edge, label %if.then1399

if.end1393.if.end1401_crit_edge:                  ; preds = %if.end1393
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1401

if.then1399:                                      ; preds = %if.end1393
  %mcsbw405ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 139
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4507) #6
  %1113 = call ptr @memset(ptr %buf.i4507, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var.i4508) #6
  %1114 = ptrtoint ptr %var.i4508 to i32
  call void @__asan_store4_noabort(i32 %1114)
  store i32 -1, ptr %var.i4508, align 4, !annotation !557
  %call.i4509 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull %buf.i4507, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4509)
  %cmp.i4510 = icmp slt i32 %call.i4509, 0
  br i1 %cmp.i4510, label %if.then1399.nvram_read_u32.exit4518_crit_edge, label %if.end.i4514

if.then1399.nvram_read_u32.exit4518_crit_edge:    ; preds = %if.then1399
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u32.exit4518

if.end.i4514:                                     ; preds = %if.then1399
  %call2.i4511 = call ptr @strim(ptr noundef nonnull %buf.i4507) #6
  %call.i.i4512 = call i32 @kstrtouint(ptr noundef %call2.i4511, i32 noundef 0, ptr noundef nonnull %var.i4508) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4512)
  %tobool4.not.i4513 = icmp eq i32 %call.i.i4512, 0
  br i1 %tobool4.not.i4513, label %if.end12.i4517, label %do.end.i4516

do.end.i4516:                                     ; preds = %if.end.i4514
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.218, ptr noundef null, ptr noundef nonnull %buf.i4507, i32 noundef %call.i.i4512) #9
  br label %nvram_read_u32.exit4518

if.end12.i4517:                                   ; preds = %if.end.i4514
  call void @__sanitizer_cov_trace_pc() #8
  %1115 = ptrtoint ptr %var.i4508 to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load i32, ptr %var.i4508, align 4
  %1117 = ptrtoint ptr %mcsbw405ghpo to i32
  call void @__asan_store4_noabort(i32 %1117)
  store i32 %1116, ptr %mcsbw405ghpo, align 4
  br label %nvram_read_u32.exit4518

nvram_read_u32.exit4518:                          ; preds = %if.end12.i4517, %do.end.i4516, %if.then1399.nvram_read_u32.exit4518_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var.i4508) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4507) #6
  br label %if.end1401

if.end1401:                                       ; preds = %nvram_read_u32.exit4518, %if.end1393.if.end1401_crit_edge
  %1118 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1118)
  %1119 = load i8, ptr %sprom, align 4
  %conv1403 = zext i8 %1119 to i32
  %shl1404 = shl nuw i32 1, %conv1403
  %and1405 = and i32 %shl1404, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1405)
  %tobool1406.not = icmp eq i32 %and1405, 0
  br i1 %tobool1406.not, label %if.end1401.if.end1409_crit_edge, label %if.then1407

if.end1401.if.end1409_crit_edge:                  ; preds = %if.end1401
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1409

if.then1407:                                      ; preds = %if.end1401
  %mcs32po = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 140
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4519) #6
  %1120 = call ptr @memset(ptr %buf.i4519, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4520) #6
  %1121 = ptrtoint ptr %var.i4520 to i32
  call void @__asan_store2_noabort(i32 %1121)
  store i16 -1, ptr %var.i4520, align 2, !annotation !557
  %call.i4521 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull %buf.i4519, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4521)
  %cmp.i4522 = icmp slt i32 %call.i4521, 0
  br i1 %cmp.i4522, label %if.then1407.nvram_read_u16.exit4530_crit_edge, label %if.end.i4526

if.then1407.nvram_read_u16.exit4530_crit_edge:    ; preds = %if.then1407
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4530

if.end.i4526:                                     ; preds = %if.then1407
  %call2.i4523 = call ptr @strim(ptr noundef nonnull %buf.i4519) #6
  %call3.i4524 = call i32 @kstrtou16(ptr noundef %call2.i4523, i32 noundef 0, ptr noundef nonnull %var.i4520) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4524)
  %tobool4.not.i4525 = icmp eq i32 %call3.i4524, 0
  br i1 %tobool4.not.i4525, label %if.end15.i4529, label %do.end.i4528

do.end.i4528:                                     ; preds = %if.end.i4526
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.219, ptr noundef null, ptr noundef nonnull %buf.i4519, i32 noundef %call3.i4524) #9
  br label %nvram_read_u16.exit4530

if.end15.i4529:                                   ; preds = %if.end.i4526
  call void @__sanitizer_cov_trace_pc() #8
  %1122 = ptrtoint ptr %var.i4520 to i32
  call void @__asan_load2_noabort(i32 %1122)
  %1123 = load i16, ptr %var.i4520, align 2
  %1124 = ptrtoint ptr %mcs32po to i32
  call void @__asan_store2_noabort(i32 %1124)
  store i16 %1123, ptr %mcs32po, align 2
  br label %nvram_read_u16.exit4530

nvram_read_u16.exit4530:                          ; preds = %if.end15.i4529, %do.end.i4528, %if.then1407.nvram_read_u16.exit4530_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4520) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4519) #6
  br label %if.end1409

if.end1409:                                       ; preds = %nvram_read_u16.exit4530, %if.end1401.if.end1409_crit_edge
  %1125 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1125)
  %1126 = load i8, ptr %sprom, align 4
  %conv1411 = zext i8 %1126 to i32
  %shl1412 = shl nuw i32 1, %conv1411
  %and1413 = and i32 %shl1412, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1413)
  %tobool1414.not = icmp eq i32 %and1413, 0
  br i1 %tobool1414.not, label %if.end1409.if.end1417_crit_edge, label %if.then1415

if.end1409.if.end1417_crit_edge:                  ; preds = %if.end1409
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1417

if.then1415:                                      ; preds = %if.end1409
  %legofdm40duppo = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 141
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4531) #6
  %1127 = call ptr @memset(ptr %buf.i4531, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i4532) #6
  %1128 = ptrtoint ptr %var.i4532 to i32
  call void @__asan_store2_noabort(i32 %1128)
  store i16 -1, ptr %var.i4532, align 2, !annotation !557
  %call.i4533 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull %buf.i4531, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4533)
  %cmp.i4534 = icmp slt i32 %call.i4533, 0
  br i1 %cmp.i4534, label %if.then1415.nvram_read_u16.exit4542_crit_edge, label %if.end.i4538

if.then1415.nvram_read_u16.exit4542_crit_edge:    ; preds = %if.then1415
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit4542

if.end.i4538:                                     ; preds = %if.then1415
  %call2.i4535 = call ptr @strim(ptr noundef nonnull %buf.i4531) #6
  %call3.i4536 = call i32 @kstrtou16(ptr noundef %call2.i4535, i32 noundef 0, ptr noundef nonnull %var.i4532) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4536)
  %tobool4.not.i4537 = icmp eq i32 %call3.i4536, 0
  br i1 %tobool4.not.i4537, label %if.end15.i4541, label %do.end.i4540

do.end.i4540:                                     ; preds = %if.end.i4538
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.220, ptr noundef null, ptr noundef nonnull %buf.i4531, i32 noundef %call3.i4536) #9
  br label %nvram_read_u16.exit4542

if.end15.i4541:                                   ; preds = %if.end.i4538
  call void @__sanitizer_cov_trace_pc() #8
  %1129 = ptrtoint ptr %var.i4532 to i32
  call void @__asan_load2_noabort(i32 %1129)
  %1130 = load i16, ptr %var.i4532, align 2
  %1131 = ptrtoint ptr %legofdm40duppo to i32
  call void @__asan_store2_noabort(i32 %1131)
  store i16 %1130, ptr %legofdm40duppo, align 2
  br label %nvram_read_u16.exit4542

nvram_read_u16.exit4542:                          ; preds = %if.end15.i4541, %do.end.i4540, %if.then1415.nvram_read_u16.exit4542_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i4532) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4531) #6
  br label %if.end1417

if.end1417:                                       ; preds = %nvram_read_u16.exit4542, %if.end1409.if.end1417_crit_edge
  %1132 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1132)
  %1133 = load i8, ptr %sprom, align 4
  %conv1419 = zext i8 %1133 to i32
  %shl1420 = shl nuw i32 1, %conv1419
  %and1421 = and i32 %shl1420, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1421)
  %tobool1422.not = icmp eq i32 %and1421, 0
  br i1 %tobool1422.not, label %if.end1417.if.end1425_crit_edge, label %if.then1423

if.end1417.if.end1425_crit_edge:                  ; preds = %if.end1417
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1425

if.then1423:                                      ; preds = %if.end1417
  %pcieingress_war = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 117
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4543) #6
  %1134 = call ptr @memset(ptr %buf.i4543, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4544) #6
  %1135 = ptrtoint ptr %var.i4544 to i32
  call void @__asan_store1_noabort(i32 %1135)
  store i8 -1, ptr %var.i4544, align 1, !annotation !557
  %call.i4545 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull %buf.i4543, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4545)
  %cmp.i4546 = icmp slt i32 %call.i4545, 0
  br i1 %cmp.i4546, label %if.then1423.nvram_read_u8.exit4555_crit_edge, label %if.end.i4550

if.then1423.nvram_read_u8.exit4555_crit_edge:     ; preds = %if.then1423
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4555

if.end.i4550:                                     ; preds = %if.then1423
  %call2.i4547 = call ptr @strim(ptr noundef nonnull %buf.i4543) #6
  %call3.i4548 = call i32 @kstrtou8(ptr noundef %call2.i4547, i32 noundef 0, ptr noundef nonnull %var.i4544) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4548)
  %tobool4.not.i4549 = icmp eq i32 %call3.i4548, 0
  br i1 %tobool4.not.i4549, label %if.end8.i4553, label %do.end.i4552

do.end.i4552:                                     ; preds = %if.end.i4550
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.221, ptr noundef null, ptr noundef nonnull %buf.i4543, i32 noundef %call3.i4548) #9
  br label %nvram_read_u8.exit4555

if.end8.i4553:                                    ; preds = %if.end.i4550
  call void @__sanitizer_cov_trace_pc() #8
  %1136 = ptrtoint ptr %var.i4544 to i32
  call void @__asan_load1_noabort(i32 %1136)
  %1137 = load i8, ptr %var.i4544, align 1
  %1138 = ptrtoint ptr %pcieingress_war to i32
  call void @__asan_store1_noabort(i32 %1138)
  store i8 %1137, ptr %pcieingress_war, align 1
  br label %nvram_read_u8.exit4555

nvram_read_u8.exit4555:                           ; preds = %if.end8.i4553, %do.end.i4552, %if.then1423.nvram_read_u8.exit4555_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4544) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4543) #6
  br label %if.end1425

if.end1425:                                       ; preds = %nvram_read_u8.exit4555, %if.end1417.if.end1425_crit_edge
  %1139 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1139)
  %1140 = load i8, ptr %sprom, align 4
  %conv1427 = zext i8 %1140 to i32
  %shl1428 = shl nuw i32 1, %conv1427
  %and1429 = and i32 %shl1428, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1429)
  %tobool1430.not = icmp eq i32 %and1429, 0
  br i1 %tobool1430.not, label %if.end1425.if.end1434_crit_edge, label %if.then1431

if.end1425.if.end1434_crit_edge:                  ; preds = %if.end1425
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1434

if.then1431:                                      ; preds = %if.end1425
  %rxgainerr2ga = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 82
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4556) #6
  %1141 = call ptr @memset(ptr %buf.i4556, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4557) #6
  %1142 = ptrtoint ptr %var.i4557 to i32
  call void @__asan_store1_noabort(i32 %1142)
  store i8 -1, ptr %var.i4557, align 1, !annotation !557
  %call.i4558 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull %buf.i4556, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4558)
  %cmp.i4559 = icmp slt i32 %call.i4558, 0
  br i1 %cmp.i4559, label %if.then1431.nvram_read_u8.exit4568_crit_edge, label %if.end.i4563

if.then1431.nvram_read_u8.exit4568_crit_edge:     ; preds = %if.then1431
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4568

if.end.i4563:                                     ; preds = %if.then1431
  %call2.i4560 = call ptr @strim(ptr noundef nonnull %buf.i4556) #6
  %call3.i4561 = call i32 @kstrtou8(ptr noundef %call2.i4560, i32 noundef 0, ptr noundef nonnull %var.i4557) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4561)
  %tobool4.not.i4562 = icmp eq i32 %call3.i4561, 0
  br i1 %tobool4.not.i4562, label %if.end8.i4566, label %do.end.i4565

do.end.i4565:                                     ; preds = %if.end.i4563
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.222, ptr noundef null, ptr noundef nonnull %buf.i4556, i32 noundef %call3.i4561) #9
  br label %nvram_read_u8.exit4568

if.end8.i4566:                                    ; preds = %if.end.i4563
  call void @__sanitizer_cov_trace_pc() #8
  %1143 = ptrtoint ptr %var.i4557 to i32
  call void @__asan_load1_noabort(i32 %1143)
  %1144 = load i8, ptr %var.i4557, align 1
  %1145 = ptrtoint ptr %rxgainerr2ga to i32
  call void @__asan_store1_noabort(i32 %1145)
  store i8 %1144, ptr %rxgainerr2ga, align 1
  br label %nvram_read_u8.exit4568

nvram_read_u8.exit4568:                           ; preds = %if.end8.i4566, %do.end.i4565, %if.then1431.nvram_read_u8.exit4568_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4557) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4556) #6
  br label %if.end1434

if.end1434:                                       ; preds = %nvram_read_u8.exit4568, %if.end1425.if.end1434_crit_edge
  %1146 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1146)
  %1147 = load i8, ptr %sprom, align 4
  %conv1436 = zext i8 %1147 to i32
  %shl1437 = shl nuw i32 1, %conv1436
  %and1438 = and i32 %shl1437, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1438)
  %tobool1439.not = icmp eq i32 %and1438, 0
  br i1 %tobool1439.not, label %if.end1434.if.end1444_crit_edge, label %if.then1440

if.end1434.if.end1444_crit_edge:                  ; preds = %if.end1434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1444

if.then1440:                                      ; preds = %if.end1434
  %arrayidx1442 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 82, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4569) #6
  %1148 = call ptr @memset(ptr %buf.i4569, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4570) #6
  %1149 = ptrtoint ptr %var.i4570 to i32
  call void @__asan_store1_noabort(i32 %1149)
  store i8 -1, ptr %var.i4570, align 1, !annotation !557
  %call.i4571 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull %buf.i4569, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4571)
  %cmp.i4572 = icmp slt i32 %call.i4571, 0
  br i1 %cmp.i4572, label %if.then1440.nvram_read_u8.exit4581_crit_edge, label %if.end.i4576

if.then1440.nvram_read_u8.exit4581_crit_edge:     ; preds = %if.then1440
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4581

if.end.i4576:                                     ; preds = %if.then1440
  %call2.i4573 = call ptr @strim(ptr noundef nonnull %buf.i4569) #6
  %call3.i4574 = call i32 @kstrtou8(ptr noundef %call2.i4573, i32 noundef 0, ptr noundef nonnull %var.i4570) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4574)
  %tobool4.not.i4575 = icmp eq i32 %call3.i4574, 0
  br i1 %tobool4.not.i4575, label %if.end8.i4579, label %do.end.i4578

do.end.i4578:                                     ; preds = %if.end.i4576
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.223, ptr noundef null, ptr noundef nonnull %buf.i4569, i32 noundef %call3.i4574) #9
  br label %nvram_read_u8.exit4581

if.end8.i4579:                                    ; preds = %if.end.i4576
  call void @__sanitizer_cov_trace_pc() #8
  %1150 = ptrtoint ptr %var.i4570 to i32
  call void @__asan_load1_noabort(i32 %1150)
  %1151 = load i8, ptr %var.i4570, align 1
  %1152 = ptrtoint ptr %arrayidx1442 to i32
  call void @__asan_store1_noabort(i32 %1152)
  store i8 %1151, ptr %arrayidx1442, align 1
  br label %nvram_read_u8.exit4581

nvram_read_u8.exit4581:                           ; preds = %if.end8.i4579, %do.end.i4578, %if.then1440.nvram_read_u8.exit4581_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4570) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4569) #6
  br label %if.end1444

if.end1444:                                       ; preds = %nvram_read_u8.exit4581, %if.end1434.if.end1444_crit_edge
  %1153 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1153)
  %1154 = load i8, ptr %sprom, align 4
  %conv1446 = zext i8 %1154 to i32
  %shl1447 = shl nuw i32 1, %conv1446
  %and1448 = and i32 %shl1447, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1448)
  %tobool1449.not = icmp eq i32 %and1448, 0
  br i1 %tobool1449.not, label %if.end1444.if.end1454_crit_edge, label %if.then1450

if.end1444.if.end1454_crit_edge:                  ; preds = %if.end1444
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1454

if.then1450:                                      ; preds = %if.end1444
  %arrayidx1452 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 82, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4582) #6
  %1155 = call ptr @memset(ptr %buf.i4582, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4583) #6
  %1156 = ptrtoint ptr %var.i4583 to i32
  call void @__asan_store1_noabort(i32 %1156)
  store i8 -1, ptr %var.i4583, align 1, !annotation !557
  %call.i4584 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull %buf.i4582, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4584)
  %cmp.i4585 = icmp slt i32 %call.i4584, 0
  br i1 %cmp.i4585, label %if.then1450.nvram_read_u8.exit4594_crit_edge, label %if.end.i4589

if.then1450.nvram_read_u8.exit4594_crit_edge:     ; preds = %if.then1450
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4594

if.end.i4589:                                     ; preds = %if.then1450
  %call2.i4586 = call ptr @strim(ptr noundef nonnull %buf.i4582) #6
  %call3.i4587 = call i32 @kstrtou8(ptr noundef %call2.i4586, i32 noundef 0, ptr noundef nonnull %var.i4583) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4587)
  %tobool4.not.i4588 = icmp eq i32 %call3.i4587, 0
  br i1 %tobool4.not.i4588, label %if.end8.i4592, label %do.end.i4591

do.end.i4591:                                     ; preds = %if.end.i4589
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4590 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.224, ptr noundef null, ptr noundef nonnull %buf.i4582, i32 noundef %call3.i4587) #9
  br label %nvram_read_u8.exit4594

if.end8.i4592:                                    ; preds = %if.end.i4589
  call void @__sanitizer_cov_trace_pc() #8
  %1157 = ptrtoint ptr %var.i4583 to i32
  call void @__asan_load1_noabort(i32 %1157)
  %1158 = load i8, ptr %var.i4583, align 1
  %1159 = ptrtoint ptr %arrayidx1452 to i32
  call void @__asan_store1_noabort(i32 %1159)
  store i8 %1158, ptr %arrayidx1452, align 1
  br label %nvram_read_u8.exit4594

nvram_read_u8.exit4594:                           ; preds = %if.end8.i4592, %do.end.i4591, %if.then1450.nvram_read_u8.exit4594_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4583) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4582) #6
  br label %if.end1454

if.end1454:                                       ; preds = %nvram_read_u8.exit4594, %if.end1444.if.end1454_crit_edge
  %1160 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1160)
  %1161 = load i8, ptr %sprom, align 4
  %conv1456 = zext i8 %1161 to i32
  %shl1457 = shl nuw i32 1, %conv1456
  %and1458 = and i32 %shl1457, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1458)
  %tobool1459.not = icmp eq i32 %and1458, 0
  br i1 %tobool1459.not, label %if.end1454.if.end1463_crit_edge, label %if.then1460

if.end1454.if.end1463_crit_edge:                  ; preds = %if.end1454
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1463

if.then1460:                                      ; preds = %if.end1454
  %rxgainerr5gla = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 83
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4595) #6
  %1162 = call ptr @memset(ptr %buf.i4595, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4596) #6
  %1163 = ptrtoint ptr %var.i4596 to i32
  call void @__asan_store1_noabort(i32 %1163)
  store i8 -1, ptr %var.i4596, align 1, !annotation !557
  %call.i4597 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull %buf.i4595, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4597)
  %cmp.i4598 = icmp slt i32 %call.i4597, 0
  br i1 %cmp.i4598, label %if.then1460.nvram_read_u8.exit4607_crit_edge, label %if.end.i4602

if.then1460.nvram_read_u8.exit4607_crit_edge:     ; preds = %if.then1460
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4607

if.end.i4602:                                     ; preds = %if.then1460
  %call2.i4599 = call ptr @strim(ptr noundef nonnull %buf.i4595) #6
  %call3.i4600 = call i32 @kstrtou8(ptr noundef %call2.i4599, i32 noundef 0, ptr noundef nonnull %var.i4596) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4600)
  %tobool4.not.i4601 = icmp eq i32 %call3.i4600, 0
  br i1 %tobool4.not.i4601, label %if.end8.i4605, label %do.end.i4604

do.end.i4604:                                     ; preds = %if.end.i4602
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef nonnull %buf.i4595, i32 noundef %call3.i4600) #9
  br label %nvram_read_u8.exit4607

if.end8.i4605:                                    ; preds = %if.end.i4602
  call void @__sanitizer_cov_trace_pc() #8
  %1164 = ptrtoint ptr %var.i4596 to i32
  call void @__asan_load1_noabort(i32 %1164)
  %1165 = load i8, ptr %var.i4596, align 1
  %1166 = ptrtoint ptr %rxgainerr5gla to i32
  call void @__asan_store1_noabort(i32 %1166)
  store i8 %1165, ptr %rxgainerr5gla, align 1
  br label %nvram_read_u8.exit4607

nvram_read_u8.exit4607:                           ; preds = %if.end8.i4605, %do.end.i4604, %if.then1460.nvram_read_u8.exit4607_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4596) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4595) #6
  br label %if.end1463

if.end1463:                                       ; preds = %nvram_read_u8.exit4607, %if.end1454.if.end1463_crit_edge
  %1167 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1167)
  %1168 = load i8, ptr %sprom, align 4
  %conv1465 = zext i8 %1168 to i32
  %shl1466 = shl nuw i32 1, %conv1465
  %and1467 = and i32 %shl1466, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1467)
  %tobool1468.not = icmp eq i32 %and1467, 0
  br i1 %tobool1468.not, label %if.end1463.if.end1473_crit_edge, label %if.then1469

if.end1463.if.end1473_crit_edge:                  ; preds = %if.end1463
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1473

if.then1469:                                      ; preds = %if.end1463
  %arrayidx1471 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 83, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4608) #6
  %1169 = call ptr @memset(ptr %buf.i4608, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4609) #6
  %1170 = ptrtoint ptr %var.i4609 to i32
  call void @__asan_store1_noabort(i32 %1170)
  store i8 -1, ptr %var.i4609, align 1, !annotation !557
  %call.i4610 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull %buf.i4608, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4610)
  %cmp.i4611 = icmp slt i32 %call.i4610, 0
  br i1 %cmp.i4611, label %if.then1469.nvram_read_u8.exit4620_crit_edge, label %if.end.i4615

if.then1469.nvram_read_u8.exit4620_crit_edge:     ; preds = %if.then1469
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4620

if.end.i4615:                                     ; preds = %if.then1469
  %call2.i4612 = call ptr @strim(ptr noundef nonnull %buf.i4608) #6
  %call3.i4613 = call i32 @kstrtou8(ptr noundef %call2.i4612, i32 noundef 0, ptr noundef nonnull %var.i4609) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4613)
  %tobool4.not.i4614 = icmp eq i32 %call3.i4613, 0
  br i1 %tobool4.not.i4614, label %if.end8.i4618, label %do.end.i4617

do.end.i4617:                                     ; preds = %if.end.i4615
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.226, ptr noundef null, ptr noundef nonnull %buf.i4608, i32 noundef %call3.i4613) #9
  br label %nvram_read_u8.exit4620

if.end8.i4618:                                    ; preds = %if.end.i4615
  call void @__sanitizer_cov_trace_pc() #8
  %1171 = ptrtoint ptr %var.i4609 to i32
  call void @__asan_load1_noabort(i32 %1171)
  %1172 = load i8, ptr %var.i4609, align 1
  %1173 = ptrtoint ptr %arrayidx1471 to i32
  call void @__asan_store1_noabort(i32 %1173)
  store i8 %1172, ptr %arrayidx1471, align 1
  br label %nvram_read_u8.exit4620

nvram_read_u8.exit4620:                           ; preds = %if.end8.i4618, %do.end.i4617, %if.then1469.nvram_read_u8.exit4620_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4609) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4608) #6
  br label %if.end1473

if.end1473:                                       ; preds = %nvram_read_u8.exit4620, %if.end1463.if.end1473_crit_edge
  %1174 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1174)
  %1175 = load i8, ptr %sprom, align 4
  %conv1475 = zext i8 %1175 to i32
  %shl1476 = shl nuw i32 1, %conv1475
  %and1477 = and i32 %shl1476, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1477)
  %tobool1478.not = icmp eq i32 %and1477, 0
  br i1 %tobool1478.not, label %if.end1473.if.end1483_crit_edge, label %if.then1479

if.end1473.if.end1483_crit_edge:                  ; preds = %if.end1473
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1483

if.then1479:                                      ; preds = %if.end1473
  %arrayidx1481 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 83, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4621) #6
  %1176 = call ptr @memset(ptr %buf.i4621, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4622) #6
  %1177 = ptrtoint ptr %var.i4622 to i32
  call void @__asan_store1_noabort(i32 %1177)
  store i8 -1, ptr %var.i4622, align 1, !annotation !557
  %call.i4623 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull %buf.i4621, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4623)
  %cmp.i4624 = icmp slt i32 %call.i4623, 0
  br i1 %cmp.i4624, label %if.then1479.nvram_read_u8.exit4633_crit_edge, label %if.end.i4628

if.then1479.nvram_read_u8.exit4633_crit_edge:     ; preds = %if.then1479
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4633

if.end.i4628:                                     ; preds = %if.then1479
  %call2.i4625 = call ptr @strim(ptr noundef nonnull %buf.i4621) #6
  %call3.i4626 = call i32 @kstrtou8(ptr noundef %call2.i4625, i32 noundef 0, ptr noundef nonnull %var.i4622) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4626)
  %tobool4.not.i4627 = icmp eq i32 %call3.i4626, 0
  br i1 %tobool4.not.i4627, label %if.end8.i4631, label %do.end.i4630

do.end.i4630:                                     ; preds = %if.end.i4628
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4629 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef nonnull %buf.i4621, i32 noundef %call3.i4626) #9
  br label %nvram_read_u8.exit4633

if.end8.i4631:                                    ; preds = %if.end.i4628
  call void @__sanitizer_cov_trace_pc() #8
  %1178 = ptrtoint ptr %var.i4622 to i32
  call void @__asan_load1_noabort(i32 %1178)
  %1179 = load i8, ptr %var.i4622, align 1
  %1180 = ptrtoint ptr %arrayidx1481 to i32
  call void @__asan_store1_noabort(i32 %1180)
  store i8 %1179, ptr %arrayidx1481, align 1
  br label %nvram_read_u8.exit4633

nvram_read_u8.exit4633:                           ; preds = %if.end8.i4631, %do.end.i4630, %if.then1479.nvram_read_u8.exit4633_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4622) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4621) #6
  br label %if.end1483

if.end1483:                                       ; preds = %nvram_read_u8.exit4633, %if.end1473.if.end1483_crit_edge
  %1181 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1181)
  %1182 = load i8, ptr %sprom, align 4
  %conv1485 = zext i8 %1182 to i32
  %shl1486 = shl nuw i32 1, %conv1485
  %and1487 = and i32 %shl1486, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1487)
  %tobool1488.not = icmp eq i32 %and1487, 0
  br i1 %tobool1488.not, label %if.end1483.if.end1492_crit_edge, label %if.then1489

if.end1483.if.end1492_crit_edge:                  ; preds = %if.end1483
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1492

if.then1489:                                      ; preds = %if.end1483
  %rxgainerr5gma = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 84
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4634) #6
  %1183 = call ptr @memset(ptr %buf.i4634, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4635) #6
  %1184 = ptrtoint ptr %var.i4635 to i32
  call void @__asan_store1_noabort(i32 %1184)
  store i8 -1, ptr %var.i4635, align 1, !annotation !557
  %call.i4636 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull %buf.i4634, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4636)
  %cmp.i4637 = icmp slt i32 %call.i4636, 0
  br i1 %cmp.i4637, label %if.then1489.nvram_read_u8.exit4646_crit_edge, label %if.end.i4641

if.then1489.nvram_read_u8.exit4646_crit_edge:     ; preds = %if.then1489
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4646

if.end.i4641:                                     ; preds = %if.then1489
  %call2.i4638 = call ptr @strim(ptr noundef nonnull %buf.i4634) #6
  %call3.i4639 = call i32 @kstrtou8(ptr noundef %call2.i4638, i32 noundef 0, ptr noundef nonnull %var.i4635) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4639)
  %tobool4.not.i4640 = icmp eq i32 %call3.i4639, 0
  br i1 %tobool4.not.i4640, label %if.end8.i4644, label %do.end.i4643

do.end.i4643:                                     ; preds = %if.end.i4641
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4642 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef nonnull %buf.i4634, i32 noundef %call3.i4639) #9
  br label %nvram_read_u8.exit4646

if.end8.i4644:                                    ; preds = %if.end.i4641
  call void @__sanitizer_cov_trace_pc() #8
  %1185 = ptrtoint ptr %var.i4635 to i32
  call void @__asan_load1_noabort(i32 %1185)
  %1186 = load i8, ptr %var.i4635, align 1
  %1187 = ptrtoint ptr %rxgainerr5gma to i32
  call void @__asan_store1_noabort(i32 %1187)
  store i8 %1186, ptr %rxgainerr5gma, align 1
  br label %nvram_read_u8.exit4646

nvram_read_u8.exit4646:                           ; preds = %if.end8.i4644, %do.end.i4643, %if.then1489.nvram_read_u8.exit4646_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4635) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4634) #6
  br label %if.end1492

if.end1492:                                       ; preds = %nvram_read_u8.exit4646, %if.end1483.if.end1492_crit_edge
  %1188 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1188)
  %1189 = load i8, ptr %sprom, align 4
  %conv1494 = zext i8 %1189 to i32
  %shl1495 = shl nuw i32 1, %conv1494
  %and1496 = and i32 %shl1495, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1496)
  %tobool1497.not = icmp eq i32 %and1496, 0
  br i1 %tobool1497.not, label %if.end1492.if.end1502_crit_edge, label %if.then1498

if.end1492.if.end1502_crit_edge:                  ; preds = %if.end1492
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1502

if.then1498:                                      ; preds = %if.end1492
  %arrayidx1500 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 84, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4647) #6
  %1190 = call ptr @memset(ptr %buf.i4647, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4648) #6
  %1191 = ptrtoint ptr %var.i4648 to i32
  call void @__asan_store1_noabort(i32 %1191)
  store i8 -1, ptr %var.i4648, align 1, !annotation !557
  %call.i4649 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull %buf.i4647, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4649)
  %cmp.i4650 = icmp slt i32 %call.i4649, 0
  br i1 %cmp.i4650, label %if.then1498.nvram_read_u8.exit4659_crit_edge, label %if.end.i4654

if.then1498.nvram_read_u8.exit4659_crit_edge:     ; preds = %if.then1498
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4659

if.end.i4654:                                     ; preds = %if.then1498
  %call2.i4651 = call ptr @strim(ptr noundef nonnull %buf.i4647) #6
  %call3.i4652 = call i32 @kstrtou8(ptr noundef %call2.i4651, i32 noundef 0, ptr noundef nonnull %var.i4648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4652)
  %tobool4.not.i4653 = icmp eq i32 %call3.i4652, 0
  br i1 %tobool4.not.i4653, label %if.end8.i4657, label %do.end.i4656

do.end.i4656:                                     ; preds = %if.end.i4654
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.229, ptr noundef null, ptr noundef nonnull %buf.i4647, i32 noundef %call3.i4652) #9
  br label %nvram_read_u8.exit4659

if.end8.i4657:                                    ; preds = %if.end.i4654
  call void @__sanitizer_cov_trace_pc() #8
  %1192 = ptrtoint ptr %var.i4648 to i32
  call void @__asan_load1_noabort(i32 %1192)
  %1193 = load i8, ptr %var.i4648, align 1
  %1194 = ptrtoint ptr %arrayidx1500 to i32
  call void @__asan_store1_noabort(i32 %1194)
  store i8 %1193, ptr %arrayidx1500, align 1
  br label %nvram_read_u8.exit4659

nvram_read_u8.exit4659:                           ; preds = %if.end8.i4657, %do.end.i4656, %if.then1498.nvram_read_u8.exit4659_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4648) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4647) #6
  br label %if.end1502

if.end1502:                                       ; preds = %nvram_read_u8.exit4659, %if.end1492.if.end1502_crit_edge
  %1195 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1195)
  %1196 = load i8, ptr %sprom, align 4
  %conv1504 = zext i8 %1196 to i32
  %shl1505 = shl nuw i32 1, %conv1504
  %and1506 = and i32 %shl1505, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1506)
  %tobool1507.not = icmp eq i32 %and1506, 0
  br i1 %tobool1507.not, label %if.end1502.if.end1512_crit_edge, label %if.then1508

if.end1502.if.end1512_crit_edge:                  ; preds = %if.end1502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1512

if.then1508:                                      ; preds = %if.end1502
  %arrayidx1510 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 84, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4660) #6
  %1197 = call ptr @memset(ptr %buf.i4660, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4661) #6
  %1198 = ptrtoint ptr %var.i4661 to i32
  call void @__asan_store1_noabort(i32 %1198)
  store i8 -1, ptr %var.i4661, align 1, !annotation !557
  %call.i4662 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull %buf.i4660, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4662)
  %cmp.i4663 = icmp slt i32 %call.i4662, 0
  br i1 %cmp.i4663, label %if.then1508.nvram_read_u8.exit4672_crit_edge, label %if.end.i4667

if.then1508.nvram_read_u8.exit4672_crit_edge:     ; preds = %if.then1508
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4672

if.end.i4667:                                     ; preds = %if.then1508
  %call2.i4664 = call ptr @strim(ptr noundef nonnull %buf.i4660) #6
  %call3.i4665 = call i32 @kstrtou8(ptr noundef %call2.i4664, i32 noundef 0, ptr noundef nonnull %var.i4661) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4665)
  %tobool4.not.i4666 = icmp eq i32 %call3.i4665, 0
  br i1 %tobool4.not.i4666, label %if.end8.i4670, label %do.end.i4669

do.end.i4669:                                     ; preds = %if.end.i4667
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4668 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.230, ptr noundef null, ptr noundef nonnull %buf.i4660, i32 noundef %call3.i4665) #9
  br label %nvram_read_u8.exit4672

if.end8.i4670:                                    ; preds = %if.end.i4667
  call void @__sanitizer_cov_trace_pc() #8
  %1199 = ptrtoint ptr %var.i4661 to i32
  call void @__asan_load1_noabort(i32 %1199)
  %1200 = load i8, ptr %var.i4661, align 1
  %1201 = ptrtoint ptr %arrayidx1510 to i32
  call void @__asan_store1_noabort(i32 %1201)
  store i8 %1200, ptr %arrayidx1510, align 1
  br label %nvram_read_u8.exit4672

nvram_read_u8.exit4672:                           ; preds = %if.end8.i4670, %do.end.i4669, %if.then1508.nvram_read_u8.exit4672_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4661) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4660) #6
  br label %if.end1512

if.end1512:                                       ; preds = %nvram_read_u8.exit4672, %if.end1502.if.end1512_crit_edge
  %1202 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1202)
  %1203 = load i8, ptr %sprom, align 4
  %conv1514 = zext i8 %1203 to i32
  %shl1515 = shl nuw i32 1, %conv1514
  %and1516 = and i32 %shl1515, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1516)
  %tobool1517.not = icmp eq i32 %and1516, 0
  br i1 %tobool1517.not, label %if.end1512.if.end1521_crit_edge, label %if.then1518

if.end1512.if.end1521_crit_edge:                  ; preds = %if.end1512
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1521

if.then1518:                                      ; preds = %if.end1512
  %rxgainerr5gha = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 85
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4673) #6
  %1204 = call ptr @memset(ptr %buf.i4673, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4674) #6
  %1205 = ptrtoint ptr %var.i4674 to i32
  call void @__asan_store1_noabort(i32 %1205)
  store i8 -1, ptr %var.i4674, align 1, !annotation !557
  %call.i4675 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull %buf.i4673, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4675)
  %cmp.i4676 = icmp slt i32 %call.i4675, 0
  br i1 %cmp.i4676, label %if.then1518.nvram_read_u8.exit4685_crit_edge, label %if.end.i4680

if.then1518.nvram_read_u8.exit4685_crit_edge:     ; preds = %if.then1518
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4685

if.end.i4680:                                     ; preds = %if.then1518
  %call2.i4677 = call ptr @strim(ptr noundef nonnull %buf.i4673) #6
  %call3.i4678 = call i32 @kstrtou8(ptr noundef %call2.i4677, i32 noundef 0, ptr noundef nonnull %var.i4674) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4678)
  %tobool4.not.i4679 = icmp eq i32 %call3.i4678, 0
  br i1 %tobool4.not.i4679, label %if.end8.i4683, label %do.end.i4682

do.end.i4682:                                     ; preds = %if.end.i4680
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4681 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull %buf.i4673, i32 noundef %call3.i4678) #9
  br label %nvram_read_u8.exit4685

if.end8.i4683:                                    ; preds = %if.end.i4680
  call void @__sanitizer_cov_trace_pc() #8
  %1206 = ptrtoint ptr %var.i4674 to i32
  call void @__asan_load1_noabort(i32 %1206)
  %1207 = load i8, ptr %var.i4674, align 1
  %1208 = ptrtoint ptr %rxgainerr5gha to i32
  call void @__asan_store1_noabort(i32 %1208)
  store i8 %1207, ptr %rxgainerr5gha, align 1
  br label %nvram_read_u8.exit4685

nvram_read_u8.exit4685:                           ; preds = %if.end8.i4683, %do.end.i4682, %if.then1518.nvram_read_u8.exit4685_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4674) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4673) #6
  br label %if.end1521

if.end1521:                                       ; preds = %nvram_read_u8.exit4685, %if.end1512.if.end1521_crit_edge
  %1209 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1209)
  %1210 = load i8, ptr %sprom, align 4
  %conv1523 = zext i8 %1210 to i32
  %shl1524 = shl nuw i32 1, %conv1523
  %and1525 = and i32 %shl1524, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1525)
  %tobool1526.not = icmp eq i32 %and1525, 0
  br i1 %tobool1526.not, label %if.end1521.if.end1531_crit_edge, label %if.then1527

if.end1521.if.end1531_crit_edge:                  ; preds = %if.end1521
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1531

if.then1527:                                      ; preds = %if.end1521
  %arrayidx1529 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 85, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4686) #6
  %1211 = call ptr @memset(ptr %buf.i4686, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4687) #6
  %1212 = ptrtoint ptr %var.i4687 to i32
  call void @__asan_store1_noabort(i32 %1212)
  store i8 -1, ptr %var.i4687, align 1, !annotation !557
  %call.i4688 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull %buf.i4686, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4688)
  %cmp.i4689 = icmp slt i32 %call.i4688, 0
  br i1 %cmp.i4689, label %if.then1527.nvram_read_u8.exit4698_crit_edge, label %if.end.i4693

if.then1527.nvram_read_u8.exit4698_crit_edge:     ; preds = %if.then1527
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4698

if.end.i4693:                                     ; preds = %if.then1527
  %call2.i4690 = call ptr @strim(ptr noundef nonnull %buf.i4686) #6
  %call3.i4691 = call i32 @kstrtou8(ptr noundef %call2.i4690, i32 noundef 0, ptr noundef nonnull %var.i4687) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4691)
  %tobool4.not.i4692 = icmp eq i32 %call3.i4691, 0
  br i1 %tobool4.not.i4692, label %if.end8.i4696, label %do.end.i4695

do.end.i4695:                                     ; preds = %if.end.i4693
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4694 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef nonnull %buf.i4686, i32 noundef %call3.i4691) #9
  br label %nvram_read_u8.exit4698

if.end8.i4696:                                    ; preds = %if.end.i4693
  call void @__sanitizer_cov_trace_pc() #8
  %1213 = ptrtoint ptr %var.i4687 to i32
  call void @__asan_load1_noabort(i32 %1213)
  %1214 = load i8, ptr %var.i4687, align 1
  %1215 = ptrtoint ptr %arrayidx1529 to i32
  call void @__asan_store1_noabort(i32 %1215)
  store i8 %1214, ptr %arrayidx1529, align 1
  br label %nvram_read_u8.exit4698

nvram_read_u8.exit4698:                           ; preds = %if.end8.i4696, %do.end.i4695, %if.then1527.nvram_read_u8.exit4698_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4687) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4686) #6
  br label %if.end1531

if.end1531:                                       ; preds = %nvram_read_u8.exit4698, %if.end1521.if.end1531_crit_edge
  %1216 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1216)
  %1217 = load i8, ptr %sprom, align 4
  %conv1533 = zext i8 %1217 to i32
  %shl1534 = shl nuw i32 1, %conv1533
  %and1535 = and i32 %shl1534, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1535)
  %tobool1536.not = icmp eq i32 %and1535, 0
  br i1 %tobool1536.not, label %if.end1531.if.end1541_crit_edge, label %if.then1537

if.end1531.if.end1541_crit_edge:                  ; preds = %if.end1531
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1541

if.then1537:                                      ; preds = %if.end1531
  %arrayidx1539 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 85, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4699) #6
  %1218 = call ptr @memset(ptr %buf.i4699, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4700) #6
  %1219 = ptrtoint ptr %var.i4700 to i32
  call void @__asan_store1_noabort(i32 %1219)
  store i8 -1, ptr %var.i4700, align 1, !annotation !557
  %call.i4701 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull %buf.i4699, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4701)
  %cmp.i4702 = icmp slt i32 %call.i4701, 0
  br i1 %cmp.i4702, label %if.then1537.nvram_read_u8.exit4711_crit_edge, label %if.end.i4706

if.then1537.nvram_read_u8.exit4711_crit_edge:     ; preds = %if.then1537
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4711

if.end.i4706:                                     ; preds = %if.then1537
  %call2.i4703 = call ptr @strim(ptr noundef nonnull %buf.i4699) #6
  %call3.i4704 = call i32 @kstrtou8(ptr noundef %call2.i4703, i32 noundef 0, ptr noundef nonnull %var.i4700) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4704)
  %tobool4.not.i4705 = icmp eq i32 %call3.i4704, 0
  br i1 %tobool4.not.i4705, label %if.end8.i4709, label %do.end.i4708

do.end.i4708:                                     ; preds = %if.end.i4706
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.233, ptr noundef null, ptr noundef nonnull %buf.i4699, i32 noundef %call3.i4704) #9
  br label %nvram_read_u8.exit4711

if.end8.i4709:                                    ; preds = %if.end.i4706
  call void @__sanitizer_cov_trace_pc() #8
  %1220 = ptrtoint ptr %var.i4700 to i32
  call void @__asan_load1_noabort(i32 %1220)
  %1221 = load i8, ptr %var.i4700, align 1
  %1222 = ptrtoint ptr %arrayidx1539 to i32
  call void @__asan_store1_noabort(i32 %1222)
  store i8 %1221, ptr %arrayidx1539, align 1
  br label %nvram_read_u8.exit4711

nvram_read_u8.exit4711:                           ; preds = %if.end8.i4709, %do.end.i4708, %if.then1537.nvram_read_u8.exit4711_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4700) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4699) #6
  br label %if.end1541

if.end1541:                                       ; preds = %nvram_read_u8.exit4711, %if.end1531.if.end1541_crit_edge
  %1223 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1223)
  %1224 = load i8, ptr %sprom, align 4
  %conv1543 = zext i8 %1224 to i32
  %shl1544 = shl nuw i32 1, %conv1543
  %and1545 = and i32 %shl1544, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1545)
  %tobool1546.not = icmp eq i32 %and1545, 0
  br i1 %tobool1546.not, label %if.end1541.if.end1550_crit_edge, label %if.then1547

if.end1541.if.end1550_crit_edge:                  ; preds = %if.end1541
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1550

if.then1547:                                      ; preds = %if.end1541
  %rxgainerr5gua = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 86
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4712) #6
  %1225 = call ptr @memset(ptr %buf.i4712, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4713) #6
  %1226 = ptrtoint ptr %var.i4713 to i32
  call void @__asan_store1_noabort(i32 %1226)
  store i8 -1, ptr %var.i4713, align 1, !annotation !557
  %call.i4714 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull %buf.i4712, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4714)
  %cmp.i4715 = icmp slt i32 %call.i4714, 0
  br i1 %cmp.i4715, label %if.then1547.nvram_read_u8.exit4724_crit_edge, label %if.end.i4719

if.then1547.nvram_read_u8.exit4724_crit_edge:     ; preds = %if.then1547
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4724

if.end.i4719:                                     ; preds = %if.then1547
  %call2.i4716 = call ptr @strim(ptr noundef nonnull %buf.i4712) #6
  %call3.i4717 = call i32 @kstrtou8(ptr noundef %call2.i4716, i32 noundef 0, ptr noundef nonnull %var.i4713) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4717)
  %tobool4.not.i4718 = icmp eq i32 %call3.i4717, 0
  br i1 %tobool4.not.i4718, label %if.end8.i4722, label %do.end.i4721

do.end.i4721:                                     ; preds = %if.end.i4719
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.234, ptr noundef null, ptr noundef nonnull %buf.i4712, i32 noundef %call3.i4717) #9
  br label %nvram_read_u8.exit4724

if.end8.i4722:                                    ; preds = %if.end.i4719
  call void @__sanitizer_cov_trace_pc() #8
  %1227 = ptrtoint ptr %var.i4713 to i32
  call void @__asan_load1_noabort(i32 %1227)
  %1228 = load i8, ptr %var.i4713, align 1
  %1229 = ptrtoint ptr %rxgainerr5gua to i32
  call void @__asan_store1_noabort(i32 %1229)
  store i8 %1228, ptr %rxgainerr5gua, align 1
  br label %nvram_read_u8.exit4724

nvram_read_u8.exit4724:                           ; preds = %if.end8.i4722, %do.end.i4721, %if.then1547.nvram_read_u8.exit4724_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4713) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4712) #6
  br label %if.end1550

if.end1550:                                       ; preds = %nvram_read_u8.exit4724, %if.end1541.if.end1550_crit_edge
  %1230 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1230)
  %1231 = load i8, ptr %sprom, align 4
  %conv1552 = zext i8 %1231 to i32
  %shl1553 = shl nuw i32 1, %conv1552
  %and1554 = and i32 %shl1553, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1554)
  %tobool1555.not = icmp eq i32 %and1554, 0
  br i1 %tobool1555.not, label %if.end1550.if.end1560_crit_edge, label %if.then1556

if.end1550.if.end1560_crit_edge:                  ; preds = %if.end1550
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1560

if.then1556:                                      ; preds = %if.end1550
  %arrayidx1558 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 86, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4725) #6
  %1232 = call ptr @memset(ptr %buf.i4725, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4726) #6
  %1233 = ptrtoint ptr %var.i4726 to i32
  call void @__asan_store1_noabort(i32 %1233)
  store i8 -1, ptr %var.i4726, align 1, !annotation !557
  %call.i4727 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull %buf.i4725, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4727)
  %cmp.i4728 = icmp slt i32 %call.i4727, 0
  br i1 %cmp.i4728, label %if.then1556.nvram_read_u8.exit4737_crit_edge, label %if.end.i4732

if.then1556.nvram_read_u8.exit4737_crit_edge:     ; preds = %if.then1556
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4737

if.end.i4732:                                     ; preds = %if.then1556
  %call2.i4729 = call ptr @strim(ptr noundef nonnull %buf.i4725) #6
  %call3.i4730 = call i32 @kstrtou8(ptr noundef %call2.i4729, i32 noundef 0, ptr noundef nonnull %var.i4726) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4730)
  %tobool4.not.i4731 = icmp eq i32 %call3.i4730, 0
  br i1 %tobool4.not.i4731, label %if.end8.i4735, label %do.end.i4734

do.end.i4734:                                     ; preds = %if.end.i4732
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4733 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.235, ptr noundef null, ptr noundef nonnull %buf.i4725, i32 noundef %call3.i4730) #9
  br label %nvram_read_u8.exit4737

if.end8.i4735:                                    ; preds = %if.end.i4732
  call void @__sanitizer_cov_trace_pc() #8
  %1234 = ptrtoint ptr %var.i4726 to i32
  call void @__asan_load1_noabort(i32 %1234)
  %1235 = load i8, ptr %var.i4726, align 1
  %1236 = ptrtoint ptr %arrayidx1558 to i32
  call void @__asan_store1_noabort(i32 %1236)
  store i8 %1235, ptr %arrayidx1558, align 1
  br label %nvram_read_u8.exit4737

nvram_read_u8.exit4737:                           ; preds = %if.end8.i4735, %do.end.i4734, %if.then1556.nvram_read_u8.exit4737_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4726) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4725) #6
  br label %if.end1560

if.end1560:                                       ; preds = %nvram_read_u8.exit4737, %if.end1550.if.end1560_crit_edge
  %1237 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1237)
  %1238 = load i8, ptr %sprom, align 4
  %conv1562 = zext i8 %1238 to i32
  %shl1563 = shl nuw i32 1, %conv1562
  %and1564 = and i32 %shl1563, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1564)
  %tobool1565.not = icmp eq i32 %and1564, 0
  br i1 %tobool1565.not, label %if.end1560.if.end1570_crit_edge, label %if.then1566

if.end1560.if.end1570_crit_edge:                  ; preds = %if.end1560
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1570

if.then1566:                                      ; preds = %if.end1560
  %arrayidx1568 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 86, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4738) #6
  %1239 = call ptr @memset(ptr %buf.i4738, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4739) #6
  %1240 = ptrtoint ptr %var.i4739 to i32
  call void @__asan_store1_noabort(i32 %1240)
  store i8 -1, ptr %var.i4739, align 1, !annotation !557
  %call.i4740 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull %buf.i4738, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4740)
  %cmp.i4741 = icmp slt i32 %call.i4740, 0
  br i1 %cmp.i4741, label %if.then1566.nvram_read_u8.exit4750_crit_edge, label %if.end.i4745

if.then1566.nvram_read_u8.exit4750_crit_edge:     ; preds = %if.then1566
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4750

if.end.i4745:                                     ; preds = %if.then1566
  %call2.i4742 = call ptr @strim(ptr noundef nonnull %buf.i4738) #6
  %call3.i4743 = call i32 @kstrtou8(ptr noundef %call2.i4742, i32 noundef 0, ptr noundef nonnull %var.i4739) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4743)
  %tobool4.not.i4744 = icmp eq i32 %call3.i4743, 0
  br i1 %tobool4.not.i4744, label %if.end8.i4748, label %do.end.i4747

do.end.i4747:                                     ; preds = %if.end.i4745
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.236, ptr noundef null, ptr noundef nonnull %buf.i4738, i32 noundef %call3.i4743) #9
  br label %nvram_read_u8.exit4750

if.end8.i4748:                                    ; preds = %if.end.i4745
  call void @__sanitizer_cov_trace_pc() #8
  %1241 = ptrtoint ptr %var.i4739 to i32
  call void @__asan_load1_noabort(i32 %1241)
  %1242 = load i8, ptr %var.i4739, align 1
  %1243 = ptrtoint ptr %arrayidx1568 to i32
  call void @__asan_store1_noabort(i32 %1243)
  store i8 %1242, ptr %arrayidx1568, align 1
  br label %nvram_read_u8.exit4750

nvram_read_u8.exit4750:                           ; preds = %if.end8.i4748, %do.end.i4747, %if.then1566.nvram_read_u8.exit4750_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4739) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4738) #6
  %1244 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1244)
  %.pr5016 = load i8, ptr %sprom, align 4
  br label %if.end1570

if.end1570:                                       ; preds = %nvram_read_u8.exit4750, %if.end1560.if.end1570_crit_edge
  %1245 = phi i8 [ %.pr5016, %nvram_read_u8.exit4750 ], [ %1238, %if.end1560.if.end1570_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1245)
  %tobool1575.not = icmp ult i8 %1245, 9
  br i1 %tobool1575.not, label %if.end1570.if.end1578_crit_edge, label %if.then1576

if.end1570.if.end1578_crit_edge:                  ; preds = %if.end1570
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1578

if.then1576:                                      ; preds = %if.end1570
  %sar2g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 142
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4751) #6
  %1246 = call ptr @memset(ptr %buf.i4751, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4752) #6
  %1247 = ptrtoint ptr %var.i4752 to i32
  call void @__asan_store1_noabort(i32 %1247)
  store i8 -1, ptr %var.i4752, align 1, !annotation !557
  %call.i4753 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull %buf.i4751, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4753)
  %cmp.i4754 = icmp slt i32 %call.i4753, 0
  br i1 %cmp.i4754, label %if.then1576.nvram_read_u8.exit4763_crit_edge, label %if.end.i4758

if.then1576.nvram_read_u8.exit4763_crit_edge:     ; preds = %if.then1576
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4763

if.end.i4758:                                     ; preds = %if.then1576
  %call2.i4755 = call ptr @strim(ptr noundef nonnull %buf.i4751) #6
  %call3.i4756 = call i32 @kstrtou8(ptr noundef %call2.i4755, i32 noundef 0, ptr noundef nonnull %var.i4752) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4756)
  %tobool4.not.i4757 = icmp eq i32 %call3.i4756, 0
  br i1 %tobool4.not.i4757, label %if.end8.i4761, label %do.end.i4760

do.end.i4760:                                     ; preds = %if.end.i4758
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4759 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.237, ptr noundef null, ptr noundef nonnull %buf.i4751, i32 noundef %call3.i4756) #9
  br label %nvram_read_u8.exit4763

if.end8.i4761:                                    ; preds = %if.end.i4758
  call void @__sanitizer_cov_trace_pc() #8
  %1248 = ptrtoint ptr %var.i4752 to i32
  call void @__asan_load1_noabort(i32 %1248)
  %1249 = load i8, ptr %var.i4752, align 1
  %1250 = ptrtoint ptr %sar2g to i32
  call void @__asan_store1_noabort(i32 %1250)
  store i8 %1249, ptr %sar2g, align 1
  br label %nvram_read_u8.exit4763

nvram_read_u8.exit4763:                           ; preds = %if.end8.i4761, %do.end.i4760, %if.then1576.nvram_read_u8.exit4763_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4752) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4751) #6
  br label %if.end1578

if.end1578:                                       ; preds = %nvram_read_u8.exit4763, %if.end1570.if.end1578_crit_edge
  %1251 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1251)
  %1252 = load i8, ptr %sprom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1252)
  %tobool1583.not = icmp ult i8 %1252, 9
  br i1 %tobool1583.not, label %if.end1578.if.end1586_crit_edge, label %if.then1584

if.end1578.if.end1586_crit_edge:                  ; preds = %if.end1578
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1586

if.then1584:                                      ; preds = %if.end1578
  %sar5g = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 143
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4764) #6
  %1253 = call ptr @memset(ptr %buf.i4764, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4765) #6
  %1254 = ptrtoint ptr %var.i4765 to i32
  call void @__asan_store1_noabort(i32 %1254)
  store i8 -1, ptr %var.i4765, align 1, !annotation !557
  %call.i4766 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull %buf.i4764, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4766)
  %cmp.i4767 = icmp slt i32 %call.i4766, 0
  br i1 %cmp.i4767, label %if.then1584.nvram_read_u8.exit4776_crit_edge, label %if.end.i4771

if.then1584.nvram_read_u8.exit4776_crit_edge:     ; preds = %if.then1584
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4776

if.end.i4771:                                     ; preds = %if.then1584
  %call2.i4768 = call ptr @strim(ptr noundef nonnull %buf.i4764) #6
  %call3.i4769 = call i32 @kstrtou8(ptr noundef %call2.i4768, i32 noundef 0, ptr noundef nonnull %var.i4765) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4769)
  %tobool4.not.i4770 = icmp eq i32 %call3.i4769, 0
  br i1 %tobool4.not.i4770, label %if.end8.i4774, label %do.end.i4773

do.end.i4773:                                     ; preds = %if.end.i4771
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.238, ptr noundef null, ptr noundef nonnull %buf.i4764, i32 noundef %call3.i4769) #9
  br label %nvram_read_u8.exit4776

if.end8.i4774:                                    ; preds = %if.end.i4771
  call void @__sanitizer_cov_trace_pc() #8
  %1255 = ptrtoint ptr %var.i4765 to i32
  call void @__asan_load1_noabort(i32 %1255)
  %1256 = load i8, ptr %var.i4765, align 1
  %1257 = ptrtoint ptr %sar5g to i32
  call void @__asan_store1_noabort(i32 %1257)
  store i8 %1256, ptr %sar5g, align 1
  br label %nvram_read_u8.exit4776

nvram_read_u8.exit4776:                           ; preds = %if.end8.i4774, %do.end.i4773, %if.then1584.nvram_read_u8.exit4776_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4765) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4764) #6
  br label %if.end1586

if.end1586:                                       ; preds = %nvram_read_u8.exit4776, %if.end1578.if.end1586_crit_edge
  %1258 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1258)
  %1259 = load i8, ptr %sprom, align 4
  %conv1588 = zext i8 %1259 to i32
  %shl1589 = shl nuw i32 1, %conv1588
  %and1590 = and i32 %shl1589, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1590)
  %tobool1591.not = icmp eq i32 %and1590, 0
  br i1 %tobool1591.not, label %if.end1586.if.end1595_crit_edge, label %if.then1592

if.end1586.if.end1595_crit_edge:                  ; preds = %if.end1586
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1595

if.then1592:                                      ; preds = %if.end1586
  %noiselvl2ga = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 87
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4777) #6
  %1260 = call ptr @memset(ptr %buf.i4777, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4778) #6
  %1261 = ptrtoint ptr %var.i4778 to i32
  call void @__asan_store1_noabort(i32 %1261)
  store i8 -1, ptr %var.i4778, align 1, !annotation !557
  %call.i4779 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull %buf.i4777, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4779)
  %cmp.i4780 = icmp slt i32 %call.i4779, 0
  br i1 %cmp.i4780, label %if.then1592.nvram_read_u8.exit4789_crit_edge, label %if.end.i4784

if.then1592.nvram_read_u8.exit4789_crit_edge:     ; preds = %if.then1592
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4789

if.end.i4784:                                     ; preds = %if.then1592
  %call2.i4781 = call ptr @strim(ptr noundef nonnull %buf.i4777) #6
  %call3.i4782 = call i32 @kstrtou8(ptr noundef %call2.i4781, i32 noundef 0, ptr noundef nonnull %var.i4778) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4782)
  %tobool4.not.i4783 = icmp eq i32 %call3.i4782, 0
  br i1 %tobool4.not.i4783, label %if.end8.i4787, label %do.end.i4786

do.end.i4786:                                     ; preds = %if.end.i4784
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4785 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.239, ptr noundef null, ptr noundef nonnull %buf.i4777, i32 noundef %call3.i4782) #9
  br label %nvram_read_u8.exit4789

if.end8.i4787:                                    ; preds = %if.end.i4784
  call void @__sanitizer_cov_trace_pc() #8
  %1262 = ptrtoint ptr %var.i4778 to i32
  call void @__asan_load1_noabort(i32 %1262)
  %1263 = load i8, ptr %var.i4778, align 1
  %1264 = ptrtoint ptr %noiselvl2ga to i32
  call void @__asan_store1_noabort(i32 %1264)
  store i8 %1263, ptr %noiselvl2ga, align 1
  br label %nvram_read_u8.exit4789

nvram_read_u8.exit4789:                           ; preds = %if.end8.i4787, %do.end.i4786, %if.then1592.nvram_read_u8.exit4789_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4778) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4777) #6
  br label %if.end1595

if.end1595:                                       ; preds = %nvram_read_u8.exit4789, %if.end1586.if.end1595_crit_edge
  %1265 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1265)
  %1266 = load i8, ptr %sprom, align 4
  %conv1597 = zext i8 %1266 to i32
  %shl1598 = shl nuw i32 1, %conv1597
  %and1599 = and i32 %shl1598, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1599)
  %tobool1600.not = icmp eq i32 %and1599, 0
  br i1 %tobool1600.not, label %if.end1595.if.end1605_crit_edge, label %if.then1601

if.end1595.if.end1605_crit_edge:                  ; preds = %if.end1595
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1605

if.then1601:                                      ; preds = %if.end1595
  %arrayidx1603 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 87, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4790) #6
  %1267 = call ptr @memset(ptr %buf.i4790, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4791) #6
  %1268 = ptrtoint ptr %var.i4791 to i32
  call void @__asan_store1_noabort(i32 %1268)
  store i8 -1, ptr %var.i4791, align 1, !annotation !557
  %call.i4792 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull %buf.i4790, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4792)
  %cmp.i4793 = icmp slt i32 %call.i4792, 0
  br i1 %cmp.i4793, label %if.then1601.nvram_read_u8.exit4802_crit_edge, label %if.end.i4797

if.then1601.nvram_read_u8.exit4802_crit_edge:     ; preds = %if.then1601
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4802

if.end.i4797:                                     ; preds = %if.then1601
  %call2.i4794 = call ptr @strim(ptr noundef nonnull %buf.i4790) #6
  %call3.i4795 = call i32 @kstrtou8(ptr noundef %call2.i4794, i32 noundef 0, ptr noundef nonnull %var.i4791) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4795)
  %tobool4.not.i4796 = icmp eq i32 %call3.i4795, 0
  br i1 %tobool4.not.i4796, label %if.end8.i4800, label %do.end.i4799

do.end.i4799:                                     ; preds = %if.end.i4797
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4798 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.240, ptr noundef null, ptr noundef nonnull %buf.i4790, i32 noundef %call3.i4795) #9
  br label %nvram_read_u8.exit4802

if.end8.i4800:                                    ; preds = %if.end.i4797
  call void @__sanitizer_cov_trace_pc() #8
  %1269 = ptrtoint ptr %var.i4791 to i32
  call void @__asan_load1_noabort(i32 %1269)
  %1270 = load i8, ptr %var.i4791, align 1
  %1271 = ptrtoint ptr %arrayidx1603 to i32
  call void @__asan_store1_noabort(i32 %1271)
  store i8 %1270, ptr %arrayidx1603, align 1
  br label %nvram_read_u8.exit4802

nvram_read_u8.exit4802:                           ; preds = %if.end8.i4800, %do.end.i4799, %if.then1601.nvram_read_u8.exit4802_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4791) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4790) #6
  br label %if.end1605

if.end1605:                                       ; preds = %nvram_read_u8.exit4802, %if.end1595.if.end1605_crit_edge
  %1272 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1272)
  %1273 = load i8, ptr %sprom, align 4
  %conv1607 = zext i8 %1273 to i32
  %shl1608 = shl nuw i32 1, %conv1607
  %and1609 = and i32 %shl1608, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1609)
  %tobool1610.not = icmp eq i32 %and1609, 0
  br i1 %tobool1610.not, label %if.end1605.if.end1615_crit_edge, label %if.then1611

if.end1605.if.end1615_crit_edge:                  ; preds = %if.end1605
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1615

if.then1611:                                      ; preds = %if.end1605
  %arrayidx1613 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 87, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4803) #6
  %1274 = call ptr @memset(ptr %buf.i4803, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4804) #6
  %1275 = ptrtoint ptr %var.i4804 to i32
  call void @__asan_store1_noabort(i32 %1275)
  store i8 -1, ptr %var.i4804, align 1, !annotation !557
  %call.i4805 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull %buf.i4803, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4805)
  %cmp.i4806 = icmp slt i32 %call.i4805, 0
  br i1 %cmp.i4806, label %if.then1611.nvram_read_u8.exit4815_crit_edge, label %if.end.i4810

if.then1611.nvram_read_u8.exit4815_crit_edge:     ; preds = %if.then1611
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4815

if.end.i4810:                                     ; preds = %if.then1611
  %call2.i4807 = call ptr @strim(ptr noundef nonnull %buf.i4803) #6
  %call3.i4808 = call i32 @kstrtou8(ptr noundef %call2.i4807, i32 noundef 0, ptr noundef nonnull %var.i4804) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4808)
  %tobool4.not.i4809 = icmp eq i32 %call3.i4808, 0
  br i1 %tobool4.not.i4809, label %if.end8.i4813, label %do.end.i4812

do.end.i4812:                                     ; preds = %if.end.i4810
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4811 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.241, ptr noundef null, ptr noundef nonnull %buf.i4803, i32 noundef %call3.i4808) #9
  br label %nvram_read_u8.exit4815

if.end8.i4813:                                    ; preds = %if.end.i4810
  call void @__sanitizer_cov_trace_pc() #8
  %1276 = ptrtoint ptr %var.i4804 to i32
  call void @__asan_load1_noabort(i32 %1276)
  %1277 = load i8, ptr %var.i4804, align 1
  %1278 = ptrtoint ptr %arrayidx1613 to i32
  call void @__asan_store1_noabort(i32 %1278)
  store i8 %1277, ptr %arrayidx1613, align 1
  br label %nvram_read_u8.exit4815

nvram_read_u8.exit4815:                           ; preds = %if.end8.i4813, %do.end.i4812, %if.then1611.nvram_read_u8.exit4815_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4804) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4803) #6
  br label %if.end1615

if.end1615:                                       ; preds = %nvram_read_u8.exit4815, %if.end1605.if.end1615_crit_edge
  %1279 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1279)
  %1280 = load i8, ptr %sprom, align 4
  %conv1617 = zext i8 %1280 to i32
  %shl1618 = shl nuw i32 1, %conv1617
  %and1619 = and i32 %shl1618, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1619)
  %tobool1620.not = icmp eq i32 %and1619, 0
  br i1 %tobool1620.not, label %if.end1615.if.end1624_crit_edge, label %if.then1621

if.end1615.if.end1624_crit_edge:                  ; preds = %if.end1615
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1624

if.then1621:                                      ; preds = %if.end1615
  %noiselvl5gla = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 88
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4816) #6
  %1281 = call ptr @memset(ptr %buf.i4816, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4817) #6
  %1282 = ptrtoint ptr %var.i4817 to i32
  call void @__asan_store1_noabort(i32 %1282)
  store i8 -1, ptr %var.i4817, align 1, !annotation !557
  %call.i4818 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull %buf.i4816, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4818)
  %cmp.i4819 = icmp slt i32 %call.i4818, 0
  br i1 %cmp.i4819, label %if.then1621.nvram_read_u8.exit4828_crit_edge, label %if.end.i4823

if.then1621.nvram_read_u8.exit4828_crit_edge:     ; preds = %if.then1621
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4828

if.end.i4823:                                     ; preds = %if.then1621
  %call2.i4820 = call ptr @strim(ptr noundef nonnull %buf.i4816) #6
  %call3.i4821 = call i32 @kstrtou8(ptr noundef %call2.i4820, i32 noundef 0, ptr noundef nonnull %var.i4817) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4821)
  %tobool4.not.i4822 = icmp eq i32 %call3.i4821, 0
  br i1 %tobool4.not.i4822, label %if.end8.i4826, label %do.end.i4825

do.end.i4825:                                     ; preds = %if.end.i4823
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4824 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.242, ptr noundef null, ptr noundef nonnull %buf.i4816, i32 noundef %call3.i4821) #9
  br label %nvram_read_u8.exit4828

if.end8.i4826:                                    ; preds = %if.end.i4823
  call void @__sanitizer_cov_trace_pc() #8
  %1283 = ptrtoint ptr %var.i4817 to i32
  call void @__asan_load1_noabort(i32 %1283)
  %1284 = load i8, ptr %var.i4817, align 1
  %1285 = ptrtoint ptr %noiselvl5gla to i32
  call void @__asan_store1_noabort(i32 %1285)
  store i8 %1284, ptr %noiselvl5gla, align 1
  br label %nvram_read_u8.exit4828

nvram_read_u8.exit4828:                           ; preds = %if.end8.i4826, %do.end.i4825, %if.then1621.nvram_read_u8.exit4828_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4817) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4816) #6
  br label %if.end1624

if.end1624:                                       ; preds = %nvram_read_u8.exit4828, %if.end1615.if.end1624_crit_edge
  %1286 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1286)
  %1287 = load i8, ptr %sprom, align 4
  %conv1626 = zext i8 %1287 to i32
  %shl1627 = shl nuw i32 1, %conv1626
  %and1628 = and i32 %shl1627, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1628)
  %tobool1629.not = icmp eq i32 %and1628, 0
  br i1 %tobool1629.not, label %if.end1624.if.end1634_crit_edge, label %if.then1630

if.end1624.if.end1634_crit_edge:                  ; preds = %if.end1624
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1634

if.then1630:                                      ; preds = %if.end1624
  %arrayidx1632 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 88, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4829) #6
  %1288 = call ptr @memset(ptr %buf.i4829, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4830) #6
  %1289 = ptrtoint ptr %var.i4830 to i32
  call void @__asan_store1_noabort(i32 %1289)
  store i8 -1, ptr %var.i4830, align 1, !annotation !557
  %call.i4831 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull %buf.i4829, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4831)
  %cmp.i4832 = icmp slt i32 %call.i4831, 0
  br i1 %cmp.i4832, label %if.then1630.nvram_read_u8.exit4841_crit_edge, label %if.end.i4836

if.then1630.nvram_read_u8.exit4841_crit_edge:     ; preds = %if.then1630
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4841

if.end.i4836:                                     ; preds = %if.then1630
  %call2.i4833 = call ptr @strim(ptr noundef nonnull %buf.i4829) #6
  %call3.i4834 = call i32 @kstrtou8(ptr noundef %call2.i4833, i32 noundef 0, ptr noundef nonnull %var.i4830) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4834)
  %tobool4.not.i4835 = icmp eq i32 %call3.i4834, 0
  br i1 %tobool4.not.i4835, label %if.end8.i4839, label %do.end.i4838

do.end.i4838:                                     ; preds = %if.end.i4836
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4837 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.243, ptr noundef null, ptr noundef nonnull %buf.i4829, i32 noundef %call3.i4834) #9
  br label %nvram_read_u8.exit4841

if.end8.i4839:                                    ; preds = %if.end.i4836
  call void @__sanitizer_cov_trace_pc() #8
  %1290 = ptrtoint ptr %var.i4830 to i32
  call void @__asan_load1_noabort(i32 %1290)
  %1291 = load i8, ptr %var.i4830, align 1
  %1292 = ptrtoint ptr %arrayidx1632 to i32
  call void @__asan_store1_noabort(i32 %1292)
  store i8 %1291, ptr %arrayidx1632, align 1
  br label %nvram_read_u8.exit4841

nvram_read_u8.exit4841:                           ; preds = %if.end8.i4839, %do.end.i4838, %if.then1630.nvram_read_u8.exit4841_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4830) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4829) #6
  br label %if.end1634

if.end1634:                                       ; preds = %nvram_read_u8.exit4841, %if.end1624.if.end1634_crit_edge
  %1293 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1293)
  %1294 = load i8, ptr %sprom, align 4
  %conv1636 = zext i8 %1294 to i32
  %shl1637 = shl nuw i32 1, %conv1636
  %and1638 = and i32 %shl1637, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1638)
  %tobool1639.not = icmp eq i32 %and1638, 0
  br i1 %tobool1639.not, label %if.end1634.if.end1644_crit_edge, label %if.then1640

if.end1634.if.end1644_crit_edge:                  ; preds = %if.end1634
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1644

if.then1640:                                      ; preds = %if.end1634
  %arrayidx1642 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 88, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4842) #6
  %1295 = call ptr @memset(ptr %buf.i4842, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4843) #6
  %1296 = ptrtoint ptr %var.i4843 to i32
  call void @__asan_store1_noabort(i32 %1296)
  store i8 -1, ptr %var.i4843, align 1, !annotation !557
  %call.i4844 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull %buf.i4842, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4844)
  %cmp.i4845 = icmp slt i32 %call.i4844, 0
  br i1 %cmp.i4845, label %if.then1640.nvram_read_u8.exit4854_crit_edge, label %if.end.i4849

if.then1640.nvram_read_u8.exit4854_crit_edge:     ; preds = %if.then1640
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4854

if.end.i4849:                                     ; preds = %if.then1640
  %call2.i4846 = call ptr @strim(ptr noundef nonnull %buf.i4842) #6
  %call3.i4847 = call i32 @kstrtou8(ptr noundef %call2.i4846, i32 noundef 0, ptr noundef nonnull %var.i4843) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4847)
  %tobool4.not.i4848 = icmp eq i32 %call3.i4847, 0
  br i1 %tobool4.not.i4848, label %if.end8.i4852, label %do.end.i4851

do.end.i4851:                                     ; preds = %if.end.i4849
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4850 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.244, ptr noundef null, ptr noundef nonnull %buf.i4842, i32 noundef %call3.i4847) #9
  br label %nvram_read_u8.exit4854

if.end8.i4852:                                    ; preds = %if.end.i4849
  call void @__sanitizer_cov_trace_pc() #8
  %1297 = ptrtoint ptr %var.i4843 to i32
  call void @__asan_load1_noabort(i32 %1297)
  %1298 = load i8, ptr %var.i4843, align 1
  %1299 = ptrtoint ptr %arrayidx1642 to i32
  call void @__asan_store1_noabort(i32 %1299)
  store i8 %1298, ptr %arrayidx1642, align 1
  br label %nvram_read_u8.exit4854

nvram_read_u8.exit4854:                           ; preds = %if.end8.i4852, %do.end.i4851, %if.then1640.nvram_read_u8.exit4854_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4843) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4842) #6
  br label %if.end1644

if.end1644:                                       ; preds = %nvram_read_u8.exit4854, %if.end1634.if.end1644_crit_edge
  %1300 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1300)
  %1301 = load i8, ptr %sprom, align 4
  %conv1646 = zext i8 %1301 to i32
  %shl1647 = shl nuw i32 1, %conv1646
  %and1648 = and i32 %shl1647, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1648)
  %tobool1649.not = icmp eq i32 %and1648, 0
  br i1 %tobool1649.not, label %if.end1644.if.end1653_crit_edge, label %if.then1650

if.end1644.if.end1653_crit_edge:                  ; preds = %if.end1644
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1653

if.then1650:                                      ; preds = %if.end1644
  %noiselvl5gma = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 89
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4855) #6
  %1302 = call ptr @memset(ptr %buf.i4855, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4856) #6
  %1303 = ptrtoint ptr %var.i4856 to i32
  call void @__asan_store1_noabort(i32 %1303)
  store i8 -1, ptr %var.i4856, align 1, !annotation !557
  %call.i4857 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull %buf.i4855, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4857)
  %cmp.i4858 = icmp slt i32 %call.i4857, 0
  br i1 %cmp.i4858, label %if.then1650.nvram_read_u8.exit4867_crit_edge, label %if.end.i4862

if.then1650.nvram_read_u8.exit4867_crit_edge:     ; preds = %if.then1650
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4867

if.end.i4862:                                     ; preds = %if.then1650
  %call2.i4859 = call ptr @strim(ptr noundef nonnull %buf.i4855) #6
  %call3.i4860 = call i32 @kstrtou8(ptr noundef %call2.i4859, i32 noundef 0, ptr noundef nonnull %var.i4856) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4860)
  %tobool4.not.i4861 = icmp eq i32 %call3.i4860, 0
  br i1 %tobool4.not.i4861, label %if.end8.i4865, label %do.end.i4864

do.end.i4864:                                     ; preds = %if.end.i4862
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4863 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.245, ptr noundef null, ptr noundef nonnull %buf.i4855, i32 noundef %call3.i4860) #9
  br label %nvram_read_u8.exit4867

if.end8.i4865:                                    ; preds = %if.end.i4862
  call void @__sanitizer_cov_trace_pc() #8
  %1304 = ptrtoint ptr %var.i4856 to i32
  call void @__asan_load1_noabort(i32 %1304)
  %1305 = load i8, ptr %var.i4856, align 1
  %1306 = ptrtoint ptr %noiselvl5gma to i32
  call void @__asan_store1_noabort(i32 %1306)
  store i8 %1305, ptr %noiselvl5gma, align 1
  br label %nvram_read_u8.exit4867

nvram_read_u8.exit4867:                           ; preds = %if.end8.i4865, %do.end.i4864, %if.then1650.nvram_read_u8.exit4867_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4856) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4855) #6
  br label %if.end1653

if.end1653:                                       ; preds = %nvram_read_u8.exit4867, %if.end1644.if.end1653_crit_edge
  %1307 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1307)
  %1308 = load i8, ptr %sprom, align 4
  %conv1655 = zext i8 %1308 to i32
  %shl1656 = shl nuw i32 1, %conv1655
  %and1657 = and i32 %shl1656, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1657)
  %tobool1658.not = icmp eq i32 %and1657, 0
  br i1 %tobool1658.not, label %if.end1653.if.end1663_crit_edge, label %if.then1659

if.end1653.if.end1663_crit_edge:                  ; preds = %if.end1653
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1663

if.then1659:                                      ; preds = %if.end1653
  %arrayidx1661 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 89, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4868) #6
  %1309 = call ptr @memset(ptr %buf.i4868, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4869) #6
  %1310 = ptrtoint ptr %var.i4869 to i32
  call void @__asan_store1_noabort(i32 %1310)
  store i8 -1, ptr %var.i4869, align 1, !annotation !557
  %call.i4870 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull %buf.i4868, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4870)
  %cmp.i4871 = icmp slt i32 %call.i4870, 0
  br i1 %cmp.i4871, label %if.then1659.nvram_read_u8.exit4880_crit_edge, label %if.end.i4875

if.then1659.nvram_read_u8.exit4880_crit_edge:     ; preds = %if.then1659
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4880

if.end.i4875:                                     ; preds = %if.then1659
  %call2.i4872 = call ptr @strim(ptr noundef nonnull %buf.i4868) #6
  %call3.i4873 = call i32 @kstrtou8(ptr noundef %call2.i4872, i32 noundef 0, ptr noundef nonnull %var.i4869) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4873)
  %tobool4.not.i4874 = icmp eq i32 %call3.i4873, 0
  br i1 %tobool4.not.i4874, label %if.end8.i4878, label %do.end.i4877

do.end.i4877:                                     ; preds = %if.end.i4875
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4876 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.246, ptr noundef null, ptr noundef nonnull %buf.i4868, i32 noundef %call3.i4873) #9
  br label %nvram_read_u8.exit4880

if.end8.i4878:                                    ; preds = %if.end.i4875
  call void @__sanitizer_cov_trace_pc() #8
  %1311 = ptrtoint ptr %var.i4869 to i32
  call void @__asan_load1_noabort(i32 %1311)
  %1312 = load i8, ptr %var.i4869, align 1
  %1313 = ptrtoint ptr %arrayidx1661 to i32
  call void @__asan_store1_noabort(i32 %1313)
  store i8 %1312, ptr %arrayidx1661, align 1
  br label %nvram_read_u8.exit4880

nvram_read_u8.exit4880:                           ; preds = %if.end8.i4878, %do.end.i4877, %if.then1659.nvram_read_u8.exit4880_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4869) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4868) #6
  br label %if.end1663

if.end1663:                                       ; preds = %nvram_read_u8.exit4880, %if.end1653.if.end1663_crit_edge
  %1314 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1314)
  %1315 = load i8, ptr %sprom, align 4
  %conv1665 = zext i8 %1315 to i32
  %shl1666 = shl nuw i32 1, %conv1665
  %and1667 = and i32 %shl1666, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1667)
  %tobool1668.not = icmp eq i32 %and1667, 0
  br i1 %tobool1668.not, label %if.end1663.if.end1673_crit_edge, label %if.then1669

if.end1663.if.end1673_crit_edge:                  ; preds = %if.end1663
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1673

if.then1669:                                      ; preds = %if.end1663
  %arrayidx1671 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 89, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4881) #6
  %1316 = call ptr @memset(ptr %buf.i4881, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4882) #6
  %1317 = ptrtoint ptr %var.i4882 to i32
  call void @__asan_store1_noabort(i32 %1317)
  store i8 -1, ptr %var.i4882, align 1, !annotation !557
  %call.i4883 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull %buf.i4881, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4883)
  %cmp.i4884 = icmp slt i32 %call.i4883, 0
  br i1 %cmp.i4884, label %if.then1669.nvram_read_u8.exit4893_crit_edge, label %if.end.i4888

if.then1669.nvram_read_u8.exit4893_crit_edge:     ; preds = %if.then1669
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4893

if.end.i4888:                                     ; preds = %if.then1669
  %call2.i4885 = call ptr @strim(ptr noundef nonnull %buf.i4881) #6
  %call3.i4886 = call i32 @kstrtou8(ptr noundef %call2.i4885, i32 noundef 0, ptr noundef nonnull %var.i4882) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4886)
  %tobool4.not.i4887 = icmp eq i32 %call3.i4886, 0
  br i1 %tobool4.not.i4887, label %if.end8.i4891, label %do.end.i4890

do.end.i4890:                                     ; preds = %if.end.i4888
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.247, ptr noundef null, ptr noundef nonnull %buf.i4881, i32 noundef %call3.i4886) #9
  br label %nvram_read_u8.exit4893

if.end8.i4891:                                    ; preds = %if.end.i4888
  call void @__sanitizer_cov_trace_pc() #8
  %1318 = ptrtoint ptr %var.i4882 to i32
  call void @__asan_load1_noabort(i32 %1318)
  %1319 = load i8, ptr %var.i4882, align 1
  %1320 = ptrtoint ptr %arrayidx1671 to i32
  call void @__asan_store1_noabort(i32 %1320)
  store i8 %1319, ptr %arrayidx1671, align 1
  br label %nvram_read_u8.exit4893

nvram_read_u8.exit4893:                           ; preds = %if.end8.i4891, %do.end.i4890, %if.then1669.nvram_read_u8.exit4893_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4882) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4881) #6
  br label %if.end1673

if.end1673:                                       ; preds = %nvram_read_u8.exit4893, %if.end1663.if.end1673_crit_edge
  %1321 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1321)
  %1322 = load i8, ptr %sprom, align 4
  %conv1675 = zext i8 %1322 to i32
  %shl1676 = shl nuw i32 1, %conv1675
  %and1677 = and i32 %shl1676, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1677)
  %tobool1678.not = icmp eq i32 %and1677, 0
  br i1 %tobool1678.not, label %if.end1673.if.end1682_crit_edge, label %if.then1679

if.end1673.if.end1682_crit_edge:                  ; preds = %if.end1673
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1682

if.then1679:                                      ; preds = %if.end1673
  %noiselvl5gha = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 90
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4894) #6
  %1323 = call ptr @memset(ptr %buf.i4894, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4895) #6
  %1324 = ptrtoint ptr %var.i4895 to i32
  call void @__asan_store1_noabort(i32 %1324)
  store i8 -1, ptr %var.i4895, align 1, !annotation !557
  %call.i4896 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull %buf.i4894, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4896)
  %cmp.i4897 = icmp slt i32 %call.i4896, 0
  br i1 %cmp.i4897, label %if.then1679.nvram_read_u8.exit4906_crit_edge, label %if.end.i4901

if.then1679.nvram_read_u8.exit4906_crit_edge:     ; preds = %if.then1679
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4906

if.end.i4901:                                     ; preds = %if.then1679
  %call2.i4898 = call ptr @strim(ptr noundef nonnull %buf.i4894) #6
  %call3.i4899 = call i32 @kstrtou8(ptr noundef %call2.i4898, i32 noundef 0, ptr noundef nonnull %var.i4895) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4899)
  %tobool4.not.i4900 = icmp eq i32 %call3.i4899, 0
  br i1 %tobool4.not.i4900, label %if.end8.i4904, label %do.end.i4903

do.end.i4903:                                     ; preds = %if.end.i4901
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4902 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.248, ptr noundef null, ptr noundef nonnull %buf.i4894, i32 noundef %call3.i4899) #9
  br label %nvram_read_u8.exit4906

if.end8.i4904:                                    ; preds = %if.end.i4901
  call void @__sanitizer_cov_trace_pc() #8
  %1325 = ptrtoint ptr %var.i4895 to i32
  call void @__asan_load1_noabort(i32 %1325)
  %1326 = load i8, ptr %var.i4895, align 1
  %1327 = ptrtoint ptr %noiselvl5gha to i32
  call void @__asan_store1_noabort(i32 %1327)
  store i8 %1326, ptr %noiselvl5gha, align 1
  br label %nvram_read_u8.exit4906

nvram_read_u8.exit4906:                           ; preds = %if.end8.i4904, %do.end.i4903, %if.then1679.nvram_read_u8.exit4906_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4895) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4894) #6
  br label %if.end1682

if.end1682:                                       ; preds = %nvram_read_u8.exit4906, %if.end1673.if.end1682_crit_edge
  %1328 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1328)
  %1329 = load i8, ptr %sprom, align 4
  %conv1684 = zext i8 %1329 to i32
  %shl1685 = shl nuw i32 1, %conv1684
  %and1686 = and i32 %shl1685, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1686)
  %tobool1687.not = icmp eq i32 %and1686, 0
  br i1 %tobool1687.not, label %if.end1682.if.end1692_crit_edge, label %if.then1688

if.end1682.if.end1692_crit_edge:                  ; preds = %if.end1682
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1692

if.then1688:                                      ; preds = %if.end1682
  %arrayidx1690 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 90, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4907) #6
  %1330 = call ptr @memset(ptr %buf.i4907, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4908) #6
  %1331 = ptrtoint ptr %var.i4908 to i32
  call void @__asan_store1_noabort(i32 %1331)
  store i8 -1, ptr %var.i4908, align 1, !annotation !557
  %call.i4909 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull %buf.i4907, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4909)
  %cmp.i4910 = icmp slt i32 %call.i4909, 0
  br i1 %cmp.i4910, label %if.then1688.nvram_read_u8.exit4919_crit_edge, label %if.end.i4914

if.then1688.nvram_read_u8.exit4919_crit_edge:     ; preds = %if.then1688
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4919

if.end.i4914:                                     ; preds = %if.then1688
  %call2.i4911 = call ptr @strim(ptr noundef nonnull %buf.i4907) #6
  %call3.i4912 = call i32 @kstrtou8(ptr noundef %call2.i4911, i32 noundef 0, ptr noundef nonnull %var.i4908) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4912)
  %tobool4.not.i4913 = icmp eq i32 %call3.i4912, 0
  br i1 %tobool4.not.i4913, label %if.end8.i4917, label %do.end.i4916

do.end.i4916:                                     ; preds = %if.end.i4914
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4915 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.249, ptr noundef null, ptr noundef nonnull %buf.i4907, i32 noundef %call3.i4912) #9
  br label %nvram_read_u8.exit4919

if.end8.i4917:                                    ; preds = %if.end.i4914
  call void @__sanitizer_cov_trace_pc() #8
  %1332 = ptrtoint ptr %var.i4908 to i32
  call void @__asan_load1_noabort(i32 %1332)
  %1333 = load i8, ptr %var.i4908, align 1
  %1334 = ptrtoint ptr %arrayidx1690 to i32
  call void @__asan_store1_noabort(i32 %1334)
  store i8 %1333, ptr %arrayidx1690, align 1
  br label %nvram_read_u8.exit4919

nvram_read_u8.exit4919:                           ; preds = %if.end8.i4917, %do.end.i4916, %if.then1688.nvram_read_u8.exit4919_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4908) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4907) #6
  br label %if.end1692

if.end1692:                                       ; preds = %nvram_read_u8.exit4919, %if.end1682.if.end1692_crit_edge
  %1335 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1335)
  %1336 = load i8, ptr %sprom, align 4
  %conv1694 = zext i8 %1336 to i32
  %shl1695 = shl nuw i32 1, %conv1694
  %and1696 = and i32 %shl1695, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1696)
  %tobool1697.not = icmp eq i32 %and1696, 0
  br i1 %tobool1697.not, label %if.end1692.if.end1702_crit_edge, label %if.then1698

if.end1692.if.end1702_crit_edge:                  ; preds = %if.end1692
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1702

if.then1698:                                      ; preds = %if.end1692
  %arrayidx1700 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 90, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4920) #6
  %1337 = call ptr @memset(ptr %buf.i4920, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4921) #6
  %1338 = ptrtoint ptr %var.i4921 to i32
  call void @__asan_store1_noabort(i32 %1338)
  store i8 -1, ptr %var.i4921, align 1, !annotation !557
  %call.i4922 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull %buf.i4920, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4922)
  %cmp.i4923 = icmp slt i32 %call.i4922, 0
  br i1 %cmp.i4923, label %if.then1698.nvram_read_u8.exit4932_crit_edge, label %if.end.i4927

if.then1698.nvram_read_u8.exit4932_crit_edge:     ; preds = %if.then1698
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4932

if.end.i4927:                                     ; preds = %if.then1698
  %call2.i4924 = call ptr @strim(ptr noundef nonnull %buf.i4920) #6
  %call3.i4925 = call i32 @kstrtou8(ptr noundef %call2.i4924, i32 noundef 0, ptr noundef nonnull %var.i4921) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4925)
  %tobool4.not.i4926 = icmp eq i32 %call3.i4925, 0
  br i1 %tobool4.not.i4926, label %if.end8.i4930, label %do.end.i4929

do.end.i4929:                                     ; preds = %if.end.i4927
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4928 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.250, ptr noundef null, ptr noundef nonnull %buf.i4920, i32 noundef %call3.i4925) #9
  br label %nvram_read_u8.exit4932

if.end8.i4930:                                    ; preds = %if.end.i4927
  call void @__sanitizer_cov_trace_pc() #8
  %1339 = ptrtoint ptr %var.i4921 to i32
  call void @__asan_load1_noabort(i32 %1339)
  %1340 = load i8, ptr %var.i4921, align 1
  %1341 = ptrtoint ptr %arrayidx1700 to i32
  call void @__asan_store1_noabort(i32 %1341)
  store i8 %1340, ptr %arrayidx1700, align 1
  br label %nvram_read_u8.exit4932

nvram_read_u8.exit4932:                           ; preds = %if.end8.i4930, %do.end.i4929, %if.then1698.nvram_read_u8.exit4932_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4921) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4920) #6
  br label %if.end1702

if.end1702:                                       ; preds = %nvram_read_u8.exit4932, %if.end1692.if.end1702_crit_edge
  %1342 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1342)
  %1343 = load i8, ptr %sprom, align 4
  %conv1704 = zext i8 %1343 to i32
  %shl1705 = shl nuw i32 1, %conv1704
  %and1706 = and i32 %shl1705, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1706)
  %tobool1707.not = icmp eq i32 %and1706, 0
  br i1 %tobool1707.not, label %if.end1702.if.end1711_crit_edge, label %if.then1708

if.end1702.if.end1711_crit_edge:                  ; preds = %if.end1702
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1711

if.then1708:                                      ; preds = %if.end1702
  %noiselvl5gua = getelementptr inbounds %struct.ssb_sprom, ptr %sprom, i32 0, i32 91
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4933) #6
  %1344 = call ptr @memset(ptr %buf.i4933, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4934) #6
  %1345 = ptrtoint ptr %var.i4934 to i32
  call void @__asan_store1_noabort(i32 %1345)
  store i8 -1, ptr %var.i4934, align 1, !annotation !557
  %call.i4935 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull %buf.i4933, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4935)
  %cmp.i4936 = icmp slt i32 %call.i4935, 0
  br i1 %cmp.i4936, label %if.then1708.nvram_read_u8.exit4945_crit_edge, label %if.end.i4940

if.then1708.nvram_read_u8.exit4945_crit_edge:     ; preds = %if.then1708
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4945

if.end.i4940:                                     ; preds = %if.then1708
  %call2.i4937 = call ptr @strim(ptr noundef nonnull %buf.i4933) #6
  %call3.i4938 = call i32 @kstrtou8(ptr noundef %call2.i4937, i32 noundef 0, ptr noundef nonnull %var.i4934) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4938)
  %tobool4.not.i4939 = icmp eq i32 %call3.i4938, 0
  br i1 %tobool4.not.i4939, label %if.end8.i4943, label %do.end.i4942

do.end.i4942:                                     ; preds = %if.end.i4940
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4941 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.251, ptr noundef null, ptr noundef nonnull %buf.i4933, i32 noundef %call3.i4938) #9
  br label %nvram_read_u8.exit4945

if.end8.i4943:                                    ; preds = %if.end.i4940
  call void @__sanitizer_cov_trace_pc() #8
  %1346 = ptrtoint ptr %var.i4934 to i32
  call void @__asan_load1_noabort(i32 %1346)
  %1347 = load i8, ptr %var.i4934, align 1
  %1348 = ptrtoint ptr %noiselvl5gua to i32
  call void @__asan_store1_noabort(i32 %1348)
  store i8 %1347, ptr %noiselvl5gua, align 1
  br label %nvram_read_u8.exit4945

nvram_read_u8.exit4945:                           ; preds = %if.end8.i4943, %do.end.i4942, %if.then1708.nvram_read_u8.exit4945_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4934) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4933) #6
  br label %if.end1711

if.end1711:                                       ; preds = %nvram_read_u8.exit4945, %if.end1702.if.end1711_crit_edge
  %1349 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1349)
  %1350 = load i8, ptr %sprom, align 4
  %conv1713 = zext i8 %1350 to i32
  %shl1714 = shl nuw i32 1, %conv1713
  %and1715 = and i32 %shl1714, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1715)
  %tobool1716.not = icmp eq i32 %and1715, 0
  br i1 %tobool1716.not, label %if.end1711.if.end1721_crit_edge, label %if.then1717

if.end1711.if.end1721_crit_edge:                  ; preds = %if.end1711
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1721

if.then1717:                                      ; preds = %if.end1711
  %arrayidx1719 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 91, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4946) #6
  %1351 = call ptr @memset(ptr %buf.i4946, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4947) #6
  %1352 = ptrtoint ptr %var.i4947 to i32
  call void @__asan_store1_noabort(i32 %1352)
  store i8 -1, ptr %var.i4947, align 1, !annotation !557
  %call.i4948 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull %buf.i4946, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4948)
  %cmp.i4949 = icmp slt i32 %call.i4948, 0
  br i1 %cmp.i4949, label %if.then1717.nvram_read_u8.exit4958_crit_edge, label %if.end.i4953

if.then1717.nvram_read_u8.exit4958_crit_edge:     ; preds = %if.then1717
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4958

if.end.i4953:                                     ; preds = %if.then1717
  %call2.i4950 = call ptr @strim(ptr noundef nonnull %buf.i4946) #6
  %call3.i4951 = call i32 @kstrtou8(ptr noundef %call2.i4950, i32 noundef 0, ptr noundef nonnull %var.i4947) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4951)
  %tobool4.not.i4952 = icmp eq i32 %call3.i4951, 0
  br i1 %tobool4.not.i4952, label %if.end8.i4956, label %do.end.i4955

do.end.i4955:                                     ; preds = %if.end.i4953
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4954 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.252, ptr noundef null, ptr noundef nonnull %buf.i4946, i32 noundef %call3.i4951) #9
  br label %nvram_read_u8.exit4958

if.end8.i4956:                                    ; preds = %if.end.i4953
  call void @__sanitizer_cov_trace_pc() #8
  %1353 = ptrtoint ptr %var.i4947 to i32
  call void @__asan_load1_noabort(i32 %1353)
  %1354 = load i8, ptr %var.i4947, align 1
  %1355 = ptrtoint ptr %arrayidx1719 to i32
  call void @__asan_store1_noabort(i32 %1355)
  store i8 %1354, ptr %arrayidx1719, align 1
  br label %nvram_read_u8.exit4958

nvram_read_u8.exit4958:                           ; preds = %if.end8.i4956, %do.end.i4955, %if.then1717.nvram_read_u8.exit4958_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4947) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4946) #6
  br label %if.end1721

if.end1721:                                       ; preds = %nvram_read_u8.exit4958, %if.end1711.if.end1721_crit_edge
  %1356 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %1356)
  %1357 = load i8, ptr %sprom, align 4
  %conv1723 = zext i8 %1357 to i32
  %shl1724 = shl nuw i32 1, %conv1723
  %and1725 = and i32 %shl1724, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1725)
  %tobool1726.not = icmp eq i32 %and1725, 0
  br i1 %tobool1726.not, label %if.end1721.if.end1731_crit_edge, label %if.then1727

if.end1721.if.end1731_crit_edge:                  ; preds = %if.end1721
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1731

if.then1727:                                      ; preds = %if.end1721
  %arrayidx1729 = getelementptr %struct.ssb_sprom, ptr %sprom, i32 0, i32 91, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i4959) #6
  %1358 = call ptr @memset(ptr %buf.i4959, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %var.i4960) #6
  %1359 = ptrtoint ptr %var.i4960 to i32
  call void @__asan_store1_noabort(i32 %1359)
  store i8 -1, ptr %var.i4960, align 1, !annotation !557
  %call.i4961 = call fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull %buf.i4959, i32 noundef 100, i1 noundef zeroext %fallback) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4961)
  %cmp.i4962 = icmp slt i32 %call.i4961, 0
  br i1 %cmp.i4962, label %if.then1727.nvram_read_u8.exit4971_crit_edge, label %if.end.i4966

if.then1727.nvram_read_u8.exit4971_crit_edge:     ; preds = %if.then1727
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u8.exit4971

if.end.i4966:                                     ; preds = %if.then1727
  %call2.i4963 = call ptr @strim(ptr noundef nonnull %buf.i4959) #6
  %call3.i4964 = call i32 @kstrtou8(ptr noundef %call2.i4963, i32 noundef 0, ptr noundef nonnull %var.i4960) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i4964)
  %tobool4.not.i4965 = icmp eq i32 %call3.i4964, 0
  br i1 %tobool4.not.i4965, label %if.end8.i4969, label %do.end.i4968

do.end.i4968:                                     ; preds = %if.end.i4966
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i4967 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix, ptr noundef nonnull @.str.253, ptr noundef null, ptr noundef nonnull %buf.i4959, i32 noundef %call3.i4964) #9
  br label %nvram_read_u8.exit4971

if.end8.i4969:                                    ; preds = %if.end.i4966
  call void @__sanitizer_cov_trace_pc() #8
  %1360 = ptrtoint ptr %var.i4960 to i32
  call void @__asan_load1_noabort(i32 %1360)
  %1361 = load i8, ptr %var.i4960, align 1
  %1362 = ptrtoint ptr %arrayidx1729 to i32
  call void @__asan_store1_noabort(i32 %1362)
  store i8 %1361, ptr %arrayidx1729, align 1
  br label %nvram_read_u8.exit4971

nvram_read_u8.exit4971:                           ; preds = %if.end8.i4969, %do.end.i4968, %if.then1727.nvram_read_u8.exit4971_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %var.i4960) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i4959) #6
  br label %if.end1731

if.end1731:                                       ; preds = %nvram_read_u8.exit4971, %if.end1721.if.end1731_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_sprom_register_fallbacks() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bcm47xx_sprom_registered, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssb_arch_register_fallback_sprom(ptr noundef nonnull @bcm47xx_get_sprom_ssb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @bcma_arch_register_fallback_sprom(ptr noundef nonnull @bcm47xx_get_sprom_bcma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %do.end9

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end4.if.end12_crit_edge
  store i1 true, ptr @bcm47xx_sprom_registered, align 4
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_arch_register_fallback_sprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_get_sprom_ssb(ptr nocapture noundef readonly %bus, ptr noundef %out) #0 align 64 {
entry:
  %prefix = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %prefix) #6
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = call ptr @memset(ptr %prefix, i32 255, i32 10)
  %1 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bustype, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %2, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bcm47xx_fill_sprom(ptr noundef %out, ptr noundef null, i1 noundef zeroext false)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memset(ptr %out, i32 0, i32 540)
  %5 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus2, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 10, ptr noundef nonnull @.str.256, i32 noundef %add, i32 noundef %and)
  call void @bcm47xx_fill_sprom(ptr noundef %out, ptr noundef nonnull %prefix, i1 noundef zeroext false)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %prefix) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_arch_register_fallback_sprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xx_get_sprom_bcma(ptr noundef %bus, ptr noundef %out) #0 align 64 {
entry:
  %buf.i40 = alloca [100 x i8], align 1
  %var.i41 = alloca i16, align 2
  %buf.i37 = alloca [100 x i8], align 1
  %var.i = alloca i16, align 2
  %nvram_var.i = alloca [10 x i8], align 1
  %buf.i = alloca [20 x i8], align 1
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %boardinfo = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #6
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %0 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %1 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hosttype, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %2, label %do.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %4 = call ptr @memset(ptr %out, i32 0, i32 540)
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 5
  %5 = ptrtoint ptr %host_pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_pci, align 4
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %domain_nr.i, align 8
  %add = add i32 %10, 1
  %number = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 12
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number, align 4
  %conv = zext i8 %12 to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.256, i32 noundef %add, i32 noundef %conv)
  %call.i = call i32 @strlen(ptr noundef nonnull %buf) #10
  %sub.i = add i32 %call.i, -1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %nvram_var.i) #6
  %13 = call ptr @memset(ptr %nvram_var.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  br i1 %cmp.i, label %sw.bb.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, label %lor.lhs.false.i

sw.bb.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %16)
  %cmp2.not.i = icmp eq i8 %16, 47
  br i1 %cmp2.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge

lor.lhs.false.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool21.not.i = icmp eq i32 %sub.i, 0
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %nvram_var.i, i32 noundef 10, ptr noundef nonnull @.str.262, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 1
  br i1 %cmp7.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end10.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.cond.preheader.i
  %call13.i = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %nvram_var.i, ptr noundef nonnull %buf.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end10.i.for.inc.i_crit_edge, label %if.end17.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end10.i
  %call19.i = call i32 @strcmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i, label %if.end17.i.if.then30.i_crit_edge, label %lor.lhs.false20.i

if.end17.i.if.then30.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

lor.lhs.false20.i:                                ; preds = %if.end17.i
  br i1 %tobool21.not.i, label %lor.lhs.false20.i.for.inc.i_crit_edge, label %land.lhs.true.i

lor.lhs.false20.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false20.i
  %call23.i = call i32 @strlen(ptr noundef nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.i, i32 %sub.i)
  %cmp24.i = icmp eq i32 %call23.i, %sub.i
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %land.lhs.true.i
  %call28.i = call i32 @strncmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true26.i.if.then30.i_crit_edge, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true26.i.if.then30.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true26.2.i.if.then30.i_crit_edge, %if.end17.2.i.if.then30.i_crit_edge, %land.lhs.true26.1.i.if.then30.i_crit_edge, %if.end17.1.i.if.then30.i_crit_edge, %land.lhs.true26.i.if.then30.i_crit_edge, %if.end17.i.if.then30.i_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %land.lhs.true26.i.if.then30.i_crit_edge ], [ 0, %if.end17.i.if.then30.i_crit_edge ], [ 1, %if.end17.1.i.if.then30.i_crit_edge ], [ 1, %land.lhs.true26.1.i.if.then30.i_crit_edge ], [ 2, %if.end17.2.i.if.then30.i_crit_edge ], [ 2, %land.lhs.true26.2.i.if.then30.i_crit_edge ]
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.263, i32 noundef %i.02.lcssa.i) #6
  br label %bcm47xx_sprom_apply_prefix_alias.exit

for.inc.i:                                        ; preds = %land.lhs.true26.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false20.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %call6.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %nvram_var.i, i32 noundef 10, ptr noundef nonnull @.str.262, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 1
  br i1 %cmp7.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end10.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end10.1.i:                                     ; preds = %for.inc.i
  %call13.1.i = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %nvram_var.i, ptr noundef nonnull %buf.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1.i)
  %cmp14.1.i = icmp slt i32 %call13.1.i, 0
  br i1 %cmp14.1.i, label %if.end10.1.i.for.inc.1.i_crit_edge, label %if.end17.1.i

if.end10.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end17.1.i:                                     ; preds = %if.end10.1.i
  %call19.1.i = call i32 @strcmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1.i)
  %tobool.not.1.i = icmp eq i32 %call19.1.i, 0
  br i1 %tobool.not.1.i, label %if.end17.1.i.if.then30.i_crit_edge, label %lor.lhs.false20.1.i

if.end17.1.i.if.then30.i_crit_edge:               ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

lor.lhs.false20.1.i:                              ; preds = %if.end17.1.i
  br i1 %tobool21.not.i, label %lor.lhs.false20.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

lor.lhs.false20.1.i.for.inc.1.i_crit_edge:        ; preds = %lor.lhs.false20.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %lor.lhs.false20.1.i
  %call23.1.i = call i32 @strlen(ptr noundef nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.1.i, i32 %sub.i)
  %cmp24.1.i = icmp eq i32 %call23.1.i, %sub.i
  br i1 %cmp24.1.i, label %land.lhs.true26.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true26.1.i:                              ; preds = %land.lhs.true.1.i
  %call28.1.i = call i32 @strncmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %tobool29.not.1.i = icmp eq i32 %call28.1.i, 0
  br i1 %tobool29.not.1.i, label %land.lhs.true26.1.i.if.then30.i_crit_edge, label %land.lhs.true26.1.i.for.inc.1.i_crit_edge

land.lhs.true26.1.i.for.inc.1.i_crit_edge:        ; preds = %land.lhs.true26.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true26.1.i.if.then30.i_crit_edge:        ; preds = %land.lhs.true26.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

for.inc.1.i:                                      ; preds = %land.lhs.true26.1.i.for.inc.1.i_crit_edge, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %lor.lhs.false20.1.i.for.inc.1.i_crit_edge, %if.end10.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call6.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %nvram_var.i, i32 noundef 10, ptr noundef nonnull @.str.262, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.2.i)
  %cmp7.2.i = icmp slt i32 %call6.2.i, 1
  br i1 %cmp7.2.i, label %for.inc.1.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, label %if.end10.2.i

for.inc.1.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

if.end10.2.i:                                     ; preds = %for.inc.1.i
  %call13.2.i = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %nvram_var.i, ptr noundef nonnull %buf.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2.i)
  %cmp14.2.i = icmp slt i32 %call13.2.i, 0
  br i1 %cmp14.2.i, label %if.end10.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, label %if.end17.2.i

if.end10.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

if.end17.2.i:                                     ; preds = %if.end10.2.i
  %call19.2.i = call i32 @strcmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2.i)
  %tobool.not.2.i = icmp eq i32 %call19.2.i, 0
  br i1 %tobool.not.2.i, label %if.end17.2.i.if.then30.i_crit_edge, label %lor.lhs.false20.2.i

if.end17.2.i.if.then30.i_crit_edge:               ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

lor.lhs.false20.2.i:                              ; preds = %if.end17.2.i
  br i1 %tobool21.not.i, label %lor.lhs.false20.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, label %land.lhs.true.2.i

lor.lhs.false20.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %lor.lhs.false20.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

land.lhs.true.2.i:                                ; preds = %lor.lhs.false20.2.i
  %call23.2.i = call i32 @strlen(ptr noundef nonnull %buf.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.2.i, i32 %sub.i)
  %cmp24.2.i = icmp eq i32 %call23.2.i, %sub.i
  br i1 %cmp24.2.i, label %land.lhs.true26.2.i, label %land.lhs.true.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge

land.lhs.true.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

land.lhs.true26.2.i:                              ; preds = %land.lhs.true.2.i
  %call28.2.i = call i32 @strncmp(ptr noundef nonnull %buf.i, ptr noundef nonnull %buf, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %tobool29.not.2.i = icmp eq i32 %call28.2.i, 0
  br i1 %tobool29.not.2.i, label %land.lhs.true26.2.i.if.then30.i_crit_edge, label %land.lhs.true26.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge

land.lhs.true26.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge: ; preds = %land.lhs.true26.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm47xx_sprom_apply_prefix_alias.exit

land.lhs.true26.2.i.if.then30.i_crit_edge:        ; preds = %land.lhs.true26.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30.i

bcm47xx_sprom_apply_prefix_alias.exit:            ; preds = %land.lhs.true26.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %land.lhs.true.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %lor.lhs.false20.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %if.end10.2.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %for.inc.1.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %if.then30.i, %lor.lhs.false.i.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge, %sw.bb.bcm47xx_sprom_apply_prefix_alias.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %nvram_var.i) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %17 = call ptr @memset(ptr %out, i32 0, i32 540)
  %call.i36 = tail call ptr @bcma_find_core_unit(ptr noundef %bus, i16 noundef zeroext 2066, i8 noundef zeroext 0) #6
  %tobool.not = icmp eq ptr %call.i36, null
  br i1 %tobool.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %core_index = getelementptr inbounds %struct.bcma_device, ptr %call.i36, i32 0, i32 6
  %18 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %core_index, align 1
  %conv10 = zext i8 %19 to i32
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 10, ptr noundef nonnull @.str.259, i32 noundef %conv10)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %sw.bb7.sw.epilog_crit_edge, %bcm47xx_sprom_apply_prefix_alias.exit
  %prefix.0 = phi ptr [ %buf, %if.then ], [ %buf, %bcm47xx_sprom_apply_prefix_alias.exit ], [ null, %sw.bb7.sw.epilog_crit_edge ]
  %fallback.0.off0 = phi i1 [ true, %if.then ], [ false, %bcm47xx_sprom_apply_prefix_alias.exit ], [ false, %sw.bb7.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i37) #6
  %20 = call ptr @memset(ptr %buf.i37, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i) #6
  %21 = ptrtoint ptr %var.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %var.i, align 2, !annotation !557
  %call.i38 = call fastcc i32 @get_nvram_var(ptr noundef %prefix.0, ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull %buf.i37, i32 noundef 100, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp.i39 = icmp slt i32 %call.i38, 0
  br i1 %cmp.i39, label %sw.epilog.nvram_read_u16.exitthread-pre-split_crit_edge, label %if.end.i

sw.epilog.nvram_read_u16.exitthread-pre-split_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exitthread-pre-split

if.end.i:                                         ; preds = %sw.epilog
  %call2.i = call ptr @strim(ptr noundef nonnull %buf.i37) #6
  %call3.i = call i32 @kstrtou16(ptr noundef %call2.i, i32 noundef 0, ptr noundef nonnull %var.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix.0, ptr noundef nonnull @.str.261, ptr noundef null, ptr noundef nonnull %buf.i37, i32 noundef %call3.i) #9
  br label %nvram_read_u16.exitthread-pre-split

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %var.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %var.i, align 2
  %24 = ptrtoint ptr %boardinfo to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %boardinfo, align 2
  br label %nvram_read_u16.exit

nvram_read_u16.exitthread-pre-split:              ; preds = %do.end.i, %sw.epilog.nvram_read_u16.exitthread-pre-split_crit_edge
  %25 = ptrtoint ptr %boardinfo to i32
  call void @__asan_load2_noabort(i32 %25)
  %.pr = load i16, ptr %boardinfo, align 2
  br label %nvram_read_u16.exit

nvram_read_u16.exit:                              ; preds = %nvram_read_u16.exitthread-pre-split, %if.end15.i
  %26 = phi i16 [ %.pr, %nvram_read_u16.exitthread-pre-split ], [ %23, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i37) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool15.not = icmp eq i16 %26, 0
  br i1 %tobool15.not, label %if.then16, label %nvram_read_u16.exit.if.end18_crit_edge

nvram_read_u16.exit.if.end18_crit_edge:           ; preds = %nvram_read_u16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %nvram_read_u16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %boardinfo to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 5348, ptr %boardinfo, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %nvram_read_u16.exit.if.end18_crit_edge
  %type = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 7, i32 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buf.i40) #6
  %28 = call ptr @memset(ptr %buf.i40, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %var.i41) #6
  %29 = ptrtoint ptr %var.i41 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %var.i41, align 2, !annotation !557
  %call.i42 = call fastcc i32 @get_nvram_var(ptr noundef %prefix.0, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull %buf.i40, i32 noundef 100, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp.i43, label %if.end18.nvram_read_u16.exit51_crit_edge, label %if.end.i47

if.end18.nvram_read_u16.exit51_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvram_read_u16.exit51

if.end.i47:                                       ; preds = %if.end18
  %call2.i44 = call ptr @strim(ptr noundef nonnull %buf.i40) #6
  %call3.i45 = call i32 @kstrtou16(ptr noundef %call2.i44, i32 noundef 0, ptr noundef nonnull %var.i41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i45)
  %tobool4.not.i46 = icmp eq i32 %call3.i45, 0
  br i1 %tobool4.not.i46, label %if.end15.i50, label %do.end.i49

do.end.i49:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %prefix.0, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef nonnull %buf.i40, i32 noundef %call3.i45) #9
  br label %nvram_read_u16.exit51

if.end15.i50:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %var.i41 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %var.i41, align 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %type, align 2
  br label %nvram_read_u16.exit51

nvram_read_u16.exit51:                            ; preds = %if.end15.i50, %do.end.i49, %if.end18.nvram_read_u16.exit51_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %var.i41) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buf.i40) #6
  call void @bcm47xx_fill_sprom(ptr noundef %out, ptr noundef %prefix.0, i1 noundef zeroext %fallback.0.off0)
  br label %cleanup

cleanup:                                          ; preds = %nvram_read_u16.exit51, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %nvram_read_u16.exit51 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_nvram_var(ptr noundef %prefix, ptr noundef %postfix, ptr noundef %name, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %fallback) unnamed_addr #0 align 64 {
entry:
  %key = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %key) #6
  %0 = call ptr @memset(ptr %key, i32 255, i32 40)
  %tobool.not.i = icmp eq ptr %prefix, null
  %tobool1.not.i = icmp eq ptr %postfix, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.22, ptr noundef nonnull %prefix, ptr noundef %name, ptr noundef nonnull %postfix) #6
  br label %create_key.exit

if.else.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.else5.i, label %create_key.exit.thread

if.else5.i:                                       ; preds = %if.else.i
  br i1 %tobool1.not.i, label %if.else9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull %postfix) #6
  br label %create_key.exit

if.else9.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.24, ptr noundef %name) #6
  br label %create_key.exit

create_key.exit:                                  ; preds = %if.else9.i, %if.then7.i, %if.then.i
  %call = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %key, ptr noundef %buf, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp = icmp ne i32 %call, -2
  %not.fallback = xor i1 %fallback, true
  %or.cond = select i1 %not.fallback, i1 true, i1 %cmp
  %brmerge = or i1 %tobool.not.i, %or.cond
  %call.mux = select i1 %or.cond, i32 %call, i32 -2
  br i1 %brmerge, label %create_key.exit.if.end_crit_edge, label %create_key.exit.if.then_crit_edge

create_key.exit.if.then_crit_edge:                ; preds = %create_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

create_key.exit.if.end_crit_edge:                 ; preds = %create_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

create_key.exit.thread:                           ; preds = %if.else.i
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.23, ptr noundef nonnull %prefix, ptr noundef %name) #6
  %call21 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %key, ptr noundef %buf, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call21)
  %cmp22 = icmp eq i32 %call21, -2
  %or.cond23 = select i1 %fallback, i1 %cmp22, i1 false
  br i1 %or.cond23, label %create_key.exit.thread.if.then_crit_edge, label %create_key.exit.thread.if.end_crit_edge

create_key.exit.thread.if.end_crit_edge:          ; preds = %create_key.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

create_key.exit.thread.if.then_crit_edge:         ; preds = %create_key.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %create_key.exit.thread.if.then_crit_edge, %create_key.exit.if.then_crit_edge
  br i1 %tobool1.not.i, label %if.else9.i19, label %if.then7.i17

if.then7.i17:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull %postfix) #6
  br label %create_key.exit20

if.else9.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key, i32 noundef 40, ptr noundef nonnull @.str.24, ptr noundef %name) #6
  br label %create_key.exit20

create_key.exit20:                                ; preds = %if.else9.i19, %if.then7.i17
  %call6 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %key, ptr noundef %buf, i32 noundef %len) #6
  br label %if.end

if.end:                                           ; preds = %create_key.exit20, %create_key.exit.thread.if.end_crit_edge, %create_key.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call6, %create_key.exit20 ], [ %call.mux, %create_key.exit.if.end_crit_edge ], [ %call21, %create_key.exit.thread.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %key) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mac_pton(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 277)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 277)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !524, !525, !527, !528, !529, !531, !533, !534, !535, !536, !538, !540, !541, !542, !544, !546}
!llvm.module.flags = !{!548, !549, !550, !551, !552, !553, !554, !555}
!llvm.ident = !{!556}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 570, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 573, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 575, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 713, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bcm47xx_sprom_register_fallbacks._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @bcm47xx_sprom_register_fallbacks._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 718, i32 3}
!14 = !{ptr @bcm47xx_sprom_register_fallbacks._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @bcm47xx_sprom_register_fallbacks._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_bcm47xx_sprom__341_726_bcm47xx_sprom_register_fallbacks5, !17, !"__initcall__kmod_bcm47xx_sprom__341_726_bcm47xx_sprom_register_fallbacks5", i1 false, i1 false}
!17 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 726, i32 1}
!18 = distinct !{null, !19, !"bcm47xx_sprom_registered", i1 false, i1 false}
!19 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 700, i32 21}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 515, i32 29}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 516, i32 30}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 518, i32 30}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 521, i32 29}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 522, i32 30}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 524, i32 30}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 527, i32 29}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 528, i32 30}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 529, i32 30}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 531, i32 29}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 532, i32 29}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 153, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nvram_read_macaddr._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nvram_read_macaddr._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 40, i32 22}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 42, i32 22}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 46, i32 22}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 502, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm47xx_increase_mac_addr._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcm47xx_increase_mac_addr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mac_addr_used, !59, !"mac_addr_used", i1 false, i1 false}
!59 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 508, i32 12}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 558, i32 27}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 560, i32 27}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 108, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nvram_read_u32_2._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @nvram_read_u32_2._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 89, i32 1}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nvram_read_u8._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nvram_read_u8._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 168, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nvram_read_alpha2._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @nvram_read_alpha2._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 129, i32 3}
!81 = !{ptr @nvram_read_leddc._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvram_read_leddc._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 420, i32 38}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 421, i32 34}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 423, i32 34}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 425, i32 34}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 427, i32 35}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 429, i32 35}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 431, i32 35}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 433, i32 34}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 435, i32 34}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 437, i32 34}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 439, i32 35}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 441, i32 35}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 443, i32 35}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 445, i32 35}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 447, i32 35}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 449, i32 35}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 451, i32 35}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 453, i32 35}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 455, i32 35}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 91, i32 1}
!123 = !{ptr @nvram_read_u16._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nvram_read_u16._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 472, i32 35}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 474, i32 35}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 476, i32 35}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 478, i32 35}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 195, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 197, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 200, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 202, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 203, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 204, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 205, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 207, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 208, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 209, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 210, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 212, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 213, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 214, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 215, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 216, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 218, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 219, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 220, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 221, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 222, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 223, i32 2}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 224, i32 2}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 226, i32 2}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 227, i32 2}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 228, i32 2}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 229, i32 2}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 230, i32 2}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 231, i32 2}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 232, i32 2}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 233, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 234, i32 2}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 235, i32 2}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 236, i32 2}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 237, i32 2}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 238, i32 2}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 240, i32 2}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 241, i32 2}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 242, i32 2}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 243, i32 2}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 244, i32 2}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 245, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 246, i32 2}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 247, i32 2}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 248, i32 2}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 249, i32 2}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 250, i32 2}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 251, i32 2}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 252, i32 2}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 253, i32 2}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 254, i32 2}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 255, i32 2}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 256, i32 2}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 257, i32 2}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 258, i32 2}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 259, i32 2}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 260, i32 2}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 261, i32 2}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 262, i32 2}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 263, i32 2}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 264, i32 2}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 265, i32 2}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 266, i32 2}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 267, i32 2}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 268, i32 2}
!263 = !{ptr @.str.125, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 269, i32 2}
!265 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 270, i32 2}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 271, i32 2}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 272, i32 2}
!271 = !{ptr @.str.129, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 273, i32 2}
!273 = !{ptr @.str.130, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 274, i32 2}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 275, i32 2}
!277 = !{ptr @.str.132, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 276, i32 2}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 277, i32 2}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 278, i32 2}
!283 = !{ptr @.str.135, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 279, i32 2}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 280, i32 2}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 281, i32 2}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 282, i32 2}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 284, i32 2}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 285, i32 2}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 286, i32 2}
!297 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 287, i32 2}
!299 = !{ptr @.str.143, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 288, i32 2}
!301 = !{ptr @.str.144, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 289, i32 2}
!303 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 290, i32 2}
!305 = !{ptr @.str.146, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 291, i32 2}
!307 = !{ptr @.str.147, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 292, i32 2}
!309 = !{ptr @.str.148, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 293, i32 2}
!311 = !{ptr @.str.149, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 294, i32 2}
!313 = !{ptr @.str.150, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 295, i32 2}
!315 = !{ptr @.str.151, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 296, i32 2}
!317 = !{ptr @.str.152, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 297, i32 2}
!319 = !{ptr @.str.153, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 298, i32 2}
!321 = !{ptr @.str.154, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 299, i32 2}
!323 = !{ptr @.str.155, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 300, i32 2}
!325 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 302, i32 2}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 303, i32 2}
!329 = !{ptr @.str.158, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 304, i32 2}
!331 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 305, i32 2}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 306, i32 2}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 307, i32 2}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 308, i32 2}
!339 = !{ptr @.str.163, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 309, i32 2}
!341 = !{ptr @.str.164, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 310, i32 2}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 311, i32 2}
!345 = !{ptr @.str.166, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 312, i32 2}
!347 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 313, i32 2}
!349 = !{ptr @.str.168, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 314, i32 2}
!351 = !{ptr @.str.169, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 315, i32 2}
!353 = !{ptr @.str.170, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 316, i32 2}
!355 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 317, i32 2}
!357 = !{ptr @.str.172, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 318, i32 2}
!359 = !{ptr @.str.173, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 319, i32 2}
!361 = !{ptr @.str.174, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 320, i32 2}
!363 = !{ptr @.str.175, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 321, i32 2}
!365 = !{ptr @.str.176, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 322, i32 2}
!367 = !{ptr @.str.177, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 323, i32 2}
!369 = !{ptr @.str.178, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 324, i32 2}
!371 = !{ptr @.str.179, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 325, i32 2}
!373 = !{ptr @.str.180, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 326, i32 2}
!375 = !{ptr @.str.181, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 327, i32 2}
!377 = !{ptr @.str.182, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 328, i32 2}
!379 = !{ptr @.str.183, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 329, i32 2}
!381 = !{ptr @.str.184, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 330, i32 2}
!383 = !{ptr @.str.185, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 331, i32 2}
!385 = !{ptr @.str.186, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 332, i32 2}
!387 = !{ptr @.str.187, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 333, i32 2}
!389 = !{ptr @.str.188, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 334, i32 2}
!391 = !{ptr @.str.189, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 335, i32 2}
!393 = !{ptr @.str.190, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 336, i32 2}
!395 = !{ptr @.str.191, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 337, i32 2}
!397 = !{ptr @.str.192, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 338, i32 2}
!399 = !{ptr @.str.193, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 339, i32 2}
!401 = !{ptr @.str.194, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 340, i32 2}
!403 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 341, i32 2}
!405 = !{ptr @.str.196, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 342, i32 2}
!407 = !{ptr @.str.197, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 344, i32 2}
!409 = !{ptr @.str.198, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 345, i32 2}
!411 = !{ptr @.str.199, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 346, i32 2}
!413 = !{ptr @.str.200, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 347, i32 2}
!415 = !{ptr @.str.201, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 348, i32 2}
!417 = !{ptr @.str.202, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 349, i32 2}
!419 = !{ptr @.str.203, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 350, i32 2}
!421 = !{ptr @.str.204, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 351, i32 2}
!423 = !{ptr @.str.205, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 352, i32 2}
!425 = !{ptr @.str.206, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 353, i32 2}
!427 = !{ptr @.str.207, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 354, i32 2}
!429 = !{ptr @.str.208, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 355, i32 2}
!431 = !{ptr @.str.209, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 356, i32 2}
!433 = !{ptr @.str.210, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 357, i32 2}
!435 = !{ptr @.str.211, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 358, i32 2}
!437 = !{ptr @.str.212, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 359, i32 2}
!439 = !{ptr @.str.213, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 360, i32 2}
!441 = !{ptr @.str.214, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 361, i32 2}
!443 = !{ptr @.str.215, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 362, i32 2}
!445 = !{ptr @.str.216, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 363, i32 2}
!447 = !{ptr @.str.217, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 364, i32 2}
!449 = !{ptr @.str.218, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 365, i32 2}
!451 = !{ptr @.str.219, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 366, i32 2}
!453 = !{ptr @.str.220, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 367, i32 2}
!455 = !{ptr @.str.221, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 368, i32 2}
!457 = !{ptr @.str.222, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 371, i32 2}
!459 = !{ptr @.str.223, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 372, i32 2}
!461 = !{ptr @.str.224, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 373, i32 2}
!463 = !{ptr @.str.225, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 374, i32 2}
!465 = !{ptr @.str.226, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 375, i32 2}
!467 = !{ptr @.str.227, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 376, i32 2}
!469 = !{ptr @.str.228, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 377, i32 2}
!471 = !{ptr @.str.229, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 378, i32 2}
!473 = !{ptr @.str.230, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 379, i32 2}
!475 = !{ptr @.str.231, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 380, i32 2}
!477 = !{ptr @.str.232, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 381, i32 2}
!479 = !{ptr @.str.233, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 382, i32 2}
!481 = !{ptr @.str.234, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 383, i32 2}
!483 = !{ptr @.str.235, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 384, i32 2}
!485 = !{ptr @.str.236, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 385, i32 2}
!487 = !{ptr @.str.237, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 387, i32 2}
!489 = !{ptr @.str.238, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 388, i32 2}
!491 = !{ptr @.str.239, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 391, i32 2}
!493 = !{ptr @.str.240, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 392, i32 2}
!495 = !{ptr @.str.241, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 393, i32 2}
!497 = !{ptr @.str.242, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 394, i32 2}
!499 = !{ptr @.str.243, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 395, i32 2}
!501 = !{ptr @.str.244, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 396, i32 2}
!503 = !{ptr @.str.245, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 397, i32 2}
!505 = !{ptr @.str.246, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 398, i32 2}
!507 = !{ptr @.str.247, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 399, i32 2}
!509 = !{ptr @.str.248, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 400, i32 2}
!511 = !{ptr @.str.249, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 401, i32 2}
!513 = !{ptr @.str.250, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 402, i32 2}
!515 = !{ptr @.str.251, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 403, i32 2}
!517 = !{ptr @.str.252, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 404, i32 2}
!519 = !{ptr @.str.253, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 405, i32 2}
!521 = !{ptr @.str.254, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 92, i32 1}
!523 = !{ptr @nvram_read_u32._entry, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @nvram_read_u32._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.255, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 90, i32 1}
!527 = !{ptr @nvram_read_s8._entry, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @nvram_read_s8._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.256, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 604, i32 36}
!531 = !{ptr @.str.257, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 610, i32 3}
!533 = !{ptr @.str.258, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @bcm47xx_get_sprom_ssb._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @bcm47xx_get_sprom_ssb._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.259, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 676, i32 31}
!538 = !{ptr @.str.260, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 685, i32 3}
!540 = !{ptr @bcm47xx_get_sprom_bcma._entry, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @bcm47xx_get_sprom_bcma._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.261, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 689, i32 31}
!544 = !{ptr @.str.262, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 637, i32 46}
!546 = !{ptr @.str.263, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/firmware/broadcom/bcm47xx_sprom.c", i32 643, i32 34}
!548 = !{i32 1, !"wchar_size", i32 2}
!549 = !{i32 1, !"min_enum_size", i32 4}
!550 = !{i32 8, !"branch-target-enforcement", i32 0}
!551 = !{i32 8, !"sign-return-address", i32 0}
!552 = !{i32 8, !"sign-return-address-all", i32 0}
!553 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!554 = !{i32 7, !"uwtable", i32 1}
!555 = !{i32 7, !"frame-pointer", i32 2}
!556 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!557 = !{!"auto-init"}
