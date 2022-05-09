; ModuleID = '/llk/IR_all_yes/drivers/net/can/rcar/rcar_canfd.c_pt.bc'
source_filename = "../drivers/net/can/rcar/rcar_canfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rcar_canfd_global = type { [2 x ptr], ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i32 }
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
%struct.rcar_canfd_channel = type { %struct.can_priv, ptr, ptr, ptr, %struct.napi_struct, i32, i32, i32, %struct.spinlock }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.can_berr_counter = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__initcall__kmod_rcar_canfd__491_2032_rcar_canfd_driver_init6 = internal global ptr @rcar_canfd_driver_init, section ".initcall6.init", align 4
@rcar_canfd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_canfd_probe, ptr @rcar_canfd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_canfd_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_canfd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_canfd_driver_exit = internal global ptr @rcar_canfd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author492 = internal constant [83 x i8] c"rcar_canfd.author=Ramesh Shanmugasundaram <ramesh.shanmugasundaram@bp.renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file493 = internal constant [48 x i8] c"rcar_canfd.file=drivers/net/can/rcar/rcar_canfd\00", section ".modinfo", align 1
@__UNIQUE_ID_license494 = internal constant [23 x i8] c"rcar_canfd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description495 = internal constant [59 x i8] c"rcar_canfd.description=CAN FD driver for Renesas R-Car SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [37 x i8] c"rcar_canfd.alias=platform:rcar_canfd\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rcar_canfd\00", [21 x i8] zeroinitializer }, align 32
@rcar_canfd_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-canfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzg2l-canfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rcar_canfd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_canfd_suspend, ptr @rcar_canfd_resume, ptr @rcar_canfd_suspend, ptr @rcar_canfd_resume, ptr @rcar_canfd_suspend, ptr @rcar_canfd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas,no-can-fd\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel0\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channel1\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ch_int\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_int\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_err\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"g_recc\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rstp_n\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get rstp_n\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rstc_n\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get rstc_n\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1827, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot get peripheral clock, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_canfd_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/rcar/rcar_canfd.c\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr = internal global ptr @rcar_canfd_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"canfd\00", [26 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.15, i32 1840, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot get canfd clock, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.22 = internal global ptr @rcar_canfd_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"canfd.ch_int\00", [19 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.15, i32 1868, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"devm_request_irq(%d) failed, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.26 = internal global ptr @rcar_canfd_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"canfd.g_int\00", [20 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.15, i32 1877, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.29 = internal global ptr @rcar_canfd_probe._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"canfd.g_recc\00", [19 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.15, i32 1887, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.32 = internal global ptr @rcar_canfd_probe._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"canfd.g_err\00", [20 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.15, i32 1896, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.35 = internal global ptr @rcar_canfd_probe._entry.34, section ".printk_index", align 4
@rcar_canfd_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.15, i32 1914, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to enable peripheral clock, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.38 = internal global ptr @rcar_canfd_probe._entry.36, section ".printk_index", align 4
@rcar_canfd_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.15, i32 1920, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset controller failed\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.41 = internal global ptr @rcar_canfd_probe._entry.39, section ".printk_index", align 4
@rcar_canfd_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.15, i32 1950, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"global operational mode failed\0A\00", [32 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.44 = internal global ptr @rcar_canfd_probe._entry.42, section ".printk_index", align 4
@rcar_canfd_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.14, ptr @.str.15, i32 1962, ptr @.str.47, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"global operational state (clk %d, fdmode %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_canfd_probe._entry_ptr.48 = internal global ptr @rcar_canfd_probe._entry.45, section ".printk_index", align 4
@rcar_canfd_error.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.50, i8 0, i8 -23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_canfd_error\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ch erfl %x txerr %u rxerr %u\0A\00", [34 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.51, i8 0, i8 -20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bus error\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.52, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACK Delimiter Error\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.53, i8 0, i8 -18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bit Error (dominant)\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.54, i8 0, i8 -16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bit Error (recessive)\0A\00", [41 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.55, i8 0, i8 -15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC Error\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.56, i8 0, i8 -14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ACK Error\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.57, i8 0, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Form Error\0A\00", [20 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.58, i8 0, i8 -11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stuff Error\0A\00", [19 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.59, i8 0, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Arbitration lost Error\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.60, i8 0, i8 -8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bus Lock Error\0A\00", [16 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.61, i8 0, i8 -7, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error warning interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.62, i8 0, i8 -5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error passive interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.63, i8 0, i8 -2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bus-off entry interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_error.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.15, ptr @.str.64, i8 1, i8 0, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Overload Frame Transmission error interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@rcar_canfd_state_change.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.15, ptr @.str.66, i8 1, i8 34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_canfd_state_change\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"state: new %d, old %d: txerr %u, rxerr %u\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_canfd_global_error.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.15, ptr @.str.68, i8 0, i8 -35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_canfd_global_error\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch0: ECC Error flag\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_canfd_global_error.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.15, ptr @.str.69, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ch1: ECC Error flag\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_canfd_global_error.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.15, ptr @.str.70, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tx Message Lost flag\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_canfd_global_error.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.15, ptr @.str.71, i8 0, i8 -30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Rx Message Lost flag\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_canfd_global_error.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.15, ptr @.str.72, i8 0, i8 -28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"global payload overflow interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@rcar_canfd_reset_controller.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.15, ptr @.str.74, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_canfd_reset_controller\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"global raminit failed\0A\00", [41 x i8] zeroinitializer }, align 32
@rcar_canfd_reset_controller.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.15, ptr @.str.75, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"global reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_canfd_reset_controller.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.15, ptr @.str.76, i8 0, i8 -85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"channel %u reset failed\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.15, i32 1635, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc_candev() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_canfd_channel_probe\00", [39 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr = internal global ptr @rcar_canfd_channel_probe._entry, section ".printk_index", align 4
@rcar_canfd_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rcar_canfd_open, ptr @rcar_canfd_close, ptr @rcar_canfd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.15, i32 1646, ptr @.str.47, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can_clk rate is %u\0A\00", [44 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr.81 = internal global ptr @rcar_canfd_channel_probe._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch0_err\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch1_err\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch0_trx\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch1_trx\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"canfd.ch%d_err\00", [17 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.78, ptr @.str.15, i32 1676, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"devm_request_irq CH Err(%d) failed, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr.89 = internal global ptr @rcar_canfd_channel_probe._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"canfd.ch%d_trx\00", [17 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.78, ptr @.str.15, i32 1690, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"devm_request_irq Tx (%d) failed, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr.93 = internal global ptr @rcar_canfd_channel_probe._entry.91, section ".printk_index", align 4
@rcar_canfd_nom_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"rcar_canfd\00\00\00\00\00\00", i32 2, i32 128, i32 2, i32 32, i32 32, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rcar_canfd_data_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"rcar_canfd\00\00\00\00\00\00", i32 2, i32 16, i32 2, i32 8, i32 8, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rcar_canfd_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"rcar_canfd\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.78, ptr @.str.15, i32 1724, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register_candev() failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr.97 = internal global ptr @rcar_canfd_channel_probe._entry.95, section ".printk_index", align 4
@rcar_canfd_channel_probe._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.78, ptr @.str.15, i32 1727, ptr @.str.47, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device registered (channel %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@rcar_canfd_channel_probe._entry_ptr.100 = internal global ptr @rcar_canfd_channel_probe._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable CAN clock, error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"open_candev() failed, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"channel %u communication state failed\0A\00", [57 x i8] zeroinitializer }, align 32
@rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.15, ptr @.str.105, i8 1, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_canfd_set_bittiming\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nrate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.15, ptr @.str.106, i8 1, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", [53 x i8] zeroinitializer }, align 32
@rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.15, ptr @.str.107, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", [54 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Controller features can not be supported and static at the same time\0A\00", [58 x i8] zeroinitializer }, align 32
@rcar_canfd_rx_pkt.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.15, ptr @.str.111, i8 1, i8 124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_canfd_rx_pkt\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESI Error\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"rcar_canfd_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 2022, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 2024, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"rcar_canfd_of_table\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 2014, i32 49 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"rcar_canfd_pm_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 2011, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1762, i32 47 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1765, i32 53 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1769, i32 53 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1774, i32 51 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1782, i32 50 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1790, i32 45 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1794, i32 46 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1811, i32 63 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1814, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1816, i32 63 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1819, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1823, i32 41 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1826, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1834, i32 44 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1836, i32 45 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1839, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1865, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1867, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1874, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1876, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1883, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1886, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1893, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1895, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1913, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1920, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1950, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1961, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 933, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 944, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 950, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 955, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 960, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 965, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 970, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 976, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 981, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 986, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 992, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 997, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1007, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1017, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1025, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1161, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 884, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 888, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 895, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 904, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 915, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 642, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 655, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 684, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1635, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [22 x i8] c"rcar_canfd_netdev_ops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1618, i32 36 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1646, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1653, i32 53 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1653, i32 65 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1659, i32 52 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1659, i32 64 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1666, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1675, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1680, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1689, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant [31 x i8] c"rcar_canfd_nom_bittiming_const\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 527, i32 41 }
@___asan_gen_.381 = private unnamed_addr constant [32 x i8] c"rcar_canfd_data_bittiming_const\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 540, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"rcar_canfd_bittiming_const\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 553, i32 41 }
@___asan_gen_.387 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1718, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1723, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1727, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1339, i32 20 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1345, i32 20 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1313, i32 20 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1267, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1280, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1288, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 104, i32 6 }
@___asan_gen_.430 = private unnamed_addr constant [27 x i8] c"../include/linux/can/dev.h\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.430, i32 142, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private constant [37 x i8] c"../drivers/net/can/rcar/rcar_canfd.c\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1523, i32 4 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_author492, ptr @__UNIQUE_ID_description495, ptr @__UNIQUE_ID_file493, ptr @__UNIQUE_ID_license494, ptr @__exitcall_rcar_canfd_driver_exit, ptr @__initcall__kmod_rcar_canfd__491_2032_rcar_canfd_driver_init6, ptr @rcar_canfd_channel_probe._entry, ptr @rcar_canfd_channel_probe._entry.79, ptr @rcar_canfd_channel_probe._entry.87, ptr @rcar_canfd_channel_probe._entry.91, ptr @rcar_canfd_channel_probe._entry.95, ptr @rcar_canfd_channel_probe._entry.98, ptr @rcar_canfd_channel_probe._entry_ptr, ptr @rcar_canfd_channel_probe._entry_ptr.100, ptr @rcar_canfd_channel_probe._entry_ptr.81, ptr @rcar_canfd_channel_probe._entry_ptr.89, ptr @rcar_canfd_channel_probe._entry_ptr.93, ptr @rcar_canfd_channel_probe._entry_ptr.97, ptr @rcar_canfd_driver_exit, ptr @rcar_canfd_probe._entry, ptr @rcar_canfd_probe._entry.20, ptr @rcar_canfd_probe._entry.24, ptr @rcar_canfd_probe._entry.28, ptr @rcar_canfd_probe._entry.31, ptr @rcar_canfd_probe._entry.34, ptr @rcar_canfd_probe._entry.36, ptr @rcar_canfd_probe._entry.39, ptr @rcar_canfd_probe._entry.42, ptr @rcar_canfd_probe._entry.45, ptr @rcar_canfd_probe._entry_ptr, ptr @rcar_canfd_probe._entry_ptr.22, ptr @rcar_canfd_probe._entry_ptr.26, ptr @rcar_canfd_probe._entry_ptr.29, ptr @rcar_canfd_probe._entry_ptr.32, ptr @rcar_canfd_probe._entry_ptr.35, ptr @rcar_canfd_probe._entry_ptr.38, ptr @rcar_canfd_probe._entry_ptr.41, ptr @rcar_canfd_probe._entry_ptr.44, ptr @rcar_canfd_probe._entry_ptr.48, ptr @rcar_canfd_driver, ptr @.str, ptr @rcar_canfd_of_table, ptr @rcar_canfd_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @rcar_canfd_netdev_ops, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @rcar_canfd_nom_bittiming_const, ptr @rcar_canfd_data_bittiming_const, ptr @rcar_canfd_bittiming_const, ptr @rcar_canfd_channel_probe.__key, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_nom_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_data_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_canfd_channel_probe._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_canfd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_canfd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_canfd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %0 = ptrtoint ptr %call to i32
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call5) #8
  %spec.select = zext i1 %call6 to i32
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %entry.if.end8_crit_edge
  %channels_mask.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ %spec.select, %land.lhs.true ]
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.if.end17_crit_edge, label %land.lhs.true13

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call11) #8
  %or16 = or i32 %channels_mask.0, 2
  %spec.select450 = select i1 %call14, i32 %or16, i32 %channels_mask.0
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13, %if.end8.if.end17_crit_edge
  %channels_mask.1 = phi i32 [ %channels_mask.0, %if.end8.if.end17_crit_edge ], [ %spec.select450, %land.lhs.true13 ]
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end17
  %call19 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.then18
  %call22 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %ch_irq.0 = phi i32 [ %call22, %if.then21.if.end26_crit_edge ], [ %call19, %if.then18.if.end26_crit_edge ]
  %call27 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end26.if.end43_crit_edge

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.cleanup_crit_edge, label %if.then29.if.end43_crit_edge

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %call35 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.else.cleanup_crit_edge, label %if.end38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %call39 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end38.if.end43_crit_edge, %if.then29.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  %ch_irq.1 = phi i32 [ %ch_irq.0, %if.then29.if.end43_crit_edge ], [ %ch_irq.0, %if.end26.if.end43_crit_edge ], [ -1, %if.end38.if.end43_crit_edge ]
  %g_irq.0 = phi i32 [ %call30, %if.then29.if.end43_crit_edge ], [ %call27, %if.end26.if.end43_crit_edge ], [ -1, %if.end38.if.end43_crit_edge ]
  %g_err_irq.0 = phi i32 [ -1, %if.then29.if.end43_crit_edge ], [ -1, %if.end26.if.end43_crit_edge ], [ %call35, %if.end38.if.end43_crit_edge ]
  %g_recc_irq.0 = phi i32 [ -1, %if.then29.if.end43_crit_edge ], [ -1, %if.end26.if.end43_crit_edge ], [ %call39, %if.end38.if.end43_crit_edge ]
  %call.i452 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #8
  %tobool46.not = icmp eq ptr %call.i452, null
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %pdev49 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 2
  %7 = ptrtoint ptr %pdev49 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev49, align 4
  %channels_mask50 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 6
  %8 = ptrtoint ptr %channels_mask50 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %channels_mask.1, ptr %channels_mask50, align 4
  %fdmode52 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 7
  %frombool = zext i1 %tobool.i.not to i8
  %9 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %fdmode52, align 4
  %chip_id53 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 10
  %10 = ptrtoint ptr %chip_id53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %0, ptr %chip_id53, align 4
  %cmp55 = icmp eq ptr %call, inttoptr (i32 1 to ptr)
  br i1 %cmp55, label %if.then56, label %if.end48.if.end77_crit_edge

if.end48.if.end77_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then56:                                        ; preds = %if.end48
  %call.i453 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc1 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 8
  %11 = ptrtoint ptr %rstc1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i453, ptr %rstc1, align 4
  %cmp.i = icmp ugt ptr %call.i453, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i453 to i32
  %call65 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end66:                                         ; preds = %if.then56
  %call.i454 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc2 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 9
  %13 = ptrtoint ptr %rstc2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i454, ptr %rstc2, align 4
  %cmp.i455 = icmp ugt ptr %call.i454, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i455, label %if.then71, label %if.end66.if.end77_crit_edge

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i454 to i32
  %call75 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end77:                                         ; preds = %if.end66.if.end77_crit_edge, %if.end48.if.end77_crit_edge
  %call79 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %clkp = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 3
  %15 = ptrtoint ptr %clkp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call79, ptr %clkp, align 4
  %cmp.i456 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i456, label %if.then82, label %if.end86

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call79 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %16) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  %call88 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %can_clk = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 4
  %17 = ptrtoint ptr %can_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call88, ptr %can_clk, align 4
  %cmp.i457 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i457, label %if.end86.if.then94_crit_edge, label %lor.lhs.false

if.end86.if.then94_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false:                                    ; preds = %if.end86
  %call92 = tail call i32 @clk_get_rate(ptr noundef %call88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %lor.lhs.false.if.then94_crit_edge, label %lor.lhs.false.if.end110_crit_edge

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %if.end86.if.then94_crit_edge
  %call96 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %18 = ptrtoint ptr %can_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call96, ptr %can_clk, align 4
  %cmp.i458 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i458, label %if.then100, label %if.then94.if.end110_crit_edge

if.then94.if.end110_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call96 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %19) #11
  br label %cleanup

if.end110:                                        ; preds = %if.then94.if.end110_crit_edge, %lor.lhs.false.if.end110_crit_edge
  %.sink = phi i32 [ 0, %if.then94.if.end110_crit_edge ], [ 1, %lor.lhs.false.if.end110_crit_edge ]
  %fcan109 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 5
  %20 = ptrtoint ptr %fcan109 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %fcan109, align 4
  %21 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %can_clk, align 4
  %call112 = tail call i32 @clk_get_rate(ptr noundef %22) #8
  %fcan113 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 5
  %23 = ptrtoint ptr %fcan113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fcan113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp114 = icmp eq i32 %24, 0
  br i1 %cmp114, label %land.lhs.true115, label %if.end110.if.end119_crit_edge

if.end110.if.end119_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true115:                                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %chip_id53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_id53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp117 = icmp eq i32 %26, 0
  %div449 = zext i1 %cmp117 to i32
  %spec.select451 = lshr i32 %call112, %div449
  br label %if.end119

if.end119:                                        ; preds = %land.lhs.true115, %if.end110.if.end119_crit_edge
  %fcan_freq.0 = phi i32 [ %call112, %if.end110.if.end119_crit_edge ], [ %spec.select451, %land.lhs.true115 ]
  %call120 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i459 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i459, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call120 to i32
  br label %cleanup

if.end124:                                        ; preds = %if.end119
  %base = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 1
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call120, ptr %base, align 4
  %29 = ptrtoint ptr %chip_id53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_id53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp126 = icmp eq i32 %30, 0
  br i1 %cmp126, label %if.then127, label %if.else146

if.then127:                                       ; preds = %if.end124
  %call.i460 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %ch_irq.1, ptr noundef nonnull @rcar_canfd_channel_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %tobool130.not = icmp eq i32 %call.i460, 0
  br i1 %tobool130.not, label %if.end136, label %do.end134

do.end134:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %ch_irq.1, i32 noundef %call.i460) #11
  br label %cleanup

