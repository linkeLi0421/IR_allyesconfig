; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fman_set_mac_active_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_fman_set_mac_active_pause\09\09\09\09"
module asm "\09.long\09__crc_fman_set_mac_active_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fman_set_mac_active_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22fman_set_mac_active_pause\22\09\09\09\09\09"
module asm "__kstrtabns_fman_set_mac_active_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fman_get_pause_cfg\22, \22a\22\09"
module asm "\09.weak\09__crc_fman_get_pause_cfg\09\09\09\09"
module asm "\09.long\09__crc_fman_get_pause_cfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fman_get_pause_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22fman_get_pause_cfg\22\09\09\09\09\09"
module asm "__kstrtabns_fman_get_pause_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mac_device = type { ptr, [6 x i8], [2 x ptr], i32, ptr, i32, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dpaa_eth_data = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mac_priv_s = type { ptr, ptr, i8, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, ptr, ptr }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.fman_mac_params = type { ptr, [6 x i8], i8, i32, i16, ptr, ptr, ptr, ptr, i8, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mac_address = type { [6 x i8], %struct.list_head }

@__UNIQUE_ID_file349 = internal constant [67 x i8] c"fsl_dpaa_mac.file=drivers/net/ethernet/freescale/fman/fsl_dpaa_mac\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [34 x i8] c"fsl_dpaa_mac.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [55 x i8] c"fsl_dpaa_mac.description=FSL FMan MAC API based driver\00", section ".modinfo", align 1
@__kstrtab_fman_set_mac_active_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_fman_set_mac_active_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_fman_set_mac_active_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fman_set_mac_active_pause to i32), ptr @__kstrtab_fman_set_mac_active_pause, ptr @__kstrtabns_fman_set_mac_active_pause }, section "___ksymtab+fman_set_mac_active_pause", align 4
@__kstrtab_fman_get_pause_cfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_fman_get_pause_cfg = external dso_local constant [0 x i8], align 1
@__ksymtab_fman_get_pause_cfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fman_get_pause_cfg to i32), ptr @__kstrtab_fman_get_pause_cfg, ptr @__kstrtabns_fman_get_pause_cfg }, section "___ksymtab+fman_get_pause_cfg", align 4
@__initcall__kmod_fsl_dpaa_mac__353_893_mac_driver_init6 = internal global ptr @mac_driver_init, section ".initcall6.init", align 4
@mac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mac_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_dpaa_mac\00", [19 x i8] zeroinitializer }, align 32
@mac_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-dtsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-xgec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-memac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,fman-dtsec\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tbi-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,fman-xgec\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,fman-memac\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcsphy-handle\00", [18 x i8] zeroinitializer }, align 32
@mac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 654, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MAC node (%pOF) contains unsupported MAC\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mac_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/freescale/fman/mac.c\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr = internal global ptr @mac_probe._entry, section ".printk_index", align 4
@mac_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 665, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"of_get_parent(%pOF) failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.13 = internal global ptr @mac_probe._entry.11, section ".printk_index", align 4
@mac_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 672, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"of_find_device_by_node(%pOF) failed\0A\00", [59 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.16 = internal global ptr @mac_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@mac_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 680, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read cell-index for %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.20 = internal global ptr @mac_probe._entry.18, section ".printk_index", align 4
@mac_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 689, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fman_bind(%pOF) failed\0A\00", [40 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.23 = internal global ptr @mac_probe._entry.21, section ".printk_index", align 4
@mac_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 700, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_address_to_resource(%pOF) = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.26 = internal global ptr @mac_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@mac_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.8, i32 709, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"__devm_request_mem_region(mac) failed\0A\00", [57 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.30 = internal global ptr @mac_probe._entry.28, section ".printk_index", align 4
@mac_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.8, i32 717, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_ioremap() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.33 = internal global ptr @mac_probe._entry.31, section ".printk_index", align 4
@mac_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 730, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.35 = internal global ptr @mac_probe._entry.34, section ".printk_index", align 4
@mac_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.8, i32 739, ptr @.str.38, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"of_get_mac_address(%pOF) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.39 = internal global ptr @mac_probe._entry.36, section ".printk_index", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,fman-ports\00", [17 x i8] zeroinitializer }, align 32
@mac_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.7, ptr @.str.8, i32 745, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"of_count_phandle_with_args(%pOF, fsl,fman-ports) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.43 = internal global ptr @mac_probe._entry.41, section ".printk_index", align 4
@mac_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.7, ptr @.str.8, i32 752, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Not supported number of fman-ports handles of mac node %pOF from device tree\0A\00", [50 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.46 = internal global ptr @mac_probe._entry.44, section ".printk_index", align 4
@mac_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.7, ptr @.str.8, i32 762, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"of_parse_phandle(%pOF, fsl,fman-ports) failed\0A\00", [49 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.49 = internal global ptr @mac_probe._entry.47, section ".printk_index", align 4
@mac_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 770, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.51 = internal global ptr @mac_probe._entry.50, section ".printk_index", align 4
@mac_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.7, ptr @.str.8, i32 778, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev_get_drvdata(%pOF) failed\0A\00", [34 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.54 = internal global ptr @mac_probe._entry.52, section ".printk_index", align 4
@mac_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.7, ptr @.str.8, i32 790, ptr @.str.38, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"of_get_phy_mode() for %pOF failed. Defaulting to SGMII\0A\00", [40 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.57 = internal global ptr @mac_probe._entry.55, section ".printk_index", align 4
@phy2speed = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 0, i16 0, i16 100, i16 1000, i16 1000, i16 1000, i16 0, i16 100, i16 0, i16 1000, i16 1000, i16 1000, i16 1000, i16 1000, i16 0, i16 10000, i16 0, i16 0, i16 1000], [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@mac_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.7, ptr @.str.8, i32 846, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mac_dev->init() = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.61 = internal global ptr @mac_probe._entry.59, section ".printk_index", align 4
@mac_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.7, ptr @.str.8, i32 863, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fman_set_mac_active_pause() = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.64 = internal global ptr @mac_probe._entry.62, section ".printk_index", align 4
@mac_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.7, ptr @.str.8, i32 866, ptr @.str.67, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FMan MAC address: %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.68 = internal global ptr @mac_probe._entry.65, section ".printk_index", align 4
@mac_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.7, ptr @.str.8, i32 871, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to add Ethernet platform device for MAC %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mac_probe._entry_ptr.71 = internal global ptr @mac_probe._entry.69, section ".printk_index", align 4
@dtsec_initialization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.8, i32 211, ptr @.str.67, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FMan dTSEC version: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dtsec_initialization\00", [43 x i8] zeroinitializer }, align 32
@dtsec_initialization._entry_ptr = internal global ptr @dtsec_initialization._entry, section ".printk_index", align 4
@mac_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.8, i32 90, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"10G MAC got RX FIFO Error = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mac_exception\00", [18 x i8] zeroinitializer }, align 32
@mac_exception._entry_ptr = internal global ptr @mac_exception._entry, section ".printk_index", align 4
@mac_exception.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.8, ptr @.str.76, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:%s() -> %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mac.c\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adjust_link_dtsec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.78, ptr @.str.8, i32 450, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adjust_link_dtsec\00", [46 x i8] zeroinitializer }, align 32
@adjust_link_dtsec._entry_ptr = internal global ptr @adjust_link_dtsec._entry, section ".printk_index", align 4
@tgec_initialization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.8, i32 159, ptr @.str.67, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FMan XGEC version: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tgec_initialization\00", [44 x i8] zeroinitializer }, align 32
@tgec_initialization._entry_ptr = internal global ptr @tgec_initialization._entry, section ".printk_index", align 4
@memac_initialization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.8, i32 259, ptr @.str.67, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FMan MEMAC\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"memac_initialization\00", [43 x i8] zeroinitializer }, align 32
@memac_initialization._entry_ptr = internal global ptr @memac_initialization._entry, section ".printk_index", align 4
@adjust_link_memac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.83, ptr @.str.8, i32 467, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adjust_link_memac\00", [46 x i8] zeroinitializer }, align 32
@adjust_link_memac._entry_ptr = internal global ptr @adjust_link_memac._entry, section ".printk_index", align 4
@dpaa_eth_add_device.dpaa_eth_dev_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@eth_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @eth_lock, i64 52), ptr getelementptr (i8, ptr @eth_lock, i64 52) }, ptr @eth_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.86, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpaa-ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eth_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_lock\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"mac_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 885, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 887, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"mac_match\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 603, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 642, i32 40 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 645, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 646, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 648, i32 47 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 651, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 653, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 664, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 672, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 678, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 680, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 689, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 699, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 707, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 709, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 717, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 730, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 739, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 742, i32 45 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 744, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 751, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 761, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 769, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 777, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 788, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [10 x i8] c"phy2speed\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 543, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 812, i32 49 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 846, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 863, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 866, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 870, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 211, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 90, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 93, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 449, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 159, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 259, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 466, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"dpaa_eth_dev_cnt\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 564, i32 13 }
@___asan_gen_.315 = private unnamed_addr constant [9 x i8] c"eth_lock\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 574, i32 31 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [45 x i8] c"../drivers/net/ethernet/freescale/fman/mac.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 541, i32 8 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__initcall__kmod_fsl_dpaa_mac__353_893_mac_driver_init6, ptr @__ksymtab_fman_get_pause_cfg, ptr @__ksymtab_fman_set_mac_active_pause, ptr @adjust_link_dtsec._entry, ptr @adjust_link_dtsec._entry_ptr, ptr @adjust_link_memac._entry, ptr @adjust_link_memac._entry_ptr, ptr @dtsec_initialization._entry, ptr @dtsec_initialization._entry_ptr, ptr @mac_exception._entry, ptr @mac_exception._entry_ptr, ptr @mac_probe._entry, ptr @mac_probe._entry.11, ptr @mac_probe._entry.14, ptr @mac_probe._entry.18, ptr @mac_probe._entry.21, ptr @mac_probe._entry.24, ptr @mac_probe._entry.28, ptr @mac_probe._entry.31, ptr @mac_probe._entry.34, ptr @mac_probe._entry.36, ptr @mac_probe._entry.41, ptr @mac_probe._entry.44, ptr @mac_probe._entry.47, ptr @mac_probe._entry.50, ptr @mac_probe._entry.52, ptr @mac_probe._entry.55, ptr @mac_probe._entry.59, ptr @mac_probe._entry.62, ptr @mac_probe._entry.65, ptr @mac_probe._entry.69, ptr @mac_probe._entry_ptr, ptr @mac_probe._entry_ptr.13, ptr @mac_probe._entry_ptr.16, ptr @mac_probe._entry_ptr.20, ptr @mac_probe._entry_ptr.23, ptr @mac_probe._entry_ptr.26, ptr @mac_probe._entry_ptr.30, ptr @mac_probe._entry_ptr.33, ptr @mac_probe._entry_ptr.35, ptr @mac_probe._entry_ptr.39, ptr @mac_probe._entry_ptr.43, ptr @mac_probe._entry_ptr.46, ptr @mac_probe._entry_ptr.49, ptr @mac_probe._entry_ptr.51, ptr @mac_probe._entry_ptr.54, ptr @mac_probe._entry_ptr.57, ptr @mac_probe._entry_ptr.61, ptr @mac_probe._entry_ptr.64, ptr @mac_probe._entry_ptr.68, ptr @mac_probe._entry_ptr.71, ptr @memac_initialization._entry, ptr @memac_initialization._entry_ptr, ptr @tgec_initialization._entry, ptr @tgec_initialization._entry_ptr, ptr @mac_driver, ptr @.str, ptr @mac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.53, ptr @.str.56, ptr @phy2speed, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt, ptr @eth_lock, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy2speed to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_initialization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjust_link_dtsec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_initialization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_initialization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjust_link_memac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fman_set_mac_active_pause(ptr nocapture noundef %mac_dev, i1 noundef zeroext %rx, i1 noundef zeroext %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %rx to i8
  %frombool1 = zext i1 %tx to i8
  %fman_mac2 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %0 = ptrtoint ptr %fman_mac2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fman_mac2, align 4
  %rx_pause_active = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 10
  %2 = ptrtoint ptr %rx_pause_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_pause_active, align 1, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp.not = icmp eq i8 %3, %frombool
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %set_rx_pause = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 23
  %4 = ptrtoint ptr %set_rx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_rx_pause, align 4
  %call = tail call i32 %5(ptr noundef %1, i1 noundef zeroext %rx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then11, label %if.then.if.end15_crit_edge, !prof !171

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rx_pause_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %rx_pause_active, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %err.0 = phi i32 [ 0, %if.then11 ], [ %call, %if.then.if.end15_crit_edge ], [ 0, %entry.if.end15_crit_edge ]
  %tx_pause_active = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 11
  %7 = ptrtoint ptr %tx_pause_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_pause_active, align 4, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %frombool1)
  %cmp20.not = icmp eq i8 %8, %frombool1
  br i1 %cmp20.not, label %if.end15.if.end40_crit_edge, label %if.then22

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then22:                                        ; preds = %if.end15
  %conv25 = select i1 %tx, i16 -4096, i16 0
  %set_tx_pause = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 24
  %9 = ptrtoint ptr %set_tx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_tx_pause, align 4
  %call26 = tail call i32 %10(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv25, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then35, label %if.then22.if.end40_crit_edge, !prof !171

if.then22.if.end40_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %tx_pause_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool1, ptr %tx_pause_active, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then22.if.end40_crit_edge, %if.end15.if.end40_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end15.if.end40_crit_edge ], [ 0, %if.then35 ], [ %call26, %if.then22.if.end40_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fman_get_pause_cfg(ptr nocapture noundef readonly %mac_dev, ptr nocapture noundef writeonly %rx_pause, ptr nocapture noundef writeonly %tx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 4
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 4
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tx_pause, align 1
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rx_pause, align 1
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg_pause = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 7
  %6 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg_pause, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pause_req = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 8
  %8 = ptrtoint ptr %rx_pause_req to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_pause_req, align 1, !range !170
  %10 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rx_pause, align 1
  %tx_pause_req = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 9
  %11 = ptrtoint ptr %tx_pause_req to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_pause_req, align 2, !range !170
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %advertising, align 4
  %15 = lshr i32 %14, 3
  %16 = and i32 %15, 1024
  %17 = load volatile i32, ptr %advertising, align 4
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 2048
  %20 = or i32 %19, %16
  %conv = trunc i32 %20 to i16
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool8.not, i16 0, i16 1024
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %asym_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not = icmp eq i32 %24, 0
  %25 = or i16 %spec.select, 2048
  %rmt_adv.1 = select i1 %tobool13.not, i16 %spec.select, i16 %25
  %and25.i = and i16 %rmt_adv.1, %conv
  %and.i = zext i16 %and25.i to i32
  %and2.i = and i32 %and.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end7.if.then22_crit_edge

if.end7.if.then22_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.else.i:                                        ; preds = %if.end7
  %and6.i = and i32 %and.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.cleanup_crit_edge, label %if.then8.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.else.i
  %26 = and i16 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool11.not.i = icmp eq i16 %26, 0
  br i1 %tobool11.not.i, label %mii_resolve_flowctrl_fdx.exit, label %if.then8.i.if.then22_crit_edge

if.then8.i.if.then22_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

mii_resolve_flowctrl_fdx.exit:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = lshr exact i16 %rmt_adv.1, 10
  %28 = and i16 %27, 1
  %29 = zext i16 %28 to i32
  br label %if.end23

if.then22:                                        ; preds = %if.then8.i.if.then22_crit_edge, %if.end7.if.then22_crit_edge
  %cap.0.i.ph = phi i32 [ 2, %if.then8.i.if.then22_crit_edge ], [ 3, %if.end7.if.then22_crit_edge ]
  %30 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %rx_pause, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %mii_resolve_flowctrl_fdx.exit
  %conv2050 = phi i32 [ %cap.0.i.ph, %if.then22 ], [ %29, %mii_resolve_flowctrl_fdx.exit ]
  %and25 = and i32 %conv2050, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %if.then3
  %.sink = phi i8 [ %12, %if.then3 ], [ 1, %if.end23.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %tx_pause, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mac_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_probe(ptr noundef %_of_dev) #0 align 64 {
entry:
  %data.i = alloca %struct.dpaa_eth_data, align 4
  %args.i469 = alloca %struct.of_phandle_args, align 4
  %args.i463 = alloca %struct.of_phandle_args, align 4
  %args.i453 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  %val = alloca i32, align 4
  %phy_if = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_if) #8
  %3 = ptrtoint ptr %phy_if to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phy_if, align 4, !annotation !172
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %_of_dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %_of_dev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup253_crit_edge, label %if.end

entry.cleanup253_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup253

if.end:                                           ; preds = %entry
  %call.i417 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i417, null
  br i1 %tobool3.not, label %if.end.cleanup253_crit_edge, label %if.end5

if.end.cleanup253_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup253

if.end5:                                          ; preds = %if.end
  %priv6 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 29
  %6 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i417, ptr %priv6, align 4
  %7 = ptrtoint ptr %call.i417 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i417, align 4
  %call8 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end5
  %init.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dtsec_initialization, ptr %init.i, align 4
  %set_promisc.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 18
  %9 = ptrtoint ptr %set_promisc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dtsec_set_promiscuous, ptr %set_promisc.i, align 4
  %change_addr.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %change_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dtsec_modify_mac_address, ptr %change_addr.i, align 4
  %add_hash_mac_addr.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 26
  %11 = ptrtoint ptr %add_hash_mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dtsec_add_hash_mac_address, ptr %add_hash_mac_addr.i, align 4
  %remove_hash_mac_addr.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 27
  %12 = ptrtoint ptr %remove_hash_mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dtsec_del_hash_mac_address, ptr %remove_hash_mac_addr.i, align 4
  %set_tx_pause.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 24
  %13 = ptrtoint ptr %set_tx_pause.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dtsec_set_tx_pause_frames, ptr %set_tx_pause.i, align 4
  %set_rx_pause.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 23
  %14 = ptrtoint ptr %set_rx_pause.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dtsec_accept_rx_pause_frames, ptr %set_rx_pause.i, align 4
  %set_exception.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 25
  %15 = ptrtoint ptr %set_exception.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dtsec_set_exception, ptr %set_exception.i, align 4
  %set_allmulti.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %set_allmulti.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dtsec_set_allmulti, ptr %set_allmulti.i, align 4
  %set_tstamp.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 21
  %17 = ptrtoint ptr %set_tstamp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dtsec_set_tstamp, ptr %set_tstamp.i, align 4
  %set_multi.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 22
  %18 = ptrtoint ptr %set_multi.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @set_multi, ptr %set_multi.i, align 4
  %start.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 15
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 16
  %20 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @stop, ptr %stop.i, align 4
  %adjust_link.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 17
  %21 = ptrtoint ptr %adjust_link.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @adjust_link_dtsec, ptr %adjust_link.i, align 4
  %22 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv6, align 4
  %enable.i = getelementptr inbounds %struct.mac_priv_s, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dtsec_enable, ptr %enable.i, align 4
  %25 = load ptr, ptr %priv6, align 4
  %disable.i = getelementptr inbounds %struct.mac_priv_s, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dtsec_disable, ptr %disable.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %27 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i418 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418)
  %tobool.not.i = icmp eq i32 %call.i418, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.of_parse_phandle.exit_crit_edge

if.then10.of_parse_phandle.exit_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then10.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ null, %if.then10.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %internal_phy_node = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 4
  %30 = ptrtoint ptr %internal_phy_node to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i, ptr %internal_phy_node, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end5
  %call12 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %init.i419 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %init.i419 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tgec_initialization, ptr %init.i419, align 4
  %set_promisc.i420 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %set_promisc.i420 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @tgec_set_promiscuous, ptr %set_promisc.i420, align 4
  %change_addr.i421 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %change_addr.i421 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tgec_modify_mac_address, ptr %change_addr.i421, align 4
  %add_hash_mac_addr.i422 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 26
  %34 = ptrtoint ptr %add_hash_mac_addr.i422 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tgec_add_hash_mac_address, ptr %add_hash_mac_addr.i422, align 4
  %remove_hash_mac_addr.i423 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 27
  %35 = ptrtoint ptr %remove_hash_mac_addr.i423 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tgec_del_hash_mac_address, ptr %remove_hash_mac_addr.i423, align 4
  %set_tx_pause.i424 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 24
  %36 = ptrtoint ptr %set_tx_pause.i424 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @tgec_set_tx_pause_frames, ptr %set_tx_pause.i424, align 4
  %set_rx_pause.i425 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 23
  %37 = ptrtoint ptr %set_rx_pause.i425 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @tgec_accept_rx_pause_frames, ptr %set_rx_pause.i425, align 4
  %set_exception.i426 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 25
  %38 = ptrtoint ptr %set_exception.i426 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tgec_set_exception, ptr %set_exception.i426, align 4
  %set_allmulti.i427 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 20
  %39 = ptrtoint ptr %set_allmulti.i427 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tgec_set_allmulti, ptr %set_allmulti.i427, align 4
  %set_tstamp.i428 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 21
  %40 = ptrtoint ptr %set_tstamp.i428 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tgec_set_tstamp, ptr %set_tstamp.i428, align 4
  %set_multi.i429 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 22
  %41 = ptrtoint ptr %set_multi.i429 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @set_multi, ptr %set_multi.i429, align 4
  %start.i430 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 15
  %42 = ptrtoint ptr %start.i430 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @start, ptr %start.i430, align 4
  %stop.i431 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 16
  %43 = ptrtoint ptr %stop.i431 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @stop, ptr %stop.i431, align 4
  %adjust_link.i432 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 17
  %44 = ptrtoint ptr %adjust_link.i432 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @adjust_link_void, ptr %adjust_link.i432, align 4
  %45 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv6, align 4
  %enable.i434 = getelementptr inbounds %struct.mac_priv_s, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %enable.i434 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @tgec_enable, ptr %enable.i434, align 4
  %48 = load ptr, ptr %priv6, align 4
  %disable.i435 = getelementptr inbounds %struct.mac_priv_s, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %disable.i435 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @tgec_disable, ptr %disable.i435, align 4
  br label %if.end24

if.else15:                                        ; preds = %if.else
  %call16 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end, label %if.then18

if.then18:                                        ; preds = %if.else15
  %init.i436 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 14
  %50 = ptrtoint ptr %init.i436 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @memac_initialization, ptr %init.i436, align 4
  %set_promisc.i437 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 18
  %51 = ptrtoint ptr %set_promisc.i437 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @memac_set_promiscuous, ptr %set_promisc.i437, align 4
  %change_addr.i438 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 19
  %52 = ptrtoint ptr %change_addr.i438 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @memac_modify_mac_address, ptr %change_addr.i438, align 4
  %add_hash_mac_addr.i439 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 26
  %53 = ptrtoint ptr %add_hash_mac_addr.i439 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @memac_add_hash_mac_address, ptr %add_hash_mac_addr.i439, align 4
  %remove_hash_mac_addr.i440 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 27
  %54 = ptrtoint ptr %remove_hash_mac_addr.i440 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @memac_del_hash_mac_address, ptr %remove_hash_mac_addr.i440, align 4
  %set_tx_pause.i441 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 24
  %55 = ptrtoint ptr %set_tx_pause.i441 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @memac_set_tx_pause_frames, ptr %set_tx_pause.i441, align 4
  %set_rx_pause.i442 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 23
  %56 = ptrtoint ptr %set_rx_pause.i442 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @memac_accept_rx_pause_frames, ptr %set_rx_pause.i442, align 4
  %set_exception.i443 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 25
  %57 = ptrtoint ptr %set_exception.i443 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @memac_set_exception, ptr %set_exception.i443, align 4
  %set_allmulti.i444 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 20
  %58 = ptrtoint ptr %set_allmulti.i444 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @memac_set_allmulti, ptr %set_allmulti.i444, align 4
  %set_tstamp.i445 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 21
  %59 = ptrtoint ptr %set_tstamp.i445 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @memac_set_tstamp, ptr %set_tstamp.i445, align 4
  %set_multi.i446 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 22
  %60 = ptrtoint ptr %set_multi.i446 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @set_multi, ptr %set_multi.i446, align 4
  %start.i447 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 15
  %61 = ptrtoint ptr %start.i447 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @start, ptr %start.i447, align 4
  %stop.i448 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 16
  %62 = ptrtoint ptr %stop.i448 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @stop, ptr %stop.i448, align 4
  %adjust_link.i449 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 17
  %63 = ptrtoint ptr %adjust_link.i449 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @adjust_link_memac, ptr %adjust_link.i449, align 4
  %64 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv6, align 4
  %enable.i451 = getelementptr inbounds %struct.mac_priv_s, ptr %65, i32 0, i32 10
  %66 = ptrtoint ptr %enable.i451 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @memac_enable, ptr %enable.i451, align 4
  %67 = load ptr, ptr %priv6, align 4
  %disable.i452 = getelementptr inbounds %struct.mac_priv_s, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %disable.i452 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @memac_disable, ptr %disable.i452, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i453) #8
  %69 = call ptr @memset(ptr %args.i453, i32 255, i32 72)
  %call.i454 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i453) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i454)
  %tobool.not.i455 = icmp eq i32 %call.i454, 0
  br i1 %tobool.not.i455, label %if.end.i456, label %if.then18.of_parse_phandle.exit458_crit_edge

