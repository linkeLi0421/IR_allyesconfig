; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/sja1000_platform.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/sja1000_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sja1000_of_data = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sja1000_platform_data = type { i32, i8, i8 }
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author461 = internal constant [62 x i8] c"sja1000_platform.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author462 = internal constant [64 x i8] c"sja1000_platform.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description463 = internal constant [79 x i8] c"sja1000_platform.description=Socket-CAN driver for SJA1000 on the platform bus\00", section ".modinfo", align 1
@__UNIQUE_ID_alias464 = internal constant [49 x i8] c"sja1000_platform.alias=platform:sja1000_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_file465 = internal constant [63 x i8] c"sja1000_platform.file=drivers/net/can/sja1000/sja1000_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [32 x i8] c"sja1000_platform.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_sja1000_platform__467_319_sp_driver_init6 = internal global ptr @sp_driver_init, section ".initcall6.init", align 4
@sp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sp_probe, ptr @sp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sp_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sp_driver_exit = internal global ptr @sp_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sja1000_platform\00", [47 x i8] zeroinitializer }, align 32
@sp_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sja1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"technologic,sja1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @technologic_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No platform data provided!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sp_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/can/sja1000/sja1000_platform.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sp_probe._entry_ptr = internal global ptr @sp_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@sp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registering %s failed (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@sp_probe._entry_ptr.8 = internal global ptr @sp_probe._entry.6, section ".printk_index", align 4
@sp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 292, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s device registered (reg_base=%p, irq=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sp_probe._entry_ptr.12 = internal global ptr @sp_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nxp,external-clock-frequency\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxp,tx-output-mode\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nxp,tx-output-config\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nxp,clock-out-frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nxp,no-comparator-bypass\00", [39 x i8] zeroinitializer }, align 32
@technologic_data = internal global { %struct.sja1000_of_data, [24 x i8] } { %struct.sja1000_of_data { i32 44, ptr @sp_technologic_init }, [24 x i8] zeroinitializer }, align 32
@sp_technologic_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tp->io_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 24]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"sp_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 310, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 314, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"sp_of_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 197, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 219, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 286, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 291, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 139, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 158, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 164, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 170, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 176, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 188, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"technologic_data\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 192, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [46 x i8] c"../drivers/net/can/sja1000/sja1000_platform.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 103, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias464, ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_description463, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_sp_driver_exit, ptr @__initcall__kmod_sja1000_platform__467_319_sp_driver_init6, ptr @sp_driver_exit, ptr @sp_probe._entry, ptr @sp_probe._entry.6, ptr @sp_probe._entry.9, ptr @sp_probe._entry_ptr, ptr @sp_probe._entry_ptr.12, ptr @sp_probe._entry_ptr.8, ptr @sp_driver, ptr @.str, ptr @sp_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @technologic_data, ptr @sp_technologic_init.__key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technologic_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_technologic_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call11 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef nonnull @.str) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i155 = sub i32 1, %9
  %add.i156 = add i32 %sub.i155, %11
  %call18 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %9, i32 noundef %add.i156) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  br i1 %tobool3.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then23.cleanup_crit_edge, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %call27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.else.cleanup_crit_edge, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.then23.if.end31_crit_edge
  %irq.0 = phi i32 [ %call24, %if.then23.if.end31_crit_edge ], [ 0, %if.else.if.end31_crit_edge ]
  %res_irq.0 = phi ptr [ null, %if.then23.if.end31_crit_edge ], [ %call27, %if.else.if.end31_crit_edge ]
  %call33 = tail call ptr @of_match_device(ptr noundef nonnull @sp_of_table, ptr noundef %dev1) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end31.if.end40_crit_edge, label %land.lhs.true35

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true35:                                  ; preds = %if.end31
  %data = getelementptr inbounds %struct.of_device_id, ptr %call33, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool36.not = icmp eq ptr %13, null
  br i1 %tobool36.not, label %land.lhs.true35.if.end40_crit_edge, label %if.then37

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true35.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %of_data.0 = phi ptr [ %13, %if.then37 ], [ null, %land.lhs.true35.if.end40_crit_edge ], [ null, %if.end31.if.end40_crit_edge ]
  %priv_sz.0 = phi i32 [ %15, %if.then37 ], [ 0, %land.lhs.true35.if.end40_crit_edge ], [ 0, %if.end31.if.end40_crit_edge ]
  %call41 = tail call ptr @alloc_sja1000dev(i32 noundef %priv_sz.0) #6
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %add.ptr.i = getelementptr i8, ptr %call41, i32 2304
  %tobool46.not = icmp eq ptr %res_irq.0, null
  br i1 %tobool46.not, label %if.else55, label %if.then47

