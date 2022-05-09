; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bgmac-bcma.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-bcma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.100, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.100 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.101, %struct.anon.102, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.101 = type { i8, i8, i8, i8 }
%struct.anon.102 = type { %struct.anon.103, %struct.anon.104 }
%struct.anon.103 = type { i8, i8, i8, i8, i8 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
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
%struct.bgmac = type { %union.anon.127, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.anon.129 = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@bgmac_bcma_driver = internal global { %struct.bcma_driver, [56 x i8] } { %struct.bcma_driver { ptr @.str, ptr @bgmac_bcma_tbl, ptr @bgmac_probe, ptr @bgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_bgmac_bcma__351_362_bgmac_init6 = internal global ptr @bgmac_init, section ".initcall6.init", align 4
@__exitcall_bgmac_exit = internal global ptr @bgmac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author352 = internal constant [34 x i8] c"bgmac_bcma.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [57 x i8] c"bgmac_bcma.file=drivers/net/ethernet/broadcom/bgmac-bcma\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [23 x i8] c"bgmac_bcma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bgmac_bcma\00", [21 x i8] zeroinitializer }, align 32
@bgmac_bcma_tbl = internal constant { [3 x %struct.bcma_device_id], [46 x i8] } { [3 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 1325, i8 -1, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 2093, i8 -1, i8 -1 }, %struct.bcma_device_id zeroinitializer], [46 x i8] zeroinitializer }, align 32
@bgmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported core_unit %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bgmac_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/broadcom/bgmac-bcma.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr = internal global ptr @bgmac_probe._entry, section ".printk_index", align 4
@bgmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"GMAC CMN core not found (required for BCM4706)\0A\00", [48 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.8 = internal global ptr @bgmac_probe._entry.6, section ".printk_index", align 4
@bgmac_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.11 = internal global ptr @bgmac_probe._entry.9, section ".printk_index", align 4
@bgmac_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 195, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Found PHY addr: %d%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.15 = internal global ptr @bgmac_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (NOREGS)\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bgmac_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI setup not implemented\0A\00", [37 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.20 = internal global ptr @bgmac_probe._entry.18, section ".printk_index", align 4
@bgmac_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Support for Roboswitch not implemented\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.24 = internal global ptr @bgmac_probe._entry.21, section ".printk_index", align 4
@bgmac_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Support for ADMtek ethernet switch not implemented\0A\00", [44 x i8] zeroinitializer }, align 32
@bgmac_probe._entry_ptr.27 = internal global ptr @bgmac_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@bcma_phy_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PHY connection failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcma_phy_connect\00", [47 x i8] zeroinitializer }, align 32
@bcma_phy_connect._entry_ptr = internal global ptr @bcma_phy_connect._entry, section ".printk_index", align 4
@bgmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016bgmac_bcma: Broadcom 47xx GBit MAC driver loaded\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bgmac_init\00", [21 x i8] zeroinitializer }, align 32
@bgmac_init._entry_ptr = internal global ptr @bgmac_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 53010, i64 53018, i64 53030]
@__sancov_gen_cov_switch_values.36 = internal global [11 x i64] [i64 9, i64 16, i64 18198, i64 18249, i64 21335, i64 47162, i64 53010, i64 53018, i64 53030, i64 53572, i64 53573]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 16, i64 53010, i64 53018, i64 53030]
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"bgmac_bcma_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 338, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 339, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"bgmac_bcma_tbl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 114, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 160, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 171, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 190, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 194, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 215, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 222, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 225, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 98, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 103, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [46 x i8] c"../drivers/net/ethernet/broadcom/bgmac-bcma.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 352, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_bgmac_exit, ptr @__initcall__kmod_bgmac_bcma__351_362_bgmac_init6, ptr @bcma_phy_connect._entry, ptr @bcma_phy_connect._entry_ptr, ptr @bgmac_exit, ptr @bgmac_init._entry, ptr @bgmac_init._entry_ptr, ptr @bgmac_probe._entry, ptr @bgmac_probe._entry.12, ptr @bgmac_probe._entry.18, ptr @bgmac_probe._entry.21, ptr @bgmac_probe._entry.25, ptr @bgmac_probe._entry.6, ptr @bgmac_probe._entry.9, ptr @bgmac_probe._entry_ptr, ptr @bgmac_probe._entry_ptr.11, ptr @bgmac_probe._entry_ptr.15, ptr @bgmac_probe._entry_ptr.20, ptr @bgmac_probe._entry_ptr.24, ptr @bgmac_probe._entry_ptr.27, ptr @bgmac_probe._entry_ptr.8, ptr @bgmac_bcma_driver, ptr @.str, ptr @bgmac_bcma_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_bcma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_bcma_tbl to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_phy_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bgmac_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bcma_driver_unregister(ptr noundef nonnull @bgmac_bcma_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__bcma_driver_register(ptr noundef nonnull @bgmac_bcma_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgmac_probe(ptr noundef %core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6
  %dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2
  %call = tail call ptr @bgmac_alloc(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup285_crit_edge, label %if.end

entry.cleanup285_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup285

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %core, ptr %call, align 8
  %dma_dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 3
  %3 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_dev, align 8
  %dma_dev4 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %dma_dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dma_dev4, align 8
  %irq = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %irq5 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq5, align 8
  %drvdata1.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 13
  %9 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %drvdata1.i, align 4
  %dev6 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %net_dev = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_dev, align 8
  %call7 = tail call i32 @of_get_ethdev_address(ptr noundef %13, ptr noundef %15) #6
  %16 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %if.then11 [
    i32 -517, label %if.end.cleanup285_crit_edge
    i32 0, label %if.end.if.end20_crit_edge
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.cleanup285_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup285

if.then11:                                        ; preds = %if.end
  %core_unit = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 7
  %17 = ptrtoint ptr %core_unit to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %core_unit, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %18, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb12
    i8 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %et0mac = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 3
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %et1mac = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %et2mac = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 5
  br label %sw.epilog

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %18 to i32
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %err284

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb
  %mac.0 = phi ptr [ %et2mac, %sw.bb14 ], [ %et1mac, %sw.bb12 ], [ %et0mac, %sw.bb ]
  %22 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net_dev, align 8
  tail call void @dev_addr_mod(ptr noundef %23, i32 noundef 0, ptr noundef %mac.0, i32 noundef 6) #6
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog, %if.end.if.end20_crit_edge
  %id21 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %id21 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1325, i16 %25)
  %cmp23 = icmp eq i16 %25, 1325
  br i1 %cmp23, label %land.lhs.true, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 8
  %drv_gmac_cmn = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %drv_gmac_cmn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv_gmac_cmn, align 4
  %tobool27.not = icmp eq ptr %29, null
  br i1 %tobool27.not, label %do.end31, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end31:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7) #9
  br label %err284

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %32 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core, align 8
  %drv_gmac_cmn35 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %drv_gmac_cmn35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_gmac_cmn35, align 4
  %cmn = getelementptr inbounds %struct.anon.129, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %cmn to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cmn, align 4
  %core_unit37 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 7
  %37 = ptrtoint ptr %core_unit37 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %core_unit37, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %38, label %if.end33.sw.epilog44_crit_edge [
    i8 0, label %sw.bb39
    i8 1, label %sw.bb40
    i8 2, label %sw.bb42
  ]

if.end33.sw.epilog44_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog44

sw.bb39:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %et0phyaddr = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 6
  br label %sw.epilog44.sink.split

sw.bb40:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %et1phyaddr = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 7
  br label %sw.epilog44.sink.split

sw.bb42:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %et2phyaddr = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 8
  br label %sw.epilog44.sink.split

sw.epilog44.sink.split:                           ; preds = %sw.bb42, %sw.bb40, %sw.bb39
  %.sink.in = phi ptr [ %et2phyaddr, %sw.bb42 ], [ %et1phyaddr, %sw.bb40 ], [ %et0phyaddr, %sw.bb39 ]
  %40 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %40)
  %.sink = load i8, ptr %.sink.in, align 1
  %phyaddr43 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 16
  %41 = ptrtoint ptr %phyaddr43 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink, ptr %phyaddr43, align 8
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.epilog44.sink.split, %if.end33.sw.epilog44_crit_edge
  %phyaddr45 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 16
  %42 = ptrtoint ptr %phyaddr45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %phyaddr45, align 8
  %44 = and i8 %43, 31
  store i8 %44, ptr %phyaddr45, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %44)
  %cmp50 = icmp eq i8 %44, 31
  br i1 %cmp50, label %do.end55, label %do.end60