if.end136:                                        ; preds = %if.then127
  %call.i461 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %g_irq.0, ptr noundef nonnull @rcar_canfd_global_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461)
  %tobool139.not = icmp eq i32 %call.i461, 0
  br i1 %tobool139.not, label %if.end136.if.end165_crit_edge, label %do.end143

if.end136.if.end165_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

do.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %g_irq.0, i32 noundef %call.i461) #11
  br label %cleanup

if.else146:                                       ; preds = %if.end124
  %call.i462 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %g_recc_irq.0, ptr noundef nonnull @rcar_canfd_global_receive_fifo_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i462)
  %tobool149.not = icmp eq i32 %call.i462, 0
  br i1 %tobool149.not, label %if.end155, label %do.end153

do.end153:                                        ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %g_recc_irq.0, i32 noundef %call.i462) #11
  br label %cleanup

if.end155:                                        ; preds = %if.else146
  %call.i463 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %g_err_irq.0, ptr noundef nonnull @rcar_canfd_global_err_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i463)
  %tobool158.not = icmp eq i32 %call.i463, 0
  br i1 %tobool158.not, label %if.end155.if.end165_crit_edge, label %do.end162

if.end155.if.end165_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

do.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %g_err_irq.0, i32 noundef %call.i463) #11
  br label %cleanup

if.end165:                                        ; preds = %if.end155.if.end165_crit_edge, %if.end136.if.end165_crit_edge
  %rstc1166 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 8
  %31 = ptrtoint ptr %rstc1166 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rstc1166, align 4
  %call167 = tail call i32 @reset_control_reset(ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end165.cleanup_crit_edge

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end170:                                        ; preds = %if.end165
  %rstc2171 = getelementptr inbounds %struct.rcar_canfd_global, ptr %call.i452, i32 0, i32 9
  %33 = ptrtoint ptr %rstc2171 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rstc2171, align 4
  %call172 = tail call i32 @reset_control_reset(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end177, label %if.then174

if.then174:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rstc1166 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rstc1166, align 4
  %call176 = tail call i32 @reset_control_assert(ptr noundef %36) #8
  br label %cleanup

if.end177:                                        ; preds = %if.end170
  %37 = ptrtoint ptr %clkp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clkp, align 4
  %call179 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end186, label %do.end184

do.end184:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call179) #11
  br label %fail_reset

if.end186:                                        ; preds = %if.end177
  %call187 = tail call fastcc i32 @rcar_canfd_reset_controller(ptr noundef nonnull %call.i452)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end194, label %do.end192

do.end192:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #11
  br label %fail_clk

if.end194:                                        ; preds = %if.end186
  tail call fastcc void @rcar_canfd_configure_controller(ptr noundef nonnull %call.i452)
  %call196 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call196)
  %cmp197518 = icmp ult i32 %call196, 2
  br i1 %cmp197518, label %if.end194.for.body_crit_edge, label %if.end194.for.end_crit_edge

if.end194.for.end_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end194.for.body_crit_edge:                     ; preds = %if.end194
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_configure_afl_rules.exit.for.body_crit_edge, %if.end194.for.body_crit_edge
  %ch.0519 = phi i32 [ %call199, %rcar_canfd_configure_afl_rules.exit.for.body_crit_edge ], [ %call196, %if.end194.for.body_crit_edge ]
  %39 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fdmode52, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  %..i = select i1 %tobool.not.i, i32 4610, i32 4722
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %mul.i = shl nuw nsw i32 %ch.0519, 2
  %add6.i = add nuw nsw i32 %mul.i, 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #8, !srcloc !258
  %44 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fdmode52, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i465 = icmp eq i8 %45, 0
  %..i466 = select i1 %tobool.not.i465, i32 70148, i32 70260
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %mul.i468 = mul nuw nsw i32 %ch.0519, 12
  %add.i = add nuw nsw i32 %mul.i468, 280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %..i466) #8
  %add.ptr.i.i469 = getelementptr i8, ptr %47, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i469, i32 %48) #8, !srcloc !258
  %49 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fdmode52, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool16.not.i = icmp eq i8 %50, 0
  br i1 %tobool16.not.i, label %for.body.rcar_canfd_configure_tx.exit_crit_edge, label %if.then17.i

for.body.rcar_canfd_configure_tx.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_configure_tx.exit

if.then17.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %mul19.i = mul nuw nsw i32 %ch.0519, 384
  %add20.i = add nuw nsw i32 %mul19.i, 13320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i27.i = getelementptr i8, ptr %52, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #8, !srcloc !258
  br label %rcar_canfd_configure_tx.exit

rcar_canfd_configure_tx.exit:                     ; preds = %if.then17.i, %for.body.rcar_canfd_configure_tx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch.0519)
  %cmp.i470 = icmp eq i32 %ch.0519, 0
  br i1 %cmp.i470, label %rcar_canfd_configure_tx.exit.rcar_canfd_configure_afl_rules.exit_crit_edge, label %if.else.i

rcar_canfd_configure_tx.exit.rcar_canfd_configure_afl_rules.exit_crit_edge: ; preds = %rcar_canfd_configure_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_configure_afl_rules.exit

if.else.i:                                        ; preds = %rcar_canfd_configure_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i.i472 = getelementptr i8, ptr %54, i32 156
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i472) #8, !srcloc !259
  %56 = and i32 %55, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  br label %rcar_canfd_configure_afl_rules.exit

rcar_canfd_configure_afl_rules.exit:              ; preds = %if.else.i, %rcar_canfd_configure_tx.exit.rcar_canfd_configure_afl_rules.exit_crit_edge
  %start.0.i = phi i32 [ %56, %if.else.i ], [ 0, %rcar_canfd_configure_tx.exit.rcar_canfd_configure_afl_rules.exit_crit_edge ]
  %div42.i = lshr i32 %start.0.i, 4
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %58, i32 152
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !259
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %or.i = or i32 %div42.i, %60
  %or.i.i.i = or i32 %or.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %61) #8, !srcloc !258
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %mul.neg.i = mul nuw nsw i32 %ch.0519, -8
  %sub.i = add nsw i32 %mul.neg.i, 24
  %shl.i = shl nuw nsw i32 1, %sub.i
  %add.ptr.i44.i = getelementptr i8, ptr %63, i32 156
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #8, !srcloc !259
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %or.i.i45.i = or i32 %65, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i.i45.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %66) #8, !srcloc !258
  %67 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fdmode52, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i474 = icmp eq i8 %68, 0
  %..i475 = select i1 %tobool.not.i474, i32 1280, i32 4096
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %mul9.i = shl nuw nsw i32 %start.0.i, 4
  %add10.i = add nuw nsw i32 %..i475, %mul9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i46.i = getelementptr i8, ptr %70, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 0) #8, !srcloc !258
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add12.i = or i32 %mul9.i, 4
  %add14.i = add nuw nsw i32 %add12.i, %..i475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i47.i = getelementptr i8, ptr %72, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 0) #8, !srcloc !258
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add16.i = or i32 %mul9.i, 8
  %add18.i = add nuw nsw i32 %add16.i, %..i475
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i48.i = getelementptr i8, ptr %74, i32 %add18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 0) #8, !srcloc !258
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add20.i476 = or i32 %mul9.i, 12
  %add22.i = add nuw nsw i32 %add20.i476, %..i475
  %shl23.i = shl nuw nsw i32 1, %ch.0519
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %77 = tail call i32 @llvm.bswap.i32(i32 %shl23.i) #8
  %add.ptr.i49.i = getelementptr i8, ptr %76, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %77) #8, !srcloc !258
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %79, i32 152
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %81 = and i32 %80, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %81) #8, !srcloc !258
  %add = add nuw nsw i32 %ch.0519, 1
  %call199 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef %add) #8
  %cmp197 = icmp ult i32 %call199, 2
  br i1 %cmp197, label %rcar_canfd_configure_afl_rules.exit.for.body_crit_edge, label %rcar_canfd_configure_afl_rules.exit.for.end_crit_edge

rcar_canfd_configure_afl_rules.exit.for.end_crit_edge: ; preds = %rcar_canfd_configure_afl_rules.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_configure_afl_rules.exit.for.body_crit_edge: ; preds = %rcar_canfd_configure_afl_rules.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_configure_afl_rules.exit.for.end_crit_edge, %if.end194.for.end_crit_edge
  tail call fastcc void @rcar_canfd_enable_global_interrupts(ptr noundef nonnull %call.i452)
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %83, i32 136
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %85 = and i32 %84, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %85) #8, !srcloc !258
  %call201 = tail call i64 @ktime_get() #8
  %add.i477 = add i64 %call201, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1948) #8
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr520 = getelementptr i8, ptr %87, i32 140
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr520) #8, !srcloc !259
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  %and521 = and i32 %89, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and521)
  %tobool219.not522 = icmp eq i32 %and521, 0
  br i1 %tobool219.not522, label %for.end.for.end240_crit_edge, label %for.end.land.lhs.true223_crit_edge

for.end.land.lhs.true223_crit_edge:               ; preds = %for.end
  br label %land.lhs.true223

for.end.for.end240_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

land.lhs.true223:                                 ; preds = %if.then237.land.lhs.true223_crit_edge, %for.end.land.lhs.true223_crit_edge
  %call224 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call224, i64 %add.i477)
  %cmp3.i = icmp sgt i64 %call224, %add.i477
  br i1 %cmp3.i, label %if.then227, label %if.then237

if.then227:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr231 = getelementptr i8, ptr %91, i32 140
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #8, !srcloc !259
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !264
  br label %for.end240

if.then237:                                       ; preds = %land.lhs.true223
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %95, i32 140
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !259
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !263
  %and = and i32 %97, 15
  %tobool219.not = icmp eq i32 %and, 0
  br i1 %tobool219.not, label %if.then237.for.end240_crit_edge, label %if.then237.land.lhs.true223_crit_edge

if.then237.land.lhs.true223_crit_edge:            ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true223

if.then237.for.end240_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end240

for.end240:                                       ; preds = %if.then237.for.end240_crit_edge, %if.then227, %for.end.for.end240_crit_edge
  %sts.0 = phi i32 [ %93, %if.then227 ], [ %89, %for.end.for.end240_crit_edge ], [ %97, %if.then237.for.end240_crit_edge ]
  %and242 = and i32 %sts.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.end250, label %do.end248

do.end248:                                        ; preds = %for.end240
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %fail_mode

if.end250:                                        ; preds = %for.end240
  %call252 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call252)
  %cmp254523 = icmp ult i32 %call252, 2
  br i1 %cmp254523, label %if.end250.for.body255_crit_edge, label %if.end250.for.end264_crit_edge

if.end250.for.end264_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end264

if.end250.for.body255_crit_edge:                  ; preds = %if.end250
  br label %for.body255

for.body255:                                      ; preds = %for.inc260.for.body255_crit_edge, %if.end250.for.body255_crit_edge
  %ch.1524 = phi i32 [ %call263, %for.inc260.for.body255_crit_edge ], [ %call252, %if.end250.for.body255_crit_edge ]
  %98 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev49, align 4
  %call.i480 = tail call ptr @alloc_candev_mqs(i32 noundef 608, i32 noundef 8, i32 noundef 1, i32 noundef 1) #8
  %tobool.not.i481 = icmp eq ptr %call.i480, null
  br i1 %tobool.not.i481, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.77) #11
  br label %fail_channel

if.end.i:                                         ; preds = %for.body255
  %add.ptr.i.i482 = getelementptr i8, ptr %call.i480, i32 2304
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i480, i32 0, i32 16
  %100 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @rcar_canfd_netdev_ops, ptr %netdev_ops.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i480, i32 0, i32 14
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 8
  %or.i483 = or i32 %102, 262144
  store i32 %or.i483, ptr %flags.i, align 8
  %ndev3.i = getelementptr i8, ptr %call.i480, i32 2616
  %103 = ptrtoint ptr %ndev3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i480, ptr %ndev3.i, align 8
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %base4.i = getelementptr i8, ptr %call.i480, i32 2624
  %106 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %base4.i, align 8
  %channel.i = getelementptr i8, ptr %call.i480, i32 2864
  %107 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %ch.1524, ptr %channel.i, align 8
  %clock.i = getelementptr i8, ptr %call.i480, i32 2440
  %108 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %fcan_freq.0, ptr %clock.i, align 8
  %dev8.i = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.80, i32 noundef %fcan_freq.0) #11
  %109 = ptrtoint ptr %chip_id53 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip_id53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i485 = icmp eq i32 %110, 1
  br i1 %cmp.i485, label %if.then12.i, label %if.end.i.if.end54.i_crit_edge

if.end.i.if.end54.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch.1524)
  %cmp13.i = icmp eq i32 %ch.1524, 0
  %cond.i = select i1 %cmp13.i, ptr @.str.82, ptr @.str.83
  %call14.i = tail call i32 @platform_get_irq_byname(ptr noundef %99, ptr noundef nonnull %cond.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then12.i.fail.i_crit_edge, label %if.end17.i

if.then12.i.fail.i_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end17.i:                                       ; preds = %if.then12.i
  %cond19.i = select i1 %cmp13.i, ptr @.str.84, ptr @.str.85
  %call20.i = tail call i32 @platform_get_irq_byname(ptr noundef %99, ptr noundef nonnull %cond19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end17.i.fail.i_crit_edge, label %if.end23.i

if.end17.i.fail.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end23.i:                                       ; preds = %if.end17.i
  %call25.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev8.i, i32 noundef 3264, ptr noundef nonnull @.str.86, i32 noundef %ch.1524) #8
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end23.i.fail.i_crit_edge, label %if.end28.i

if.end23.i.fail.i_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end28.i:                                       ; preds = %if.end23.i
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev8.i, i32 noundef %call14.i, ptr noundef nonnull @rcar_canfd_channel_err_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call25.i, ptr noundef %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.88, i32 noundef %call14.i, i32 noundef %call.i.i) #11
  br label %fail.i

