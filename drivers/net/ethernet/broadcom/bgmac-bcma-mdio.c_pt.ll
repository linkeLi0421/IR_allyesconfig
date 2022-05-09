; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_mdio_mii_register\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_mdio_mii_register\09\09\09\09"
module asm "\09.long\09__crc_bcma_mdio_mii_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_mdio_mii_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_mdio_mii_register\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_mdio_mii_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_mdio_mii_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_mdio_mii_unregister\09\09\09\09"
module asm "\09.long\09__crc_bcma_mdio_mii_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_mdio_mii_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_mdio_mii_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_mdio_mii_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.125, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.125 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.126, %struct.anon.127, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.126 = type { i8, i8, i8, i8 }
%struct.anon.127 = type { %struct.anon.128, %struct.anon.129 }
%struct.anon.128 = type { i8, i8, i8, i8, i8 }
%struct.anon.129 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.bgmac = type { %union.anon.121, ptr, ptr, i32, ptr, %struct.napi_struct, ptr, [4 x %struct.bgmac_dma_ring], [1 x %struct.bgmac_dma_ring], i8, [43 x i32], [31 x i32], i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bgmac_dma_ring = type { i32, i32, ptr, i32, i32, i16, i8, [512 x %struct.bgmac_slot_info] }
%struct.bgmac_slot_info = type { %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcma_mdio mii bus\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%d-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcma_mdio\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@bcma_mdio_mii_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 238, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registration of mii bus failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcma_mdio_mii_register\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_mdio_mii_register._entry_ptr = internal global ptr @bcma_mdio_mii_register._entry, section ".printk_index", align 4
@__kstrtab_bcma_mdio_mii_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_mdio_mii_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_mdio_mii_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_mdio_mii_register to i32), ptr @__kstrtab_bcma_mdio_mii_register, ptr @__kstrtabns_bcma_mdio_mii_register }, section "___ksymtab_gpl+bcma_mdio_mii_register", align 4
@__kstrtab_bcma_mdio_mii_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_mdio_mii_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_mdio_mii_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_mdio_mii_unregister to i32), ptr @__kstrtab_bcma_mdio_mii_unregister, ptr @__kstrtabns_bcma_mdio_mii_unregister }, section "___ksymtab_gpl+bcma_mdio_mii_unregister", align 4
@__UNIQUE_ID_author360 = internal constant [39 x i8] c"bgmac_bcma_mdio.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [67 x i8] c"bgmac_bcma_mdio.file=drivers/net/ethernet/broadcom/bgmac-bcma-mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [28 x i8] c"bgmac_bcma_mdio.license=GPL\00", section ".modinfo", align 1
@bcma_mdio_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 78, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Reading PHY %d register 0x%X failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcma_mdio_phy_read\00", [45 x i8] zeroinitializer }, align 32
@bcma_mdio_phy_read._entry_ptr = internal global ptr @bcma_mdio_phy_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcma_mdio_wait_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 28, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timeout waiting for reg 0x%X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcma_mdio_wait_value\00", [43 x i8] zeroinitializer }, align 32
@bcma_mdio_wait_value._entry_ptr = internal global ptr @bcma_mdio_wait_value._entry, section ".printk_index", align 4
@bcma_mdio_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 111, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error setting MDIO int\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcma_mdio_phy_write\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcma_mdio_phy_write._entry_ptr = internal global ptr @bcma_mdio_phy_write._entry, section ".printk_index", align 4
@bcma_mdio_phy_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.6, i32 123, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Writing to PHY %d register 0x%X failed\0A\00", [56 x i8] zeroinitializer }, align 32
@bcma_mdio_phy_write._entry_ptr.18 = internal global ptr @bcma_mdio_phy_write._entry.16, section ".printk_index", align 4
@bcma_mdio_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 190, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PHY reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcma_mdio_phy_reset\00", [44 x i8] zeroinitializer }, align 32
@bcma_mdio_phy_reset._entry_ptr = internal global ptr @bcma_mdio_phy_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 18249, i64 21334, i64 21335, i64 53572]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 224, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 225, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 225, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 234, i32 47 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 238, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 77, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 28, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 111, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 122, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [51 x i8] c"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 190, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__ksymtab_bcma_mdio_mii_register, ptr @__ksymtab_bcma_mdio_mii_unregister, ptr @bcma_mdio_mii_register._entry, ptr @bcma_mdio_mii_register._entry_ptr, ptr @bcma_mdio_phy_read._entry, ptr @bcma_mdio_phy_read._entry_ptr, ptr @bcma_mdio_phy_reset._entry, ptr @bcma_mdio_phy_reset._entry_ptr, ptr @bcma_mdio_phy_write._entry, ptr @bcma_mdio_phy_write._entry.16, ptr @bcma_mdio_phy_write._entry_ptr, ptr @bcma_mdio_phy_write._entry_ptr.18, ptr @bcma_mdio_wait_value._entry, ptr @bcma_mdio_wait_value._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_mii_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_wait_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_phy_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_mdio_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bcma_mdio_mii_register(ptr noundef %bgmac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %num = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 1
  %conv = zext i8 %6 to i32
  %core_unit = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %core_unit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %core_unit, align 2
  %conv2 = zext i8 %8 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %id, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv2)
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bgmac, ptr %priv, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcma_mdio_mii_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bcma_mdio_mii_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bcma_mdio_phy_reset, ptr %reset, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 4
  %phyaddr = getelementptr inbounds %struct.bgmac, ptr %bgmac, i32 0, i32 16
  %14 = ptrtoint ptr %phyaddr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %phyaddr, align 8
  %conv4 = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv4
  %neg = xor i32 %shl, -1
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %neg, ptr %phy_mask, align 8
  %of_node = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef nonnull @.str.3) #4
  %call7 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  tail call void @mdiobus_free(ptr noundef nonnull %call.i) #4
  %phi.cast = inttoptr i32 %call7 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end.cleanup_crit_edge ], [ %phi.cast, %do.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_mdio_mii_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %mii_id to i8
  %conv1 = trunc i32 %regnum to i8
  %call = tail call fastcc zeroext i16 @bcma_mdio_phy_read(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1)
  %conv2 = zext i16 %call to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_mdio_mii_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %mii_id to i8
  %conv1 = trunc i32 %regnum to i8
  %call = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i16 noundef zeroext %value)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_mdio_phy_reset(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phyaddr1 = getelementptr inbounds %struct.bgmac, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %phyaddr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phyaddr1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %3)
  %cmp = icmp eq i8 %3, 30
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 0, i16 noundef zeroext -32768)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #4
  %call3 = tail call fastcc zeroext i16 @bcma_mdio_phy_read(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call3)
  %tobool.not = icmp sgt i16 %call3, -1
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bgmac, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19) #7
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %chipinfo.i, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.end6.if.end57.i_crit_edge [
    i16 21334, label %for.body.preheader.i
    i16 21335, label %land.lhs.true.i
    i16 18249, label %land.lhs.true20.i
    i16 -11964, label %land.lhs.true30.i
  ]