do.end55:                                         ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.10) #9
  br label %err284

do.end60:                                         ; preds = %sw.epilog44
  %conv49 = zext i8 %44 to i32
  %47 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %44)
  %cmp66 = icmp eq i8 %44, 30
  %cond = select i1 %cmp66, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.13, i32 noundef %conv49, ptr noundef nonnull %cond) #9
  %49 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core, align 8
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %chipinfo.i, align 4
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %52, label %land.lhs.true69 [
    i16 -12526, label %do.end60.if.end103_crit_edge
    i16 -12506, label %do.end60.if.end103_crit_edge421
    i16 -12518, label %do.end60.if.end103_crit_edge422
  ]

do.end60.if.end103_crit_edge422:                  ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

do.end60.if.end103_crit_edge421:                  ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

do.end60.if.end103_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

land.lhs.true69:                                  ; preds = %do.end60
  %54 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %chipinfo, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11963, i16 %55)
  %cmp72 = icmp eq i16 %55, -11963
  br i1 %cmp72, label %land.lhs.true74, label %land.lhs.true69.if.then79_crit_edge

land.lhs.true69.if.then79_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %56 = ptrtoint ptr %core_unit37 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %core_unit37, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp77 = icmp eq i8 %57, 1
  br i1 %cmp77, label %land.lhs.true74.if.end103_crit_edge, label %land.lhs.true74.if.then79_crit_edge