if.then18.of_parse_phandle.exit458_crit_edge:     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit458

if.end.i456:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %args.i453 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %args.i453, align 4
  br label %of_parse_phandle.exit458

of_parse_phandle.exit458:                         ; preds = %if.end.i456, %if.then18.of_parse_phandle.exit458_crit_edge
  %retval.0.i457 = phi ptr [ %71, %if.end.i456 ], [ null, %if.then18.of_parse_phandle.exit458_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i453) #8
  %internal_phy_node20 = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 4
  %72 = ptrtoint ptr %internal_phy_node20 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %retval.0.i457, ptr %internal_phy_node20, align 4
  br label %if.end24

do.end:                                           ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %5) #11
  br label %cleanup253

if.end24:                                         ; preds = %of_parse_phandle.exit458, %if.then14, %of_parse_phandle.exit
  %mc_addr_list = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 5
  %73 = ptrtoint ptr %mc_addr_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %mc_addr_list, ptr %mc_addr_list, align 4
  %prev.i = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %mc_addr_list, ptr %prev.i, align 4
  %call25 = call ptr @of_get_parent(ptr noundef %5) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %5) #11
  br label %_return_of_get_parent

if.end31:                                         ; preds = %if.end24
  %call32 = call ptr @of_find_device_by_node(ptr noundef nonnull %call25) #8
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %call25) #11
  br label %_return_of_node_put

