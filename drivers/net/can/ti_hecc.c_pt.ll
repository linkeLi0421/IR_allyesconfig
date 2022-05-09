; ModuleID = '/llk/IR_all_yes/drivers/net/can/ti_hecc.c_pt.bc'
source_filename = "../drivers/net/can/ti_hecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.can_berr_counter = type { i16, i16 }
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }
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

@__UNIQUE_ID_version461 = internal constant [20 x i8] c"ti_hecc.version=0.7\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti_hecc\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.7\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_ti_hecc__472_1046_ti_hecc_driver_init6 = internal global ptr @ti_hecc_driver_init, section ".initcall6.init", align 4
@ti_hecc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_hecc_probe, ptr @ti_hecc_remove, ptr null, ptr @ti_hecc_suspend, ptr @ti_hecc_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_hecc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_hecc_driver_exit = internal global ptr @ti_hecc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author473 = internal constant [45 x i8] c"ti_hecc.author=Anant Gole <anantgole@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file474 = internal constant [37 x i8] c"ti_hecc.file=drivers/net/can/ti_hecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [23 x i8] c"ti_hecc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description476 = internal constant [58 x i8] c"ti_hecc.description=TI High End CAN Controller Driver 0.7\00", section ".modinfo", align 1
@__UNIQUE_ID_alias477 = internal constant [31 x i8] c"ti_hecc.alias=platform:ti_hecc\00", section ".modinfo", align 1
@ti_hecc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3517-hecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xceiver\00", [24 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 876, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc_candev failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_hecc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/can/ti_hecc.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr = internal global ptr @ti_hecc_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hecc\00", [27 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 884, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hecc ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.12 = internal global ptr @ti_hecc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hecc-ram\00", [23 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 893, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hecc-ram ioremap failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.16 = internal global ptr @ti_hecc_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mbx\00", [28 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mbx ioremap failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.20 = internal global ptr @ti_hecc_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,use-hecc1int\00", [16 x i8] zeroinitializer }, align 32
@ti_hecc_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ti_hecc\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@ti_hecc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->mbx_lock\00", [16 x i8] zeroinitializer }, align 32
@ti_hecc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ti_hecc_open, ptr @ti_hecc_close, ptr @ti_hecc_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hecc_ck\00", [24 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 929, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No clock available\0A\00", [44 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.26 = internal global ptr @ti_hecc_probe._entry.24, section ".printk_index", align 4
@ti_hecc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.6, i32 938, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_prepare_enable() failed\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.29 = internal global ptr @ti_hecc_probe._entry.27, section ".printk_index", align 4
@ti_hecc_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.6, i32 947, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can_rx_offload_add_timestamp() failed\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.32 = internal global ptr @ti_hecc_probe._entry.30, section ".printk_index", align 4
@ti_hecc_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.5, ptr @.str.6, i32 953, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_candev() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.35 = internal global ptr @ti_hecc_probe._entry.33, section ".printk_index", align 4
@ti_hecc_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.5, ptr @.str.6, i32 960, ptr @.str.38, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device registered (reg_base=%p, irq=%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ti_hecc_probe._entry_ptr.39 = internal global ptr @ti_hecc_probe._entry.36, section ".printk_index", align 4
@ti_hecc_reset.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.6, ptr @.str.41, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti_hecc_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resetting hecc ...\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WARN: Triple sampling not set due to h/w limitations\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setting CANBTC=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error requesting interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"open_candev() failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_hecc_interrupt.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_hecc_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error Warning interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_hecc_interrupt.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.6, ptr @.str.48, i8 0, i8 -78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error passive interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_hecc_interrupt.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.6, ptr @.str.49, i8 0, i8 -76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bus off interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: alloc_can_err_skb() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.ti_hecc_error = private unnamed_addr constant [14 x i8] c"ti_hecc_error\00", align 1
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BUG: TX mbx not ready tx_head=%08X, tx_tail=%08X\0A\00", [46 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 42, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"ti_hecc_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1035, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"ti_hecc_dt_ids\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 849, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 868, i32 47 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 876, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 882, i32 59 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 884, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 891, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 893, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 899, i32 58 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 901, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 914, i32 49 }
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"ti_hecc_bittiming_const\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 175, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 921, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"ti_hecc_netdev_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 842, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 927, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 929, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 938, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 947, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 953, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 959, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 308, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 278, i32 9 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 286, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 802, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 811, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 705, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 713, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 721, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 617, i32 9 }
@___asan_gen_.201 = private constant [29 x i8] c"../drivers/net/can/ti_hecc.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 492, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 104, i32 6 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias477, ptr @__UNIQUE_ID_author473, ptr @__UNIQUE_ID_description476, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__UNIQUE_ID_version461, ptr @__exitcall_ti_hecc_driver_exit, ptr @__initcall__kmod_ti_hecc__472_1046_ti_hecc_driver_init6, ptr @__modver_attr, ptr @ti_hecc_driver_exit, ptr @ti_hecc_probe._entry, ptr @ti_hecc_probe._entry.10, ptr @ti_hecc_probe._entry.14, ptr @ti_hecc_probe._entry.18, ptr @ti_hecc_probe._entry.24, ptr @ti_hecc_probe._entry.27, ptr @ti_hecc_probe._entry.30, ptr @ti_hecc_probe._entry.33, ptr @ti_hecc_probe._entry.36, ptr @ti_hecc_probe._entry_ptr, ptr @ti_hecc_probe._entry_ptr.12, ptr @ti_hecc_probe._entry_ptr.16, ptr @ti_hecc_probe._entry_ptr.20, ptr @ti_hecc_probe._entry_ptr.26, ptr @ti_hecc_probe._entry_ptr.29, ptr @ti_hecc_probe._entry_ptr.32, ptr @ti_hecc_probe._entry_ptr.35, ptr @ti_hecc_probe._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ti_hecc_driver, ptr @ti_hecc_dt_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @ti_hecc_bittiming_const, ptr @ti_hecc_probe.__key, ptr @.str.22, ptr @ti_hecc_netdev_ops, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_hecc_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_hecc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_hecc_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_hecc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call
  %call8 = tail call ptr @alloc_candev_mqs(i32 noundef 760, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %call14 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #7
  %base = getelementptr i8, ptr %call8, i32 2992
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %base, align 8
  %cmp.i190 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end20, label %if.end24

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %probe_exit_candev

if.end24:                                         ; preds = %if.end12
  %call25 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #7
  %hecc_ram = getelementptr i8, ptr %call8, i32 2996
  %6 = ptrtoint ptr %hecc_ram to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call25, ptr %hecc_ram, align 4
  %cmp.i191 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  %7 = ptrtoint ptr %hecc_ram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hecc_ram, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %probe_exit_candev

if.end35:                                         ; preds = %if.end24
  %call36 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #7
  %mbx = getelementptr i8, ptr %call8, i32 3000
  %10 = ptrtoint ptr %mbx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call36, ptr %mbx, align 8
  %cmp.i192 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %11 = ptrtoint ptr %mbx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbx, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %probe_exit_candev

if.end46:                                         ; preds = %if.end35
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call47, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp49 = icmp slt i32 %call47, 0
  br i1 %cmp49, label %if.end46.probe_exit_candev_crit_edge, label %if.end52

if.end46.probe_exit_candev_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %probe_exit_candev

if.end52:                                         ; preds = %if.end46
  %ndev53 = getelementptr i8, ptr %call8, i32 2984
  %15 = ptrtoint ptr %ndev53 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8, ptr %ndev53, align 8
  %reg_xceiver54 = getelementptr i8, ptr %call8, i32 3060
  %16 = ptrtoint ptr %reg_xceiver54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select, ptr %reg_xceiver54, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i, null
  %use_hecc1int = getelementptr i8, ptr %call8, i32 3004
  %frombool = zext i1 %tobool.i to i8
  %17 = ptrtoint ptr %use_hecc1int to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %use_hecc1int, align 4
  %bittiming_const = getelementptr i8, ptr %call8, i32 2332
  %18 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ti_hecc_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call8, i32 2596
  %19 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ti_hecc_do_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call8, i32 2608
  %20 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ti_hecc_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call8, i32 2480
  %21 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %ctrlmode_supported, align 8
  %mbx_lock = getelementptr i8, ptr %call8, i32 3008
  tail call void @__raw_spin_lock_init(ptr noundef %mbx_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @ti_hecc_probe.__key, i16 noundef signext 3) #7
  %flags = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 14
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %or = or i32 %23, 262144
  store i32 %or, ptr %flags, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 133, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ti_hecc_netdev_ops, ptr %netdev_ops, align 8
  %call66 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  %clk = getelementptr i8, ptr %call8, i32 2988
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call66, ptr %clk, align 4
  %cmp.i193 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end72, label %if.end77

do.end72:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  %30 = ptrtoint ptr %29 to i32
  store ptr null, ptr %clk, align 4
  br label %probe_exit_candev

if.end77:                                         ; preds = %if.end52
  %call79 = tail call i32 @clk_get_rate(ptr noundef %call66) #7
  %clock = getelementptr i8, ptr %call8, i32 2440
  %31 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call79, ptr %clock, align 8
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %call82 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %probe_exit_release_clk

if.end89:                                         ; preds = %if.end77
  %offload = getelementptr i8, ptr %call8, i32 2616
  %mailbox_read = getelementptr i8, ptr %call8, i32 2620
  %34 = ptrtoint ptr %mailbox_read to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ti_hecc_mailbox_read, ptr %mailbox_read, align 4
  %mb_first = getelementptr i8, ptr %call8, i32 2740
  %35 = ptrtoint ptr %mb_first to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %mb_first, align 4
  %mb_last = getelementptr i8, ptr %call8, i32 2744
  %36 = ptrtoint ptr %mb_last to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %mb_last, align 8
  %call93 = tail call i32 @can_rx_offload_add_timestamp(ptr noundef nonnull %call8, ptr noundef %offload) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %probe_exit_disable_clk

if.end100:                                        ; preds = %if.end89
  %call101 = tail call i32 @register_candev(ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  tail call void @can_rx_offload_del(ptr noundef %offload) #7
  br label %probe_exit_disable_clk

if.end108:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %38, i32 noundef %40) #10
  br label %cleanup

probe_exit_disable_clk:                           ; preds = %do.end106, %do.end98
  %err.0 = phi i32 [ %call93, %do.end98 ], [ %call101, %do.end106 ]
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %42) #7
  tail call void @clk_unprepare(ptr noundef %42) #7
  br label %probe_exit_release_clk

probe_exit_release_clk:                           ; preds = %probe_exit_disable_clk, %do.end87
  %err.1 = phi i32 [ %call82, %do.end87 ], [ %err.0, %probe_exit_disable_clk ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %44) #7
  br label %probe_exit_candev

probe_exit_candev:                                ; preds = %probe_exit_release_clk, %do.end72, %if.end46.probe_exit_candev_crit_edge, %do.end42, %do.end31, %do.end20
  %err.2 = phi i32 [ %5, %do.end20 ], [ %9, %do.end31 ], [ %13, %do.end42 ], [ %30, %do.end72 ], [ %err.1, %probe_exit_release_clk ], [ %call47, %if.end46.probe_exit_candev_crit_edge ]
  tail call void @free_candev(ptr noundef nonnull %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_exit_candev, %if.end108, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %probe_exit_candev ], [ 0, %if.end108 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_candev(ptr noundef %1) #7
  %clk = getelementptr i8, ptr %1, i32 2988
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #7
  %offload = getelementptr i8, ptr %1, i32 2616
  tail call void @can_rx_offload_del(ptr noundef %offload) #7
  tail call void @free_candev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  tail call void @netif_device_detach(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr i8, ptr %1, i32 2992
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !122
  %or.i = or i32 %8, 2048
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or.i) #7, !srcloc !123
  %state3 = getelementptr i8, ptr %1, i32 2472
  %11 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %state3, align 8
  %clk = getelementptr i8, ptr %1, i32 2988
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr i8, ptr %1, i32 2988
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %base.i.i = getelementptr i8, ptr %1, i32 2992
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !122
  %and.i = and i32 %6, -2049
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %and.i) #7, !srcloc !123
  %state = getelementptr i8, ptr %1, i32 2472
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_device_attach(ptr noundef %1) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_do_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ti_hecc_start(ptr noundef %ndev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_get_berr_counter(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %ndev, i32 2992
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #7, !srcloc !122
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %bec, align 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #7, !srcloc !122
  %conv3 = trunc i32 %6 to i16
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %7 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ti_hecc_mailbox_read(ptr nocapture noundef readonly %offload, i32 noundef %mbxno, ptr nocapture noundef writeonly %timestamp, i1 noundef zeroext %drop) #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #7
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !124
  %shl = shl nuw i32 1, %mbxno
  br i1 %drop, label %entry.mark_as_read_crit_edge, label %if.end, !prof !125

entry.mark_as_read_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_as_read

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %offload, align 8
  %call4 = call ptr @alloc_can_skb(ptr noundef %2, ptr noundef nonnull %cf) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.mark_as_read_crit_edge, label %if.end16, !prof !125

if.end.mark_as_read_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_as_read

if.end16:                                         ; preds = %if.end
  %mbx.i = getelementptr i8, ptr %offload, i32 384
  %3 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbx.i, align 8
  %mul.i = shl i32 %mbxno, 4
  %add.ptr.i86 = getelementptr i8, ptr %4, i32 %mul.i
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool18.not = icmp sgt i32 %5, -1
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %and20 = and i32 %5, 536870911
  %or = or i32 %and20, -2147483648
  %6 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %7, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %5, 18
  %and21 = and i32 %shr, 2047
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and21, ptr %10, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %12 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i89 = getelementptr i8, ptr %13, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i89, i32 4
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !122
  %and25 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %or29 = or i32 %18, 1073741824
  store i32 %or29, ptr %16, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %conv = and i32 %14, 15
  %19 = call i32 @llvm.umin.i32(i32 %conv, i32 8)
  %20 = trunc i32 %19 to i8
  %21 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf, align 4
  %23 = getelementptr inbounds %struct.can_frame, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %20, ptr %23, align 4
  %25 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i92 = getelementptr i8, ptr %26, i32 %mul.i
  %add.ptr1.i93 = getelementptr i8, ptr %add.ptr.i92, i32 8
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i93) #7, !srcloc !122
  %28 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf, align 4
  %data39 = getelementptr inbounds %struct.can_frame, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %data39, align 8
  %31 = getelementptr inbounds %struct.can_frame, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp41 = icmp ugt i8 %33, 4
  br i1 %cmp41, label %if.then43, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i96 = getelementptr i8, ptr %35, i32 %mul.i
  %add.ptr1.i97 = getelementptr i8, ptr %add.ptr.i96, i32 12
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i97) #7, !srcloc !122
  %37 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf, align 4
  %add.ptr = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 4
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %add.ptr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end30.if.end47_crit_edge
  %hecc_ram.i = getelementptr i8, ptr %offload, i32 380
  %40 = ptrtoint ptr %hecc_ram.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hecc_ram.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %41, i32 128
  %mul.i99 = shl i32 %mbxno, 2
  %add.ptr1.i100 = getelementptr i8, ptr %add.ptr.i98, i32 %mul.i99
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i100) #7, !srcloc !122
  %43 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %timestamp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mbxno)
  %cmp49 = icmp eq i32 %mbxno, 4
  br i1 %cmp49, label %land.rhs, label %if.end47.mark_as_read_crit_edge

if.end47.mark_as_read_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_as_read

land.rhs:                                         ; preds = %if.end47
  %base.i = getelementptr i8, ptr %offload, i32 376
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %add.ptr.i101 = getelementptr i8, ptr %45, i32 28
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #7, !srcloc !122
  %and52 = and i32 %46, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %land.rhs.mark_as_read_crit_edge, label %if.then60, !prof !126

land.rhs.mark_as_read_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_as_read

if.then60:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %mark_as_read

mark_as_read:                                     ; preds = %if.then60, %land.rhs.mark_as_read_crit_edge, %if.end47.mark_as_read_crit_edge, %if.end.mark_as_read_crit_edge, %entry.mark_as_read_crit_edge
  %skb.0 = phi ptr [ inttoptr (i32 -105 to ptr), %if.then60 ], [ %call4, %land.rhs.mark_as_read_crit_edge ], [ %call4, %if.end47.mark_as_read_crit_edge ], [ inttoptr (i32 -105 to ptr), %entry.mark_as_read_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.mark_as_read_crit_edge ]
  %base.i102 = getelementptr i8, ptr %offload, i32 376
  %47 = ptrtoint ptr %base.i102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i102, align 8
  %add.ptr.i103 = getelementptr i8, ptr %48, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %shl) #7, !srcloc !123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #7
  ret ptr %skb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_add_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_hecc_start(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ti_hecc_reset(ptr noundef %ndev)
  %tx_head = getelementptr i8, ptr %ndev, i32 3052
  %0 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %ndev, i32 3056
  %1 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %tx_tail, align 8
  %base.i = getelementptr i8, ptr %ndev, i32 2992
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -1) #7, !srcloc !123
  %mbx.i = getelementptr i8, ptr %ndev, i32 3000
  %hecc_ram.i = getelementptr i8, ptr %ndev, i32 2996
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %cnt.051 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sub = sub nuw nsw i32 31, %cnt.051
  %shl = lshr i32 -2147483648, %cnt.051
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !122
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %6, %neg.i
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %and.i) #7, !srcloc !123
  %9 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbx.i, align 8
  %mul.i = shl nuw nsw i32 %sub, 4
  %add.ptr.i27 = getelementptr i8, ptr %10, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 1073741824) #7, !srcloc !123
  %11 = ptrtoint ptr %hecc_ram.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hecc_ram.i, align 4
  %mul.i28 = shl nuw nsw i32 %sub, 2
  %add.ptr.i29 = getelementptr i8, ptr %12, i32 %mul.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 -1) #7, !srcloc !123
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !122
  %or.i = or i32 %15, %shl
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or.i) #7, !srcloc !123
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !122
  %or.i32 = or i32 %20, %shl
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %or.i32) #7, !srcloc !123
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i34 = getelementptr i8, ptr %24, i32 72
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #7, !srcloc !122
  %or.i35 = or i32 %25, %shl
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr.i4.i36 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i36, i32 %or.i35) #7, !srcloc !123
  %inc = add nuw nsw i32 %cnt.051, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i38 = getelementptr i8, ptr %29, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #7, !srcloc !122
  %or.i39 = or i32 %30, 15
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr.i4.i40 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i40, i32 %or.i39) #7, !srcloc !123
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 -17) #7, !srcloc !123
  %use_hecc1int = getelementptr i8, ptr %ndev, i32 3004
  %35 = ptrtoint ptr %use_hecc1int to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_hecc1int, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %38, i32 76
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 -1) #7, !srcloc !123
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %40, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 1798) #7, !srcloc !123
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #7, !srcloc !123
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %42, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 1793) #7, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state = getelementptr i8, ptr %ndev, i32 2472
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_hecc_reset(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_hecc_reset.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_hecc_reset, %do.end7)) #7
          to label %if.then [label %do.end7], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ti_hecc_reset.__UNIQUE_ID_ddebug462, ptr noundef %ndev, ptr noundef nonnull @.str.41) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %base.i.i = getelementptr i8, ptr %ndev, i32 2992
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !122
  %or.i = or i32 %2, 32
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or.i) #7, !srcloc !123
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i40 = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #7, !srcloc !122
  %or.i41 = or i32 %7, 4096
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i42 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i42, i32 %or.i41) #7, !srcloc !123
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i4474 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4474) #7, !srcloc !122
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not75.not = icmp eq i32 %13, 0
  br i1 %tobool9.not75.not, label %do.end7.while.body_crit_edge, label %do.end7.while.end_crit_edge

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end7.while.body_crit_edge
  %cnt.076 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %do.end7.while.body_crit_edge ]
  %dec = add nsw i32 %cnt.076, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i44 = getelementptr i8, ptr %16, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #7, !srcloc !122
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end7.while.end_crit_edge
  %phase_seg2.i = getelementptr i8, ptr %ndev, i32 2360
  %19 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phase_seg2.i, align 4
  %sub.i = add i32 %20, 7
  %and.i45 = and i32 %sub.i, 7
  %phase_seg1.i = getelementptr i8, ptr %ndev, i32 2356
  %21 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phase_seg1.i, align 4
  %prop_seg.i = getelementptr i8, ptr %ndev, i32 2352
  %23 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prop_seg.i, align 4
  %add.i = add i32 %24, %22
  %sub1.i = shl i32 %add.i, 3
  %and2.i = add i32 %sub1.i, 120
  %shl.i = and i32 %and2.i, 120
  %or.i46 = or i32 %shl.i, %and.i45
  %ctrlmode.i = getelementptr i8, ptr %ndev, i32 2476
  %25 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrlmode.i, align 4
  %and4.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %while.end.ti_hecc_set_btc.exit_crit_edge, label %if.then.i