land.lhs.true74.if.then79_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

land.lhs.true74.if.end103_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then79:                                        ; preds = %land.lhs.true74.if.then79_crit_edge, %land.lhs.true69.if.then79_crit_edge
  %call80 = tail call ptr @bcma_mdio_mii_register(ptr noundef nonnull %call) #6
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end84

if.end84:                                         ; preds = %if.then79
  %mii_bus85 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 6
  %58 = ptrtoint ptr %mii_bus85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call80, ptr %mii_bus85, align 8
  %59 = ptrtoint ptr %phyaddr45 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %phyaddr45, align 8
  %conv88 = zext i8 %60 to i32
  %call89 = tail call ptr @mdiobus_get_phy(ptr noundef %call80, i32 noundef %conv88) #6
  %61 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %chipinfo, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11963, i16 %62)
  %cmp92 = icmp ne i16 %62, -11963
  %tobool95.not = icmp eq ptr %call89, null
  %or.cond = select i1 %cmp92, i1 true, i1 %tobool95.not
  br i1 %or.cond, label %if.end84.if.end103_crit_edge, label %land.lhs.true96

if.end84.if.end103_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

land.lhs.true96:                                  ; preds = %if.end84
  %drv = getelementptr inbounds %struct.phy_device, ptr %call89, i32 0, i32 1
  %63 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %phy_id, align 4
  %phy_id_mask = getelementptr inbounds %struct.phy_driver, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %phy_id_mask, align 4
  %and98 = and i32 %68, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1611498656, i32 %and98)
  %cmp99 = icmp eq i32 %and98, 1611498656
  br i1 %cmp99, label %if.then101, label %land.lhs.true96.if.end103_crit_edge

land.lhs.true96.if.end103_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then101:                                       ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %call89, i32 0, i32 6
  %69 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dev_flags, align 8
  %or = or i32 %70, 16
  store i32 %or, ptr %dev_flags, align 8
  br label %if.end103

cleanup:                                          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call80 to i32
  br label %err284

if.end103:                                        ; preds = %if.then101, %land.lhs.true96.if.end103_crit_edge, %if.end84.if.end103_crit_edge, %land.lhs.true74.if.end103_crit_edge, %do.end60.if.end103_crit_edge, %do.end60.if.end103_crit_edge421, %do.end60.if.end103_crit_edge422
  %72 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp105 = icmp eq i32 %75, 0
  br i1 %cmp105, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.19) #9
  br label %err1

if.end112:                                        ; preds = %if.end103
  %boardflags_lo = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 18, i32 70
  %78 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %boardflags_lo, align 4
  %80 = and i16 %79, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool115.not = icmp eq i16 %80, 0
  %has_robosw = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 17
  %.lobit = lshr exact i16 %80, 4
  %81 = trunc i16 %.lobit to i8
  %82 = ptrtoint ptr %has_robosw to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %has_robosw, align 1
  br i1 %tobool115.not, label %if.end112.if.end124_crit_edge, label %do.end122

if.end112.if.end124_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.end122:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.22) #9
  br label %if.end124