if.end37.i:                                       ; preds = %if.end28.i
  %call39.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev8.i, i32 noundef 3264, ptr noundef nonnull @.str.90, i32 noundef %ch.1524) #8
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %if.end37.i.fail.i_crit_edge, label %if.end42.i

if.end37.i.fail.i_crit_edge:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail.i

if.end42.i:                                       ; preds = %if.end37.i
  %call.i165.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev8.i, i32 noundef %call20.i, ptr noundef nonnull @rcar_canfd_channel_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call39.i, ptr noundef %call.i452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i)
  %tobool45.not.i = icmp eq i32 %call.i165.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end54.i_crit_edge, label %do.end49.i

if.end42.i.if.end54.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

do.end49.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.92, i32 noundef %call20.i, i32 noundef %call.i165.i) #11
  br label %fail.i

if.end54.i:                                       ; preds = %if.end42.i.if.end54.i_crit_edge, %if.end.i.if.end54.i_crit_edge
  %111 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %fdmode52, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool55.not.i = icmp eq i8 %112, 0
  %bittiming_const65.i = getelementptr i8, ptr %call.i480, i32 2332
  br i1 %tobool55.not.i, label %if.else.i488, label %if.then56.i

if.then56.i:                                      ; preds = %if.end54.i
  %113 = ptrtoint ptr %bittiming_const65.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @rcar_canfd_nom_bittiming_const, ptr %bittiming_const65.i, align 4
  %data_bittiming_const.i = getelementptr i8, ptr %call.i480, i32 2336
  %114 = ptrtoint ptr %data_bittiming_const.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @rcar_canfd_data_bittiming_const, ptr %data_bittiming_const.i, align 8
  %ctrlmode_supported.i.i = getelementptr i8, ptr %call.i480, i32 2480
  %115 = ptrtoint ptr %ctrlmode_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ctrlmode_supported.i.i, align 4
  %and.i.i487 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i487)
  %tobool.not.i.i = icmp eq i32 %and.i.i487, 0
  br i1 %tobool.not.i.i, label %if.end62.i, label %can_set_static_ctrlmode.exit.i

can_set_static_ctrlmode.exit.i:                   ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call.i480, ptr noundef nonnull @.str.109) #11
  br label %fail.i

if.end62.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctrlmode.i.i = getelementptr i8, ptr %call.i480, i32 2476
  %117 = ptrtoint ptr %ctrlmode.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 32, ptr %ctrlmode.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i480, i32 0, i32 20
  %118 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 72, ptr %mtu.i.i, align 4
  br label %if.end68.i

if.else.i488:                                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %bittiming_const65.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @rcar_canfd_bittiming_const, ptr %bittiming_const65.i, align 4
  %ctrlmode_supported67.i = getelementptr i8, ptr %call.i480, i32 2480
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else.i488, %if.end62.i
  %ctrlmode_supported67.sink.i = phi ptr [ %ctrlmode_supported67.i, %if.else.i488 ], [ %ctrlmode_supported.i.i, %if.end62.i ]
  %120 = ptrtoint ptr %ctrlmode_supported67.sink.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 16, ptr %ctrlmode_supported67.sink.i, align 8
  %do_set_mode.i = getelementptr i8, ptr %call.i480, i32 2596
  %121 = ptrtoint ptr %do_set_mode.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @rcar_canfd_do_set_mode, ptr %do_set_mode.i, align 4
  %do_get_berr_counter.i = getelementptr i8, ptr %call.i480, i32 2608
  %122 = ptrtoint ptr %do_get_berr_counter.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @rcar_canfd_get_berr_counter, ptr %do_get_berr_counter.i, align 8
  %gpriv71.i = getelementptr i8, ptr %call.i480, i32 2620
  %123 = ptrtoint ptr %gpriv71.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i452, ptr %gpriv71.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i480, i32 0, i32 133, i32 1
  %124 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %dev8.i, ptr %parent.i, align 8
  %napi.i = getelementptr i8, ptr %call.i480, i32 2632
  tail call void @netif_napi_add(ptr noundef nonnull %call.i480, ptr noundef %napi.i, ptr noundef nonnull @rcar_canfd_rx_poll, i32 noundef 8) #8
  %tx_lock.i = getelementptr i8, ptr %call.i480, i32 2868
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @rcar_canfd_channel_probe.__key, i16 noundef signext 3) #8
  %125 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %channel.i, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr %call.i452, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i.i482, ptr %arrayidx.i, align 4
  %call80.i = tail call i32 @register_candev(ptr noundef nonnull %call.i480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %for.inc260, label %do.end85.i

do.end85.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.96, i32 noundef %call80.i) #11
  tail call void @__netif_napi_del(ptr noundef %napi.i) #8
  tail call void @synchronize_net() #8
  br label %fail.i

fail.i:                                           ; preds = %do.end85.i, %can_set_static_ctrlmode.exit.i, %do.end49.i, %if.end37.i.fail.i_crit_edge, %do.end35.i, %if.end23.i.fail.i_crit_edge, %if.end17.i.fail.i_crit_edge, %if.then12.i.fail.i_crit_edge
  %err.1.i = phi i32 [ -22, %can_set_static_ctrlmode.exit.i ], [ %call80.i, %do.end85.i ], [ %call.i165.i, %do.end49.i ], [ %call.i.i, %do.end35.i ], [ %call14.i, %if.then12.i.fail.i_crit_edge ], [ %call20.i, %if.end17.i.fail.i_crit_edge ], [ -12, %if.end23.i.fail.i_crit_edge ], [ -12, %if.end37.i.fail.i_crit_edge ]
  tail call void @free_candev(ptr noundef nonnull %call.i480) #8
  br label %fail_channel

for.inc260:                                       ; preds = %if.end68.i
  %128 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %channel.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.99, i32 noundef %129) #11
  %add262 = add nuw nsw i32 %ch.1524, 1
  %call263 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef %add262) #8
  %cmp254 = icmp ult i32 %call263, 2
  br i1 %cmp254, label %for.inc260.for.body255_crit_edge, label %for.inc260.for.end264_crit_edge

for.inc260.for.end264_crit_edge:                  ; preds = %for.inc260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end264

for.inc260.for.body255_crit_edge:                 ; preds = %for.inc260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body255

for.end264:                                       ; preds = %for.inc260.for.end264_crit_edge, %if.end250.for.end264_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %130 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i452, ptr %driver_data.i.i, align 4
  %131 = ptrtoint ptr %fcan113 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fcan113, align 4
  %133 = ptrtoint ptr %fdmode52 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %fdmode52, align 4, !range !256
  %135 = zext i8 %134 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %132, i32 noundef %135) #11
  br label %cleanup

fail_channel:                                     ; preds = %fail.i, %do.end.i
  %retval.0.i489.ph = phi i32 [ -12, %do.end.i ], [ %err.1.i, %fail.i ]
  %call273 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call273)
  %cmp275526 = icmp ult i32 %call273, 2
  br i1 %cmp275526, label %fail_channel.for.body277_crit_edge, label %fail_channel.fail_mode_crit_edge

fail_channel.fail_mode_crit_edge:                 ; preds = %fail_channel
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_mode

fail_channel.for.body277_crit_edge:               ; preds = %fail_channel
  br label %for.body277

for.body277:                                      ; preds = %rcar_canfd_channel_remove.exit.for.body277_crit_edge, %fail_channel.for.body277_crit_edge
  %ch.2527 = phi i32 [ %call281, %rcar_canfd_channel_remove.exit.for.body277_crit_edge ], [ %call273, %fail_channel.for.body277_crit_edge ]
  %arrayidx.i490 = getelementptr [2 x ptr], ptr %call.i452, i32 0, i32 %ch.2527
  %136 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i490, align 4
  %tobool.not.i491 = icmp eq ptr %137, null
  br i1 %tobool.not.i491, label %for.body277.rcar_canfd_channel_remove.exit_crit_edge, label %if.then.i

for.body277.rcar_canfd_channel_remove.exit_crit_edge: ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_channel_remove.exit

if.then.i:                                        ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev.i, align 8
  tail call void @unregister_candev(ptr noundef %139) #8
  %napi.i492 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %137, i32 0, i32 4
  tail call void @__netif_napi_del(ptr noundef %napi.i492) #8
  tail call void @synchronize_net() #8
  %140 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ndev.i, align 8
  tail call void @free_candev(ptr noundef %141) #8
  br label %rcar_canfd_channel_remove.exit

rcar_canfd_channel_remove.exit:                   ; preds = %if.then.i, %for.body277.rcar_canfd_channel_remove.exit_crit_edge
  %add280 = add nuw nsw i32 %ch.2527, 1
  %call281 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask50, i32 noundef 2, i32 noundef %add280) #8
  %cmp275 = icmp ult i32 %call281, 2
  br i1 %cmp275, label %rcar_canfd_channel_remove.exit.for.body277_crit_edge, label %rcar_canfd_channel_remove.exit.fail_mode_crit_edge

rcar_canfd_channel_remove.exit.fail_mode_crit_edge: ; preds = %rcar_canfd_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_mode

rcar_canfd_channel_remove.exit.for.body277_crit_edge: ; preds = %rcar_canfd_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body277

fail_mode:                                        ; preds = %rcar_canfd_channel_remove.exit.fail_mode_crit_edge, %fail_channel.fail_mode_crit_edge, %do.end248
  %err.0 = phi i32 [ -110, %do.end248 ], [ %retval.0.i489.ph, %fail_channel.fail_mode_crit_edge ], [ %retval.0.i489.ph, %rcar_canfd_channel_remove.exit.fail_mode_crit_edge ]
  tail call fastcc void @rcar_canfd_disable_global_interrupts(ptr noundef nonnull %call.i452)
  br label %fail_clk

fail_clk:                                         ; preds = %fail_mode, %do.end192
  %err.1 = phi i32 [ %call187, %do.end192 ], [ %err.0, %fail_mode ]
  %142 = ptrtoint ptr %clkp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %clkp, align 4
  tail call void @clk_disable(ptr noundef %143) #8
  tail call void @clk_unprepare(ptr noundef %143) #8
  br label %fail_reset