while.end.ti_hecc_set_btc.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_hecc_set_btc.exit

if.then.i:                                        ; preds = %while.end
  %brp.i = getelementptr i8, ptr %ndev, i32 2368
  %27 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.i = icmp ugt i32 %28, 4
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %or6.i = or i32 %or.i46, 128
  br label %ti_hecc_set_btc.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ndev.i = getelementptr i8, ptr %ndev, i32 2984
  %29 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.42) #10
  br label %ti_hecc_set_btc.exit

ti_hecc_set_btc.exit:                             ; preds = %if.else.i, %if.then5.i, %while.end.ti_hecc_set_btc.exit_crit_edge
  %can_btc.0.i = phi i32 [ %or6.i, %if.then5.i ], [ %or.i46, %if.else.i ], [ %or.i46, %while.end.ti_hecc_set_btc.exit_crit_edge ]
  %sjw.i = getelementptr i8, ptr %ndev, i32 2364
  %31 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sjw.i, align 4
  %sub8.i = shl i32 %32, 8
  %and9.i = add i32 %sub8.i, 768
  %shl10.i = and i32 %and9.i, 768
  %or11.i = or i32 %shl10.i, %can_btc.0.i
  %brp12.i = getelementptr i8, ptr %ndev, i32 2368
  %33 = ptrtoint ptr %brp12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %brp12.i, align 4
  %sub13.i = shl i32 %34, 16
  %and14.i = add i32 %sub13.i, 16711680
  %shl15.i = and i32 %and14.i, 16711680
  %or16.i = or i32 %or11.i, %shl15.i
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %36, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %or16.i) #7, !srcloc !123
  %ndev17.i = getelementptr i8, ptr %ndev, i32 2984
  %37 = ptrtoint ptr %ndev17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev17.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.43, i32 noundef %or16.i) #10
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %40, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #7, !srcloc !123
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i5177 = getelementptr i8, ptr %42, i32 48
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5177) #7, !srcloc !122
  %44 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool13.not78 = icmp eq i32 %44, 0
  br i1 %tobool13.not78, label %ti_hecc_set_btc.exit.while.end19_crit_edge, label %ti_hecc_set_btc.exit.while.body17_crit_edge