if.end124:                                        ; preds = %do.end122, %if.end112.if.end124_crit_edge
  %85 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %boardflags_lo, align 4
  %87 = and i16 %86, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool128.not = icmp eq i16 %87, 0
  br i1 %tobool128.not, label %if.end124.if.end134_crit_edge, label %do.end132

if.end124.if.end134_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

do.end132:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.26) #9
  br label %if.end134

if.end134:                                        ; preds = %do.end132, %if.end124.if.end134_crit_edge
  %90 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %chipinfo, align 2
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %91, label %sw.default239 [
    i16 18198, label %sw.bb137
    i16 -18374, label %if.end134.sw.bb139_crit_edge
    i16 21335, label %if.end134.sw.bb144_crit_edge
    i16 -11964, label %if.end134.sw.bb144_crit_edge423
    i16 -11963, label %sw.bb174
    i16 18249, label %sw.bb213
    i16 -12526, label %if.end134.sw.bb232_crit_edge
    i16 -12506, label %if.end134.sw.bb232_crit_edge424
    i16 -12518, label %if.end134.sw.bb232_crit_edge425
  ]

if.end134.sw.bb232_crit_edge425:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb232

if.end134.sw.bb232_crit_edge424:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb232

if.end134.sw.bb232_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb232

if.end134.sw.bb144_crit_edge423:                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

if.end134.sw.bb144_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

if.end134.sw.bb139_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb139

sw.bb137:                                         ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %feature_flags = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %93 = ptrtoint ptr %feature_flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %feature_flags, align 4
  %or138 = or i32 %94, 4096
  store i32 %or138, ptr %feature_flags, align 4
  br label %sw.bb139

sw.bb139:                                         ; preds = %sw.bb137, %if.end134.sw.bb139_crit_edge
  %feature_flags140 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %95 = ptrtoint ptr %feature_flags140 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %feature_flags140, align 4
  %or143 = or i32 %96, 3072
  store i32 %or143, ptr %feature_flags140, align 4
  br label %sw.epilog244

sw.bb144:                                         ; preds = %if.end134.sw.bb144_crit_edge, %if.end134.sw.bb144_crit_edge423
  %feature_flags145 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %97 = ptrtoint ptr %feature_flags145 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %feature_flags145, align 4
  %or152 = or i32 %98, 6688
  store i32 %or152, ptr %feature_flags145, align 4
  %pkg = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 2
  %99 = ptrtoint ptr %pkg to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pkg, align 1
  %.off = add i8 %100, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end165, label %sw.bb144.sw.epilog244_crit_edge

sw.bb144.sw.epilog244_crit_edge:                  ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog244

if.end165:                                        ; preds = %sw.bb144
  %or164 = or i32 %98, 6820
  %101 = ptrtoint ptr %feature_flags145 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or164, ptr %feature_flags145, align 4
  %102 = ptrtoint ptr %pkg to i32
  call void @__asan_load1_noabort(i32 %102)
  %.pr = load i8, ptr %pkg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %.pr)
  %cmp168 = icmp eq i8 %.pr, 9
  br i1 %cmp168, label %if.then170, label %if.end165.sw.epilog244_crit_edge

if.end165.sw.epilog244_crit_edge:                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog244

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %feature_flags145 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %feature_flags145, align 4
  %or172 = or i32 %104, 64
  store i32 %or172, ptr %feature_flags145, align 4
  br label %sw.epilog244

sw.bb174:                                         ; preds = %if.end134
  %feature_flags175 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %105 = ptrtoint ptr %feature_flags175 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %feature_flags175, align 4
  %or178 = or i32 %106, 6144
  store i32 %or178, ptr %feature_flags175, align 4
  %pkg179 = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 2
  %107 = ptrtoint ptr %pkg179 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pkg179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp181 = icmp eq i8 %108, 1
  br i1 %cmp181, label %if.then183, label %sw.bb174.if.end186_crit_edge

sw.bb174.if.end186_crit_edge:                     ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then183:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #8
  %or185 = or i32 %106, 6148
  %109 = ptrtoint ptr %feature_flags175 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or185, ptr %feature_flags175, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %sw.bb174.if.end186_crit_edge
  %110 = ptrtoint ptr %core_unit37 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %core_unit37, align 2
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %111, label %if.end186.sw.epilog244_crit_edge [
    i8 0, label %if.then191
    i8 1, label %if.then206
  ]