fail_reset:                                       ; preds = %fail_clk, %do.end184
  %err.2 = phi i32 [ %call179, %do.end184 ], [ %err.1, %fail_clk ]
  %144 = ptrtoint ptr %rstc1166 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rstc1166, align 4
  %call285 = tail call i32 @reset_control_assert(ptr noundef %145) #8
  %146 = ptrtoint ptr %rstc2171 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rstc2171, align 4
  %call287 = tail call i32 @reset_control_assert(ptr noundef %147) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_reset, %for.end264, %if.then174, %if.end165.cleanup_crit_edge, %do.end162, %do.end153, %do.end143, %do.end134, %if.then122, %if.then100, %if.then82, %if.then71, %if.then61, %if.end43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.then61 ], [ %call75, %if.then71 ], [ 0, %for.end264 ], [ %call22, %if.then21.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ %call35, %if.else.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %16, %if.then82 ], [ %19, %if.then100 ], [ %27, %if.then122 ], [ %call.i460, %do.end134 ], [ %call.i461, %do.end143 ], [ %call167, %if.end165.cleanup_crit_edge ], [ %call172, %if.then174 ], [ %err.2, %fail_reset ], [ %call.i462, %do.end153 ], [ %call.i463, %do.end162 ], [ -12, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @rcar_canfd_reset_controller(ptr noundef %1)
  %base.i = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !258
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #8, !srcloc !258
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp22 = icmp ult i32 %call2, 2
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_channel_remove.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.023 = phi i32 [ %call5, %rcar_canfd_channel_remove.exit.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %1, i32 0, i32 %ch.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %channel.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 8
  %base.i20 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i20, align 8
  %mul.i = shl i32 %9, 4
  %add.i = or i32 %mul.i, 4
  %add.ptr.i.i21 = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %13 = and i32 %12, -16711937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %13) #8, !srcloc !258
  %14 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i20, align 8
  %add3.i = or i32 %mul.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !258
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.rcar_canfd_channel_remove.exit_crit_edge, label %if.then.i

for.body.rcar_canfd_channel_remove.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_channel_remove.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i, align 8
  tail call void @unregister_candev(ptr noundef %19) #8
  %napi.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %17, i32 0, i32 4
  tail call void @__netif_napi_del(ptr noundef %napi.i) #8
  tail call void @synchronize_net() #8
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 8
  tail call void @free_candev(ptr noundef %21) #8
  br label %rcar_canfd_channel_remove.exit

rcar_canfd_channel_remove.exit:                   ; preds = %if.then.i, %for.body.rcar_canfd_channel_remove.exit_crit_edge
  %add = add nuw nsw i32 %ch.023, 1
  %call5 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call5, 2
  br i1 %cmp, label %rcar_canfd_channel_remove.exit.for.body_crit_edge, label %rcar_canfd_channel_remove.exit.for.end_crit_edge

rcar_canfd_channel_remove.exit.for.end_crit_edge: ; preds = %rcar_canfd_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_channel_remove.exit.for.body_crit_edge: ; preds = %rcar_canfd_channel_remove.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_channel_remove.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 136
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %25 = or i32 %24, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #8, !srcloc !258
  %clkp = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %clkp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkp, align 4
  tail call void @clk_disable(ptr noundef %27) #8
  tail call void @clk_unprepare(ptr noundef %27) #8
  %rstc1 = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %rstc1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rstc1, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %29) #8
  %rstc2 = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %rstc2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rstc2, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %31) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_channel_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp9 = icmp ult i32 %call, 2
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_handle_channel_err.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.010 = phi i32 [ %call2, %rcar_canfd_handle_channel_err.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %dev_id, i32 0, i32 %ch.010
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %ndev2.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2.i, align 8
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %mul.i = shl nuw nsw i32 %ch.010, 4
  %add.i = or i32 %mul.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add5.i = or i32 %mul.i, 8
  %add.ptr.i37.i = getelementptr i8, ptr %9, i32 %add5.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #8, !srcloc !259
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %shr.i = lshr i32 %11, 24
  %conv.i = trunc i32 %shr.i to i16
  %shr7.i = lshr i32 %11, 16
  %12 = trunc i32 %shr7.i to i16
  %conv9.i = and i16 %12, 255
  %and10.i = and i32 %7, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i, !prof !265

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_error(ptr noundef %3, i32 noundef %7, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv9.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.then24.i [
    i32 3, label %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge
    i32 0, label %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge11
  ]

if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge11: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_channel_err.exit

if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_channel_err.exit

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_state_change(ptr noundef %3, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv9.i) #8
  br label %rcar_canfd_handle_channel_err.exit

rcar_canfd_handle_channel_err.exit:               ; preds = %if.then24.i, %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge, %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge11
  tail call fastcc void @rcar_canfd_handle_channel_tx(ptr noundef %dev_id, i32 noundef %ch.010)
  %add = add nuw nsw i32 %ch.010, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %rcar_canfd_handle_channel_err.exit.for.body_crit_edge, label %rcar_canfd_handle_channel_err.exit.for.end_crit_edge

rcar_canfd_handle_channel_err.exit.for.end_crit_edge: ; preds = %rcar_canfd_handle_channel_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_handle_channel_err.exit.for.body_crit_edge: ; preds = %rcar_canfd_handle_channel_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_handle_channel_err.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_global_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp14 = icmp ult i32 %call, 2
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fdmode.i = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_handle_global_receive.exit.for.body_crit_edge, %for.body.lr.ph
  %ch.015 = phi i32 [ %call, %for.body.lr.ph ], [ %call2, %rcar_canfd_handle_global_receive.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %dev_id, i32 0, i32 %ch.015
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %ndev2.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2.i, align 8
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %8 = ptrtoint ptr %fdmode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fdmode.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %or.i = select i1 %tobool.not.i, i32 196610, i32 196618
  %and.i = and i32 %or.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.body.rcar_canfd_handle_global_err.exit_crit_edge, label %if.then.i, !prof !265

for.body.rcar_canfd_handle_global_err.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_err.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_global_error(ptr noundef %3) #8
  br label %rcar_canfd_handle_global_err.exit

rcar_canfd_handle_global_err.exit:                ; preds = %if.then.i, %for.body.rcar_canfd_handle_global_err.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %base.i10 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i10, align 8
  %mul.i = shl nuw nsw i32 %ch.015, 2
  %add2.i = add nuw nsw i32 %mul.i, 216
  %add.ptr.i.i11 = getelementptr i8, ptr %13, i32 %add2.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %15 = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i12 = icmp eq i32 %15, 0
  br i1 %tobool.not.i12, label %rcar_canfd_handle_global_err.exit.rcar_canfd_handle_global_receive.exit_crit_edge, label %if.then.i13, !prof !266

rcar_canfd_handle_global_err.exit.rcar_canfd_handle_global_receive.exit_crit_edge: ; preds = %rcar_canfd_handle_global_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_receive.exit

if.then.i13:                                      ; preds = %rcar_canfd_handle_global_err.exit
  %napi.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %11, i32 0, i32 4
  %call5.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #8
  br i1 %call5.i, label %if.then6.i, label %if.then.i13.rcar_canfd_handle_global_receive.exit_crit_edge

if.then.i13.rcar_canfd_handle_global_receive.exit_crit_edge: ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_receive.exit

if.then6.i:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i10, align 8
  %add9.i = add nuw nsw i32 %mul.i, 184
  %add.ptr.i17.i = getelementptr i8, ptr %17, i32 %add9.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %19 = and i32 %18, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %19) #8, !srcloc !258
  tail call void @__napi_schedule(ptr noundef %napi.i) #8
  br label %rcar_canfd_handle_global_receive.exit

rcar_canfd_handle_global_receive.exit:            ; preds = %if.then6.i, %if.then.i13.rcar_canfd_handle_global_receive.exit_crit_edge, %rcar_canfd_handle_global_err.exit.rcar_canfd_handle_global_receive.exit_crit_edge
  %add = add nuw nsw i32 %ch.015, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %rcar_canfd_handle_global_receive.exit.for.body_crit_edge, label %rcar_canfd_handle_global_receive.exit.for.end_crit_edge

rcar_canfd_handle_global_receive.exit.for.end_crit_edge: ; preds = %rcar_canfd_handle_global_receive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_handle_global_receive.exit.for.body_crit_edge: ; preds = %rcar_canfd_handle_global_receive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_handle_global_receive.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_global_receive_fifo_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7 = icmp ult i32 %call, 2
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_handle_global_receive.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.08 = phi i32 [ %call2, %rcar_canfd_handle_global_receive.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %dev_id, i32 0, i32 %ch.08
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %mul.i = shl nuw nsw i32 %ch.08, 2
  %add2.i = add nuw nsw i32 %mul.i, 216
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add2.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.rcar_canfd_handle_global_receive.exit_crit_edge, label %if.then.i, !prof !266

for.body.rcar_canfd_handle_global_receive.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_receive.exit

if.then.i:                                        ; preds = %for.body
  %napi.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 4
  %call5.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #8
  br i1 %call5.i, label %if.then6.i, label %if.then.i.rcar_canfd_handle_global_receive.exit_crit_edge

if.then.i.rcar_canfd_handle_global_receive.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_receive.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add9.i = add nuw nsw i32 %mul.i, 184
  %add.ptr.i17.i = getelementptr i8, ptr %7, i32 %add9.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %9) #8, !srcloc !258
  tail call void @__napi_schedule(ptr noundef %napi.i) #8
  br label %rcar_canfd_handle_global_receive.exit

rcar_canfd_handle_global_receive.exit:            ; preds = %if.then6.i, %if.then.i.rcar_canfd_handle_global_receive.exit_crit_edge, %for.body.rcar_canfd_handle_global_receive.exit_crit_edge
  %add = add nuw nsw i32 %ch.08, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %rcar_canfd_handle_global_receive.exit.for.body_crit_edge, label %rcar_canfd_handle_global_receive.exit.for.end_crit_edge

rcar_canfd_handle_global_receive.exit.for.end_crit_edge: ; preds = %rcar_canfd_handle_global_receive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_handle_global_receive.exit.for.body_crit_edge: ; preds = %rcar_canfd_handle_global_receive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_handle_global_receive.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_global_err_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7 = icmp ult i32 %call, 2
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fdmode.i = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_handle_global_err.exit.for.body_crit_edge, %for.body.lr.ph
  %ch.08 = phi i32 [ %call, %for.body.lr.ph ], [ %call2, %rcar_canfd_handle_global_err.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %dev_id, i32 0, i32 %ch.08
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %ndev2.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2.i, align 8
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %8 = ptrtoint ptr %fdmode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fdmode.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %or.i = select i1 %tobool.not.i, i32 196610, i32 196618
  %and.i = and i32 %or.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.body.rcar_canfd_handle_global_err.exit_crit_edge, label %if.then.i, !prof !265

for.body.rcar_canfd_handle_global_err.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_global_err.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_global_error(ptr noundef %3) #8
  br label %rcar_canfd_handle_global_err.exit

rcar_canfd_handle_global_err.exit:                ; preds = %if.then.i, %for.body.rcar_canfd_handle_global_err.exit_crit_edge
  %add = add nuw nsw i32 %ch.08, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %rcar_canfd_handle_global_err.exit.for.body_crit_edge, label %rcar_canfd_handle_global_err.exit.for.end_crit_edge

rcar_canfd_handle_global_err.exit.for.end_crit_edge: ; preds = %rcar_canfd_handle_global_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_handle_global_err.exit.for.body_crit_edge: ; preds = %rcar_canfd_handle_global_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_handle_global_err.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_canfd_reset_controller(ptr noundef %gpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 640) #8
  %base = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr314 = getelementptr i8, ptr %1, i32 140
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #8, !srcloc !259
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %and315 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool.not316 = icmp eq i32 %and315, 0
  br i1 %tobool.not316, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !259
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !267
  %and = and i32 %11, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %sts.0 = phi i32 [ %7, %if.then16 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %sts.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end45, label %do.body33

do.body33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_reset_controller, %cleanup)) #8
          to label %if.then41 [label %cleanup], !srcloc !269

if.then41:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug459, ptr noundef %dev, ptr noundef nonnull @.str.74) #8
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %17 = and i32 %16, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #8, !srcloc !258
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i277 = getelementptr i8, ptr %19, i32 136
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %21 = and i32 %20, -50331649
  %22 = or i32 %21, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %22) #8, !srcloc !258
  %call51 = tail call i64 @ktime_get() #8
  %add.i279 = add i64 %call51, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 653) #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr69317 = getelementptr i8, ptr %24, i32 140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69317) #8, !srcloc !259
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %and73318 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73318)
  %tobool74.not319 = icmp eq i32 %and73318, 0
  br i1 %tobool74.not319, label %if.end45.land.lhs.true78_crit_edge, label %if.end45.for.end96_crit_edge

if.end45.for.end96_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

if.end45.land.lhs.true78_crit_edge:               ; preds = %if.end45
  br label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then92.land.lhs.true78_crit_edge, %if.end45.land.lhs.true78_crit_edge
  %call79 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call79, i64 %add.i279)
  %cmp3.i281 = icmp sgt i64 %call79, %add.i279
  br i1 %cmp3.i281, label %if.then82, label %if.then92

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr86 = getelementptr i8, ptr %28, i32 140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #8, !srcloc !259
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !271
  br label %for.end96

if.then92:                                        ; preds = %land.lhs.true78
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %32, i32 140
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !259
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !270
  %and73 = and i32 %34, 1
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then92.land.lhs.true78_crit_edge, label %if.then92.for.end96_crit_edge

if.then92.for.end96_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

if.then92.land.lhs.true78_crit_edge:              ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true78

for.end96:                                        ; preds = %if.then92.for.end96_crit_edge, %if.then82, %if.end45.for.end96_crit_edge
  %sts.1 = phi i32 [ %30, %if.then82 ], [ %26, %if.end45.for.end96_crit_edge ], [ %34, %if.then92.for.end96_crit_edge ]
  %and98 = and i32 %sts.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body103, label %if.end123

do.body103:                                       ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_reset_controller, %cleanup)) #8
          to label %if.then117 [label %cleanup], !srcloc !269

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  %pdev118 = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 2
  %35 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev118, align 4
  %dev119 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug460, ptr noundef %dev119, ptr noundef nonnull @.str.75) #8
  br label %cleanup

if.end123:                                        ; preds = %for.end96
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i284 = getelementptr i8, ptr %38, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 0) #8, !srcloc !258
  %fdmode = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 7
  %39 = ptrtoint ptr %fdmode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fdmode, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool125.not = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.i287 = getelementptr i8, ptr %42, i32 1276
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i287) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool125.not, label %if.else, label %if.then126

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %44 = or i32 %43, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %44) #8, !srcloc !258
  br label %if.end129

if.else:                                          ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %45 = and i32 %43, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %45) #8, !srcloc !258
  br label %if.end129

if.end129:                                        ; preds = %if.else, %if.then126
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 6
  %call130 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call130)
  %cmp132325 = icmp ult i32 %call130, 2
  br i1 %cmp132325, label %if.end129.for.body_crit_edge, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end129.for.body_crit_edge
  %ch.0326 = phi i32 [ %call220, %for.inc.for.body_crit_edge ], [ %call130, %if.end129.for.body_crit_edge ]
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %mul = shl nuw nsw i32 %ch.0326, 4
  %add134 = or i32 %mul, 4
  %add.ptr.i289 = getelementptr i8, ptr %47, i32 %add134
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %49 = and i32 %48, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %49) #8, !srcloc !258
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr.i291 = getelementptr i8, ptr %51, i32 %add134
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %53 = and i32 %52, -50331649
  %54 = or i32 %53, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %54) #8, !srcloc !258
  %call141 = tail call i64 @ktime_get() #8
  %add.i294 = add i64 %call141, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 682) #8
  %add160 = or i32 %mul, 8
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr161321 = getelementptr i8, ptr %56, i32 %add160
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161321) #8, !srcloc !259
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  %and165322 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165322)
  %tobool166.not323 = icmp eq i32 %and165322, 0
  br i1 %tobool166.not323, label %for.body.land.lhs.true170_crit_edge, label %for.body.for.end190_crit_edge

for.body.for.end190_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end190

for.body.land.lhs.true170_crit_edge:              ; preds = %for.body
  br label %land.lhs.true170

land.lhs.true170:                                 ; preds = %if.then186.land.lhs.true170_crit_edge, %for.body.land.lhs.true170_crit_edge
  %call171 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call171, i64 %add.i294)
  %cmp3.i296 = icmp sgt i64 %call171, %add.i294
  br i1 %cmp3.i296, label %if.then174, label %if.then186

if.then174:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr180 = getelementptr i8, ptr %60, i32 %add160
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #8, !srcloc !259
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !273
  br label %for.end190

if.then186:                                       ; preds = %land.lhs.true170
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr161 = getelementptr i8, ptr %64, i32 %add160
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #8, !srcloc !259
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  %and165 = and i32 %66, 1
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.then186.land.lhs.true170_crit_edge, label %if.then186.for.end190_crit_edge

if.then186.for.end190_crit_edge:                  ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end190

if.then186.land.lhs.true170_crit_edge:            ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true170

for.end190:                                       ; preds = %if.then186.for.end190_crit_edge, %if.then174, %for.body.for.end190_crit_edge
  %sts.2 = phi i32 [ %62, %if.then174 ], [ %58, %for.body.for.end190_crit_edge ], [ %66, %if.then186.for.end190_crit_edge ]
  %and192 = and i32 %sts.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body197, label %for.inc

do.body197:                                       ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_reset_controller, %cleanup)) #8
          to label %if.then211 [label %cleanup], !srcloc !269

if.then211:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #10
  %pdev212 = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 2
  %67 = ptrtoint ptr %pdev212 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev212, align 4
  %dev213 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug461, ptr noundef %dev213, ptr noundef nonnull @.str.76, i32 noundef %ch.0326) #8
  br label %cleanup

for.inc:                                          ; preds = %for.end190
  %add219 = add i32 %ch.0326, 1
  %call220 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add219) #8
  %cmp132 = icmp ult i32 %call220, 2
  br i1 %cmp132, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then211, %do.body197, %if.end129.cleanup_crit_edge, %if.then117, %do.body103, %if.then41, %do.body33
  %retval.0 = phi i32 [ -110, %if.then41 ], [ -110, %if.then117 ], [ -110, %if.then211 ], [ -110, %do.body33 ], [ -110, %do.body103 ], [ -110, %do.body197 ], [ 0, %if.end129.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_configure_controller(ptr noundef %gpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fdmode = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 7
  %0 = ptrtoint ptr %fdmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fdmode, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i32 64, i32 96
  %fcan = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 5
  %2 = ptrtoint ptr %fcan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fcan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %or2 = or i32 %spec.select, 16
  %cfg.1 = select i1 %cmp.not, i32 %spec.select, i32 %or2
  %base = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 132
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %or.i.i = or i32 %7, %cfg.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !258
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp427 = icmp ult i32 %call, 2
  br i1 %cmp427, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.028 = phi i32 [ %call11, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %mul = shl nuw nsw i32 %ch.028, 4
  %add = or i32 %mul, 4
  %add.ptr.i23 = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %12 = or i32 %11, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %12) #8, !srcloc !258
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr.i25 = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %16 = and i32 %15, -24577
  %17 = or i32 %16, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %17) #8, !srcloc !258
  %add10 = add nuw nsw i32 %ch.028, 1
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add10) #8
  %cmp4 = icmp ult i32 %call11, 2
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_enable_global_interrupts(ptr nocapture noundef readonly %gpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !258
  %fdmode = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 7
  %2 = ptrtoint ptr %fdmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fdmode, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i32 512, i32 2560
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %or.i.i = or i32 %7, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %8) #8, !srcloc !258
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_disable_global_interrupts(ptr nocapture noundef readonly %gpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rcar_canfd_global, ptr %gpriv, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !258
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #8, !srcloc !258
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_handle_channel_tx(ptr nocapture noundef readonly %gpriv, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x ptr], ptr %gpriv, i32 0, i32 %ch
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %ndev2 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 8
  %base = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %mul = mul i32 %ch, 12
  %add = add i32 %mul, 376
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !266

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %channel.i = getelementptr i8, ptr %3, i32 2864
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i, align 8
  %tx_tail.i = getelementptr i8, ptr %3, i32 2860
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %tx_lock.i = getelementptr i8, ptr %3, i32 2868
  %base.i = getelementptr i8, ptr %3, i32 2624
  %mul.i = mul i32 %9, 12
  %add13.i = add i32 %mul.i, 376
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %tx_head.i = getelementptr i8, ptr %3, i32 2856
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then
  %10 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_tail.i, align 4
  %conv.i = and i32 %11, 7
  %12 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %call3.i = tail call i32 @can_get_echo_skb(ptr noundef %3, i32 noundef %conv.i, ptr noundef null) #8
  %14 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %15, %call3.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %16 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_tail.i, align 4
  %inc12.i = add i32 %17, 1
  store i32 %inc12.i, ptr %tx_tail.i, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %19, i32 %add13.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #8, !srcloc !259
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %shr.i = lshr i32 %21, 8
  %conv17.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv17.i)
  %cmp18.not.i = icmp eq i32 %conv17.i, 8
  br i1 %cmp18.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %23) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_head.i, align 8
  %26 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_tail.i, align 4
  %sub.i = sub i32 %25, %27
  %cmp22.not.i = icmp ugt i32 %sub.i, %conv17.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call8.i) #8
  br i1 %cmp22.not.i, label %if.end.i.do.body.i_crit_edge, label %rcar_canfd_tx_done.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

rcar_canfd_tx_done.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %and35.i = and i32 %21, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %and35.i) #8
  %add.ptr.i55.i = getelementptr i8, ptr %29, i32 %add13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %30) #8, !srcloc !258
  br label %if.end