ti_hecc_set_btc.exit.while.body17_crit_edge:      ; preds = %ti_hecc_set_btc.exit
  br label %while.body17

ti_hecc_set_btc.exit.while.end19_crit_edge:       ; preds = %ti_hecc_set_btc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body17:                                     ; preds = %while.body17.while.body17_crit_edge, %ti_hecc_set_btc.exit.while.body17_crit_edge
  %cnt.179 = phi i32 [ %dec18, %while.body17.while.body17_crit_edge ], [ 100, %ti_hecc_set_btc.exit.while.body17_crit_edge ]
  %dec18 = add nsw i32 %cnt.179, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #7
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i51 = getelementptr i8, ptr %47, i32 48
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #7, !srcloc !122
  %49 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool13.not = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18)
  %cmp15.not = icmp eq i32 %dec18, 0
  %or.cond38 = select i1 %tobool13.not, i1 true, i1 %cmp15.not
  br i1 %or.cond38, label %while.body17.while.end19_crit_edge, label %while.body17.while.body17_crit_edge

while.body17.while.body17_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body17

while.body17.while.end19_crit_edge:               ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.end19:                                      ; preds = %while.body17.while.end19_crit_edge, %ti_hecc_set_btc.exit.while.end19_crit_edge
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %51, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 8) #7, !srcloc !123
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i57 = getelementptr i8, ptr %53, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 8) #7, !srcloc !123
  %54 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i59 = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 -1) #7, !srcloc !123
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %57, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 -1) #7, !srcloc !123
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %59, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 -1) #7, !srcloc !123
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %61, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 -1) #7, !srcloc !123
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #7, !srcloc !123
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 0) #7, !srcloc !123
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i70 = getelementptr i8, ptr %67, i32 40
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70) #7, !srcloc !122
  %or.i71 = or i32 %68, 8192
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i72 = getelementptr i8, ptr %70, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i72, i32 %or.i71) #7, !srcloc !123
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ti_hecc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_xceiver.i = getelementptr i8, ptr %ndev, i32 3060
  %2 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_xceiver.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.ti_hecc_transceiver_switch.exit_crit_edge, label %if.end.i