if.end6.if.end57.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

for.body.preheader.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %call5.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %call6.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call7.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %call8.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %call.1.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %call5.1.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %call6.1.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call7.1.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %call8.1.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %call.2.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %call5.2.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %call6.2.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call7.2.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %call8.2.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %call.3.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %call5.3.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %call6.3.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call7.3.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %call8.3.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %call.4.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 139) #4
  %call5.4.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 21, i16 noundef zeroext 256) #4
  %call6.4.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call7.4.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 18, i16 noundef zeroext 10922) #4
  %call8.4.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end6
  %pkg.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %pkg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pkg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp14.not.i = icmp eq i8 %15, 10
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end57.i_crit_edge, label %land.lhs.true.i.if.then35.i_crit_edge

land.lhs.true.i.if.then35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

land.lhs.true.i.if.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

land.lhs.true20.i:                                ; preds = %if.end6
  %pkg21.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %pkg21.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pkg21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp23.not.i = icmp eq i8 %17, 10
  br i1 %cmp23.not.i, label %land.lhs.true20.i.if.end57.i_crit_edge, label %land.lhs.true20.i.if.then35.i_crit_edge

land.lhs.true20.i.if.then35.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

land.lhs.true20.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

land.lhs.true30.i:                                ; preds = %if.end6
  %pkg31.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %pkg31.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pkg31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %19)
  %cmp33.not.i = icmp eq i8 %19, 9
  br i1 %cmp33.not.i, label %land.lhs.true30.i.if.end57.i_crit_edge, label %land.lhs.true30.i.if.then35.i_crit_edge

land.lhs.true30.i.if.then35.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

land.lhs.true30.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i