if.end:                                           ; preds = %rcar_canfd_tx_done.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_error(ptr noundef %ndev, i32 noundef %cerfl, i16 noundef zeroext %txerr, i16 noundef zeroext %rxerr) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !274
  %channel = getelementptr i8, ptr %ndev, i32 2864
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end9)) #8
          to label %if.then [label %do.end9], !srcloc !269

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %txerr to i32
  %conv7 = zext i16 %rxerr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug467, ptr noundef %ndev, ptr noundef nonnull @.str.50, i32 noundef %cerfl, i32 noundef %conv, i32 noundef %conv7) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %call10 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %3 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %and = and i32 %cerfl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end38_crit_edge, label %do.body17

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end36)) #8
          to label %if.then31 [label %do.end36], !srcloc !269

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug468, ptr noundef %ndev, ptr noundef nonnull @.str.51) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body17
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %or = or i32 %8, 136
  store i32 %or, ptr %6, align 8
  %9 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %9, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 2
  %can_stats = getelementptr i8, ptr %ndev, i32 2308
  %11 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %can_stats, align 4
  %inc37 = add i32 %12, 1
  store i32 %inc37, ptr %can_stats, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end13.if.end38_crit_edge
  %and39 = and i32 %cerfl, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end69_crit_edge, label %do.body43

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.body43:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end62)) #8
          to label %if.then57 [label %do.end62], !srcloc !269

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug469, ptr noundef %ndev, ptr noundef nonnull @.str.52) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %do.body43
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %13 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_errors, align 4
  %inc63 = add i32 %14, 1
  store i32 %inc63, ptr %tx_errors, align 4
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %arrayidx65 = getelementptr %struct.can_frame, ptr %16, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx65, align 1
  %19 = or i8 %18, 27
  store i8 %19, ptr %arrayidx65, align 1
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %if.end38.if.end69_crit_edge
  %and70 = and i32 %cerfl, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end101_crit_edge, label %do.body74

if.end69.if.end101_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.body74:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end93)) #8
          to label %if.then88 [label %do.end93], !srcloc !269

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug470, ptr noundef %ndev, ptr noundef nonnull @.str.53) #8
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %do.body74
  %tx_errors94 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %20 = ptrtoint ptr %tx_errors94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_errors94, align 4
  %inc95 = add i32 %21, 1
  store i32 %inc95, ptr %tx_errors94, align 4
  %22 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cf, align 4
  %arrayidx97 = getelementptr %struct.can_frame, ptr %23, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx97, align 2
  %26 = or i8 %25, 8
  store i8 %26, ptr %arrayidx97, align 2
  br label %if.end101

if.end101:                                        ; preds = %do.end93, %if.end69.if.end101_crit_edge
  %and102 = and i32 %cerfl, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end133_crit_edge, label %do.body106

if.end101.if.end133_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

do.body106:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end125)) #8
          to label %if.then120 [label %do.end125], !srcloc !269

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug471, ptr noundef %ndev, ptr noundef nonnull @.str.54) #8
  br label %do.end125

do.end125:                                        ; preds = %if.then120, %do.body106
  %tx_errors126 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %27 = ptrtoint ptr %tx_errors126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_errors126, align 4
  %inc127 = add i32 %28, 1
  store i32 %inc127, ptr %tx_errors126, align 4
  %29 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cf, align 4
  %arrayidx129 = getelementptr %struct.can_frame, ptr %30, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx129, align 2
  %33 = or i8 %32, 16
  store i8 %33, ptr %arrayidx129, align 2
  br label %if.end133

if.end133:                                        ; preds = %do.end125, %if.end101.if.end133_crit_edge
  %and134 = and i32 %cerfl, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end164_crit_edge, label %do.body138

if.end133.if.end164_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

do.body138:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end157)) #8
          to label %if.then152 [label %do.end157], !srcloc !269

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug472, ptr noundef %ndev, ptr noundef nonnull @.str.55) #8
  br label %do.end157

do.end157:                                        ; preds = %if.then152, %do.body138
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %34 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_errors, align 4
  %inc158 = add i32 %35, 1
  store i32 %inc158, ptr %rx_errors, align 4
  %36 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cf, align 4
  %arrayidx160 = getelementptr %struct.can_frame, ptr %37, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx160, align 1
  %40 = or i8 %39, 8
  store i8 %40, ptr %arrayidx160, align 1
  br label %if.end164

if.end164:                                        ; preds = %do.end157, %if.end133.if.end164_crit_edge
  %and165 = and i32 %cerfl, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end198_crit_edge, label %do.body169

if.end164.if.end198_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

do.body169:                                       ; preds = %if.end164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end188)) #8
          to label %if.then183 [label %do.end188], !srcloc !269

if.then183:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug473, ptr noundef %ndev, ptr noundef nonnull @.str.56) #8
  br label %do.end188

do.end188:                                        ; preds = %if.then183, %do.body169
  %tx_errors189 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %41 = ptrtoint ptr %tx_errors189 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors189, align 4
  %inc190 = add i32 %42, 1
  store i32 %inc190, ptr %tx_errors189, align 4
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %or192 = or i32 %46, 32
  store i32 %or192, ptr %44, align 8
  %47 = load ptr, ptr %cf, align 4
  %arrayidx194 = getelementptr %struct.can_frame, ptr %47, i32 0, i32 5, i32 3
  %48 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx194, align 1
  %50 = or i8 %49, 25
  store i8 %50, ptr %arrayidx194, align 1
  br label %if.end198

if.end198:                                        ; preds = %do.end188, %if.end164.if.end198_crit_edge
  %and199 = and i32 %cerfl, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end198.if.end230_crit_edge, label %do.body203

if.end198.if.end230_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

do.body203:                                       ; preds = %if.end198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end222)) #8
          to label %if.then217 [label %do.end222], !srcloc !269

if.then217:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug474, ptr noundef %ndev, ptr noundef nonnull @.str.57) #8
  br label %do.end222

do.end222:                                        ; preds = %if.then217, %do.body203
  %rx_errors223 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %51 = ptrtoint ptr %rx_errors223 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_errors223, align 4
  %inc224 = add i32 %52, 1
  store i32 %inc224, ptr %rx_errors223, align 4
  %53 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cf, align 4
  %arrayidx226 = getelementptr %struct.can_frame, ptr %54, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx226, align 2
  %57 = or i8 %56, 2
  store i8 %57, ptr %arrayidx226, align 2
  br label %if.end230

if.end230:                                        ; preds = %do.end222, %if.end198.if.end230_crit_edge
  %and231 = and i32 %cerfl, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end230.if.end262_crit_edge, label %do.body235

if.end230.if.end262_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

do.body235:                                       ; preds = %if.end230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end254)) #8
          to label %if.then249 [label %do.end254], !srcloc !269

if.then249:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug475, ptr noundef %ndev, ptr noundef nonnull @.str.58) #8
  br label %do.end254

do.end254:                                        ; preds = %if.then249, %do.body235
  %rx_errors255 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %58 = ptrtoint ptr %rx_errors255 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_errors255, align 4
  %inc256 = add i32 %59, 1
  store i32 %inc256, ptr %rx_errors255, align 4
  %60 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cf, align 4
  %arrayidx258 = getelementptr %struct.can_frame, ptr %61, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx258, align 2
  %64 = or i8 %63, 4
  store i8 %64, ptr %arrayidx258, align 2
  br label %if.end262

if.end262:                                        ; preds = %do.end254, %if.end230.if.end262_crit_edge
  %and263 = and i32 %cerfl, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.end262.if.end297_crit_edge, label %do.body267

if.end262.if.end297_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end297

do.body267:                                       ; preds = %if.end262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end286)) #8
          to label %if.then281 [label %do.end286], !srcloc !269

if.then281:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug476, ptr noundef %ndev, ptr noundef nonnull @.str.59) #8
  br label %do.end286

do.end286:                                        ; preds = %if.then281, %do.body267
  %arbitration_lost = getelementptr i8, ptr %ndev, i32 2324
  %65 = ptrtoint ptr %arbitration_lost to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arbitration_lost, align 4
  %inc289 = add i32 %66, 1
  store i32 %inc289, ptr %arbitration_lost, align 4
  %67 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %or291 = or i32 %70, 2
  store i32 %or291, ptr %68, align 8
  br label %if.end297

if.end297:                                        ; preds = %do.end286, %if.end262.if.end297_crit_edge
  %and298 = and i32 %cerfl, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %if.end297.if.end326_crit_edge, label %do.body302

if.end297.if.end326_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

do.body302:                                       ; preds = %if.end297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end321)) #8
          to label %if.then316 [label %do.end321], !srcloc !269

if.then316:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug477, ptr noundef %ndev, ptr noundef nonnull @.str.60) #8
  br label %do.end321

do.end321:                                        ; preds = %if.then316, %do.body302
  %rx_errors322 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %71 = ptrtoint ptr %rx_errors322 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_errors322, align 4
  %inc323 = add i32 %72, 1
  store i32 %inc323, ptr %rx_errors322, align 4
  %73 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cf, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %or325 = or i32 %76, 128
  store i32 %or325, ptr %74, align 8
  br label %if.end326

if.end326:                                        ; preds = %do.end321, %if.end297.if.end326_crit_edge
  %and327 = and i32 %cerfl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.end326.if.end369_crit_edge, label %do.body331

if.end326.if.end369_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

do.body331:                                       ; preds = %if.end326
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end350)) #8
          to label %if.then345 [label %do.end350], !srcloc !269

if.then345:                                       ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug478, ptr noundef %ndev, ptr noundef nonnull @.str.61) #8
  br label %do.end350

do.end350:                                        ; preds = %if.then345, %do.body331
  %state = getelementptr i8, ptr %ndev, i32 2472
  %77 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %state, align 8
  %error_warning = getelementptr i8, ptr %ndev, i32 2312
  %78 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %error_warning, align 4
  %inc354 = add i32 %79, 1
  store i32 %inc354, ptr %error_warning, align 4
  %80 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cf, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %or356 = or i32 %83, 4
  store i32 %or356, ptr %81, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %txerr, i16 %rxerr)
  %cmp = icmp ugt i16 %txerr, %rxerr
  %conv360 = select i1 %cmp, i8 8, i8 4
  %84 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cf, align 4
  %arrayidx362 = getelementptr %struct.can_frame, ptr %85, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv360, ptr %arrayidx362, align 1
  %conv363 = trunc i16 %txerr to i8
  %87 = load ptr, ptr %cf, align 4
  %arrayidx365 = getelementptr %struct.can_frame, ptr %87, i32 0, i32 5, i32 6
  %88 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv363, ptr %arrayidx365, align 2
  %conv366 = trunc i16 %rxerr to i8
  %89 = load ptr, ptr %cf, align 4
  %arrayidx368 = getelementptr %struct.can_frame, ptr %89, i32 0, i32 5, i32 7
  %90 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv366, ptr %arrayidx368, align 1
  br label %if.end369

if.end369:                                        ; preds = %do.end350, %if.end326.if.end369_crit_edge
  %and370 = and i32 %cerfl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  br i1 %tobool371.not, label %if.end369.if.end415_crit_edge, label %do.body374

if.end369.if.end415_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end415

do.body374:                                       ; preds = %if.end369
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end393)) #8
          to label %if.then388 [label %do.end393], !srcloc !269

if.then388:                                       ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug479, ptr noundef %ndev, ptr noundef nonnull @.str.62) #8
  br label %do.end393

do.end393:                                        ; preds = %if.then388, %do.body374
  %state395 = getelementptr i8, ptr %ndev, i32 2472
  %91 = ptrtoint ptr %state395 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %state395, align 8
  %error_passive = getelementptr i8, ptr %ndev, i32 2316
  %92 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %error_passive, align 4
  %inc398 = add i32 %93, 1
  store i32 %inc398, ptr %error_passive, align 4
  %94 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cf, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %or400 = or i32 %97, 4
  store i32 %or400, ptr %95, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %txerr, i16 %rxerr)
  %cmp403 = icmp ugt i16 %txerr, %rxerr
  %conv406 = select i1 %cmp403, i8 32, i8 16
  %98 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cf, align 4
  %arrayidx408 = getelementptr %struct.can_frame, ptr %99, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv406, ptr %arrayidx408, align 1
  %conv409 = trunc i16 %txerr to i8
  %101 = load ptr, ptr %cf, align 4
  %arrayidx411 = getelementptr %struct.can_frame, ptr %101, i32 0, i32 5, i32 6
  %102 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv409, ptr %arrayidx411, align 2
  %conv412 = trunc i16 %rxerr to i8
  %103 = load ptr, ptr %cf, align 4
  %arrayidx414 = getelementptr %struct.can_frame, ptr %103, i32 0, i32 5, i32 7
  %104 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv412, ptr %arrayidx414, align 1
  br label %if.end415

if.end415:                                        ; preds = %do.end393, %if.end369.if.end415_crit_edge
  %and416 = and i32 %cerfl, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and416)
  %tobool417.not = icmp eq i32 %and416, 0
  br i1 %tobool417.not, label %if.end415.if.end447_crit_edge, label %do.body420

if.end415.if.end447_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end447

do.body420:                                       ; preds = %if.end415
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end439)) #8
          to label %if.then434 [label %do.end439], !srcloc !269

if.then434:                                       ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug480, ptr noundef %ndev, ptr noundef nonnull @.str.63) #8
  br label %do.end439

do.end439:                                        ; preds = %if.then434, %do.body420
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 0, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 1, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 2, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 3, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 4, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 5, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 6, ptr noundef null) #8
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 7, ptr noundef null) #8
  %state441 = getelementptr i8, ptr %ndev, i32 2472
  %105 = ptrtoint ptr %state441 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %state441, align 8
  %bus_off = getelementptr i8, ptr %ndev, i32 2320
  %106 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bus_off, align 4
  %inc444 = add i32 %107, 1
  store i32 %inc444, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %ndev) #8
  %108 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cf, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %or446 = or i32 %111, 64
  store i32 %or446, ptr %109, align 8
  br label %if.end447

if.end447:                                        ; preds = %do.end439, %if.end415.if.end447_crit_edge
  %and448 = and i32 %cerfl, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448)
  %tobool449.not = icmp eq i32 %and448, 0
  br i1 %tobool449.not, label %if.end447.if.end481_crit_edge, label %do.body452

if.end447.if.end481_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end481

do.body452:                                       ; preds = %if.end447
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_error.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_error, %do.end471)) #8
          to label %if.then466 [label %do.end471], !srcloc !269

if.then466:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_error.__UNIQUE_ID_ddebug481, ptr noundef %ndev, ptr noundef nonnull @.str.64) #8
  br label %do.end471

do.end471:                                        ; preds = %if.then466, %do.body452
  %tx_errors472 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %112 = ptrtoint ptr %tx_errors472 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_errors472, align 4
  %inc473 = add i32 %113, 1
  store i32 %inc473, ptr %tx_errors472, align 4
  %114 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cf, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %or475 = or i32 %117, 8
  store i32 %or475, ptr %115, align 8
  %118 = load ptr, ptr %cf, align 4
  %arrayidx477 = getelementptr %struct.can_frame, ptr %118, i32 0, i32 5, i32 2
  %119 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx477, align 2
  %121 = or i8 %120, 32
  store i8 %121, ptr %arrayidx477, align 2
  br label %if.end481