if.end38:                                         ; preds = %if.end31
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call25, ptr noundef nonnull @.str.17, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool40.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull %call25) #11
  br label %_return_of_node_put

if.end45:                                         ; preds = %if.end38
  %75 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val, align 4
  %conv = add i32 %76, 1
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %call32, i32 0, i32 3
  %call47 = call ptr @fman_bind(ptr noundef %dev46) #8
  %fman = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 3
  %77 = ptrtoint ptr %fman to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call47, ptr %fman, align 4
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %do.end53, label %if.end54

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull %call25) #11
  br label %_return_of_node_put

if.end54:                                         ; preds = %if.end45
  call void @of_node_put(ptr noundef nonnull %call25) #8
  %call55 = call i32 @of_address_to_resource(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %do.end60, label %if.end61

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %5, i32 noundef %call55) #11
  br label %_return_of_get_parent

if.end61:                                         ; preds = %if.end54
  %78 = ptrtoint ptr %fman to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fman, align 4
  %call63 = call ptr @fman_get_mem_region(ptr noundef %79) #8
  %80 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %res, align 4
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %81
  %add.i = add i32 %sub.i, %83
  %call65 = call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef %call63, i32 noundef %81, i32 noundef %add.i, ptr noundef nonnull @.str.27) #8
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call65, ptr %call.i, align 4
  %tobool68.not = icmp eq ptr %call65, null
  br i1 %tobool68.not, label %do.end72, label %if.end73

do.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #11
  br label %_return_of_get_parent

if.end73:                                         ; preds = %if.end61
  %85 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call65, align 4
  %end.i459 = getelementptr inbounds %struct.resource, ptr %call65, i32 0, i32 1
  %87 = ptrtoint ptr %end.i459 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %end.i459, align 4
  %sub.i460 = sub i32 1, %86
  %add.i461 = add i32 %sub.i460, %88
  %call78 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %86, i32 noundef %add.i461) #8
  %vaddr = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 1
  %89 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call78, ptr %vaddr, align 4
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %do.end84, label %if.end85

do.end84:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  br label %_return_of_get_parent

if.end85:                                         ; preds = %if.end73
  %call86 = call zeroext i1 @of_device_is_available(ptr noundef %5) #8
  br i1 %call86, label %if.end88, label %if.end85._return_of_get_parent_crit_edge

if.end85._return_of_get_parent_crit_edge:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_of_get_parent

if.end88:                                         ; preds = %if.end85
  %call.i.i462 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i462)
  %tobool90.not = icmp sgt i32 %call.i.i462, -1
  br i1 %tobool90.not, label %if.end95, label %do.end94

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %5) #11
  br label %_return_of_get_parent

if.end95:                                         ; preds = %if.end88
  %90 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val, align 4
  %conv96 = trunc i32 %91 to i8
  %cell_index = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 2
  %92 = ptrtoint ptr %cell_index to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv96, ptr %cell_index, align 4
  %addr = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 1
  %call97 = call i32 @of_get_mac_address(ptr noundef %5, ptr noundef %addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end95.if.end103_crit_edge, label %do.end102

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef %5) #11
  br label %if.end103

if.end103:                                        ; preds = %do.end102, %if.end95.if.end103_crit_edge
  %call104 = call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end112, label %if.end113, !prof !173

do.end112:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef %5) #11
  br label %_return_of_get_parent

if.end113:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call104)
  %cmp114.not = icmp eq i32 %call104, 2
  br i1 %cmp114.not, label %for.body.preheader, label %do.end119

for.body.preheader:                               ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i463) #8
  %93 = call ptr @memset(ptr %args.i463, i32 255, i32 72)
  %call.i464 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i463) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464)
  %tobool.not.i465 = icmp eq i32 %call.i464, 0
  br i1 %tobool.not.i465, label %of_parse_phandle.exit468, label %for.body.preheader.of_parse_phandle.exit468.thread_crit_edge

for.body.preheader.of_parse_phandle.exit468.thread_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit468.thread

do.end119:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef %5) #11
  br label %_return_of_get_parent

of_parse_phandle.exit468.thread:                  ; preds = %if.end146.of_parse_phandle.exit468.thread_crit_edge, %for.body.preheader.of_parse_phandle.exit468.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i463) #8
  br label %do.end128

of_parse_phandle.exit468:                         ; preds = %for.body.preheader
  %94 = ptrtoint ptr %args.i463 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %args.i463, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i463) #8
  %tobool124.not = icmp eq ptr %95, null
  br i1 %tobool124.not, label %of_parse_phandle.exit468.do.end128_crit_edge, label %if.end129

of_parse_phandle.exit468.do.end128_crit_edge:     ; preds = %of_parse_phandle.exit468
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

do.end128:                                        ; preds = %of_parse_phandle.exit468.1.do.end128_crit_edge, %of_parse_phandle.exit468.do.end128_crit_edge, %of_parse_phandle.exit468.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef %5) #11
  br label %_return_of_node_put

if.end129:                                        ; preds = %of_parse_phandle.exit468
  %call130 = call ptr @of_find_device_by_node(ptr noundef nonnull %95) #8
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.end129.do.end135_crit_edge, label %if.end136

if.end129.do.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end135

do.end135:                                        ; preds = %if.end129.1.do.end135_crit_edge, %if.end129.do.end135_crit_edge
  %.lcssa501 = phi ptr [ %95, %if.end129.do.end135_crit_edge ], [ %99, %if.end129.1.do.end135_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %.lcssa501) #11
  br label %_return_of_node_put

if.end136:                                        ; preds = %if.end129
  %dev137 = getelementptr inbounds %struct.platform_device, ptr %call130, i32 0, i32 3
  %call138 = call ptr @fman_port_bind(ptr noundef %dev137) #8
  %arrayidx = getelementptr %struct.mac_device, ptr %call.i, i32 0, i32 2, i32 0
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call138, ptr %arrayidx, align 4
  %tobool141.not = icmp eq ptr %call138, null
  br i1 %tobool141.not, label %if.end136.do.end145_crit_edge, label %if.end146

if.end136.do.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end145

do.end145:                                        ; preds = %if.end136.1.do.end145_crit_edge, %if.end136.do.end145_crit_edge
  %.lcssa502 = phi ptr [ %95, %if.end136.do.end145_crit_edge ], [ %99, %if.end136.1.do.end145_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull %.lcssa502) #11
  br label %_return_of_node_put