if.end.ti_hecc_transceiver_switch.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_hecc_transceiver_switch.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i28 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #7
  br label %ti_hecc_transceiver_switch.exit

ti_hecc_transceiver_switch.exit:                  ; preds = %if.end.i, %if.end.ti_hecc_transceiver_switch.exit_crit_edge
  %call3 = tail call i32 @open_candev(ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %ti_hecc_transceiver_switch.exit
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.45, i32 noundef %call3) #10
  %4 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_xceiver.i, align 4
  %tobool.not.i30 = icmp eq ptr %5, null
  br i1 %tobool.not.i30, label %if.then5.ti_hecc_transceiver_switch.exit32_crit_edge, label %if.end.i31

if.then5.ti_hecc_transceiver_switch.exit32_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_hecc_transceiver_switch.exit32

if.end.i31:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @regulator_disable(ptr noundef nonnull %5) #7
  br label %ti_hecc_transceiver_switch.exit32

ti_hecc_transceiver_switch.exit32:                ; preds = %if.end.i31, %if.then5.ti_hecc_transceiver_switch.exit32_crit_edge
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %ndev) #7
  br label %cleanup

if.end9:                                          ; preds = %ti_hecc_transceiver_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ti_hecc_start(ptr noundef %ndev)
  %offload = getelementptr i8, ptr %ndev, i32 2616
  tail call void @can_rx_offload_enable(ptr noundef %offload) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %ti_hecc_transceiver_switch.exit32, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call3, %ti_hecc_transceiver_switch.exit32 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %napi.i = getelementptr i8, ptr %ndev, i32 2752
  tail call void @napi_disable(ptr noundef %napi.i) #7
  %base.i.i.i = getelementptr i8, ptr %ndev, i32 2992
  %2 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !122
  %or.i.i = or i32 %4, 4096
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %or.i.i) #7, !srcloc !123
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #7, !srcloc !123
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #7, !srcloc !123
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !123
  %state.i = getelementptr i8, ptr %ndev, i32 2472
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %ndev) #7
  tail call void @close_candev(ptr noundef %ndev) #7
  %reg_xceiver.i = getelementptr i8, ptr %ndev, i32 3060
  %16 = ptrtoint ptr %reg_xceiver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_xceiver.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.ti_hecc_transceiver_switch.exit_crit_edge, label %if.end.i