if.end186.sw.epilog244_crit_edge:                 ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog244

if.then191:                                       ; preds = %if.end186
  %113 = ptrtoint ptr %feature_flags175 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %feature_flags175, align 4
  %or193 = or i32 %114, 131072
  store i32 %or193, ptr %feature_flags175, align 4
  %115 = ptrtoint ptr %pkg179 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %pkg179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp196 = icmp eq i8 %116, 1
  br i1 %cmp196, label %if.then198, label %if.then191.sw.epilog244_crit_edge

if.then191.sw.epilog244_crit_edge:                ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog244

if.then198:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  %or200 = or i32 %114, 393216
  %117 = ptrtoint ptr %feature_flags175 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or200, ptr %feature_flags175, align 4
  br label %sw.epilog244

if.then206:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %feature_flags175 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %feature_flags175, align 4
  %or210 = or i32 %119, 589824
  store i32 %or210, ptr %feature_flags175, align 4
  br label %sw.epilog244

sw.bb213:                                         ; preds = %if.end134
  %feature_flags214 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %120 = ptrtoint ptr %feature_flags214 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %feature_flags214, align 4
  %or221 = or i32 %121, 6688
  store i32 %or221, ptr %feature_flags214, align 4
  %pkg222 = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 2
  %122 = ptrtoint ptr %pkg222 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pkg222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %123)
  %cmp224 = icmp eq i8 %123, 10
  br i1 %cmp224, label %if.then226, label %sw.bb213.sw.epilog244_crit_edge

sw.bb213.sw.epilog244_crit_edge:                  ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog244

if.then226:                                       ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #8
  %or230 = or i32 %121, 6820
  %124 = ptrtoint ptr %feature_flags214 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or230, ptr %feature_flags214, align 4
  br label %sw.epilog244

sw.bb232:                                         ; preds = %if.end134.sw.bb232_crit_edge, %if.end134.sw.bb232_crit_edge424, %if.end134.sw.bb232_crit_edge425
  %feature_flags233 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %125 = ptrtoint ptr %feature_flags233 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %feature_flags233, align 4
  %or238 = or i32 %126, 20488
  store i32 %or238, ptr %feature_flags233, align 4
  br label %sw.epilog244

sw.default239:                                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %feature_flags240 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %127 = ptrtoint ptr %feature_flags240 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %feature_flags240, align 4
  %or243 = or i32 %128, 6144
  store i32 %or243, ptr %feature_flags240, align 4
  br label %sw.epilog244

sw.epilog244:                                     ; preds = %sw.default239, %sw.bb232, %if.then226, %sw.bb213.sw.epilog244_crit_edge, %if.then206, %if.then198, %if.then191.sw.epilog244_crit_edge, %if.end186.sw.epilog244_crit_edge, %if.then170, %if.end165.sw.epilog244_crit_edge, %sw.bb144.sw.epilog244_crit_edge, %sw.bb139
  %129 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %core, align 8
  %chipinfo.i411 = getelementptr inbounds %struct.bcma_bus, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %chipinfo.i411 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %chipinfo.i411, align 4
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %132, label %land.lhs.true246 [
    i16 -12526, label %sw.epilog244.if.end254_crit_edge
    i16 -12506, label %sw.epilog244.if.end254_crit_edge426
    i16 -12518, label %sw.epilog244.if.end254_crit_edge427
  ]

sw.epilog244.if.end254_crit_edge427:              ; preds = %sw.epilog244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

sw.epilog244.if.end254_crit_edge426:              ; preds = %sw.epilog244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

sw.epilog244.if.end254_crit_edge:                 ; preds = %sw.epilog244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

land.lhs.true246:                                 ; preds = %sw.epilog244
  %rev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %135)
  %cmp249 = icmp ugt i8 %135, 2
  br i1 %cmp249, label %if.then251, label %land.lhs.true246.if.end254_crit_edge

land.lhs.true246.if.end254_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then251:                                       ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #8
  %feature_flags252 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %136 = ptrtoint ptr %feature_flags252 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %feature_flags252, align 4
  %or253 = or i32 %137, 16
  store i32 %or253, ptr %feature_flags252, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %land.lhs.true246.if.end254_crit_edge, %sw.epilog244.if.end254_crit_edge, %sw.epilog244.if.end254_crit_edge426, %sw.epilog244.if.end254_crit_edge427
  %138 = ptrtoint ptr %id21 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %id21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1325, i16 %139)
  %cmp258 = icmp eq i16 %139, 1325
  br i1 %cmp258, label %if.then260, label %if.end254.if.end265_crit_edge