if.end146:                                        ; preds = %if.end136
  call void @of_node_put(ptr noundef nonnull %95) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i463) #8
  %97 = call ptr @memset(ptr %args.i463, i32 255, i32 72)
  %call.i464.1 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i463) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464.1)
  %tobool.not.i465.1 = icmp eq i32 %call.i464.1, 0
  br i1 %tobool.not.i465.1, label %of_parse_phandle.exit468.1, label %if.end146.of_parse_phandle.exit468.thread_crit_edge

if.end146.of_parse_phandle.exit468.thread_crit_edge: ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit468.thread

of_parse_phandle.exit468.1:                       ; preds = %if.end146
  %98 = ptrtoint ptr %args.i463 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %args.i463, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i463) #8
  %tobool124.not.1 = icmp eq ptr %99, null
  br i1 %tobool124.not.1, label %of_parse_phandle.exit468.1.do.end128_crit_edge, label %if.end129.1

of_parse_phandle.exit468.1.do.end128_crit_edge:   ; preds = %of_parse_phandle.exit468.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end128

if.end129.1:                                      ; preds = %of_parse_phandle.exit468.1
  %call130.1 = call ptr @of_find_device_by_node(ptr noundef nonnull %99) #8
  %tobool131.not.1 = icmp eq ptr %call130.1, null
  br i1 %tobool131.not.1, label %if.end129.1.do.end135_crit_edge, label %if.end136.1

if.end129.1.do.end135_crit_edge:                  ; preds = %if.end129.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end135

if.end136.1:                                      ; preds = %if.end129.1
  %dev137.1 = getelementptr inbounds %struct.platform_device, ptr %call130.1, i32 0, i32 3
  %call138.1 = call ptr @fman_port_bind(ptr noundef %dev137.1) #8
  %arrayidx.1 = getelementptr %struct.mac_device, ptr %call.i, i32 0, i32 2, i32 1
  %100 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call138.1, ptr %arrayidx.1, align 4
  %tobool141.not.1 = icmp eq ptr %call138.1, null
  br i1 %tobool141.not.1, label %if.end136.1.do.end145_crit_edge, label %if.end146.1

if.end136.1.do.end145_crit_edge:                  ; preds = %if.end136.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end145

if.end146.1:                                      ; preds = %if.end136.1
  call void @of_node_put(ptr noundef nonnull %99) #8
  %call147 = call i32 @of_get_phy_mode(ptr noundef %5, ptr noundef nonnull %phy_if) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end146.1.if.end153_crit_edge, label %do.end152

if.end146.1.if.end153_crit_edge:                  ; preds = %if.end146.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

do.end152:                                        ; preds = %if.end146.1
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.56, ptr noundef %5) #11
  %101 = ptrtoint ptr %phy_if to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %phy_if, align 4
  br label %if.end153

if.end153:                                        ; preds = %do.end152, %if.end146.1.if.end153_crit_edge
  %102 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %phy_if, align 4
  %phy_if154 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 5
  %104 = ptrtoint ptr %phy_if154 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %phy_if154, align 4
  %arrayidx156 = getelementptr [19 x i16], ptr @phy2speed, i32 0, i32 %103
  %105 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx156, align 2
  %speed = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 8
  %107 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %speed, align 4
  %max_speed = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 9
  %108 = ptrtoint ptr %max_speed to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %106, ptr %max_speed, align 2
  %if_support = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp159 = icmp eq i32 %103, 4
  %spec.store.select = select i1 %cmp159, i32 26186, i32 26191
  %109 = and i32 %103, 2147483647
  %110 = lshr i32 278072, %109
  %111 = shl nuw nsw i32 %110, 5
  %112 = and i32 %111, 32
  %113 = or i32 %112, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %103)
  %cmp172 = icmp eq i32 %103, 15
  %spec.store.select496 = select i1 %cmp172, i32 4096, i32 %113
  %114 = ptrtoint ptr %if_support to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.store.select496, ptr %if_support, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i469) #8
  %115 = call ptr @memset(ptr %args.i469, i32 255, i32 72)
  %call.i470 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i469) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i470)
  %tobool.not.i471 = icmp eq i32 %call.i470, 0
  br i1 %tobool.not.i471, label %of_parse_phandle.exit474, label %of_parse_phandle.exit474.thread

of_parse_phandle.exit474.thread:                  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i469) #8
  %phy_node487 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 6
  %116 = ptrtoint ptr %phy_node487 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %phy_node487, align 4
  br label %land.lhs.true

of_parse_phandle.exit474:                         ; preds = %if.end153
  %117 = ptrtoint ptr %args.i469 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %args.i469, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i469) #8
  %phy_node = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 6
  %119 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %phy_node, align 4
  %tobool179.not = icmp eq ptr %118, null
  br i1 %tobool179.not, label %of_parse_phandle.exit474.land.lhs.true_crit_edge, label %of_parse_phandle.exit474.if.end212_crit_edge

of_parse_phandle.exit474.if.end212_crit_edge:     ; preds = %of_parse_phandle.exit474
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

of_parse_phandle.exit474.land.lhs.true_crit_edge: ; preds = %of_parse_phandle.exit474
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %of_parse_phandle.exit474.land.lhs.true_crit_edge, %of_parse_phandle.exit474.thread
  %phy_node490 = phi ptr [ %phy_node487, %of_parse_phandle.exit474.thread ], [ %phy_node, %of_parse_phandle.exit474.land.lhs.true_crit_edge ]
  %call180 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %5) #8
  br i1 %call180, label %if.then182, label %land.lhs.true.if.end212_crit_edge

land.lhs.true.if.end212_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then182:                                       ; preds = %land.lhs.true
  %call183 = call i32 @of_phy_register_fixed_link(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.then182._return_of_get_parent_crit_edge

if.then182._return_of_get_parent_crit_edge:       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_of_get_parent

if.end186:                                        ; preds = %if.then182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3520, i32 noundef 20) #12
  %fixed_link = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 7
  %121 = ptrtoint ptr %fixed_link to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i, ptr %fixed_link, align 4
  %tobool189.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool189.not, label %if.end186._return_of_get_parent_crit_edge, label %if.end191

if.end186._return_of_get_parent_crit_edge:        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_of_get_parent

if.end191:                                        ; preds = %if.end186
  %call192 = call ptr @of_node_get(ptr noundef %5) #8
  %122 = ptrtoint ptr %phy_node490 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call192, ptr %phy_node490, align 4
  %call195 = call ptr @of_phy_find_device(ptr noundef %call192) #8
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %if.then197, label %cleanup

if.then197:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %phy_node490 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %phy_node490, align 4
  call void @of_node_put(ptr noundef %124) #8
  br label %_return_of_get_parent

cleanup:                                          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %link = getelementptr inbounds %struct.phy_device, ptr %call195, i32 0, i32 4
  %125 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %126 = ptrtoint ptr %fixed_link to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fixed_link, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %bf.cast, ptr %127, align 4
  %speed202 = getelementptr inbounds %struct.phy_device, ptr %call195, i32 0, i32 8
  %129 = ptrtoint ptr %speed202 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %speed202, align 8
  %131 = load ptr, ptr %fixed_link, align 4
  %speed204 = getelementptr inbounds %struct.fixed_phy_status, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %speed204 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %130, ptr %speed204, align 4
  %duplex = getelementptr inbounds %struct.phy_device, ptr %call195, i32 0, i32 9
  %133 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %duplex, align 4
  %135 = load ptr, ptr %fixed_link, align 4
  %duplex206 = getelementptr inbounds %struct.fixed_phy_status, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %duplex206 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %134, ptr %duplex206, align 4
  %pause = getelementptr inbounds %struct.phy_device, ptr %call195, i32 0, i32 11
  %137 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pause, align 4
  %139 = load ptr, ptr %fixed_link, align 4
  %pause208 = getelementptr inbounds %struct.fixed_phy_status, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %pause208 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %138, ptr %pause208, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %call195, i32 0, i32 12
  %141 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %asym_pause, align 8
  %143 = load ptr, ptr %fixed_link, align 4
  %asym_pause210 = getelementptr inbounds %struct.fixed_phy_status, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %asym_pause210 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %142, ptr %asym_pause210, align 4
  call void @put_device(ptr noundef nonnull %call195) #8
  br label %if.end212

if.end212:                                        ; preds = %cleanup, %land.lhs.true.if.end212_crit_edge, %of_parse_phandle.exit474.if.end212_crit_edge
  %phy_node489 = phi ptr [ %phy_node490, %cleanup ], [ %phy_node490, %land.lhs.true.if.end212_crit_edge ], [ %phy_node, %of_parse_phandle.exit474.if.end212_crit_edge ]
  %init = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 14
  %145 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init, align 4
  %call213 = call i32 %146(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %do.end219, label %if.then.i

do.end219:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %call213) #11
  %147 = ptrtoint ptr %phy_node489 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phy_node489, align 4
  call void @of_node_put(ptr noundef %148) #8
  br label %_return_of_get_parent

if.then.i:                                        ; preds = %if.end212
  %autoneg_pause = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 7
  %149 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %autoneg_pause, align 4
  %rx_pause_req = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 8
  %150 = ptrtoint ptr %rx_pause_req to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %rx_pause_req, align 1
  %tx_pause_req = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 9
  %151 = ptrtoint ptr %tx_pause_req to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %tx_pause_req, align 2
  %rx_pause_active = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 10
  %152 = ptrtoint ptr %rx_pause_active to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %rx_pause_active, align 1
  %tx_pause_active = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 11
  %153 = ptrtoint ptr %tx_pause_active to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %tx_pause_active, align 4
  %fman_mac2.i = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 28
  %154 = ptrtoint ptr %fman_mac2.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fman_mac2.i, align 4
  %set_rx_pause.i475 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 23
  %156 = ptrtoint ptr %set_rx_pause.i475 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %set_rx_pause.i475, align 4
  %call.i476 = call i32 %157(ptr noundef %155, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i476)
  %cmp7.i = icmp eq i32 %call.i476, 0
  br i1 %cmp7.i, label %if.then11.i, label %if.then.i.if.end15.i_crit_edge, !prof !171

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %rx_pause_active to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %rx_pause_active, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then.i.if.end15.i_crit_edge
  %159 = ptrtoint ptr %tx_pause_active to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %tx_pause_active, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %160)
  %cmp20.not.i = icmp eq i8 %160, 1
  br i1 %cmp20.not.i, label %if.end15.i.fman_set_mac_active_pause.exit_crit_edge, label %if.then22.i

if.end15.i.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