if.end481:                                        ; preds = %do.end471, %if.end447.if.end481_crit_edge
  %base = getelementptr i8, ptr %ndev, i32 2624
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 8
  %mul = shl i32 %2, 4
  %add = or i32 %mul, 12
  %neg = and i32 %cerfl, 32767
  %and482 = xor i32 %neg, 32767
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @arm_heavy_mb() #8
  %124 = call i32 @llvm.bswap.i32(i32 %and482) #8
  %add.ptr.i591 = getelementptr i8, ptr %123, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i591, i32 %124) #8, !srcloc !258
  %call483 = call i32 @netif_rx(ptr noundef nonnull %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end481, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_state_change(ptr noundef %ndev, i16 noundef zeroext %txerr, i16 noundef zeroext %rxerr) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state2 = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !274
  %conv = zext i16 %txerr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %txerr)
  %cmp = icmp ult i16 %txerr, 96
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %rxerr)
  %cmp5 = icmp ult i16 %rxerr, 96
  %or.cond = and i1 %cmp, %cmp5
  %3 = or i16 %rxerr, %txerr
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %3)
  %4 = icmp ult i16 %3, 128
  %spec.select77 = select i1 %4, i32 1, i32 %1
  %state.0 = select i1 %or.cond, i32 0, i32 %spec.select77
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %1)
  %cmp18.not = icmp eq i32 %state.0, %1
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %do.body21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_state_change.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_state_change, %do.end33)) #8
          to label %if.then26 [label %do.end33], !srcloc !269

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state2, align 8
  %conv30 = zext i16 %rxerr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_state_change.__UNIQUE_ID_ddebug482, ptr noundef %ndev, ptr noundef nonnull @.str.66, i32 noundef %state.0, i32 noundef %6, i32 noundef %conv, i32 noundef %conv30) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body21
  %call34 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %7 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.end37:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp2(i16 %txerr, i16 %rxerr)
  %cmp40.not = icmp ult i16 %txerr, %rxerr
  %spec.select = select i1 %cmp40.not, i32 0, i32 %state.0
  call void @__sanitizer_cov_trace_cmp2(i16 %txerr, i16 %rxerr)
  %cmp44.not = icmp ugt i16 %txerr, %rxerr
  %cond49 = select i1 %cmp44.not, i32 0, i32 %state.0
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %ndev, ptr noundef %10, i32 noundef %spec.select, i32 noundef %cond49) #8
  %call50 = call i32 @netif_rx(ptr noundef nonnull %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_global_error(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr i8, ptr %ndev, i32 2620
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %channel = getelementptr i8, ptr %ndev, i32 2864
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 8
  %base = getelementptr i8, ptr %ndev, i32 2624
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr.i186 = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body4, label %if.end13

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_global_error, %if.end42.sink.split)) #8
          to label %if.then10 [label %if.end42.sink.split], !srcloc !269

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_global_error.__UNIQUE_ID_ddebug462, ptr noundef %ndev, ptr noundef nonnull @.str.68) #8
  br label %if.end42.sink.split

if.end13:                                         ; preds = %entry
  %and14 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp17 = icmp eq i32 %3, 1
  %or.cond172 = select i1 %tobool15.not, i1 %cmp17, i1 false
  br i1 %or.cond172, label %do.body20, label %if.end13.if.end42_crit_edge

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_global_error, %if.end42.sink.split)) #8
          to label %if.then34 [label %if.end42.sink.split], !srcloc !269

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_global_error.__UNIQUE_ID_ddebug463, ptr noundef %ndev, ptr noundef nonnull @.str.69) #8
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then34, %do.body20, %if.then10, %do.body4
  %tx_dropped40 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped40, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_dropped40, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end13.if.end42_crit_edge
  %and43 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end116_crit_edge, label %if.then45

if.end42.if.end116_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then45:                                        ; preds = %if.end42
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %mul = mul i32 %3, 12
  %add47 = add i32 %mul, 376
  %add.ptr.i187 = getelementptr i8, ptr %11, i32 %add47
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !259
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %and50 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then45.if.end81_crit_edge, label %do.body54

if.then45.if.end81_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.body54:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_global_error, %do.end73)) #8
          to label %if.then68 [label %do.end73], !srcloc !269

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_global_error.__UNIQUE_ID_ddebug464, ptr noundef %ndev, ptr noundef nonnull @.str.70) #8
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body54
  %tx_dropped74 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %14 = ptrtoint ptr %tx_dropped74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_dropped74, align 4
  %inc75 = add i32 %15, 1
  store i32 %inc75, ptr %tx_dropped74, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %and80 = and i32 %13, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and80) #8
  %add.ptr.i188 = getelementptr i8, ptr %17, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %18) #8, !srcloc !258
  br label %if.end81

if.end81:                                         ; preds = %do.end73, %if.then45.if.end81_crit_edge
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %mul83 = shl i32 %3, 2
  %add84 = add i32 %mul83, 216
  %add.ptr.i189 = getelementptr i8, ptr %20, i32 %add84
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #8, !srcloc !259
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %and86 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end81.if.end116_crit_edge, label %do.body90

if.end81.if.end116_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.body90:                                        ; preds = %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_global_error, %do.end109)) #8
          to label %if.then104 [label %do.end109], !srcloc !269

if.then104:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_global_error.__UNIQUE_ID_ddebug465, ptr noundef %ndev, ptr noundef nonnull @.str.71) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body90
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %23 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_dropped, align 4
  %inc110 = add i32 %24, 1
  store i32 %inc110, ptr %rx_dropped, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 8
  %and114 = and i32 %22, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %and114) #8
  %add.ptr.i190 = getelementptr i8, ptr %26, i32 %add84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %27) #8, !srcloc !258
  br label %if.end116

if.end116:                                        ; preds = %do.end109, %if.end81.if.end116_crit_edge, %if.end42.if.end116_crit_edge
  %fdmode = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %fdmode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fdmode, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool117.not = icmp eq i8 %29, 0
  %and119 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  %or.cond173 = select i1 %tobool117.not, i1 true, i1 %tobool120.not
  br i1 %or.cond173, label %if.end116.if.end143_crit_edge, label %do.body123

if.end116.if.end143_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

do.body123:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_global_error, %if.end143)) #8
          to label %if.then137 [label %if.end143], !srcloc !269

if.then137:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_global_error.__UNIQUE_ID_ddebug466, ptr noundef %ndev, ptr noundef nonnull @.str.72) #8
  br label %if.end143

if.end143:                                        ; preds = %if.then137, %do.body123, %if.end116.if.end143_crit_edge
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i191 = getelementptr i8, ptr %31, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 0) #8, !srcloc !258
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_channel_err_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7 = icmp ult i32 %call, 2
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %rcar_canfd_handle_channel_err.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.08 = phi i32 [ %call2, %rcar_canfd_handle_channel_err.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr %dev_id, i32 0, i32 %ch.08
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %ndev2.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2.i, align 8
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %mul.i = shl nuw nsw i32 %ch.08, 4
  %add.i = or i32 %mul.i, 12
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add5.i = or i32 %mul.i, 8
  %add.ptr.i37.i = getelementptr i8, ptr %9, i32 %add5.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #8, !srcloc !259
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %shr.i = lshr i32 %11, 24
  %conv.i = trunc i32 %shr.i to i16
  %shr7.i = lshr i32 %11, 16
  %12 = trunc i32 %shr7.i to i16
  %conv9.i = and i16 %12, 255
  %and10.i = and i32 %7, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i, !prof !265

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_error(ptr noundef %3, i32 noundef %7, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv9.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %14, label %if.then24.i [
    i32 3, label %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge
    i32 0, label %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge9
  ]

if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge9: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_channel_err.exit

if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_handle_channel_err.exit

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_canfd_state_change(ptr noundef %3, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv9.i) #8
  br label %rcar_canfd_handle_channel_err.exit

rcar_canfd_handle_channel_err.exit:               ; preds = %if.then24.i, %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge, %if.end.i.rcar_canfd_handle_channel_err.exit_crit_edge9
  %add = add nuw nsw i32 %ch.08, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %rcar_canfd_handle_channel_err.exit.for.body_crit_edge, label %rcar_canfd_handle_channel_err.exit.for.end_crit_edge

rcar_canfd_handle_channel_err.exit.for.end_crit_edge: ; preds = %rcar_canfd_handle_channel_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

rcar_canfd_handle_channel_err.exit.for.body_crit_edge: ; preds = %rcar_canfd_handle_channel_err.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rcar_canfd_handle_channel_err.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_channel_tx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_mask = getelementptr inbounds %struct.rcar_canfd_global, ptr %dev_id, i32 0, i32 6
  %call = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7 = icmp ult i32 %call, 2
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.08 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  tail call fastcc void @rcar_canfd_handle_channel_tx(ptr noundef %dev_id, i32 noundef %ch.08)
  %add = add nuw nsw i32 %ch.08, 1
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %channels_mask, i32 noundef 2, i32 noundef %add) #8
  %cmp = icmp ult i32 %call2, 2
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_do_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @rcar_canfd_start(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %dev, i32 2864
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 8
  %base = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %mul = shl i32 %1, 4
  %add = or i32 %mul, 8
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #8, !srcloc !259
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %shr = lshr i32 %5, 24
  %conv = trunc i32 %shr to i16
  %6 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %bec, align 2
  %shr2 = lshr i32 %5, 16
  %7 = trunc i32 %shr2 to i16
  %conv4 = and i16 %7, 255
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %8 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_rx_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp37 = icmp sgt i32 %quota, 0
  br i1 %cmp37, label %for.body.lr.ph, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.body.lr.ph:                                   ; preds = %entry
  %channel = getelementptr i8, ptr %napi, i32 232
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 8
  %base = getelementptr i8, ptr %napi, i32 -8
  %mul = shl i32 %1, 2
  %add1 = add i32 %mul, 216
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_pkts.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then11.critedge

if.end:                                           ; preds = %for.body
  tail call fastcc void @rcar_canfd_rx_pkt(ptr noundef %add.ptr)
  %and2 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %and8 = and i32 %5, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and8) #8
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %8) #8, !srcloc !258
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %num_pkts.038, 1
  %exitcond.not = icmp eq i32 %inc, %quota
  br i1 %exitcond.not, label %for.inc.if.end18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then11.critedge:                               ; preds = %for.body
  %call12 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %num_pkts.038) #8
  br i1 %call12, label %if.then13, label %if.then11.critedge.if.end18_crit_edge

if.then11.critedge.if.end18_crit_edge:            ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add16 = add i32 %mul, 184
  %add.ptr.i34 = getelementptr i8, ptr %10, i32 %add16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %12) #8, !srcloc !258
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then11.critedge.if.end18_crit_edge, %for.inc.if.end18_crit_edge, %entry.if.end18_crit_edge
  %num_pkts.036 = phi i32 [ %num_pkts.038, %if.then11.critedge.if.end18_crit_edge ], [ %num_pkts.038, %if.then13 ], [ 0, %entry.if.end18_crit_edge ], [ %quota, %for.inc.if.end18_crit_edge ]
  ret i32 %num_pkts.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr i8, ptr %ndev, i32 2620
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %can_clk = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %can_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.101, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call i32 @open_candev(ptr noundef %ndev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.102, i32 noundef %call3) #11
  br label %out_can_clock

if.end6:                                          ; preds = %if.end
  %napi = getelementptr i8, ptr %ndev, i32 2632
  tail call void @napi_enable(ptr noundef %napi) #8
  %call7 = tail call fastcc i32 @rcar_canfd_start(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %out_close

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

out_close:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @napi_disable(ptr noundef %napi) #8
  tail call void @close_candev(ptr noundef %ndev) #8
  br label %out_can_clock

out_can_clock:                                    ; preds = %out_close, %if.then5
  %err.0 = phi i32 [ %call3, %if.then5 ], [ %call7, %out_close ]
  %6 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %can_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %out_can_clock, %if.end10, %if.then
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %retval.0.i.ph, %if.then ], [ %err.0, %out_can_clock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpriv1 = getelementptr i8, ptr %ndev, i32 2620
  %0 = ptrtoint ptr %gpriv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpriv1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %channel.i = getelementptr i8, ptr %ndev, i32 2864
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 8
  %base.i = getelementptr i8, ptr %ndev, i32 2624
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %mul.i = shl i32 %5, 4
  %add1.i = or i32 %mul.i, 4
  %add.ptr.i67.i = getelementptr i8, ptr %7, i32 %add1.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %9 = and i32 %8, -50331649
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %10) #8, !srcloc !258
  %call2.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call2.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1378) #8
  %add12.i = or i32 %mul.i, 8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr75.i = getelementptr i8, ptr %12, i32 %add12.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #8, !srcloc !259
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %and76.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool.not77.i = icmp eq i32 %and76.i, 0
  br i1 %tobool.not77.i, label %entry.land.lhs.true.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then33.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call18.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call18.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then21.i, label %if.then33.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %16, i32 %add12.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #8, !srcloc !259
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %for.end.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %20, i32 %add12.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8, !srcloc !259
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !275
  %and.i = and i32 %22, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then33.i.land.lhs.true.i_crit_edge, label %if.then33.i.for.end.i_crit_edge

if.then33.i.for.end.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then33.i.land.lhs.true.i_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then33.i.for.end.i_crit_edge, %if.then21.i, %entry.for.end.i_crit_edge
  %sts.0.i = phi i32 [ %18, %if.then21.i ], [ %14, %entry.for.end.i_crit_edge ], [ %22, %if.then33.i.for.end.i_crit_edge ]
  %and37.i = and i32 %sts.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then40.i, label %for.end.i.rcar_canfd_stop.exit_crit_edge

for.end.i.rcar_canfd_stop.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_canfd_stop.exit

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.76, i32 noundef %5) #11
  br label %rcar_canfd_stop.exit

rcar_canfd_stop.exit:                             ; preds = %if.then40.i, %for.end.i.rcar_canfd_stop.exit_crit_edge
  %23 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel.i, align 8
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %mul.i.i = shl i32 %24, 4
  %add.i68.i = or i32 %mul.i.i, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %add.i68.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %28 = and i32 %27, -16711937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %28) #8, !srcloc !258
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add3.i.i = or i32 %mul.i.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i.i = getelementptr i8, ptr %30, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 0) #8, !srcloc !258
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %mul43.i = mul i32 %5, 12
  %add44.i = add i32 %mul43.i, 280
  %add.ptr.i69.i = getelementptr i8, ptr %32, i32 %add44.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %34 = and i32 %33, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %34) #8, !srcloc !258
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %mul47.i = shl i32 %5, 2
  %add48.i = add i32 %mul47.i, 184
  %add.ptr.i71.i = getelementptr i8, ptr %36, i32 %add48.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %38 = and i32 %37, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %38) #8, !srcloc !258
  %state.i = getelementptr i8, ptr %ndev, i32 2472
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %state.i, align 8
  %napi = getelementptr i8, ptr %ndev, i32 2632
  tail call void @napi_disable(ptr noundef %napi) #8
  %can_clk = getelementptr inbounds %struct.rcar_canfd_global, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %can_clk, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  tail call void @clk_unprepare(ptr noundef %41) #8
  tail call void @close_candev(ptr noundef %ndev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_canfd_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %channel = getelementptr i8, ptr %ndev, i32 2864
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.113)
  switch i16 %5, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !265

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp6.i = icmp ugt i8 %10, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !266

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %12)
  %cmp16.not.i = icmp eq i32 %12, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !265

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp21.i = icmp ugt i8 %14, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !266

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !265

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.108, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %18 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp38.i.i = icmp eq i16 %18, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex.i.i, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %16, align 8
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %skbcnt.i.i, align 4
  %25 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %28 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %and4 = and i32 %39, 536870911
  %or = or i32 %and4, -2147483648
  %and6 = and i32 %39, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not160 = icmp slt i32 %39, 0
  %id.0 = select i1 %tobool.not160, i32 %or, i32 %and6
  %and9 = and i32 %39, 1073741824
  %40 = or i32 %id.0, %and9
  %len = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len, align 4
  %call14 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %42) #8
  %and15 = zext i8 %call14 to i32
  %shl = shl i32 %and15, 28
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %43 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrlmode, align 4
  %and16 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %base49 = getelementptr i8, ptr %ndev, i32 2624
  %45 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base49, align 8
  br i1 %tobool17.not, label %if.else48, label %if.then18

if.then18:                                        ; preds = %if.end
  %mul = mul i32 %3, 384
  %add = add i32 %mul, 13312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  %add.ptr.i131 = getelementptr i8, ptr %46, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %47) #8, !srcloc !258
  %48 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base49, align 8
  %add22 = add i32 %mul, 13316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %50 = lshr exact i32 %shl, 24
  %add.ptr.i132 = getelementptr i8, ptr %49, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %50) #8, !srcloc !258
  %len.i133 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len.i133 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %52)
  %cmp.i = icmp eq i32 %52, 72
  br i1 %cmp.i, label %if.then25, label %if.then18.if.end39_crit_edge

if.then18.if.end39_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %flags27 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %flags27 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags27, align 1
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool30.not = icmp eq i8 %55, 0
  %spec.select = select i1 %tobool30.not, i32 4, i32 6
  %state = getelementptr i8, ptr %ndev, i32 2472
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp = icmp eq i32 %57, 2
  %or37 = zext i1 %cmp to i32
  %spec.select130 = or i32 %spec.select, %or37
  br label %if.end39