entry.ti_hecc_transceiver_switch.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_hecc_transceiver_switch.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @regulator_disable(ptr noundef nonnull %17) #7
  br label %ti_hecc_transceiver_switch.exit

ti_hecc_transceiver_switch.exit:                  ; preds = %if.end.i, %entry.ti_hecc_transceiver_switch.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !126

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !125

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !126

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !125

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !126

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %tx_head.i = getelementptr i8, ptr %ndev, i32 3052
  %36 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_head.i, align 4
  %and.i = and i32 %37, 3
  %shl = shl nuw nsw i32 1, %and.i
  %mbx_lock = getelementptr i8, ptr %ndev, i32 3008
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mbx_lock) #7
  %base.i = getelementptr i8, ptr %ndev, i32 2992
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !122
  %and = and i32 %40, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mbx_lock, i32 noundef %call6) #7
  br i1 %tobool.not, label %if.end15, label %if.then12, !prof !126

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %ndev14 = getelementptr i8, ptr %ndev, i32 2984
  %43 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev14, align 8
  %45 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_head.i, align 4
  %tx_tail = getelementptr i8, ptr %ndev, i32 3056
  %47 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_tail, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.51, i32 noundef %46, i32 noundef %48) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %49 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv17 = zext i8 %51 to i32
  %52 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_head.i, align 4
  %54 = shl i32 %53, 6
  %shl19 = and i32 %54, 16128
  %or = or i32 %shl19, %conv17
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 8
  %and20 = lshr i32 %56, 26
  %57 = and i32 %and20, 16
  %58 = or i32 %or, %57
  %mbx.i = getelementptr i8, ptr %ndev, i32 3000
  %59 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mbx.i, align 8
  %mul.i = shl nuw nsw i32 %and.i, 4
  %add.ptr.i128 = getelementptr i8, ptr %60, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %58) #7, !srcloc !123
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %1, align 8
  %and30 = and i32 %62, 536870911
  %or31 = or i32 %and30, -2147483648
  %and33 = shl i32 %62, 18
  %shl34 = and i32 %and33, 536608768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool27.not148 = icmp slt i32 %62, 0
  %data1.1 = select i1 %tobool27.not148, i32 %or31, i32 %shl34
  %63 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i131 = getelementptr i8, ptr %64, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %data1.1) #7, !srcloc !123
  %data36 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data36, align 8
  %67 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i134 = getelementptr i8, ptr %68, i32 %mul.i
  %add.ptr1.i135 = getelementptr i8, ptr %add.ptr.i134, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i135, i32 %66) #7, !srcloc !123
  %69 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp38 = icmp ugt i8 %70, 4
  %add.ptr = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 4
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr, align 4
  %73 = ptrtoint ptr %mbx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mbx.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %74, i32 %mul.i
  %add.ptr1.i139 = getelementptr i8, ptr %add.ptr.i138, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i139, i32 %72) #7, !srcloc !123
  br label %if.end47

if.else43:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %add.ptr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then40
  %call48 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %and.i, i32 noundef 0) #7
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mbx_lock) #7
  %76 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_head.i, align 4
  %dec = add i32 %77, -1
  store i32 %dec, ptr %tx_head.i, align 4
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 8
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #7, !srcloc !122
  %81 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_head.i, align 4
  %and.i142 = and i32 %82, 3
  %shl66 = shl nuw nsw i32 1, %and.i142
  %and67 = and i32 %shl66, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp ne i32 %and67, 0
  %and70 = and i32 %82, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and70)
  %cmp71 = icmp eq i32 %and70, 255
  %or.cond = select i1 %tobool68.not, i1 true, i1 %cmp71
  br i1 %or.cond, label %if.then73, label %if.end47.if.end74_crit_edge

if.end47.if.end74_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i143 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %83 = ptrtoint ptr %_tx.i.i143 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %_tx.i.i143, align 128
  %state.i.i144 = getelementptr inbounds %struct.netdev_queue, ptr %84, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i144) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end47.if.end74_crit_edge
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !122
  %or.i = or i32 %87, %shl
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %or.i) #7, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mbx_lock, i32 noundef %call58) #7
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %91, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %shl) #7, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then12, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 16, %if.then12 ], [ 0, %if.end74 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_hecc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use_hecc1int = getelementptr i8, ptr %dev_id, i32 3004
  %0 = ptrtoint ptr %use_hecc1int to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_hecc1int, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 60, i32 68
  %base.i = getelementptr i8, ptr %dev_id, i32 2992
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i301 = getelementptr i8, ptr %3, i32 %cond
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr.i303 = getelementptr i8, ptr %6, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #7, !srcloc !122
  %and = and i32 %7, 29294592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then8, !prof !126

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ti_hecc_error(ptr noundef %dev_id, i32 noundef %7)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %and11 = and i32 %4, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then19, !prof !126