if.then47:                                        ; preds = %if.end44
  %16 = ptrtoint ptr %res_irq.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res_irq.0, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %res_irq.0, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 15
  %irq_flags = getelementptr i8, ptr %call41, i32 2648
  %20 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %irq_flags, align 4
  %21 = load i32, ptr %flags, align 4
  %and50 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then47.if.end57_crit_edge, label %if.then52

if.then47.if.end57_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 128
  %22 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %irq_flags, align 4
  br label %if.end57

if.else55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %irq_flags56 = getelementptr i8, ptr %call41, i32 2648
  %23 = ptrtoint ptr %irq_flags56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %irq_flags56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then52, %if.then47.if.end57_crit_edge
  %irq.1 = phi i32 [ %17, %if.then52 ], [ %17, %if.then47.if.end57_crit_edge ], [ %irq.0, %if.else55 ]
  %irq58 = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 64
  %24 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %irq.1, ptr %irq58, align 4
  %reg_base = getelementptr i8, ptr %call41, i32 2644
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18, ptr %reg_base, align 4
  br i1 %tobool3.not, label %if.else71, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %26 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %prop.i, align 4, !annotation !63
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %prop.i, align 4
  br label %sw.default.i

if.end.i:                                         ; preds = %if.then60
  %28 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %prop.i, align 4
  %29 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %if.end.i.sw.default.i_crit_edge [
    i32 4, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i.sw.default.i_crit_edge, %if.end.thread.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %sp_read_reg8.sink.i = phi ptr [ @sp_read_reg8, %sw.default.i ], [ @sp_read_reg16, %sw.bb1.i ], [ @sp_read_reg32, %if.end.i.sw.epilog.i_crit_edge ]
  %sp_write_reg8.sink.i = phi ptr [ @sp_write_reg8, %sw.default.i ], [ @sp_write_reg16, %sw.bb1.i ], [ @sp_write_reg32, %if.end.i.sw.epilog.i_crit_edge ]
  %read_reg5.i = getelementptr i8, ptr %call41, i32 2620
  %30 = ptrtoint ptr %read_reg5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sp_read_reg8.sink.i, ptr %read_reg5.i, align 4
  %write_reg6.i = getelementptr i8, ptr %call41, i32 2624
  %31 = ptrtoint ptr %write_reg6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sp_write_reg8.sink.i, ptr %write_reg6.i, align 4
  %call.i.i99.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i99.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i99.i, -1
  br i1 %tobool8.not.i, label %if.then9.i, label %sw.epilog.i.if.end13.i_crit_edge

sw.epilog.i.if.end13.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then9.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prop.i, align 4
  %div97.i = lshr i32 %33, 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %sw.epilog.i.if.end13.i_crit_edge
  %.sink.i = phi i32 [ %div97.i, %if.then9.i ], [ 8000000, %sw.epilog.i.if.end13.i_crit_edge ]
  %34 = getelementptr i8, ptr %call41, i32 2440
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %34, align 4
  %call.i.i100.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i100.i)
  %tobool15.not.i = icmp sgt i32 %call.i.i100.i, -1
  br i1 %tobool15.not.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prop.i, align 4
  %ocr.i = getelementptr i8, ptr %call41, i32 2698
  %38 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ocr.i, align 2
  %40 = trunc i32 %37 to i8
  %41 = and i8 %40, 7
  %conv17.i = or i8 %41, %39
  store i8 %conv17.i, ptr %ocr.i, align 2
  br label %if.end23.i

if.else18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocr19.i = getelementptr i8, ptr %call41, i32 2698
  %42 = ptrtoint ptr %ocr19.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ocr19.i, align 2
  %44 = or i8 %43, 2
  store i8 %44, ptr %ocr19.i, align 2
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else18.i, %if.then16.i
  %call.i.i101.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i101.i, -1
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else32.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prop.i, align 4
  %ocr28.i = getelementptr i8, ptr %call41, i32 2698
  %47 = ptrtoint ptr %ocr28.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ocr28.i, align 2
  %.tr.i = trunc i32 %46 to i8
  %49 = shl i8 %.tr.i, 2
  %conv31.i = or i8 %49, %48
  store i8 %conv31.i, ptr %ocr28.i, align 2
  br label %if.end37.i

if.else32.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocr33.i = getelementptr i8, ptr %call41, i32 2698
  %50 = ptrtoint ptr %ocr33.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ocr33.i, align 2
  %52 = or i8 %51, 8
  store i8 %52, ptr %ocr33.i, align 2
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else32.i, %if.then26.i
  %call.i.i102.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i102.i)
  %tobool39.not.i = icmp sgt i32 %call.i.i102.i, -1
  br i1 %tobool39.not.i, label %land.lhs.true.i, label %if.end37.i.if.else58.i_crit_edge