if.then35.i:                                      ; preds = %land.lhs.true30.i.if.then35.i_crit_edge, %land.lhs.true20.i.if.then35.i_crit_edge, %land.lhs.true.i.if.then35.i_crit_edge
  %drv_cc.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 12
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %drv_cc.i, i32 noundef 2, i32 noundef 1073741823, i32 noundef 0) #4
  tail call void @bcma_chipco_chipctl_maskset(ptr noundef %drv_cc.i, i32 noundef 4, i32 noundef 2147483647, i32 noundef 0) #4
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %if.then35.i
  %i.1117.i = phi i8 [ 0, %if.then35.i ], [ %inc55.i, %for.body42.i.for.body42.i_crit_edge ]
  %call43.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call44.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 22, i16 noundef zeroext 21124) #4
  %call45.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %call46.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 23, i16 noundef zeroext 16) #4
  %call47.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 31, i16 noundef zeroext 15) #4
  %call48.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 22, i16 noundef zeroext 21142) #4
  %call49.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 23, i16 noundef zeroext 4211) #4
  %call50.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 23, i16 noundef zeroext -28557) #4
  %call51.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 22, i16 noundef zeroext 21174) #4
  %call52.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 23, i16 noundef zeroext -28045) #4
  %call53.i = tail call fastcc i32 @bcma_mdio_phy_write(ptr noundef %1, i8 noundef zeroext %i.1117.i, i8 noundef zeroext 31, i16 noundef zeroext 11) #4
  %inc55.i = add nuw nsw i8 %i.1117.i, 1
  %cmp40.i = icmp ult i8 %i.1117.i, 4
  br i1 %cmp40.i, label %for.body42.i.for.body42.i_crit_edge, label %for.body42.i.cleanup_crit_edge

for.body42.i.cleanup_crit_edge:                   ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body42.i

if.end57.i:                                       ; preds = %land.lhs.true30.i.if.end57.i_crit_edge, %land.lhs.true20.i.if.end57.i_crit_edge, %land.lhs.true.i.if.end57.i_crit_edge, %if.end6.if.end57.i_crit_edge
  %net_dev.i = getelementptr inbounds %struct.bgmac, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end57.i.cleanup_crit_edge, label %land.lhs.true58.i

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true58.i:                                ; preds = %if.end57.i
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev.i, align 16
  %tobool60.not.i = icmp eq ptr %23, null
  br i1 %tobool60.not.i, label %land.lhs.true58.i.cleanup_crit_edge, label %if.then61.i