if.then19:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i305 = getelementptr i8, ptr %9, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #7, !srcloc !122
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i307 = getelementptr i8, ptr %12, i32 52
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #7, !srcloc !122
  %and22 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then19.if.end44_crit_edge, label %if.then24

if.then19.if.end44_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp.not = icmp uge i32 %10, %13
  %cond25 = zext i1 %cmp.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp26.not = icmp ule i32 %10, %13
  %cond27 = zext i1 %cmp26.not to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_hecc_interrupt, %do.end43)) #7
          to label %if.then39 [label %do.end43], !srcloc !128

if.then39:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %ndev40 = getelementptr i8, ptr %dev_id, i32 2984
  %14 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ti_hecc_interrupt.__UNIQUE_ID_ddebug469, ptr noundef %15, ptr noundef nonnull @.str.47) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %if.then24
  tail call fastcc void @ti_hecc_change_state(ptr noundef %dev_id, i32 noundef %cond25, i32 noundef %cond27)
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.then19.if.end44_crit_edge
  %handled.0 = phi i32 [ 256, %do.end43 ], [ 0, %if.then19.if.end44_crit_edge ]
  %and45 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end75_crit_edge, label %if.then47

if.end44.if.end75_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then47:                                        ; preds = %if.end44
  %or48 = or i32 %handled.0, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp49.not = icmp ult i32 %10, %13
  %cond50 = select i1 %cmp49.not, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp51.not = icmp ugt i32 %10, %13
  %cond52 = select i1 %cmp51.not, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_hecc_interrupt, %do.end74)) #7
          to label %if.then68 [label %do.end74], !srcloc !128

if.then68:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %ndev69 = getelementptr i8, ptr %dev_id, i32 2984
  %16 = ptrtoint ptr %ndev69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ti_hecc_interrupt.__UNIQUE_ID_ddebug470, ptr noundef %17, ptr noundef nonnull @.str.48) #7
  br label %do.end74

do.end74:                                         ; preds = %if.then68, %if.then47
  tail call fastcc void @ti_hecc_change_state(ptr noundef %dev_id, i32 noundef %cond50, i32 noundef %cond52)
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %if.end44.if.end75_crit_edge
  %handled.1 = phi i32 [ %or48, %do.end74 ], [ %handled.0, %if.end44.if.end75_crit_edge ]
  %and76 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end141_crit_edge, label %if.then78

if.end75.if.end141_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then78:                                        ; preds = %if.end75
  %or79 = or i32 %handled.1, 1024
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_hecc_interrupt, %do.end101)) #7
          to label %if.then95 [label %do.end101], !srcloc !128

if.then95:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %ndev96 = getelementptr i8, ptr %dev_id, i32 2984
  %18 = ptrtoint ptr %ndev96 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev96, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ti_hecc_interrupt.__UNIQUE_ID_ddebug471, ptr noundef %19, ptr noundef nonnull @.str.49) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then95, %if.then78
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr.i309 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 0) #7, !srcloc !123
  tail call void @can_bus_off(ptr noundef %dev_id) #7
  tail call fastcc void @ti_hecc_change_state(ptr noundef %dev_id, i32 noundef 3, i32 noundef 3)
  br label %if.end141

if.else:                                          ; preds = %if.end10
  %state = getelementptr i8, ptr %dev_id, i32 2472
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp103.not = icmp eq i32 %23, 0
  br i1 %cmp103.not, label %if.else.if.end141_crit_edge, label %if.then110, !prof !126

if.else.if.end141_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then110:                                       ; preds = %if.else
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr.i311 = getelementptr i8, ptr %25, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i311) #7, !srcloc !122
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 8
  %add.ptr.i313 = getelementptr i8, ptr %28, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i313) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %26)
  %cmp117 = icmp ugt i32 %26, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %29)
  %cmp118 = icmp ugt i32 %29, 127
  %or.cond = select i1 %cmp117, i1 true, i1 %cmp118
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %26)
  %cmp121 = icmp ugt i32 %26, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %29)
  %cmp123 = icmp ugt i32 %29, 95
  %or.cond292 = select i1 %cmp121, i1 true, i1 %cmp123
  %spec.select294 = zext i1 %or.cond292 to i32
  %new_state.0 = select i1 %or.cond, i32 2, i32 %spec.select294
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0, i32 %31)
  %cmp130 = icmp ult i32 %new_state.0, %31
  br i1 %cmp130, label %if.then131, label %if.then110.if.end141_crit_edge

if.then110.if.end141_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then131:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp132.not = icmp ult i32 %26, %29
  %spec.select = select i1 %cmp132.not, i32 0, i32 %new_state.0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp134.not = icmp ugt i32 %26, %29
  %cond138 = select i1 %cmp134.not, i32 0, i32 %new_state.0
  tail call fastcc void @ti_hecc_change_state(ptr noundef %dev_id, i32 noundef %spec.select, i32 noundef %cond138)
  br label %if.end141

if.end141:                                        ; preds = %if.then131, %if.then110.if.end141_crit_edge, %if.else.if.end141_crit_edge, %do.end101, %if.end75.if.end141_crit_edge
  %handled.3 = phi i32 [ 0, %if.else.if.end141_crit_edge ], [ %or79, %do.end101 ], [ %handled.1, %if.end75.if.end141_crit_edge ], [ 0, %if.then131 ], [ 0, %if.then110.if.end141_crit_edge ]
  %and142 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end194_crit_edge, label %while.cond.preheader

if.end141.if.end194_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

while.cond.preheader:                             ; preds = %if.end141
  %tx_tail = getelementptr i8, ptr %dev_id, i32 3056
  %tx_head = getelementptr i8, ptr %dev_id, i32 3052
  %32 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_tail, align 8
  %34 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp145.not333 = icmp eq i32 %33, %35
  br i1 %cmp145.not333, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mbx_lock = getelementptr i8, ptr %dev_id, i32 3008
  %hecc_ram.i = getelementptr i8, ptr %dev_id, i32 2996
  %offload = getelementptr i8, ptr %dev_id, i32 2616
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end151.while.body_crit_edge, %while.body.lr.ph
  %36 = phi i32 [ %33, %while.body.lr.ph ], [ %dec, %if.end151.while.body_crit_edge ]
  %and.i = and i32 %36, 3
  %shl = shl nuw nsw i32 1, %and.i
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i315 = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i315) #7, !srcloc !122
  %and148 = and i32 %39, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %while.body.while.end_crit_edge, label %if.end151

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end151:                                        ; preds = %while.body
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr.i317 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %shl) #7, !srcloc !123
  %call157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mbx_lock) #7
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !122
  %neg.i = xor i32 %shl, -1
  %and.i318 = and i32 %44, %neg.i
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %and.i318) #7, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mbx_lock, i32 noundef %call157) #7
  %47 = ptrtoint ptr %hecc_ram.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hecc_ram.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %48, i32 128
  %mul.i = shl nuw nsw i32 %and.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i319, i32 %mul.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !122
  %call164 = tail call i32 @can_rx_offload_get_echo_skb(ptr noundef %offload, i32 noundef %and.i, i32 noundef %49, ptr noundef null) #7
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %51, %call164
  store i32 %add, ptr %tx_bytes, align 4
  %52 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %tx_packets, align 4
  %54 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_tail, align 8
  %dec = add i32 %55, -1
  store i32 %dec, ptr %tx_tail, align 8
  %56 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_head, align 4
  %cmp145.not = icmp eq i32 %dec, %57
  br i1 %cmp145.not, label %if.end151.while.end_crit_edge, label %if.end151.while.body_crit_edge