if.end37.i.if.else58.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  %53 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool40.not.i = icmp eq i32 %54, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i.if.else58.i_crit_edge, label %if.then41.i

land.lhs.true.i.if.else58.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  %55 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %34, align 4
  %mul.i = shl i32 %56, 1
  %div45.i = udiv i32 %mul.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div45.i)
  %cmp.i = icmp ugt i32 %div45.i, 1
  br i1 %cmp.i, label %if.then47.i, label %if.else52.i

if.then47.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  %div4898.i = lshr i32 %div45.i, 1
  %cdr.i = getelementptr i8, ptr %call41, i32 2699
  %57 = ptrtoint ptr %cdr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cdr.i, align 1
  %59 = trunc i32 %div4898.i to i8
  %60 = add i8 %59, -1
  %conv51.i = or i8 %58, %60
  store i8 %conv51.i, ptr %cdr.i, align 1
  br label %if.end63.i

if.else52.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  %cdr53.i = getelementptr i8, ptr %call41, i32 2699
  %61 = ptrtoint ptr %cdr53.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cdr53.i, align 1
  %63 = or i8 %62, 7
  store i8 %63, ptr %cdr53.i, align 1
  br label %if.end63.i

if.else58.i:                                      ; preds = %land.lhs.true.i.if.else58.i_crit_edge, %if.end37.i.if.else58.i_crit_edge
  %cdr59.i = getelementptr i8, ptr %call41, i32 2699
  %64 = ptrtoint ptr %cdr59.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cdr59.i, align 1
  %66 = or i8 %65, 8
  store i8 %66, ptr %cdr59.i, align 1
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else58.i, %if.else52.i, %if.then47.i
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.then65.i, label %if.end63.i.sp_populate_of.exit_crit_edge

if.end63.i.sp_populate_of.exit_crit_edge:         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp_populate_of.exit

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %cdr66.i = getelementptr i8, ptr %call41, i32 2699
  %67 = ptrtoint ptr %cdr66.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cdr66.i, align 1
  %69 = or i8 %68, 64
  store i8 %69, ptr %cdr66.i, align 1
  br label %sp_populate_of.exit

sp_populate_of.exit:                              ; preds = %if.then65.i, %if.end63.i.sp_populate_of.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  %tobool61.not = icmp eq ptr %of_data.0, null
  br i1 %tobool61.not, label %sp_populate_of.exit.if.end73_crit_edge, label %land.lhs.true62

sp_populate_of.exit.if.end73_crit_edge:           ; preds = %sp_populate_of.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true62:                                  ; preds = %sp_populate_of.exit
  %init = getelementptr inbounds %struct.sja1000_of_data, ptr %of_data.0, i32 0, i32 1
  %70 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init, align 4
  %tobool63.not = icmp eq ptr %71, null
  br i1 %tobool63.not, label %land.lhs.true62.if.end73_crit_edge, label %if.then64

land.lhs.true62.if.end73_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then64:                                        ; preds = %land.lhs.true62
  %call66 = call i32 %71(ptr noundef %add.ptr.i, ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then64.if.end73_crit_edge, label %if.then64.exit_free_crit_edge

if.then64.exit_free_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free

if.then64.if.end73_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.else71:                                        ; preds = %if.end57
  %flags72 = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 3
  %72 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags72, align 4
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  %div19.i = lshr i32 %75, 1
  %clock.i = getelementptr i8, ptr %call41, i32 2440
  %76 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div19.i, ptr %clock.i, align 4
  %ocr.i157 = getelementptr inbounds %struct.sja1000_platform_data, ptr %3, i32 0, i32 1
  %77 = ptrtoint ptr %ocr.i157 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ocr.i157, align 4
  %ocr1.i = getelementptr i8, ptr %call41, i32 2698
  %79 = ptrtoint ptr %ocr1.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %ocr1.i, align 2
  %cdr.i158 = getelementptr inbounds %struct.sja1000_platform_data, ptr %3, i32 0, i32 2
  %80 = ptrtoint ptr %cdr.i158 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cdr.i158, align 1
  %cdr2.i = getelementptr i8, ptr %call41, i32 2699
  %82 = ptrtoint ptr %cdr2.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %cdr2.i, align 1
  %and.i = and i32 %73, 24
  %83 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and.i, label %sw.default.i159 [
    i32 24, label %if.else71.sp_populate.exit_crit_edge
    i32 8, label %sw.bb3.i
  ]

if.else71.sp_populate.exit_crit_edge:             ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp_populate.exit

sw.bb3.i:                                         ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp_populate.exit

sw.default.i159:                                  ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %sp_populate.exit

sp_populate.exit:                                 ; preds = %sw.default.i159, %sw.bb3.i, %if.else71.sp_populate.exit_crit_edge
  %sp_read_reg8.sink.i160 = phi ptr [ @sp_read_reg8, %sw.default.i159 ], [ @sp_read_reg16, %sw.bb3.i ], [ @sp_read_reg32, %if.else71.sp_populate.exit_crit_edge ]
  %sp_write_reg8.sink.i161 = phi ptr [ @sp_write_reg8, %sw.default.i159 ], [ @sp_write_reg16, %sw.bb3.i ], [ @sp_write_reg32, %if.else71.sp_populate.exit_crit_edge ]
  %read_reg7.i = getelementptr i8, ptr %call41, i32 2620
  %84 = ptrtoint ptr %read_reg7.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %sp_read_reg8.sink.i160, ptr %read_reg7.i, align 4
  %write_reg8.i = getelementptr i8, ptr %call41, i32 2624
  %85 = ptrtoint ptr %write_reg8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %sp_write_reg8.sink.i161, ptr %write_reg8.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %sp_populate.exit, %if.then64.if.end73_crit_edge, %land.lhs.true62.if.end73_crit_edge, %sp_populate_of.exit.if.end73_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %86 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call41, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call41, i32 0, i32 133, i32 1
  %87 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev1, ptr %parent, align 8
  %call76 = call i32 @register_sja1000dev(ptr noundef nonnull %call41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.end86, label %do.end81

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %call76) #9
  br label %exit_free

do.end86:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base, align 4
  %90 = ptrtoint ptr %irq58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq58, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, ptr noundef %89, i32 noundef %91) #9
  br label %cleanup