if.end39:                                         ; preds = %if.then25, %if.then18.if.end39_crit_edge
  %sts.1 = phi i32 [ 0, %if.then18.if.end39_crit_edge ], [ %spec.select130, %if.then25 ]
  %58 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base49, align 8
  %add42 = add i32 %mul, 13320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %sts.1) #8
  %add.ptr.i134 = getelementptr i8, ptr %59, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %60) #8, !srcloc !258
  %add45 = add i32 %mul, 13324
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp8.not.i = icmp eq i8 %62, 0
  br i1 %cmp8.not.i, label %if.end39.if.end61_crit_edge, label %for.body.lr.ph.i

if.end39.if.end61_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.body.lr.ph.i:                                 ; preds = %if.end39
  %conv.i = zext i8 %62 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div7.i = lshr i32 %sub.i, 2
  %data.i136 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i138, %for.body.i.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base49, align 8
  %mul.i = shl i32 %i.09.i, 2
  %add2.i = add i32 %add45, %mul.i
  %add.ptr.i137 = getelementptr i32, ptr %data.i136, i32 %i.09.i
  %65 = ptrtoint ptr %add.ptr.i137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i137, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #8, !srcloc !258
  %inc.i138 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i138, %div7.i
  br i1 %exitcond.not.i, label %for.body.i.if.end61_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end61_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.else48:                                        ; preds = %if.end
  %mul50 = mul i32 %3, 48
  %add51 = add i32 %mul50, 3712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  %add.ptr.i139 = getelementptr i8, ptr %46, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %68) #8, !srcloc !258
  %69 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base49, align 8
  %add55 = add i32 %mul50, 3716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %71 = lshr exact i32 %shl, 24
  %add.ptr.i140 = getelementptr i8, ptr %70, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %71) #8, !srcloc !258
  %add58 = add i32 %mul50, 3720
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp8.not.i142 = icmp eq i8 %73, 0
  br i1 %cmp8.not.i142, label %if.else48.if.end61_crit_edge, label %for.body.lr.ph.i148

if.else48.if.end61_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.body.lr.ph.i148:                              ; preds = %if.else48
  %conv.i143 = zext i8 %73 to i32
  %sub.i144 = add nuw nsw i32 %conv.i143, 3
  %div7.i145 = lshr i32 %sub.i144, 2
  %data.i147 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  br label %for.body.i156

for.body.i156:                                    ; preds = %for.body.i156.for.body.i156_crit_edge, %for.body.lr.ph.i148
  %i.09.i149 = phi i32 [ 0, %for.body.lr.ph.i148 ], [ %inc.i154, %for.body.i156.for.body.i156_crit_edge ]
  %74 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base49, align 8
  %mul.i150 = shl i32 %i.09.i149, 2
  %add2.i151 = add i32 %add58, %mul.i150
  %add.ptr.i152 = getelementptr i32, ptr %data.i147, i32 %i.09.i149
  %76 = ptrtoint ptr %add.ptr.i152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i152, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  %add.ptr.i.i153 = getelementptr i8, ptr %75, i32 %add2.i151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i153, i32 %78) #8, !srcloc !258
  %inc.i154 = add nuw nsw i32 %i.09.i149, 1
  %exitcond.not.i155 = icmp eq i32 %inc.i154, %div7.i145
  br i1 %exitcond.not.i155, label %for.body.i156.if.end61_crit_edge, label %for.body.i156.for.body.i156_crit_edge

for.body.i156.for.body.i156_crit_edge:            ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i156

for.body.i156.if.end61_crit_edge:                 ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61:                                         ; preds = %for.body.i156.if.end61_crit_edge, %if.else48.if.end61_crit_edge, %for.body.i.if.end61_crit_edge, %if.end39.if.end61_crit_edge
  %tx_head = getelementptr i8, ptr %ndev, i32 2856
  %79 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_head, align 8
  %rem = and i32 %80, 7
  %call62 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %rem, i32 noundef 0) #8
  %tx_lock = getelementptr i8, ptr %ndev, i32 2868
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %81 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_head, align 8
  %inc = add i32 %82, 1
  store i32 %inc, ptr %tx_head, align 8
  %tx_tail = getelementptr i8, ptr %ndev, i32 2860
  %83 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_tail, align 4
  %sub = sub i32 %inc, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp72 = icmp ugt i32 %sub, 7
  br i1 %cmp72, label %if.then74, label %if.end61.if.end75_crit_edge

if.end61.if.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %85 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %86, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end61.if.end75_crit_edge
  %base76 = getelementptr i8, ptr %ndev, i32 2624
  %87 = ptrtoint ptr %base76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base76, align 8
  %mul77 = mul i32 %3, 12
  %add78 = add i32 %mul77, 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i158 = getelementptr i8, ptr %88, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 -16777216) #8, !srcloc !258
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call67) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_canfd_start(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %ndev, i32 2864
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 8
  tail call fastcc void @rcar_canfd_set_bittiming(ptr noundef %ndev)
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 8
  %base.i = getelementptr i8, ptr %ndev, i32 2624
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %mul.i = shl i32 %3, 4
  %add.i = or i32 %mul.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !258
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add3.i = or i32 %mul.i, 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 %add3.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %9 = or i32 %8, 16711936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %9) #8, !srcloc !258
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %mul = shl i32 %1, 4
  %add1 = or i32 %mul, 4
  %add.ptr.i74 = getelementptr i8, ptr %11, i32 %add1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %13 = and i32 %12, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %13) #8, !srcloc !258
  %call2 = tail call i64 @ktime_get() #8
  %add.i75 = add i64 %call2, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 1311) #8
  %add12 = or i32 %mul, 8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr88 = getelementptr i8, ptr %15, i32 %add12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !259
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %and89 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool.not90 = icmp eq i32 %and89, 0
  br i1 %tobool.not90, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i75)
  %cmp3.i = icmp sgt i64 %call18, %add.i75
  br i1 %cmp3.i, label %if.then21, label %if.then33

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr27 = getelementptr i8, ptr %19, i32 %add12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !259
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !278
  br label %for.end

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %add12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !259
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  %and = and i32 %25, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.for.end_crit_edge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then33.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  %sts.0 = phi i32 [ %21, %if.then21 ], [ %17, %entry.for.end_crit_edge ], [ %25, %if.then33.for.end_crit_edge ]
  %and37 = and i32 %sts.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.103, i32 noundef %1) #11
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel, align 8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %mul.i78 = shl i32 %27, 4
  %add.i79 = or i32 %mul.i78, 4
  %add.ptr.i.i80 = getelementptr i8, ptr %29, i32 %add.i79
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %31 = and i32 %30, -16711937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 %31) #8, !srcloc !258
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add3.i81 = or i32 %mul.i78, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %add.ptr.i7.i82 = getelementptr i8, ptr %33, i32 %add3.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i82, i32 0) #8, !srcloc !258
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %mul43 = mul i32 %1, 12
  %add44 = add i32 %mul43, 280
  %add.ptr.i83 = getelementptr i8, ptr %35, i32 %add44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %37 = or i32 %36, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %37) #8, !srcloc !258
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %mul47 = shl i32 %1, 2
  %add48 = add i32 %mul47, 184
  %add.ptr.i84 = getelementptr i8, ptr %39, i32 %add48
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !261
  %41 = or i32 %40, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !262
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %41) #8, !srcloc !258
  %state = getelementptr i8, ptr %ndev, i32 2472
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then40
  %retval.0 = phi i32 [ -110, %if.then40 ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_set_bittiming(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr i8, ptr %dev, i32 2864
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 8
  %brp2 = getelementptr i8, ptr %dev, i32 2368
  %2 = ptrtoint ptr %brp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brp2, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, -1
  %sjw3 = getelementptr i8, ptr %dev, i32 2364
  %5 = ptrtoint ptr %sjw3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sjw3, align 4
  %7 = trunc i32 %6 to i16
  %conv5 = add i16 %7, -1
  %prop_seg = getelementptr i8, ptr %dev, i32 2352
  %8 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %dev, i32 2356
  %10 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %11, %9
  %conv7 = add i32 %add, 65535
  %phase_seg2 = getelementptr i8, ptr %dev, i32 2360
  %12 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phase_seg2, align 4
  %14 = trunc i32 %13 to i16
  %conv9 = add i16 %14, -1
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %15 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv96 = and i32 %conv7, 65535
  %and97 = shl nuw i32 %conv96, 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shl = and i32 %and97, 8323072
  %conv13 = zext i16 %conv to i32
  %and14 = and i32 %conv13, 1023
  %conv16 = zext i16 %conv5 to i32
  %and17 = shl nuw nsw i32 %conv16, 11
  %shl18 = and i32 %and17, 63488
  %conv20 = zext i16 %conv9 to i32
  %and21 = shl i32 %conv20, 24
  %shl22 = and i32 %and21, 520093696
  %or = or i32 %shl18, %and14
  %or19 = or i32 %or, %shl
  %or23 = or i32 %or19, %shl22
  %base = getelementptr i8, ptr %dev, i32 2624
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %mul = shl i32 %1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or23) #8
  %add.ptr.i188 = getelementptr i8, ptr %18, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %19) #8, !srcloc !258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_set_bittiming, %do.end37)) #8
          to label %if.then31 [label %do.end37], !srcloc !269

if.then31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr i8, ptr %dev, i32 2616
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug483, ptr noundef %21, ptr noundef nonnull @.str.105, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv96, i32 noundef %conv20) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %if.then
  %brp38 = getelementptr i8, ptr %dev, i32 2400
  %22 = ptrtoint ptr %brp38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brp38, align 4
  %conv40 = add i32 %23, 65535
  %sjw41 = getelementptr i8, ptr %dev, i32 2396
  %24 = ptrtoint ptr %sjw41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sjw41, align 4
  %conv43 = add i32 %25, 65535
  %prop_seg44 = getelementptr i8, ptr %dev, i32 2384
  %26 = ptrtoint ptr %prop_seg44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prop_seg44, align 4
  %phase_seg145 = getelementptr i8, ptr %dev, i32 2388
  %28 = ptrtoint ptr %phase_seg145 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phase_seg145, align 4
  %add46 = add i32 %27, 65535
  %conv48 = add i32 %add46, %29
  %phase_seg249 = getelementptr i8, ptr %dev, i32 2392
  %30 = ptrtoint ptr %phase_seg249 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phase_seg249, align 4
  %conv51 = add i32 %31, 65535
  %and53 = shl i32 %conv48, 16
  %shl54 = and i32 %and53, 983040
  %and56 = and i32 %conv40, 255
  %and60 = shl i32 %conv43, 24
  %shl61 = and i32 %and60, 117440512
  %and64 = shl i32 %conv51, 20
  %shl65 = and i32 %and64, 7340032
  %or58 = or i32 %shl61, %and56
  %or62 = or i32 %or58, %shl54
  %or66 = or i32 %or62, %shl65
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %mul68 = shl i32 %1, 5
  %add69 = add i32 %mul68, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or66) #8
  %add.ptr.i189 = getelementptr i8, ptr %33, i32 %add69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %34) #8, !srcloc !258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_set_bittiming, %if.end140)) #8
          to label %if.then85 [label %if.end140], !srcloc !269

if.then85:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %conv63 = and i32 %conv51, 65535
  %conv59 = and i32 %conv43, 65535
  %conv55 = and i32 %conv40, 65535
  %conv52 = and i32 %conv48, 65535
  %ndev86 = getelementptr i8, ptr %dev, i32 2616
  %35 = ptrtoint ptr %ndev86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev86, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug484, ptr noundef %36, ptr noundef nonnull @.str.106, i32 noundef %conv55, i32 noundef %conv59, i32 noundef %conv52, i32 noundef %conv63) #8
  br label %if.end140

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl98 = and i32 %and97, 983040
  %conv99 = zext i16 %conv to i32
  %and100 = and i32 %conv99, 1023
  %conv103 = zext i16 %conv5 to i32
  %and104 = shl i32 %conv103, 24
  %shl105 = and i32 %and104, 50331648
  %conv107 = zext i16 %conv9 to i32
  %and108 = shl i32 %conv107, 20
  %shl109 = and i32 %and108, 7340032
  %or102 = or i32 %shl105, %and100
  %or106 = or i32 %or102, %shl98
  %or110 = or i32 %or106, %shl109
  %base111 = getelementptr i8, ptr %dev, i32 2624
  %37 = ptrtoint ptr %base111 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base111, align 8
  %mul112 = shl i32 %1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or110) #8
  %add.ptr.i190 = getelementptr i8, ptr %38, i32 %mul112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %39) #8, !srcloc !258
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_set_bittiming, %if.end140)) #8
          to label %if.then129 [label %if.end140], !srcloc !269

if.then129:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ndev130 = getelementptr i8, ptr %dev, i32 2616
  %40 = ptrtoint ptr %ndev130 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev130, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug485, ptr noundef %41, ptr noundef nonnull @.str.107, i32 noundef %conv99, i32 noundef %conv103, i32 noundef %conv96, i32 noundef %conv107) #8
  br label %if.end140

if.end140:                                        ; preds = %if.then129, %if.else, %if.then85, %do.end37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_canfd_rx_pkt(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %stats1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !274
  %channel = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 8
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %5 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %base19 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 3
  %7 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base19, align 8
  br i1 %tobool.not, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  %mul = shl i32 %4, 7
  %add2 = add i32 %mul, 12288
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !259
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %11 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base19, align 8
  %add5 = add i32 %mul, 12292
  %add.ptr.i192 = getelementptr i8, ptr %12, i32 %add5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #8, !srcloc !259
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %15 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base19, align 8
  %add9 = add i32 %mul, 12296
  %add.ptr.i193 = getelementptr i8, ptr %16, i32 %add9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #8, !srcloc !259
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %and11 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev, align 8
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call ptr @alloc_canfd_skb(ptr noundef %20, ptr noundef nonnull %cf) #8
  br label %if.end29

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call ptr @alloc_can_skb(ptr noundef %20, ptr noundef nonnull %cf) #8
  br label %if.end29

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul20 = shl i32 %4, 4
  %add21 = add i32 %mul20, 3584
  %add.ptr.i194 = getelementptr i8, ptr %8, i32 %add21
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #8, !srcloc !259
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %23 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base19, align 8
  %add25 = add i32 %mul20, 3588
  %add.ptr.i195 = getelementptr i8, ptr %24, i32 %add25
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #8, !srcloc !259
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 8
  %call28 = call ptr @alloc_can_skb(ptr noundef %28, ptr noundef nonnull %cf) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else18, %if.else, %if.then13
  %dlc.0 = phi i32 [ %14, %if.then13 ], [ %14, %if.else ], [ %26, %if.else18 ]
  %id.0 = phi i32 [ %10, %if.then13 ], [ %10, %if.else ], [ %22, %if.else18 ]
  %sts.0 = phi i32 [ %18, %if.then13 ], [ %18, %if.else ], [ 0, %if.else18 ]
  %skb.0 = phi ptr [ %call15, %if.then13 ], [ %call17, %if.else ], [ %call28, %if.else18 ]
  %tobool30.not = icmp eq ptr %skb.0, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.0)
  %tobool34.not = icmp sgt i32 %id.0, -1
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %and36 = and i32 %id.0, 536870911
  %or = or i32 %and36, -2147483648
  %31 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or, ptr %32, align 8
  br label %if.end40

if.else37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %and38 = and i32 %id.0, 2047
  %34 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and38, ptr %35, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35
  %37 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrlmode, align 4
  %and43 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else102, label %if.then45

if.then45:                                        ; preds = %if.end40
  %and46 = and i32 %sts.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %dlc.0, 28
  %conv = trunc i32 %shr to i8
  %call50 = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv) #8
  br label %if.end62

if.else51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dlc.0)
  %cmp = icmp sgt i32 %dlc.0, -1
  %shr52 = lshr i32 %dlc.0, 28
  %phi.cast191 = trunc i32 %shr52 to i8
  %cond = select i1 %cmp, i8 %phi.cast191, i8 8
  br label %if.end62

if.end62:                                         ; preds = %if.else51, %if.then48
  %cond.sink = phi i8 [ %cond, %if.else51 ], [ %call50, %if.then48 ]
  %39 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %39)
  %.sink = load ptr, ptr %cf, align 4
  %len61 = getelementptr inbounds %struct.canfd_frame, ptr %.sink, i32 0, i32 1
  %40 = ptrtoint ptr %len61 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %cond.sink, ptr %len61, align 4
  %and63 = and i32 %sts.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end81_crit_edge, label %if.then65