if.end151.while.body_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end151.while.end_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end151.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %58 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_head, align 4
  %60 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp168 = icmp ne i32 %59, %61
  %and171 = and i32 %59, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and171)
  %cmp172.not = icmp eq i32 %and171, 255
  %or.cond293 = or i1 %cmp168, %cmp172.not
  br i1 %or.cond293, label %lor.lhs.false174, label %while.end.if.then184_crit_edge

while.end.if.then184_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then184

lor.lhs.false174:                                 ; preds = %while.end
  %and176 = and i32 %61, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and176)
  %cmp177 = icmp ne i32 %and176, 255
  %cmp172.not.not = xor i1 %cmp172.not, true
  %brmerge = select i1 %cmp177, i1 true, i1 %cmp172.not.not
  br i1 %brmerge, label %lor.lhs.false174.if.end185_crit_edge, label %lor.lhs.false174.if.then184_crit_edge

lor.lhs.false174.if.then184_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then184

lor.lhs.false174.if.end185_crit_edge:             ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.then184:                                       ; preds = %lor.lhs.false174.if.then184_crit_edge, %while.end.if.then184_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %62 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %63) #7
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %lor.lhs.false174.if.end185_crit_edge
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i321335 = getelementptr i8, ptr %65, i32 24
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321335) #7, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool188.not336 = icmp eq i32 %66, 0
  br i1 %tobool188.not336, label %if.end185.if.end194_crit_edge, label %while.body189.lr.ph

if.end185.if.end194_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

while.body189.lr.ph:                              ; preds = %if.end185
  %offload190 = getelementptr i8, ptr %dev_id, i32 2616
  br label %while.body189

while.body189:                                    ; preds = %while.body189.while.body189_crit_edge, %while.body189.lr.ph
  %67 = phi i32 [ %66, %while.body189.lr.ph ], [ %70, %while.body189.while.body189_crit_edge ]
  %conv191 = zext i32 %67 to i64
  %call192 = tail call i32 @can_rx_offload_irq_offload_timestamp(ptr noundef %offload190, i64 noundef %conv191) #7
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 8
  %add.ptr.i321 = getelementptr i8, ptr %69, i32 24
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #7, !srcloc !122
  %tobool188.not = icmp eq i32 %70, 0
  br i1 %tobool188.not, label %while.body189.if.end194_crit_edge, label %while.body189.while.body189_crit_edge

while.body189.while.body189_crit_edge:            ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body189

while.body189.if.end194_crit_edge:                ; preds = %while.body189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.end194:                                        ; preds = %while.body189.if.end194_crit_edge, %if.end185.if.end194_crit_edge, %if.end141.if.end194_crit_edge
  %71 = ptrtoint ptr %use_hecc1int to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %use_hecc1int, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool196.not = icmp eq i8 %72, 0
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  br i1 %tobool196.not, label %if.else199, label %if.then197

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i323 = getelementptr i8, ptr %74, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 %handled.3) #7, !srcloc !123
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr.i325 = getelementptr i8, ptr %76, i32 68
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325) #7, !srcloc !122
  br label %if.end201

if.else199:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i327 = getelementptr i8, ptr %74, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %handled.3) #7, !srcloc !123
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 8
  %add.ptr.i329 = getelementptr i8, ptr %79, i32 60
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #7, !srcloc !122
  br label %if.end201

if.end201:                                        ; preds = %if.else199, %if.then197
  %offload202 = getelementptr i8, ptr %dev_id, i32 2616
  tail call void @can_rx_offload_irq_finish(ptr noundef %offload202) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end201, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end201 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_hecc_error(ptr noundef %ndev, i32 noundef %err_status) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #7
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !124
  %and = and i32 %err_status, 28835840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %if.then

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then:                                          ; preds = %entry
  %call1 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %ndev7 = getelementptr i8, ptr %ndev, i32 2984
  %1 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev7, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.ti_hecc_error) #10
  br label %cleanup