exit_free:                                        ; preds = %do.end81, %if.then64.exit_free_crit_edge
  %err.0 = phi i32 [ %call66, %if.then64.exit_free_crit_edge ], [ %call76, %do.end81 ]
  call void @free_sja1000dev(ptr noundef nonnull %call41) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_free, %do.end86, %if.end40.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %exit_free ], [ 0, %do.end86 ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call24, %if.then23.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_sja1000dev(ptr noundef %1) #6
  tail call void @free_sja1000dev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sp_read_reg32(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_write_reg32(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sp_read_reg16(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %reg, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_write_reg16(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %mul = shl i32 %reg, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sp_read_reg8(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_write_reg8(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_technologic_init(ptr nocapture noundef %priv, ptr nocapture noundef readnone %of) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %read_reg = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sp_technologic_read_reg16, ptr %read_reg, align 4
  %write_reg = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sp_technologic_write_reg16, ptr %write_reg, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @sp_technologic_init.__key, i16 noundef signext 3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sp_technologic_read_reg16(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %conv6 = trunc i32 %reg to i16
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv6) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %4) #6, !srcloc !69
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 2
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #6, !srcloc !70
  %8 = lshr i16 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %conv10 = trunc i16 %8 to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  ret i8 %conv10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_technologic_write_reg16(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %conv6 = trunc i32 %reg to i16
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv6) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %4) #6, !srcloc !69
  %conv7 = zext i8 %val to i16
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %7 = shl nuw i16 %conv7, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %7) #6, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_author462, !3, !"__UNIQUE_ID_author462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_description463, !5, !"__UNIQUE_ID_description463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias464, !7, !"__UNIQUE_ID_alias464", i1 false, i1 false}
!7 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 29, i32 1}
!8 = !{ptr @__UNIQUE_ID_file465, !9, !"__UNIQUE_ID_file465", i1 false, i1 false}
!9 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 30, i32 1}
!10 = !{ptr @__UNIQUE_ID_license466, !9, !"__UNIQUE_ID_license466", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_sja1000_platform__467_319_sp_driver_init6, !12, !"__initcall__kmod_sja1000_platform__467_319_sp_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 319, i32 1}
!13 = !{ptr @__exitcall_sp_driver_exit, !12, !"__exitcall_sp_driver_exit", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 314, i32 11}
!16 = !{ptr @sp_driver, !17, !"sp_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 310, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 219, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sp_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sp_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 286, i32 3}
!28 = !{ptr @sp_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sp_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 291, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sp_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sp_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 139, i32 33}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 158, i32 33}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 164, i32 33}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 170, i32 33}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 176, i32 33}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 188, i32 33}
!47 = !{ptr @sp_of_table, !48, !"sp_of_table", i1 false, i1 false}
!48 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 197, i32 34}
!49 = !{ptr @technologic_data, !50, !"technologic_data", i1 false, i1 false}
!50 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 192, i32 31}
!51 = !{ptr @sp_technologic_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/can/sja1000/sja1000_platform.c", i32 103, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 4621823}
!65 = !{i64 2152161168}
!66 = !{i64 2152162773}
!67 = !{i64 4621428}
!68 = !{i64 2152163197}
!69 = !{i64 4621005}
!70 = !{i64 4621205}
!71 = !{i64 2152161780}