if.end62.if.end81_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf, align 4
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags, align 1
  %45 = or i8 %44, 2
  store i8 %45, ptr %flags, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_canfd_rx_pkt.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_canfd_rx_pkt, %if.end81)) #8
          to label %if.then76 [label %if.end81], !srcloc !269

if.then76:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_canfd_rx_pkt.__UNIQUE_ID_ddebug488, ptr noundef %47, ptr noundef nonnull @.str.111) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.then65, %if.end62.if.end81_crit_edge
  %tobool47.not.not = xor i1 %tobool47.not, true
  %and84 = and i32 %id.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %or.cond = select i1 %tobool47.not.not, i1 true, i1 %tobool85.not
  br i1 %or.cond, label %if.else89, label %if.then86

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cf, align 4
  br label %if.end129.sink.split

if.else89:                                        ; preds = %if.end81
  %and90 = and i32 %sts.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else89.if.end97_crit_edge, label %if.then92

if.else89.if.end97_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf, align 4
  %flags93 = getelementptr inbounds %struct.canfd_frame, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %flags93 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags93, align 1
  %54 = or i8 %53, 1
  store i8 %54, ptr %flags93, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.else89.if.end97_crit_edge
  %55 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf, align 4
  %mul98 = shl i32 %4, 7
  %add99 = add i32 %mul98, 12300
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp8.not.i = icmp eq i8 %58, 0
  br i1 %cmp8.not.i, label %if.end97.if.end129_crit_edge, label %for.body.lr.ph.i

if.end97.if.end129_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

for.body.lr.ph.i:                                 ; preds = %if.end97
  %conv.i = zext i8 %58 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div7.i = lshr i32 %sub.i, 2
  %base.i = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %56, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %mul.i = shl i32 %i.09.i, 2
  %add2.i = add i32 %add99, %mul.i
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %add2.i
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !259
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %add.ptr.i196 = getelementptr i32, ptr %data.i, i32 %i.09.i
  %63 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %add.ptr.i196, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div7.i
  br i1 %exitcond.not.i, label %for.body.i.if.end129_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end129_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.else102:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dlc.0)
  %cmp109 = icmp sgt i32 %dlc.0, -1
  %shr103 = lshr i32 %dlc.0, 28
  %phi.cast = trunc i32 %shr103 to i8
  %cond116 = select i1 %cmp109, i8 %phi.cast, i8 8
  %64 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cf, align 4
  %len118 = getelementptr inbounds %struct.canfd_frame, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %len118 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %cond116, ptr %len118, align 4
  %and119 = and i32 %id.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.else124, label %if.else102.if.end129.sink.split_crit_edge

if.else102.if.end129.sink.split_crit_edge:        ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129.sink.split

if.else124:                                       ; preds = %if.else102
  %mul125 = shl i32 %4, 4
  %add126 = add i32 %mul125, 3592
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond116)
  %cmp8.not.i198 = icmp eq i8 %cond116, 0
  br i1 %cmp8.not.i198, label %if.else124.if.end129_crit_edge, label %for.body.lr.ph.i204

if.else124.if.end129_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

for.body.lr.ph.i204:                              ; preds = %if.else124
  %narrow = add nuw nsw i8 %cond116, 3
  %67 = lshr i8 %narrow, 2
  %base.i202 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 3
  %data.i203 = getelementptr inbounds %struct.canfd_frame, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %base.i202 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i202, align 8
  %add.ptr.i.i208 = getelementptr i8, ptr %69, i32 %add126
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208) #8, !srcloc !259
  %71 = call i32 @llvm.bswap.i32(i32 %70) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %72 = ptrtoint ptr %data.i203 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %exitcond.not.i211 = icmp eq i8 %67, 1
  br i1 %exitcond.not.i211, label %for.body.lr.ph.i204.if.end129_crit_edge, label %for.body.i212.1

for.body.lr.ph.i204.if.end129_crit_edge:          ; preds = %for.body.lr.ph.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

for.body.i212.1:                                  ; preds = %for.body.lr.ph.i204
  %73 = ptrtoint ptr %base.i202 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i202, align 8
  %add2.i207.1 = add i32 %mul125, 3596
  %add.ptr.i.i208.1 = getelementptr i8, ptr %74, i32 %add2.i207.1
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208.1) #8, !srcloc !259
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %add.ptr.i209.1 = getelementptr %struct.canfd_frame, ptr %65, i32 0, i32 5, i32 4
  %77 = ptrtoint ptr %add.ptr.i209.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %add.ptr.i209.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %exitcond.not.i211.1 = icmp eq i8 %67, 2
  br i1 %exitcond.not.i211.1, label %for.body.i212.1.if.end129_crit_edge, label %for.body.i212.2

for.body.i212.1.if.end129_crit_edge:              ; preds = %for.body.i212.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

for.body.i212.2:                                  ; preds = %for.body.i212.1
  %78 = ptrtoint ptr %base.i202 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i202, align 8
  %add2.i207.2 = add i32 %mul125, 3600
  %add.ptr.i.i208.2 = getelementptr i8, ptr %79, i32 %add2.i207.2
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208.2) #8, !srcloc !259
  %81 = call i32 @llvm.bswap.i32(i32 %80) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %add.ptr.i209.2 = getelementptr %struct.canfd_frame, ptr %65, i32 0, i32 5, i32 8
  %82 = ptrtoint ptr %add.ptr.i209.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %add.ptr.i209.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %exitcond.not.i211.2 = icmp eq i8 %67, 3
  br i1 %exitcond.not.i211.2, label %for.body.i212.2.if.end129_crit_edge, label %for.body.i212.3

for.body.i212.2.if.end129_crit_edge:              ; preds = %for.body.i212.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

for.body.i212.3:                                  ; preds = %for.body.i212.2
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %base.i202 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i202, align 8
  %add2.i207.3 = add i32 %mul125, 3604
  %add.ptr.i.i208.3 = getelementptr i8, ptr %84, i32 %add2.i207.3
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208.3) #8, !srcloc !259
  %86 = call i32 @llvm.bswap.i32(i32 %85) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !260
  %add.ptr.i209.3 = getelementptr %struct.canfd_frame, ptr %65, i32 0, i32 5, i32 12
  %87 = ptrtoint ptr %add.ptr.i209.3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr.i209.3, align 4
  br label %if.end129

if.end129.sink.split:                             ; preds = %if.else102.if.end129.sink.split_crit_edge, %if.then86
  %.sink221 = phi ptr [ %49, %if.then86 ], [ %65, %if.else102.if.end129.sink.split_crit_edge ]
  %88 = ptrtoint ptr %.sink221 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %.sink221, align 8
  %or123 = or i32 %89, 1073741824
  store i32 %or123, ptr %.sink221, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %for.body.i212.3, %for.body.i212.2.if.end129_crit_edge, %for.body.i212.1.if.end129_crit_edge, %for.body.lr.ph.i204.if.end129_crit_edge, %if.else124.if.end129_crit_edge, %for.body.i.if.end129_crit_edge, %if.end97.if.end129_crit_edge
  %base130 = getelementptr inbounds %struct.rcar_canfd_channel, ptr %priv, i32 0, i32 3
  %90 = ptrtoint ptr %base130 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base130, align 8
  %mul131 = shl i32 %4, 2
  %add132 = add i32 %mul131, 248
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !257
  call void @arm_heavy_mb() #8
  %add.ptr.i214 = getelementptr i8, ptr %91, i32 %add132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 -16777216) #8, !srcloc !258
  %92 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cf, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %and135 = and i32 %95, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then137, label %if.end129.if.end141_crit_edge

if.end129.if.end141_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then137:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %len138 = getelementptr inbounds %struct.canfd_frame, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %len138 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %len138, align 4
  %conv139 = zext i8 %97 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %98 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_bytes, align 4
  %add140 = add i32 %99, %conv139
  store i32 %add140, ptr %rx_bytes, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end129.if.end141_crit_edge
  %100 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stats1, align 4
  %inc142 = add i32 %101, 1
  store i32 %inc142, ptr %stats1, align 4
  %call143 = call i32 @netif_receive_skb(ptr noundef nonnull %skb.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_canfd_suspend(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_canfd_resume(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !192, !193, !195, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !218, !220, !221, !222, !224, !225, !227, !228, !230, !231, !233, !235, !237, !239, !241, !242, !243, !245}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__initcall__kmod_rcar_canfd__491_2032_rcar_canfd_driver_init6, !1, !"__initcall__kmod_rcar_canfd__491_2032_rcar_canfd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2032, i32 1}
!2 = !{ptr @__exitcall_rcar_canfd_driver_exit, !1, !"__exitcall_rcar_canfd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author492, !4, !"__UNIQUE_ID_author492", i1 false, i1 false}
!4 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2034, i32 1}
!5 = !{ptr @__UNIQUE_ID_file493, !6, !"__UNIQUE_ID_file493", i1 false, i1 false}
!6 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2035, i32 1}
!7 = !{ptr @__UNIQUE_ID_license494, !6, !"__UNIQUE_ID_license494", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description495, !9, !"__UNIQUE_ID_description495", i1 false, i1 false}
!9 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2036, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias496, !11, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!11 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2037, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2024, i32 11}
!14 = !{ptr @rcar_canfd_driver, !15, !"rcar_canfd_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2022, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1762, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1765, i32 53}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1769, i32 53}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1774, i32 51}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1782, i32 50}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1790, i32 45}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1794, i32 46}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1811, i32 63}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1814, i32 11}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1816, i32 63}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1819, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1823, i32 41}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1826, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rcar_canfd_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @rcar_canfd_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1834, i32 44}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1836, i32 45}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1839, i32 4}
!54 = !{ptr @rcar_canfd_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rcar_canfd_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1865, i32 12}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1867, i32 4}
!60 = !{ptr @rcar_canfd_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rcar_canfd_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1874, i32 12}
!64 = !{ptr @rcar_canfd_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1876, i32 4}
!66 = !{ptr @rcar_canfd_probe._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1883, i32 12}
!69 = !{ptr @rcar_canfd_probe._entry.31, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1886, i32 4}
!71 = !{ptr @rcar_canfd_probe._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1893, i32 12}
!74 = !{ptr @rcar_canfd_probe._entry.34, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1895, i32 4}
!76 = !{ptr @rcar_canfd_probe._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1913, i32 3}
!79 = !{ptr @rcar_canfd_probe._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rcar_canfd_probe._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1920, i32 3}
!83 = !{ptr @rcar_canfd_probe._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rcar_canfd_probe._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1950, i32 3}
!87 = !{ptr @rcar_canfd_probe._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rcar_canfd_probe._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1961, i32 2}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rcar_canfd_probe._entry.45, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @rcar_canfd_probe._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 933, i32 2}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug467, !95, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 944, i32 3}
!100 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug468, !99, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 950, i32 3}
!103 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug469, !102, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 955, i32 3}
!106 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug470, !105, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 960, i32 3}
!109 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug471, !108, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 965, i32 3}
!112 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug472, !111, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 970, i32 3}
!115 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug473, !114, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 976, i32 3}
!118 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug474, !117, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 981, i32 3}
!121 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug475, !120, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 986, i32 3}
!124 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug476, !123, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 992, i32 3}
!127 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug477, !126, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 997, i32 3}
!130 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug478, !129, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1007, i32 3}
!133 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug479, !132, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1017, i32 3}
!136 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug480, !135, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1025, i32 3}
!139 = !{ptr @rcar_canfd_error.__UNIQUE_ID_ddebug481, !138, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1161, i32 3}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @rcar_canfd_state_change.__UNIQUE_ID_ddebug482, !141, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 884, i32 3}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug462, !145, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 888, i32 3}
!150 = !{ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug463, !149, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 895, i32 4}
!153 = !{ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug464, !152, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 904, i32 4}
!156 = !{ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug465, !155, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 915, i32 3}
!159 = !{ptr @rcar_canfd_global_error.__UNIQUE_ID_ddebug466, !158, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 642, i32 3}
!162 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug459, !161, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 655, i32 3}
!166 = !{ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug460, !165, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 684, i32 4}
!169 = !{ptr @rcar_canfd_reset_controller.__UNIQUE_ID_ddebug461, !168, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1635, i32 3}
!172 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @rcar_canfd_channel_probe._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @rcar_canfd_channel_probe._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1646, i32 2}
!177 = !{ptr @rcar_canfd_channel_probe._entry.79, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @rcar_canfd_channel_probe._entry_ptr.81, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1653, i32 53}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1653, i32 65}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1659, i32 52}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1659, i32 64}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1666, i32 8}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1675, i32 4}
!191 = !{ptr @rcar_canfd_channel_probe._entry.87, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rcar_canfd_channel_probe._entry_ptr.89, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1680, i32 8}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1689, i32 4}
!197 = !{ptr @rcar_canfd_channel_probe._entry.91, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @rcar_canfd_channel_probe._entry_ptr.93, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @rcar_canfd_channel_probe.__key, !200, !"__key", i1 false, i1 false}
!200 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1718, i32 2}
!201 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1723, i32 3}
!204 = !{ptr @rcar_canfd_channel_probe._entry.95, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @rcar_canfd_channel_probe._entry_ptr.97, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1727, i32 2}
!208 = !{ptr @rcar_canfd_channel_probe._entry.98, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @rcar_canfd_channel_probe._entry_ptr.100, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @rcar_canfd_netdev_ops, !211, !"rcar_canfd_netdev_ops", i1 false, i1 false}
!211 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1618, i32 36}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1339, i32 20}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1345, i32 20}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1313, i32 20}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1267, i32 3}
!220 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug483, !219, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1280, i32 3}
!224 = !{ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug484, !223, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1288, i32 3}
!227 = !{ptr @rcar_canfd_set_bittiming.__UNIQUE_ID_ddebug485, !226, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!228 = distinct !{null, !229, !"__already_done", i1 false, i1 false}
!229 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!230 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @rcar_canfd_nom_bittiming_const, !232, !"rcar_canfd_nom_bittiming_const", i1 false, i1 false}
!232 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 527, i32 41}
!233 = !{ptr @rcar_canfd_data_bittiming_const, !234, !"rcar_canfd_data_bittiming_const", i1 false, i1 false}
!234 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 540, i32 41}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/can/dev.h", i32 142, i32 8}
!237 = !{ptr @rcar_canfd_bittiming_const, !238, !"rcar_canfd_bittiming_const", i1 false, i1 false}
!238 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 553, i32 41}
!239 = !{ptr @.str.110, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 1523, i32 4}
!241 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @rcar_canfd_rx_pkt.__UNIQUE_ID_ddebug488, !240, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!243 = !{ptr @rcar_canfd_of_table, !244, !"rcar_canfd_of_table", i1 false, i1 false}
!244 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2014, i32 49}
!245 = !{ptr @rcar_canfd_pm_ops, !246, !"rcar_canfd_pm_ops", i1 false, i1 false}
!246 = !{!"../drivers/net/can/rcar/rcar_canfd.c", i32 2011, i32 8}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i8 0, i8 2}
!257 = !{i64 2157183245}
!258 = !{i64 4673434}
!259 = !{i64 4673852}
!260 = !{i64 2157182864}
!261 = !{i64 2157181852}
!262 = !{i64 2157182053}
!263 = !{i64 2157312189}
!264 = !{i64 2157312707}
!265 = !{!"branch_weights", i32 2000, i32 1}
!266 = !{!"branch_weights", i32 1, i32 2000}
!267 = !{i64 2157185409}
!268 = !{i64 2157185927}
!269 = !{i64 2149010929, i64 2149010934, i64 2149010947, i64 2149010991, i64 2149011025, i64 2149011046}
!270 = !{i64 2157190155}
!271 = !{i64 2157190673}
!272 = !{i64 2157195603}
!273 = !{i64 2157196193}
!274 = !{!"auto-init"}
!275 = !{i64 2157272835}
!276 = !{i64 2157273421}
!277 = !{i64 2157269982}
!278 = !{i64 2157270568}