if.end8:                                          ; preds = %if.then
  %can_stats = getelementptr i8, ptr %ndev, i32 2308
  %3 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %can_stats, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %can_stats, align 4
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %or = or i32 %8, 136
  store i32 %or, ptr %6, align 8
  %and9 = and i32 %err_status, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %10, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  %13 = or i8 %12, 2
  store i8 %13, ptr %arrayidx, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %and15 = and i32 %err_status, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cf, align 4
  %arrayidx19 = getelementptr %struct.can_frame, ptr %15, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 2
  %18 = or i8 %17, 1
  store i8 %18, ptr %arrayidx19, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14.if.end23_crit_edge
  %and24 = and i32 %err_status, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cf, align 4
  %arrayidx28 = getelementptr %struct.can_frame, ptr %20, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx28, align 2
  %23 = or i8 %22, 4
  store i8 %23, ptr %arrayidx28, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23.if.end32_crit_edge
  %and33 = and i32 %err_status, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cf, align 4
  %arrayidx37 = getelementptr %struct.can_frame, ptr %25, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %arrayidx37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %and39 = and i32 %err_status, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf, align 4
  %arrayidx43 = getelementptr %struct.can_frame, ptr %28, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 25, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %base.i = getelementptr i8, ptr %ndev, i32 2992
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr.i1 = getelementptr i8, ptr %31, i32 92
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #7, !srcloc !122
  %offload = getelementptr i8, ptr %ndev, i32 2616
  %call46 = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload, ptr noundef nonnull %call1, i32 noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 14
  %33 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_fifo_errors, align 8
  %inc49 = add i32 %34, 1
  store i32 %inc49, ptr %rx_fifo_errors, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge, %entry.if.end51_crit_edge
  %base.i2 = getelementptr i8, ptr %ndev, i32 2992
  %35 = ptrtoint ptr %base.i2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i2, align 8
  %add.ptr.i3 = getelementptr i8, ptr %36, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 29294592) #7, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then6, %if.then3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_hecc_change_state(ptr noundef %ndev, i32 noundef %rx_state, i32 noundef %tx_state) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #7
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !124
  %ndev1 = getelementptr i8, ptr %ndev, i32 2984
  %1 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev1, align 8
  %call2 = call ptr @alloc_can_err_skb(ptr noundef %2, ptr noundef nonnull %cf) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call i32 @llvm.umax.i32(i32 %tx_state, i32 %rx_state)
  %state = getelementptr i8, ptr %ndev, i32 2472
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev1, align 8
  %7 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %6, ptr noundef %8, i32 noundef %tx_state, i32 noundef %rx_state) #7
  %9 = call i32 @llvm.umax.i32(i32 %tx_state, i32 %rx_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp13.not = icmp eq i32 %9, 3
  br i1 %cmp13.not, label %if.end.if.end20_crit_edge, label %if.then14

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr i8, ptr %ndev, i32 2992
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr.i47 = getelementptr i8, ptr %11, i32 52
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !122
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %14, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %17, i32 56
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !122
  %conv17 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cf, align 4
  %arrayidx19 = getelementptr %struct.can_frame, ptr %20, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %arrayidx19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  %base.i50 = getelementptr i8, ptr %ndev, i32 2992
  %22 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i50, align 8
  %add.ptr.i51 = getelementptr i8, ptr %23, i32 92
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !122
  %offload = getelementptr i8, ptr %ndev, i32 2616
  %call22 = call i32 @can_rx_offload_queue_sorted(ptr noundef %offload, ptr noundef nonnull %call2, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 14
  %25 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_fifo_errors, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %rx_fifo_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_get_echo_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_irq_offload_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_offload_irq_finish(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_offload_queue_sorted(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !106, !108, !110, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__UNIQUE_ID_version461, !1, !"__UNIQUE_ID_version461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/ti_hecc.c", i32 42, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__modver_attr, !1, !"__modver_attr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ti_hecc__472_1046_ti_hecc_driver_init6, !7, !"__initcall__kmod_ti_hecc__472_1046_ti_hecc_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/can/ti_hecc.c", i32 1046, i32 1}
!8 = !{ptr @__exitcall_ti_hecc_driver_exit, !7, !"__exitcall_ti_hecc_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author473, !10, !"__UNIQUE_ID_author473", i1 false, i1 false}
!10 = !{!"../drivers/net/can/ti_hecc.c", i32 1048, i32 1}
!11 = !{ptr @__UNIQUE_ID_file474, !12, !"__UNIQUE_ID_file474", i1 false, i1 false}
!12 = !{!"../drivers/net/can/ti_hecc.c", i32 1049, i32 1}
!13 = !{ptr @__UNIQUE_ID_license475, !12, !"__UNIQUE_ID_license475", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description476, !15, !"__UNIQUE_ID_description476", i1 false, i1 false}
!15 = !{!"../drivers/net/can/ti_hecc.c", i32 1050, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias477, !17, !"__UNIQUE_ID_alias477", i1 false, i1 false}
!17 = !{!"../drivers/net/can/ti_hecc.c", i32 1051, i32 1}
!18 = !{ptr @ti_hecc_driver, !19, !"ti_hecc_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/can/ti_hecc.c", i32 1035, i32 31}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/ti_hecc.c", i32 868, i32 47}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/ti_hecc.c", i32 876, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ti_hecc_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ti_hecc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/ti_hecc.c", i32 882, i32 59}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/ti_hecc.c", i32 884, i32 3}
!34 = !{ptr @ti_hecc_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ti_hecc_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/ti_hecc.c", i32 891, i32 15}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/ti_hecc.c", i32 893, i32 3}
!40 = !{ptr @ti_hecc_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ti_hecc_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/ti_hecc.c", i32 899, i32 58}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/ti_hecc.c", i32 901, i32 3}
!46 = !{ptr @ti_hecc_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ti_hecc_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/ti_hecc.c", i32 914, i32 49}
!50 = !{ptr @ti_hecc_probe.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/can/ti_hecc.c", i32 921, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/ti_hecc.c", i32 927, i32 34}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/ti_hecc.c", i32 929, i32 3}
!57 = !{ptr @ti_hecc_probe._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ti_hecc_probe._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/ti_hecc.c", i32 938, i32 3}
!61 = !{ptr @ti_hecc_probe._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ti_hecc_probe._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/ti_hecc.c", i32 947, i32 3}
!65 = !{ptr @ti_hecc_probe._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ti_hecc_probe._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/ti_hecc.c", i32 953, i32 3}
!69 = !{ptr @ti_hecc_probe._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ti_hecc_probe._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/ti_hecc.c", i32 959, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ti_hecc_probe._entry.36, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ti_hecc_probe._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @ti_hecc_bittiming_const, !77, !"ti_hecc_bittiming_const", i1 false, i1 false}
!77 = !{!"../drivers/net/can/ti_hecc.c", i32 175, i32 41}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/ti_hecc.c", i32 308, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ti_hecc_reset.__UNIQUE_ID_ddebug462, !79, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/ti_hecc.c", i32 278, i32 9}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/ti_hecc.c", i32 286, i32 26}
!86 = !{ptr @ti_hecc_netdev_ops, !87, !"ti_hecc_netdev_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/can/ti_hecc.c", i32 842, i32 36}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/ti_hecc.c", i32 802, i32 20}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/ti_hecc.c", i32 811, i32 20}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/ti_hecc.c", i32 705, i32 4}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug469, !93, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/ti_hecc.c", i32 713, i32 4}
!98 = !{ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug470, !97, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/ti_hecc.c", i32 721, i32 4}
!101 = !{ptr @ti_hecc_interrupt.__UNIQUE_ID_ddebug471, !100, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/ti_hecc.c", i32 617, i32 9}
!104 = !{ptr @__func__.ti_hecc_error, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/can/ti_hecc.c", i32 618, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/can/ti_hecc.c", i32 492, i32 7}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ti_hecc_dt_ids, !112, !"ti_hecc_dt_ids", i1 false, i1 false}
!112 = !{!"../drivers/net/can/ti_hecc.c", i32 849, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 4645929}
!123 = !{i64 4645511}
!124 = !{!"auto-init"}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i8 0, i8 2}
!128 = !{i64 2148983006, i64 2148983011, i64 2148983024, i64 2148983068, i64 2148983102, i64 2148983123}