if.then22.i:                                      ; preds = %if.end15.i
  %set_tx_pause.i477 = getelementptr inbounds %struct.mac_device, ptr %call.i, i32 0, i32 24
  %161 = ptrtoint ptr %set_tx_pause.i477 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %set_tx_pause.i477, align 4
  %call26.i = call i32 %162(ptr noundef %155, i8 noundef zeroext 0, i16 noundef zeroext -4096, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %fman_set_mac_active_pause.exit.thread, label %if.then22.i.fman_set_mac_active_pause.exit_crit_edge, !prof !171

if.then22.i.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

fman_set_mac_active_pause.exit.thread:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %tx_pause_active to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %tx_pause_active, align 4
  br label %if.end229

fman_set_mac_active_pause.exit:                   ; preds = %if.then22.i.fman_set_mac_active_pause.exit_crit_edge, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge
  %err.1.i = phi i32 [ %call.i476, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge ], [ %call26.i, %if.then22.i.fman_set_mac_active_pause.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp223 = icmp slt i32 %err.1.i, 0
  br i1 %cmp223, label %do.end228, label %fman_set_mac_active_pause.exit.if.end229_crit_edge

fman_set_mac_active_pause.exit.if.end229_crit_edge: ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

do.end228:                                        ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %err.1.i) #11
  br label %if.end229

if.end229:                                        ; preds = %do.end228, %fman_set_mac_active_pause.exit.if.end229_crit_edge, %fman_set_mac_active_pause.exit.thread
  %err.1.i495 = phi i32 [ 0, %fman_set_mac_active_pause.exit.thread ], [ %err.1.i, %do.end228 ], [ %err.1.i, %fman_set_mac_active_pause.exit.if.end229_crit_edge ]
  %164 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.mac_device, ptr %call.i, i32 0, i32 1, i32 4
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %167 to i32
  %or.i = or i32 %165, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end229.if.end239_crit_edge, label %do.end236

if.end229.if.end239_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

do.end236:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.66, ptr noundef %addr) #11
  br label %if.end239

if.end239:                                        ; preds = %do.end236, %if.end229.if.end239_crit_edge
  %conv240 = and i32 %conv, 255
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #8
  %168 = getelementptr inbounds %struct.dpaa_eth_data, ptr %data.i, i32 0, i32 1
  %169 = getelementptr inbounds %struct.dpaa_eth_data, ptr %data.i, i32 0, i32 2
  %170 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %priv6, align 4
  %172 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i, ptr %data.i, align 4
  %cell_index.i = getelementptr inbounds %struct.mac_priv_s, ptr %171, i32 0, i32 2
  %173 = ptrtoint ptr %cell_index.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %cell_index.i, align 4
  %conv.i478 = zext i8 %174 to i32
  %175 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv.i478, ptr %168, align 4
  %176 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %conv240, ptr %169, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @eth_lock, i32 noundef 0) #8
  %177 = load i32, ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  %call.i479 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.84, i32 noundef %177) #8
  %tobool.not.i480 = icmp eq ptr %call.i479, null
  br i1 %tobool.not.i480, label %if.end239.no_mem.i_crit_edge, label %if.end.i481

if.end239.no_mem.i_crit_edge:                     ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem.i

if.end.i481:                                      ; preds = %if.end239
  %178 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %171, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %call.i479, i32 0, i32 3, i32 1
  %180 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %parent.i, align 8
  %call4.i = call i32 @platform_device_add_data(ptr noundef nonnull %call.i479, ptr noundef nonnull %data.i, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i481.err.i_crit_edge

if.end.i481.err.i_crit_edge:                      ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end7.i:                                        ; preds = %if.end.i481
  %call8.i = call i32 @platform_device_add(ptr noundef nonnull %call.i479) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.err.i_crit_edge

if.end7.i.err.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = load i32, ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  %inc.i = add i32 %181, 1
  store i32 %inc.i, ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  call void @mutex_unlock(ptr noundef nonnull @eth_lock) #8
  br label %dpaa_eth_add_device.exit

err.i:                                            ; preds = %if.end7.i.err.i_crit_edge, %if.end.i481.err.i_crit_edge
  %ret.0.i = phi i32 [ %call4.i, %if.end.i481.err.i_crit_edge ], [ %call8.i, %if.end7.i.err.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call.i479) #8
  br label %no_mem.i

no_mem.i:                                         ; preds = %err.i, %if.end239.no_mem.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err.i ], [ -12, %if.end239.no_mem.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @eth_lock) #8
  %182 = inttoptr i32 %ret.1.i to ptr
  br label %dpaa_eth_add_device.exit

dpaa_eth_add_device.exit:                         ; preds = %no_mem.i, %if.end11.i
  %retval.0.i482 = phi ptr [ %182, %no_mem.i ], [ %call.i479, %if.end11.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #8
  %eth_dev = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 6
  %183 = ptrtoint ptr %eth_dev to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %retval.0.i482, ptr %eth_dev, align 4
  %cmp.i483 = icmp ugt ptr %retval.0.i482, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i483, label %do.end247, label %dpaa_eth_add_device.exit.cleanup253_crit_edge

dpaa_eth_add_device.exit.cleanup253_crit_edge:    ; preds = %dpaa_eth_add_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup253

do.end247:                                        ; preds = %dpaa_eth_add_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %cell_index to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %cell_index, align 4
  %conv249 = zext i8 %185 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %conv249) #11
  %186 = ptrtoint ptr %eth_dev to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %eth_dev, align 4
  br label %cleanup253

_return_of_node_put:                              ; preds = %do.end145, %do.end135, %do.end128, %do.end53, %do.end44, %do.end37
  %err.1 = phi i32 [ -22, %do.end44 ], [ -22, %do.end145 ], [ -22, %do.end135 ], [ -22, %do.end128 ], [ -19, %do.end53 ], [ -22, %do.end37 ]
  %dev_node.0 = phi ptr [ %call25, %do.end44 ], [ %.lcssa502, %do.end145 ], [ %.lcssa501, %do.end135 ], [ null, %do.end128 ], [ %call25, %do.end53 ], [ %call25, %do.end37 ]
  call void @of_node_put(ptr noundef %dev_node.0) #8
  br label %_return_of_get_parent

_return_of_get_parent:                            ; preds = %_return_of_node_put, %do.end219, %if.then197, %if.end186._return_of_get_parent_crit_edge, %if.then182._return_of_get_parent_crit_edge, %do.end119, %do.end112, %do.end94, %if.end85._return_of_get_parent_crit_edge, %do.end84, %do.end72, %do.end60, %do.end30
  %err.2 = phi i32 [ %err.1, %_return_of_node_put ], [ %call55, %do.end60 ], [ -22, %do.end94 ], [ %call104, %do.end112 ], [ -22, %do.end119 ], [ %call213, %do.end219 ], [ -5, %do.end84 ], [ -16, %do.end72 ], [ -22, %do.end30 ], [ -19, %if.end85._return_of_get_parent_crit_edge ], [ -12, %if.end186._return_of_get_parent_crit_edge ], [ %call183, %if.then182._return_of_get_parent_crit_edge ], [ -22, %if.then197 ]
  %fixed_link252 = getelementptr inbounds %struct.mac_priv_s, ptr %call.i417, i32 0, i32 7
  %187 = ptrtoint ptr %fixed_link252 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %fixed_link252, align 4
  call void @kfree(ptr noundef %188) #8
  br label %cleanup253