land.lhs.true58.i.cleanup_crit_edge:              ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then61.i:                                      ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #6
  %call64.i = tail call i32 @phy_init_hw(ptr noundef nonnull %23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then61.i, %land.lhs.true58.i.cleanup_crit_edge, %if.end57.i.cleanup_crit_edge, %for.body42.i.cleanup_crit_edge, %for.body.preheader.i, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_mdio_mii_unregister(ptr noundef %mii_bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mii_bus, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mdiobus_unregister(ptr noundef nonnull %mii_bus) #4
  tail call void @mdiobus_free(ptr noundef nonnull %mii_bus) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bcma_mdio_phy_read(ptr nocapture noundef readonly %bgmac, i8 noundef zeroext %phyaddr, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %id32 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %id32 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1325, i16 %3)
  %cmp = icmp eq i16 %3, 1325
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %drv_gmac_cmn = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %drv_gmac_cmn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_gmac_cmn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %core.0 = phi ptr [ %7, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %phy_access_addr.0 = phi i16 [ 256, %if.then ], [ 384, %entry.if.end_crit_edge ]
  %phy_ctl_addr.0 = phi i16 [ 260, %if.then ], [ 392, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.0, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %13(ptr noundef %core.0, i16 noundef zeroext %phy_ctl_addr.0) #4
  %and = and i32 %call.i, -32
  %conv37 = zext i8 %phyaddr to i32
  %or = or i32 %and, %conv37
  %14 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core.0, align 8
  %ops.i75 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i75, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  tail call void %19(ptr noundef %core.0, i16 noundef zeroext %phy_ctl_addr.0, i32 noundef %or) #4
  %shl = shl nuw nsw i32 %conv37, 16
  %conv40 = zext i8 %reg to i32
  %shl41 = shl nuw i32 %conv40, 24
  %or39 = or i32 %shl41, %shl
  %or42 = or i32 %or39, 1073741824
  %20 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.0, align 8
  %ops.i76 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i76, align 4
  %write32.i77 = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i77, align 4
  tail call void %25(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0, i32 noundef %or42) #4
  %26 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.0, align 8
  %ops.i.i82 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i82, align 4
  %read32.i.i83 = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i83, align 4
  %call.i.i84 = tail call i32 %31(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0) #4
  %and.i85 = and i32 %call.i.i84, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %cmp1.i86 = icmp eq i32 %and.i85, 0
  br i1 %cmp1.i86, label %if.end.if.end50_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

for.body.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.0, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %37(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0) #4
  %and.i = and i32 %call.i.i, 1073741824
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.if.end50_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body.i.if.end50_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %i.03.i87 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #4
  %inc.i = add nuw nsw i32 %i.03.i87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end47, label %for.body.i

do.end47:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %core.0, i32 0, i32 2
  %conv.i = zext i16 %phy_access_addr.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #7
  %dev = getelementptr inbounds %struct.bcma_device, ptr %core.0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv37, i32 noundef %conv40) #7
  br label %cleanup

if.end50:                                         ; preds = %for.body.i.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %39 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core.0, align 8
  %ops.i78 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i78, align 4
  %read32.i79 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %read32.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i79, align 4
  %call.i80 = tail call i32 %44(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0) #4
  %conv53 = trunc i32 %call.i80 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47
  %retval.0 = phi i16 [ %conv53, %if.end50 ], [ -1, %do.end47 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcma_mdio_phy_write(ptr nocapture noundef readonly %bgmac, i8 noundef zeroext %phyaddr, i8 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bgmac, align 8
  %id2 = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1325, i16 %3)
  %cmp = icmp eq i16 %3, 1325
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %drv_gmac_cmn = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %drv_gmac_cmn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_gmac_cmn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %core.0 = phi ptr [ %7, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %phy_access_addr.0 = phi i16 [ 256, %if.then ], [ 384, %entry.if.end_crit_edge ]
  %phy_ctl_addr.0 = phi i16 [ 260, %if.then ], [ 392, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.0, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %13(ptr noundef %core.0, i16 noundef zeroext %phy_ctl_addr.0) #4
  %and = and i32 %call.i, -32
  %conv7 = zext i8 %phyaddr to i32
  %or = or i32 %and, %conv7
  %14 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core.0, align 8
  %ops.i55 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i55, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  tail call void %19(ptr noundef %core.0, i16 noundef zeroext %phy_ctl_addr.0, i32 noundef %or) #4
  %20 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bgmac, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i56 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i56, align 4
  %write32.i57 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write32.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i57, align 4
  tail call void %27(ptr noundef %21, i16 noundef zeroext 32, i32 noundef 16) #4
  %28 = ptrtoint ptr %bgmac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bgmac, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i58 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i58, align 4
  %read32.i59 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i59, align 4
  %call.i60 = tail call i32 %35(ptr noundef %29, i16 noundef zeroext 32) #4
  %and11 = and i32 %call.i60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.bcma_device, ptr %core.0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %shl = shl nuw nsw i32 %conv7, 16
  %conv17 = zext i8 %reg to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or16 = or i32 %shl18, %shl
  %conv20 = zext i16 %value to i32
  %or19 = or i32 %or16, %conv20
  %or21 = or i32 %or19, 1610612736
  %36 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core.0, align 8
  %ops.i61 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i61, align 4
  %write32.i62 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write32.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i62, align 4
  tail call void %41(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0, i32 noundef %or21) #4
  %42 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core.0, align 8
  %ops.i.i64 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i64, align 4
  %read32.i.i65 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i65, align 4
  %call.i.i66 = tail call i32 %47(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0) #4
  %and.i67 = and i32 %call.i.i66, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %cmp1.i68 = icmp eq i32 %and.i67, 0
  br i1 %cmp1.i68, label %if.end13.cleanup_crit_edge, label %if.end13.if.end.i_crit_edge

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  br label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i
  %48 = ptrtoint ptr %core.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core.0, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %53(ptr noundef %core.0, i16 noundef zeroext %phy_access_addr.0) #4
  %and.i = and i32 %call.i.i, 1073741824
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.end13.if.end.i_crit_edge
  %i.03.i69 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %if.end13.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #4
  %inc.i = add nuw nsw i32 %i.03.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end26, label %for.body.i

do.end26:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %core.0, i32 0, i32 2
  %conv.i = zext i16 %phy_access_addr.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #7
  %dev27 = getelementptr inbounds %struct.bcma_device, ptr %core.0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.17, i32 noundef %conv7, i32 noundef %conv17) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %for.body.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end26 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_chipctl_maskset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 224, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 225, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 225, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 234, i32 47}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 238, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bcma_mdio_mii_register._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @bcma_mdio_mii_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_bcma_mdio_mii_register, !17, !"__ksymtab_bcma_mdio_mii_register", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 249, i32 1}
!18 = !{ptr @__ksymtab_bcma_mdio_mii_unregister, !19, !"__ksymtab_bcma_mdio_mii_unregister", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 259, i32 1}
!20 = !{ptr @__UNIQUE_ID_author360, !21, !"__UNIQUE_ID_author360", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 261, i32 1}
!22 = !{ptr @__UNIQUE_ID_file361, !23, !"__UNIQUE_ID_file361", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 262, i32 1}
!24 = !{ptr @__UNIQUE_ID_license362, !23, !"__UNIQUE_ID_license362", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 77, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcma_mdio_phy_read._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcma_mdio_phy_read._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 28, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bcma_mdio_wait_value._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcma_mdio_wait_value._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 111, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcma_mdio_phy_write._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcma_mdio_phy_write._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 122, i32 3}
!43 = !{ptr @bcma_mdio_phy_write._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcma_mdio_phy_write._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/broadcom/bgmac-bcma-mdio.c", i32 190, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bcma_mdio_phy_reset._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @bcma_mdio_phy_reset._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