if.end254.if.end265_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end265

if.then260:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  %feature_flags261 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %140 = ptrtoint ptr %feature_flags261 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %feature_flags261, align 4
  %or264 = or i32 %141, 8448
  store i32 %or264, ptr %feature_flags261, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then260, %if.end254.if.end265_crit_edge
  %rev267 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %rev267 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %rev267, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp269 = icmp ugt i8 %143, 3
  br i1 %cmp269, label %if.then271, label %if.end265.if.end278_crit_edge

if.end265.if.end278_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278

if.then271:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  %feature_flags272 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 3
  %144 = ptrtoint ptr %feature_flags272 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %feature_flags272, align 4
  %or277 = or i32 %145, 32771
  store i32 %or277, ptr %feature_flags272, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then271, %if.end265.if.end278_crit_edge
  %read = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 19
  %146 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @bcma_bgmac_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 20
  %147 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @bcma_bgmac_write, ptr %write, align 8
  %idm_read = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 21
  %148 = ptrtoint ptr %idm_read to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @bcma_bgmac_idm_read, ptr %idm_read, align 4
  %idm_write = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 22
  %149 = ptrtoint ptr %idm_write to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @bcma_bgmac_idm_write, ptr %idm_write, align 8
  %clk_enabled = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 23
  %150 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @bcma_bgmac_clk_enabled, ptr %clk_enabled, align 4
  %clk_enable = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 24
  %151 = ptrtoint ptr %clk_enable to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @bcma_bgmac_clk_enable, ptr %clk_enable, align 8
  %cco_ctl_maskset = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 25
  %152 = ptrtoint ptr %cco_ctl_maskset to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @bcma_bgmac_cco_ctl_maskset, ptr %cco_ctl_maskset, align 4
  %get_bus_clock = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 26
  %153 = ptrtoint ptr %get_bus_clock to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @bcma_bgmac_get_bus_clock, ptr %get_bus_clock, align 8
  %cmn_maskset32 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 27
  %154 = ptrtoint ptr %cmn_maskset32 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @bcma_bgmac_cmn_maskset32, ptr %cmn_maskset32, align 4
  %phy_connect = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 28
  %155 = ptrtoint ptr %phy_connect to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @bcma_phy_connect, ptr %phy_connect, align 8
  %call279 = tail call i32 @bgmac_enet_probe(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %if.end278.cleanup285_crit_edge, label %if.end278.err1_crit_edge

if.end278.err1_crit_edge:                         ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end278.cleanup285_crit_edge:                   ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup285

err1:                                             ; preds = %if.end278.err1_crit_edge, %do.end110
  %err.1 = phi i32 [ -524, %do.end110 ], [ %call279, %if.end278.err1_crit_edge ]
  %mii_bus283 = getelementptr inbounds %struct.bgmac, ptr %call, i32 0, i32 6
  %156 = ptrtoint ptr %mii_bus283 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mii_bus283, align 8
  tail call void @bcma_mdio_mii_unregister(ptr noundef %157) #6
  br label %err284

err284:                                           ; preds = %err1, %cleanup, %do.end55, %do.end31, %do.end
  %err.2 = phi i32 [ -524, %do.end ], [ -19, %do.end55 ], [ %err.1, %err1 ], [ %71, %cleanup ], [ -19, %do.end31 ]
  %158 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %drvdata1.i, align 4
  br label %cleanup285

cleanup285:                                       ; preds = %err284, %if.end278.cleanup285_crit_edge, %if.end.cleanup285_crit_edge, %entry.cleanup285_crit_edge
  %retval.0 = phi i32 [ %err.2, %err284 ], [ -12, %entry.cleanup285_crit_edge ], [ %call7, %if.end.cleanup285_crit_edge ], [ 0, %if.end278.cleanup285_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgmac_remove(ptr nocapture noundef %core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %mii_bus = getelementptr inbounds %struct.bgmac, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 8
  tail call void @bcma_mdio_mii_unregister(ptr noundef %3) #6
  tail call void @bgmac_enet_remove(ptr noundef %1) #6
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %drvdata.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bgmac_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_mdio_mii_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_read(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext %offset) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_bgmac_write(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext %offset, i32 noundef %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_idm_read(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext %offset) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_bgmac_idm_write(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %awrite32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext %offset, i32 noundef %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bcma_bgmac_clk_enabled(ptr nocapture noundef readonly %bgmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %call = tail call zeroext i1 @bcma_core_is_enabled(ptr noundef %1) #6
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_bgmac_clk_enable(ptr nocapture noundef readonly %bgmac, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %call = tail call i32 @bcma_core_enable(ptr noundef %1, i32 noundef %flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_bgmac_cco_ctl_maskset(ptr nocapture noundef readonly %bgmac, i32 noundef %offset, i32 noundef %mask, i32 noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %drv_cc, i32 noundef %offset, i32 noundef %mask, i32 noundef %set) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_bgmac_get_bus_clock(ptr nocapture noundef readonly %bgmac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  %call = tail call i32 @bcma_pmu_get_bus_clock(ptr noundef %drv_cc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_bgmac_cmn_maskset32(ptr nocapture noundef readonly %bgmac, i16 noundef zeroext %offset, i32 noundef %mask, i32 noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmn = getelementptr inbounds %struct.anon.129, ptr %bgmac, i32 0, i32 1
  %0 = ptrtoint ptr %cmn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmn, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext %offset) #6
  %and.i = and i32 %call.i.i, %mask
  %or.i = or i32 %and.i, %set
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i, align 4
  tail call void %13(ptr noundef %1, i16 noundef zeroext %offset, i32 noundef %or.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_phy_connect(ptr noundef %bgmac) #2 align 64 {
entry:
  %bus_id = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_id) #6
  %0 = call ptr @memset(ptr %bus_id, i32 255, i32 64)
  %net_dev = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 4
  %1 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net_dev, align 8
  %dev = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_phy_get_and_connect(ptr noundef %2, ptr noundef %6, ptr noundef nonnull @bgmac_adjust_link) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mii_bus = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 6
  %7 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mii_bus, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %phyaddr = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 16
  %9 = ptrtoint ptr %phyaddr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phyaddr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %10)
  %cmp.not = icmp eq i8 %10, 30
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %if.then3

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then3:                                         ; preds = %land.lhs.true
  %conv = zext i8 %10 to i32
  %id = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 2
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bus_id, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef %id, i32 noundef %conv)
  %11 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev, align 8
  %call11 = call ptr @phy_connect(ptr noundef %12, ptr noundef nonnull %bus_id, ptr noundef nonnull @bgmac_adjust_link, i32 noundef 2) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.29) #9
  %15 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call18 = tail call i32 @bgmac_phy_connect_direct(ptr noundef %bgmac) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %do.end ], [ %call18, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_id) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_enet_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_mdio_mii_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bcma_core_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_chipctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_bus_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_adjust_link(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgmac_phy_connect_direct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bgmac_enet_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_bgmac_bcma__351_362_bgmac_init6, !1, !"__initcall__kmod_bgmac_bcma__351_362_bgmac_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 362, i32 1}
!2 = !{ptr @__exitcall_bgmac_exit, !3, !"__exitcall_bgmac_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 363, i32 1}
!4 = !{ptr @__UNIQUE_ID_author352, !5, !"__UNIQUE_ID_author352", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 365, i32 1}
!6 = !{ptr @__UNIQUE_ID_file353, !7, !"__UNIQUE_ID_file353", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 366, i32 1}
!8 = !{ptr @__UNIQUE_ID_license354, !7, !"__UNIQUE_ID_license354", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 339, i32 11}
!11 = !{ptr @bgmac_bcma_driver, !12, !"bgmac_bcma_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 338, i32 27}
!13 = !{ptr @bgmac_bcma_tbl, !14, !"bgmac_bcma_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 114, i32 36}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 160, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bgmac_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @bgmac_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 171, i32 3}
!25 = !{ptr @bgmac_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bgmac_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 190, i32 3}
!29 = !{ptr @bgmac_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bgmac_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 194, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bgmac_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bgmac_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 215, i32 3}
!40 = !{ptr @bgmac_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bgmac_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 222, i32 3}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bgmac_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @bgmac_probe._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 225, i32 3}
!49 = !{ptr @bgmac_probe._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bgmac_probe._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 98, i32 36}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 103, i32 4}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcma_phy_connect._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcma_phy_connect._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma.c", i32 352, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bgmac_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bgmac_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