cleanup253:                                       ; preds = %_return_of_get_parent, %do.end247, %dpaa_eth_add_device.exit.cleanup253_crit_edge, %do.end, %if.end.cleanup253_crit_edge, %entry.cleanup253_crit_edge
  %retval.0 = phi i32 [ %err.2, %_return_of_get_parent ], [ %err.1.i495, %do.end247 ], [ %err.1.i495, %dpaa_eth_add_device.exit.cleanup253_crit_edge ], [ -22, %do.end ], [ -12, %entry.cleanup253_crit_edge ], [ -12, %if.end.cleanup253_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_if) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fman_bind(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fman_get_mem_region(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fman_port_bind(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtsec_initialization(ptr noundef %mac_dev) #0 align 64 {
entry:
  %params = alloca %struct.fman_mac_params, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #8
  %0 = getelementptr inbounds i8, ptr %params, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !172
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %10
  %add.i.i = add i32 %sub.i.i, %12
  %call3.i = tail call ptr @devm_ioremap(ptr noundef %6, i32 noundef %10, i32 noundef %add.i.i) #8
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.i, ptr %params, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %entry._return_crit_edge, label %if.end

entry._return_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end:                                           ; preds = %entry
  %addr.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %addr5.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %addr.i, ptr %addr5.i, i32 6)
  %max_speed.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 9
  %15 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_speed.i, align 2
  %max_speed6.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %17 = ptrtoint ptr %max_speed6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %max_speed6.i, align 4
  %phy_if.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 5
  %18 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_if.i, align 4
  %phy_if7.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 3
  %20 = ptrtoint ptr %phy_if7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phy_if7.i, align 4
  %basex_if.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 9
  %21 = ptrtoint ptr %basex_if.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %basex_if.i, align 4
  %cell_index.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %cell_index.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cell_index.i, align 4
  %mac_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %24 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mac_id.i, align 2
  %fman.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %fman.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fman.i, align 4
  %fm.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %27 = ptrtoint ptr %fm.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fm.i, align 4
  %exception_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %28 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mac_exception, ptr %exception_cb.i, align 4
  %event_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %29 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mac_exception, ptr %event_cb.i, align 4
  %dev_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %30 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mac_dev, ptr %dev_id.i, align 4
  %internal_phy_node.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 4
  %31 = ptrtoint ptr %internal_phy_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %internal_phy_node.i, align 4
  %internal_phy_node8.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 10
  %33 = ptrtoint ptr %internal_phy_node8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %internal_phy_node8.i, align 4
  %call2 = call ptr @dtsec_config(ptr noundef nonnull %params) #8
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %34 = ptrtoint ptr %fman_mac to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2, ptr %fman_mac, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end._return_crit_edge, label %if.end6

if.end._return_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end6:                                          ; preds = %if.end
  %call8 = call zeroext i16 @fman_get_max_frm() #8
  %call9 = call i32 @dtsec_cfg_max_frame_len(ptr noundef nonnull %call2, i16 noundef zeroext %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end6._return_fm_mac_free_crit_edge, label %if.end11

if.end6._return_fm_mac_free_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end11:                                         ; preds = %if.end6
  %35 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fman_mac, align 4
  %call13 = call i32 @dtsec_cfg_pad_and_crc(ptr noundef %36, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11._return_fm_mac_free_crit_edge, label %if.end16

if.end11._return_fm_mac_free_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end16:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fman_mac, align 4
  %call18 = call i32 @dtsec_init(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16._return_fm_mac_free_crit_edge, label %if.end21

if.end16._return_fm_mac_free_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end21:                                         ; preds = %if.end16
  %set_exception = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 25
  %39 = ptrtoint ptr %set_exception to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_exception, align 4
  %41 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fman_mac, align 4
  %call23 = call i32 %40(ptr noundef %42, i32 noundef 33, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21._return_fm_mac_free_crit_edge, label %if.end26

if.end21._return_fm_mac_free_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end26:                                         ; preds = %if.end21
  %43 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fman_mac, align 4
  %call28 = call i32 @dtsec_get_version(ptr noundef %44, ptr noundef nonnull %version) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26._return_fm_mac_free_crit_edge, label %do.end

if.end26._return_fm_mac_free_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 4
  %47 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %version, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.72, i32 noundef %48) #11
  br label %_return

_return_fm_mac_free:                              ; preds = %if.end26._return_fm_mac_free_crit_edge, %if.end21._return_fm_mac_free_crit_edge, %if.end16._return_fm_mac_free_crit_edge, %if.end11._return_fm_mac_free_crit_edge, %if.end6._return_fm_mac_free_crit_edge
  %err.0 = phi i32 [ %call9, %if.end6._return_fm_mac_free_crit_edge ], [ %call13, %if.end11._return_fm_mac_free_crit_edge ], [ %call18, %if.end16._return_fm_mac_free_crit_edge ], [ %call23, %if.end21._return_fm_mac_free_crit_edge ], [ %call28, %if.end26._return_fm_mac_free_crit_edge ]
  %49 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fman_mac, align 4
  %call33 = call i32 @dtsec_free(ptr noundef %50) #8
  br label %_return

_return:                                          ; preds = %_return_fm_mac_free, %do.end, %if.end._return_crit_edge, %entry._return_crit_edge
  %err.1 = phi i32 [ %err.0, %_return_fm_mac_free ], [ %call28, %do.end ], [ -22, %if.end._return_crit_edge ], [ -12, %entry._return_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_set_promiscuous(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_modify_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_add_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_del_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_set_tx_pause_frames(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_accept_rx_pause_frames(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_set_exception(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_set_allmulti(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_set_tstamp(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_multi(ptr noundef readonly %net_dev, ptr nocapture noundef readonly %mac_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mc_addr_list = getelementptr inbounds %struct.mac_priv_s, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mc_addr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_addr_list, align 4
  %cmp.not85 = icmp eq ptr %3, %mc_addr_list
  br i1 %cmp.not85, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %remove_hash_mac_addr = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 27
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in86 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn89, %list_del.exit.for.body_crit_edge ]
  %old_addr.088 = getelementptr i8, ptr %.pn.in86, i32 -8
  %4 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn89 = load ptr, ptr %.pn.in86, align 4
  %5 = ptrtoint ptr %remove_hash_mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove_hash_mac_addr, align 4
  %7 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fman_mac, align 4
  %call = tail call i32 %6(ptr noundef %8, ptr noundef %old_addr.088) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in86) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in86, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in86 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in86, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in86, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %old_addr.088) #8
  %cmp.not = icmp eq ptr %.pn89, %mc_addr_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mc = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 66
  %17 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.090 = load ptr, ptr %mc, align 4
  %cmp26.not91 = icmp eq ptr %ha.090, %mc
  br i1 %cmp26.not91, label %for.end.cleanup_crit_edge, label %for.body28.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body28.lr.ph:                                 ; preds = %for.end
  %add_hash_mac_addr = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 26
  %fman_mac31 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  br label %for.body28

for.body28:                                       ; preds = %list_add.exit.for.body28_crit_edge, %for.body28.lr.ph
  %ha.092 = phi ptr [ %ha.090, %for.body28.lr.ph ], [ %ha.0, %list_add.exit.for.body28_crit_edge ]
  %addr29 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.092, i32 0, i32 2
  %18 = ptrtoint ptr %add_hash_mac_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add_hash_mac_addr, align 4
  %20 = ptrtoint ptr %fman_mac31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fman_mac31, align 4
  %call32 = tail call i32 %19(ptr noundef %21, ptr noundef %addr29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %for.body28.cleanup_crit_edge, label %if.end35

for.body28.cleanup_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %for.body28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2592, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end35.cleanup_crit_edge, label %if.end38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  %23 = ptrtoint ptr %addr29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr29, align 4
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call7.i, align 8
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.092, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 4
  %list43 = getelementptr inbounds %struct.mac_address, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %mc_addr_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc_addr_list, align 4
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %list43, ptr noundef %mc_addr_list, ptr noundef %30) #8
  br i1 %call.i.i80, label %if.end.i.i81, label %if.end38.list_add.exit_crit_edge

if.end38.list_add.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i81:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list43, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %list43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %list43, align 8
  %prev3.i.i = getelementptr inbounds %struct.mac_address, ptr %call7.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mc_addr_list, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %mc_addr_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list43, ptr %mc_addr_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i81, %if.end38.list_add.exit_crit_edge
  %35 = ptrtoint ptr %ha.092 to i32
  call void @__asan_load4_noabort(i32 %35)
  %ha.0 = load ptr, ptr %ha.092, align 4
  %cmp26.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp26.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body28_crit_edge

list_add.exit.for.body28_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %for.body28.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %call32, %for.body28.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start(ptr nocapture noundef readonly %mac_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 4
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 4
  %priv2 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %enable = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %6 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fman_mac, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_start(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop(ptr nocapture noundef readonly %mac_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %phy_dev = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 4
  %2 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_stop(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disable = getelementptr inbounds %struct.mac_priv_s, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %6 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fman_mac, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef 3) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adjust_link_dtsec(ptr nocapture noundef %mac_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 4
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 4
  %fman_mac2 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %2 = ptrtoint ptr %fman_mac2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fman_mac2, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dtsec_restart_autoneg(ptr noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  %conv = trunc i32 %7 to i16
  %call3 = tail call i32 @dtsec_adjust_link(ptr noundef %3, i16 noundef zeroext %conv) #8
  %8 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_dev1, align 4
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.fman_get_pause_cfg.exit_crit_edge, label %if.end.i

if.end.fman_get_pause_cfg.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

if.end.i:                                         ; preds = %if.end
  %autoneg_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 7
  %12 = ptrtoint ptr %autoneg_pause.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %autoneg_pause.i, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pause_req.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 8
  %14 = ptrtoint ptr %rx_pause_req.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_pause_req.i, align 1, !range !170
  %tx_pause_req.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 9
  %16 = ptrtoint ptr %tx_pause_req.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_pause_req.i, align 2, !range !170
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %advertising.i = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 17
  %18 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %advertising.i, align 4
  %20 = lshr i32 %19, 3
  %21 = and i32 %20, 1024
  %22 = load volatile i32, ptr %advertising.i, align 4
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 2048
  %25 = or i32 %24, %21
  %conv.i = trunc i32 %25 to i16
  %pause.i = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 11
  %26 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp eq i32 %27, 0
  %spec.select.i = select i1 %tobool8.not.i, i16 0, i16 1024
  %asym_pause.i = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 12
  %28 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asym_pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.i = icmp eq i32 %29, 0
  %30 = or i16 %spec.select.i, 2048
  %rmt_adv.1.i = select i1 %tobool13.not.i, i16 %spec.select.i, i16 %30
  %and25.i.i = and i16 %rmt_adv.1.i, %conv.i
  %and.i.i = zext i16 %and25.i.i to i32
  %and2.i.i = and i32 %and.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end7.i.cleanup.sink.split.i_crit_edge

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i.i:                                      ; preds = %if.end7.i
  %and6.i.i = and i32 %and.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.fman_get_pause_cfg.exit_crit_edge, label %if.then8.i.i

if.else.i.i.fman_get_pause_cfg.exit_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

if.then8.i.i:                                     ; preds = %if.else.i.i
  %31 = and i16 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool11.not.i.i = icmp ne i16 %31, 0
  %brmerge = select i1 %tobool11.not.i.i, i1 true, i1 %tobool8.not.i
  %.lobit = lshr exact i16 %31, 10
  %32 = trunc i16 %.lobit to i8
  br i1 %brmerge, label %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge, label %if.then8.i.i.cleanup.sink.split.i_crit_edge

if.then8.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then8.i.i.fman_get_pause_cfg.exit_crit_edge:   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

cleanup.sink.split.i:                             ; preds = %if.then8.i.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.then3.i
  %rx_pause.1 = phi i8 [ %15, %if.then3.i ], [ 1, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.then8.i.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ %17, %if.then3.i ], [ 1, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.then8.i.i.cleanup.sink.split.i_crit_edge ]
  br label %fman_get_pause_cfg.exit

fman_get_pause_cfg.exit:                          ; preds = %cleanup.sink.split.i, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge, %if.end.fman_get_pause_cfg.exit_crit_edge
  %rx_pause.2 = phi i8 [ 0, %if.end.fman_get_pause_cfg.exit_crit_edge ], [ %rx_pause.1, %cleanup.sink.split.i ], [ 0, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge ], [ %32, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge ]
  %tx_pause.0 = phi i8 [ 0, %if.end.fman_get_pause_cfg.exit_crit_edge ], [ %.sink.i, %cleanup.sink.split.i ], [ 0, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge ], [ 0, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_pause.2)
  %tobool4 = icmp ne i8 %rx_pause.2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause.0)
  %tobool5 = icmp ne i8 %tx_pause.0, 0
  %frombool.i = zext i1 %tobool4 to i8
  %frombool1.i = zext i1 %tobool5 to i8
  %33 = ptrtoint ptr %fman_mac2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fman_mac2, align 4
  %rx_pause_active.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 10
  %35 = ptrtoint ptr %rx_pause_active.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_pause_active.i, align 1, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %frombool.i)
  %cmp.not.i = icmp eq i8 %36, %frombool.i
  br i1 %cmp.not.i, label %fman_get_pause_cfg.exit.if.end15.i_crit_edge, label %if.then.i

fman_get_pause_cfg.exit.if.end15.i_crit_edge:     ; preds = %fman_get_pause_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %fman_get_pause_cfg.exit
  %set_rx_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 23
  %37 = ptrtoint ptr %set_rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_rx_pause.i, align 4
  %call.i = tail call i32 %38(ptr noundef %34, i1 noundef zeroext %tobool4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.i, label %if.then11.i, label %if.then.i.if.end15.i_crit_edge, !prof !171

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %rx_pause_active.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool.i, ptr %rx_pause_active.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then.i.if.end15.i_crit_edge, %fman_get_pause_cfg.exit.if.end15.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.then11.i ], [ %call.i, %if.then.i.if.end15.i_crit_edge ], [ 0, %fman_get_pause_cfg.exit.if.end15.i_crit_edge ]
  %tx_pause_active.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 11
  %40 = ptrtoint ptr %tx_pause_active.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_pause_active.i, align 4, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %frombool1.i)
  %cmp20.not.i = icmp eq i8 %41, %frombool1.i
  br i1 %cmp20.not.i, label %if.end15.i.fman_set_mac_active_pause.exit_crit_edge, label %if.then22.i21

if.end15.i.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

if.then22.i21:                                    ; preds = %if.end15.i
  %conv25.i = select i1 %tobool5, i16 -4096, i16 0
  %set_tx_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 24
  %42 = ptrtoint ptr %set_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_tx_pause.i, align 4
  %call26.i = tail call i32 %43(ptr noundef %34, i8 noundef zeroext 0, i16 noundef zeroext %conv25.i, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %fman_set_mac_active_pause.exit.thread, label %if.then22.i21.fman_set_mac_active_pause.exit_crit_edge, !prof !171

if.then22.i21.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.then22.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

fman_set_mac_active_pause.exit.thread:            ; preds = %if.then22.i21
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %tx_pause_active.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool1.i, ptr %tx_pause_active.i, align 4
  br label %cleanup

fman_set_mac_active_pause.exit:                   ; preds = %if.then22.i21.fman_set_mac_active_pause.exit_crit_edge, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge ], [ %call26.i, %if.then22.i21.fman_set_mac_active_pause.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp = icmp slt i32 %err.1.i, 0
  br i1 %cmp, label %do.end, label %fman_set_mac_active_pause.exit.cleanup_crit_edge

fman_set_mac_active_pause.exit.cleanup_crit_edge: ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  %priv = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.63, i32 noundef %err.1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fman_set_mac_active_pause.exit.cleanup_crit_edge, %fman_set_mac_active_pause.exit.thread, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_enable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_disable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dtsec_config(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_cfg_max_frame_len(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fman_get_max_frm() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_cfg_pad_and_crc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_get_version(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mac_exception(ptr nocapture noundef readonly %handle, i32 noundef %ex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %handle, i32 0, i32 29
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ex)
  %cmp = icmp eq i32 %ex, 8
  br i1 %cmp, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %set_exception = getelementptr inbounds %struct.mac_device, ptr %handle, i32 0, i32 25
  %2 = ptrtoint ptr %set_exception to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_exception, align 4
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %handle, i32 0, i32 28
  %4 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fman_mac, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef 8, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.74, i32 noundef 8) #11
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_exception.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_exception, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !174

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mac_exception.__UNIQUE_ID_ddebug352, ptr noundef %9, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %ex) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_restart_autoneg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtsec_adjust_link(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tgec_initialization(ptr noundef %mac_dev) #0 align 64 {
entry:
  %params = alloca %struct.fman_mac_params, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #8
  %0 = getelementptr inbounds i8, ptr %params, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %version, align 4, !annotation !172
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %10
  %add.i.i = add i32 %sub.i.i, %12
  %call3.i = tail call ptr @devm_ioremap(ptr noundef %6, i32 noundef %10, i32 noundef %add.i.i) #8
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.i, ptr %params, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %entry._return_crit_edge, label %if.end

entry._return_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end:                                           ; preds = %entry
  %addr.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %addr5.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %addr.i, ptr %addr5.i, i32 6)
  %max_speed.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 9
  %15 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_speed.i, align 2
  %max_speed6.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %17 = ptrtoint ptr %max_speed6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %max_speed6.i, align 4
  %phy_if.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 5
  %18 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_if.i, align 4
  %phy_if7.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 3
  %20 = ptrtoint ptr %phy_if7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phy_if7.i, align 4
  %basex_if.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 9
  %21 = ptrtoint ptr %basex_if.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %basex_if.i, align 4
  %cell_index.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %cell_index.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cell_index.i, align 4
  %mac_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %24 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mac_id.i, align 2
  %fman.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %fman.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fman.i, align 4
  %fm.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %27 = ptrtoint ptr %fm.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %fm.i, align 4
  %exception_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %28 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mac_exception, ptr %exception_cb.i, align 4
  %event_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %29 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mac_exception, ptr %event_cb.i, align 4
  %dev_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %30 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mac_dev, ptr %dev_id.i, align 4
  %internal_phy_node.i = getelementptr inbounds %struct.mac_priv_s, ptr %4, i32 0, i32 4
  %31 = ptrtoint ptr %internal_phy_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %internal_phy_node.i, align 4
  %internal_phy_node8.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 10
  %33 = ptrtoint ptr %internal_phy_node8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %internal_phy_node8.i, align 4
  %call2 = call ptr @tgec_config(ptr noundef nonnull %params) #8
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %34 = ptrtoint ptr %fman_mac to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2, ptr %fman_mac, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end._return_crit_edge, label %if.end6

if.end._return_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end6:                                          ; preds = %if.end
  %call8 = call zeroext i16 @fman_get_max_frm() #8
  %call9 = call i32 @tgec_cfg_max_frame_len(ptr noundef nonnull %call2, i16 noundef zeroext %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end6._return_fm_mac_free_crit_edge, label %if.end11

if.end6._return_fm_mac_free_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end11:                                         ; preds = %if.end6
  %35 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fman_mac, align 4
  %call13 = call i32 @tgec_init(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11._return_fm_mac_free_crit_edge, label %if.end16

if.end11._return_fm_mac_free_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end16:                                         ; preds = %if.end11
  %set_exception = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 25
  %37 = ptrtoint ptr %set_exception to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_exception, align 4
  %39 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fman_mac, align 4
  %call18 = call i32 %38(ptr noundef %40, i32 noundef 4, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16._return_fm_mac_free_crit_edge, label %if.end21

if.end16._return_fm_mac_free_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end21:                                         ; preds = %if.end16
  %41 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fman_mac, align 4
  %call23 = call i32 @tgec_get_version(ptr noundef %42, ptr noundef nonnull %version) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21._return_fm_mac_free_crit_edge, label %do.end

if.end21._return_fm_mac_free_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %45 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.79, i32 noundef %46) #11
  br label %_return

_return_fm_mac_free:                              ; preds = %if.end21._return_fm_mac_free_crit_edge, %if.end16._return_fm_mac_free_crit_edge, %if.end11._return_fm_mac_free_crit_edge, %if.end6._return_fm_mac_free_crit_edge
  %err.0 = phi i32 [ %call9, %if.end6._return_fm_mac_free_crit_edge ], [ %call13, %if.end11._return_fm_mac_free_crit_edge ], [ %call18, %if.end16._return_fm_mac_free_crit_edge ], [ %call23, %if.end21._return_fm_mac_free_crit_edge ]
  %47 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fman_mac, align 4
  %call28 = call i32 @tgec_free(ptr noundef %48) #8
  br label %_return

_return:                                          ; preds = %_return_fm_mac_free, %do.end, %if.end._return_crit_edge, %entry._return_crit_edge
  %err.1 = phi i32 [ %err.0, %_return_fm_mac_free ], [ %call23, %do.end ], [ -22, %if.end._return_crit_edge ], [ -12, %entry._return_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_set_promiscuous(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_modify_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_add_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_del_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_set_tx_pause_frames(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_accept_rx_pause_frames(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_set_exception(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_set_allmulti(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_set_tstamp(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @adjust_link_void(ptr nocapture noundef %mac_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_enable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_disable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tgec_config(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_cfg_max_frame_len(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_get_version(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tgec_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memac_initialization(ptr noundef %mac_dev) #0 align 64 {
entry:
  %params = alloca %struct.fman_mac_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #8
  %0 = getelementptr inbounds i8, ptr %params, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %priv1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %mac_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %9
  %add.i.i = add i32 %sub.i.i, %11
  %call3.i = tail call ptr @devm_ioremap(ptr noundef %5, i32 noundef %9, i32 noundef %add.i.i) #8
  %12 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %params, align 4
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %entry._return_crit_edge, label %if.end

entry._return_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end:                                           ; preds = %entry
  %addr.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %addr5.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %addr.i, ptr %addr5.i, i32 6)
  %max_speed.i = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_speed.i, align 2
  %max_speed6.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %16 = ptrtoint ptr %max_speed6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %max_speed6.i, align 4
  %phy_if.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 5
  %17 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_if.i, align 4
  %phy_if7.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %phy_if7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %phy_if7.i, align 4
  %basex_if.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 9
  %20 = ptrtoint ptr %basex_if.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %basex_if.i, align 4
  %cell_index.i = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %cell_index.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cell_index.i, align 4
  %mac_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %23 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %mac_id.i, align 2
  %fman.i = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %fman.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fman.i, align 4
  %fm.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %26 = ptrtoint ptr %fm.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fm.i, align 4
  %exception_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %27 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mac_exception, ptr %exception_cb.i, align 4
  %event_cb.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %28 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mac_exception, ptr %event_cb.i, align 4
  %dev_id.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %29 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mac_dev, ptr %dev_id.i, align 4
  %internal_phy_node.i = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %internal_phy_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %internal_phy_node.i, align 4
  %internal_phy_node8.i = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 10
  %32 = ptrtoint ptr %internal_phy_node8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %internal_phy_node8.i, align 4
  %33 = load i16, ptr %max_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10000, i16 %33)
  %cmp = icmp eq i16 %33, 10000
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %phy_if7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 15, ptr %phy_if7.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call5 = call ptr @memac_config(ptr noundef nonnull %params) #8
  %fman_mac = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %35 = ptrtoint ptr %fman_mac to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5, ptr %fman_mac, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4._return_crit_edge, label %if.end9

if.end4._return_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return

if.end9:                                          ; preds = %if.end4
  %call11 = call zeroext i16 @fman_get_max_frm() #8
  %call12 = call i32 @memac_cfg_max_frame_len(ptr noundef nonnull %call5, i16 noundef zeroext %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9._return_fm_mac_free_crit_edge, label %if.end16

if.end9._return_fm_mac_free_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end16:                                         ; preds = %if.end9
  %36 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fman_mac, align 4
  %call18 = call i32 @memac_cfg_reset_on_init(ptr noundef %37, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16._return_fm_mac_free_crit_edge, label %if.end22

if.end16._return_fm_mac_free_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end22:                                         ; preds = %if.end16
  %38 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fman_mac, align 4
  %fixed_link = getelementptr inbounds %struct.mac_priv_s, ptr %3, i32 0, i32 7
  %40 = ptrtoint ptr %fixed_link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fixed_link, align 4
  %call24 = call i32 @memac_cfg_fixed_link(ptr noundef %39, ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22._return_fm_mac_free_crit_edge, label %if.end28

if.end22._return_fm_mac_free_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

if.end28:                                         ; preds = %if.end22
  %42 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fman_mac, align 4
  %call30 = call i32 @memac_init(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28._return_fm_mac_free_crit_edge, label %do.end

if.end28._return_fm_mac_free_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %_return_fm_mac_free

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.81) #11
  br label %_return

_return_fm_mac_free:                              ; preds = %if.end28._return_fm_mac_free_crit_edge, %if.end22._return_fm_mac_free_crit_edge, %if.end16._return_fm_mac_free_crit_edge, %if.end9._return_fm_mac_free_crit_edge
  %err.0 = phi i32 [ %call12, %if.end9._return_fm_mac_free_crit_edge ], [ %call18, %if.end16._return_fm_mac_free_crit_edge ], [ %call24, %if.end22._return_fm_mac_free_crit_edge ], [ %call30, %if.end28._return_fm_mac_free_crit_edge ]
  %46 = ptrtoint ptr %fman_mac to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fman_mac, align 4
  %call36 = call i32 @memac_free(ptr noundef %47) #8
  br label %_return

_return:                                          ; preds = %_return_fm_mac_free, %do.end, %if.end4._return_crit_edge, %entry._return_crit_edge
  %err.1 = phi i32 [ %err.0, %_return_fm_mac_free ], [ %call30, %do.end ], [ -22, %if.end4._return_crit_edge ], [ -12, %entry._return_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_set_promiscuous(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_modify_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_add_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_del_hash_mac_address(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_set_tx_pause_frames(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_accept_rx_pause_frames(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_set_exception(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_set_allmulti(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_set_tstamp(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adjust_link_memac(ptr nocapture noundef %mac_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev1 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 4
  %0 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev1, align 4
  %fman_mac2 = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 28
  %2 = ptrtoint ptr %fman_mac2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fman_mac2, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  %conv = trunc i32 %5 to i16
  %call = tail call i32 @memac_adjust_link(ptr noundef %3, i16 noundef zeroext %conv) #8
  %6 = ptrtoint ptr %phy_dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_dev1, align 4
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.fman_get_pause_cfg.exit_crit_edge, label %if.end.i

entry.fman_get_pause_cfg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

if.end.i:                                         ; preds = %entry
  %autoneg_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 7
  %10 = ptrtoint ptr %autoneg_pause.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg_pause.i, align 4, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pause_req.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 8
  %12 = ptrtoint ptr %rx_pause_req.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_pause_req.i, align 1, !range !170
  %tx_pause_req.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 9
  %14 = ptrtoint ptr %tx_pause_req.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_pause_req.i, align 2, !range !170
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %advertising.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 17
  %16 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %advertising.i, align 4
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 1024
  %20 = load volatile i32, ptr %advertising.i, align 4
  %21 = lshr i32 %20, 3
  %22 = and i32 %21, 2048
  %23 = or i32 %22, %19
  %conv.i = trunc i32 %23 to i16
  %pause.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 11
  %24 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i = icmp eq i32 %25, 0
  %spec.select.i = select i1 %tobool8.not.i, i16 0, i16 1024
  %asym_pause.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 12
  %26 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %asym_pause.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i = icmp eq i32 %27, 0
  %28 = or i16 %spec.select.i, 2048
  %rmt_adv.1.i = select i1 %tobool13.not.i, i16 %spec.select.i, i16 %28
  %and25.i.i = and i16 %rmt_adv.1.i, %conv.i
  %and.i.i = zext i16 %and25.i.i to i32
  %and2.i.i = and i32 %and.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end7.i.cleanup.sink.split.i_crit_edge

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i.i:                                      ; preds = %if.end7.i
  %and6.i.i = and i32 %and.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.fman_get_pause_cfg.exit_crit_edge, label %if.then8.i.i

if.else.i.i.fman_get_pause_cfg.exit_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

if.then8.i.i:                                     ; preds = %if.else.i.i
  %29 = and i16 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool11.not.i.i = icmp ne i16 %29, 0
  %brmerge = select i1 %tobool11.not.i.i, i1 true, i1 %tobool8.not.i
  %.lobit = lshr exact i16 %29, 10
  %30 = trunc i16 %.lobit to i8
  br i1 %brmerge, label %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge, label %if.then8.i.i.cleanup.sink.split.i_crit_edge

if.then8.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then8.i.i.fman_get_pause_cfg.exit_crit_edge:   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_get_pause_cfg.exit

cleanup.sink.split.i:                             ; preds = %if.then8.i.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.then3.i
  %rx_pause.1 = phi i8 [ %13, %if.then3.i ], [ 1, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.then8.i.i.cleanup.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ %15, %if.then3.i ], [ 1, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.then8.i.i.cleanup.sink.split.i_crit_edge ]
  br label %fman_get_pause_cfg.exit

fman_get_pause_cfg.exit:                          ; preds = %cleanup.sink.split.i, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge, %entry.fman_get_pause_cfg.exit_crit_edge
  %rx_pause.2 = phi i8 [ 0, %entry.fman_get_pause_cfg.exit_crit_edge ], [ %rx_pause.1, %cleanup.sink.split.i ], [ 0, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge ], [ %30, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge ]
  %tx_pause.0 = phi i8 [ 0, %entry.fman_get_pause_cfg.exit_crit_edge ], [ %.sink.i, %cleanup.sink.split.i ], [ 0, %if.else.i.i.fman_get_pause_cfg.exit_crit_edge ], [ 0, %if.then8.i.i.fman_get_pause_cfg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_pause.2)
  %tobool = icmp ne i8 %rx_pause.2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause.0)
  %tobool3 = icmp ne i8 %tx_pause.0, 0
  %frombool.i = zext i1 %tobool to i8
  %frombool1.i = zext i1 %tobool3 to i8
  %31 = ptrtoint ptr %fman_mac2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fman_mac2, align 4
  %rx_pause_active.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 10
  %33 = ptrtoint ptr %rx_pause_active.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_pause_active.i, align 1, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %frombool.i)
  %cmp.not.i = icmp eq i8 %34, %frombool.i
  br i1 %cmp.not.i, label %fman_get_pause_cfg.exit.if.end15.i_crit_edge, label %if.then.i

fman_get_pause_cfg.exit.if.end15.i_crit_edge:     ; preds = %fman_get_pause_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %fman_get_pause_cfg.exit
  %set_rx_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 23
  %35 = ptrtoint ptr %set_rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_rx_pause.i, align 4
  %call.i = tail call i32 %36(ptr noundef %32, i1 noundef zeroext %tobool) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp eq i32 %call.i, 0
  br i1 %cmp7.i, label %if.then11.i, label %if.then.i.if.end15.i_crit_edge, !prof !171

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %rx_pause_active.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %rx_pause_active.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then.i.if.end15.i_crit_edge, %fman_get_pause_cfg.exit.if.end15.i_crit_edge
  %err.0.i = phi i32 [ 0, %if.then11.i ], [ %call.i, %if.then.i.if.end15.i_crit_edge ], [ 0, %fman_get_pause_cfg.exit.if.end15.i_crit_edge ]
  %tx_pause_active.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 11
  %38 = ptrtoint ptr %tx_pause_active.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_pause_active.i, align 4, !range !170
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %frombool1.i)
  %cmp20.not.i = icmp eq i8 %39, %frombool1.i
  br i1 %cmp20.not.i, label %if.end15.i.fman_set_mac_active_pause.exit_crit_edge, label %if.then22.i11

if.end15.i.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

if.then22.i11:                                    ; preds = %if.end15.i
  %conv25.i = select i1 %tobool3, i16 -4096, i16 0
  %set_tx_pause.i = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 24
  %40 = ptrtoint ptr %set_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_tx_pause.i, align 4
  %call26.i = tail call i32 %41(ptr noundef %32, i8 noundef zeroext 0, i16 noundef zeroext %conv25.i, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %fman_set_mac_active_pause.exit.thread, label %if.then22.i11.fman_set_mac_active_pause.exit_crit_edge, !prof !171

if.then22.i11.fman_set_mac_active_pause.exit_crit_edge: ; preds = %if.then22.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fman_set_mac_active_pause.exit

fman_set_mac_active_pause.exit.thread:            ; preds = %if.then22.i11
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %tx_pause_active.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool1.i, ptr %tx_pause_active.i, align 4
  br label %if.end

fman_set_mac_active_pause.exit:                   ; preds = %if.then22.i11.fman_set_mac_active_pause.exit_crit_edge, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end15.i.fman_set_mac_active_pause.exit_crit_edge ], [ %call26.i, %if.then22.i11.fman_set_mac_active_pause.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp = icmp slt i32 %err.1.i, 0
  br i1 %cmp, label %do.end, label %fman_set_mac_active_pause.exit.if.end_crit_edge

fman_set_mac_active_pause.exit.if.end_crit_edge:  ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %fman_set_mac_active_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  %priv = getelementptr inbounds %struct.mac_device, ptr %mac_dev, i32 0, i32 29
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.63, i32 noundef %err.1.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %fman_set_mac_active_pause.exit.if.end_crit_edge, %fman_set_mac_active_pause.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_enable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_disable(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memac_config(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_cfg_max_frame_len(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_cfg_reset_on_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_cfg_fixed_link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memac_adjust_link(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !153, !155, !157, !158, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__UNIQUE_ID_file349, !1, !"__UNIQUE_ID_file349", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_license350, !1, !"__UNIQUE_ID_license350", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description351, !4, !"__UNIQUE_ID_description351", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 54, i32 1}
!5 = !{ptr @__ksymtab_fman_set_mac_active_pause, !6, !"__ksymtab_fman_set_mac_active_pause", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 368, i32 1}
!7 = !{ptr @__ksymtab_fman_get_pause_cfg, !8, !"__ksymtab_fman_get_pause_cfg", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 425, i32 1}
!9 = !{ptr @__initcall__kmod_fsl_dpaa_mac__353_893_mac_driver_init6, !10, !"__initcall__kmod_fsl_dpaa_mac__353_893_mac_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 893, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 887, i32 12}
!13 = !{ptr @mac_driver, !14, !"mac_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 885, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 642, i32 40}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 645, i32 10}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 646, i32 47}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 648, i32 47}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 651, i32 10}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 653, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mac_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mac_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 664, i32 3}
!35 = !{ptr @mac_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mac_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 672, i32 3}
!39 = !{ptr @mac_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mac_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 678, i32 39}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 680, i32 3}
!45 = !{ptr @mac_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mac_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 689, i32 3}
!49 = !{ptr @mac_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mac_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 699, i32 3}
!53 = !{ptr @mac_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mac_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 707, i32 11}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 709, i32 3}
!59 = !{ptr @mac_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mac_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 717, i32 3}
!63 = !{ptr @mac_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mac_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mac_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 730, i32 3}
!67 = !{ptr @mac_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 739, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mac_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mac_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 742, i32 45}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 744, i32 3}
!77 = !{ptr @mac_probe._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mac_probe._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 751, i32 3}
!81 = !{ptr @mac_probe._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mac_probe._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 761, i32 4}
!85 = !{ptr @mac_probe._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mac_probe._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @mac_probe._entry.50, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 769, i32 4}
!89 = !{ptr @mac_probe._entry_ptr.51, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 777, i32 4}
!92 = !{ptr @mac_probe._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mac_probe._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 788, i32 3}
!96 = !{ptr @mac_probe._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mac_probe._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 812, i32 49}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 846, i32 3}
!102 = !{ptr @mac_probe._entry.59, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mac_probe._entry_ptr.61, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 863, i32 3}
!106 = !{ptr @mac_probe._entry.62, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mac_probe._entry_ptr.64, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 866, i32 3}
!110 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mac_probe._entry.65, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @mac_probe._entry_ptr.68, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.70, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 870, i32 3}
!115 = !{ptr @mac_probe._entry.69, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mac_probe._entry_ptr.71, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 211, i32 2}
!119 = !{ptr @.str.73, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dtsec_initialization._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @dtsec_initialization._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.74, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 90, i32 3}
!124 = !{ptr @.str.75, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mac_exception._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @mac_exception._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 93, i32 2}
!129 = !{ptr @mac_exception.__UNIQUE_ID_ddebug352, !128, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!130 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.78, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 449, i32 3}
!133 = !{ptr @adjust_link_dtsec._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @adjust_link_dtsec._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 159, i32 2}
!137 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tgec_initialization._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @tgec_initialization._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 259, i32 2}
!142 = !{ptr @.str.82, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @memac_initialization._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @memac_initialization._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 466, i32 3}
!147 = !{ptr @adjust_link_memac._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @adjust_link_memac._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @phy2speed, !150, !"phy2speed", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 543, i32 18}
!151 = !{ptr @dpaa_eth_add_device.dpaa_eth_dev_cnt, !152, !"dpaa_eth_dev_cnt", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 564, i32 13}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 574, i32 31}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 541, i32 8}
!157 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @eth_lock, !156, !"eth_lock", i1 false, i1 false}
!159 = !{ptr @mac_match, !160, !"mac_match", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/freescale/fman/mac.c", i32 603, i32 34}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i8 0, i8 2}
!171 = !{!"branch_weights", i32 2000, i32 1}
!172 = !{!"auto-init"}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{i64 2148975112, i64 2148975117, i64 2148975130, i64 2148975174, i64 2148975208, i64 2148975229}
