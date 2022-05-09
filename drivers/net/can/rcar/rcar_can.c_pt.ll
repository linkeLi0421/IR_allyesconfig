; ModuleID = '/llk/IR_all_yes/drivers/net/can/rcar/rcar_can.c_pt.bc'
source_filename = "../drivers/net/can/rcar/rcar_can.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rcar_can_regs = type { [64 x %struct.rcar_can_mbox_regs], [8 x i32], [2 x i32], i32, i32, [2 x i32], i32, i32, [960 x i8], [64 x i8], i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [7 x i8], i8, i8, i8, i8 }
%struct.rcar_can_mbox_regs = type { i32, i8, i8, [8 x i8], i8, i8 }
%struct.can_berr_counter = type { i16, i16 }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
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

@__initcall__kmod_rcar_can__474_915_rcar_can_driver_init6 = internal global ptr @rcar_can_driver_init, section ".initcall6.init", align 4
@rcar_can_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_can_probe, ptr @rcar_can_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_can_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_can_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_can_driver_exit = internal global ptr @rcar_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author475 = internal constant [38 x i8] c"rcar_can.author=Cogent Embedded, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file476 = internal constant [44 x i8] c"rcar_can.file=drivers/net/can/rcar/rcar_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [21 x i8] c"rcar_can.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description478 = internal constant [54 x i8] c"rcar_can.description=CAN driver for Renesas R-Car SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias479 = internal constant [33 x i8] c"rcar_can.alias=platform:rcar_can\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar_can\00", [23 x i8] zeroinitializer }, align 32
@rcar_can_of_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,can-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@rcar_can_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr @rcar_can_suspend, ptr @rcar_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"renesas,can-clock-select\00", [39 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 765, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc_candev() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_can_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/can/rcar/rcar_can.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr = internal global ptr @rcar_can_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkp1\00", [26 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot get peripheral clock, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr.10 = internal global ptr @rcar_can_probe._entry.8, section ".printk_index", align 4
@rcar_can_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid CAN clock selected\0A\00", [36 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr.13 = internal global ptr @rcar_can_probe._entry.11, section ".printk_index", align 4
@clock_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.24, ptr null, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 788, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot get CAN clock, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr.16 = internal global ptr @rcar_can_probe._entry.14, section ".printk_index", align 4
@rcar_can_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rcar_can_open, ptr @rcar_can_close, ptr @rcar_can_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rcar_can_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"rcar_can\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 2, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 811, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register_candev() failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr.19 = internal global ptr @rcar_can_probe._entry.17, section ".printk_index", align 4
@rcar_can_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 817, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device registered (IRQ%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_can_probe._entry_ptr.23 = internal global ptr @rcar_can_probe._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkp2\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to enable peripheral clock, error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable CAN clock, error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"open_candev() failed, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request_irq(%d) failed, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_can_error\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bus error interrupt:\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.32, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ACK Delimiter Error\0A\00", [43 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.33, i8 0, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bit Error (dominant)\0A\00", [42 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.34, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bit Error (recessive)\0A\00", [41 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.35, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRC Error\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.36, i8 0, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ACK Error\0A\00", [21 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.37, i8 0, i8 72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Form Error\0A\00", [20 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.38, i8 0, i8 74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stuff Error\0A\00", [19 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.39, i8 0, i8 77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error warning interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.40, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error passive interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.41, i8 0, i8 82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bus-off entry interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.42, i8 0, i8 85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive overrun error interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_can_error.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.43, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Overload Frame Transmission error interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_enable() failed, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"rcar_can_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 905, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 907, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"rcar_can_of_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 893, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"rcar_can_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 891, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 748, i32 42 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 765, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 772, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 775, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 782, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"clock_names\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 733, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 788, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"rcar_can_netdev_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 629, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant [25 x i8] c"rcar_can_bittiming_const\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 103, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 810, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 817, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 735, i32 17 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 736, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 512, i32 7 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 518, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 524, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 530, i32 20 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 246, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 252, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 259, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 273, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 280, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 289, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 296, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 309, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 319, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 329, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 342, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 352, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 104, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [35 x i8] c"../drivers/net/can/rcar/rcar_can.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 874, i32 20 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias479, ptr @__UNIQUE_ID_author475, ptr @__UNIQUE_ID_description478, ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__exitcall_rcar_can_driver_exit, ptr @__initcall__kmod_rcar_can__474_915_rcar_can_driver_init6, ptr @rcar_can_driver_exit, ptr @rcar_can_probe._entry, ptr @rcar_can_probe._entry.11, ptr @rcar_can_probe._entry.14, ptr @rcar_can_probe._entry.17, ptr @rcar_can_probe._entry.20, ptr @rcar_can_probe._entry.8, ptr @rcar_can_probe._entry_ptr, ptr @rcar_can_probe._entry_ptr.10, ptr @rcar_can_probe._entry_ptr.13, ptr @rcar_can_probe._entry_ptr.16, ptr @rcar_can_probe._entry_ptr.19, ptr @rcar_can_probe._entry_ptr.23, ptr @rcar_can_driver, ptr @.str, ptr @rcar_can_of_table, ptr @rcar_can_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @clock_names, ptr @.str.15, ptr @rcar_can_netdev_ops, ptr @rcar_can_bittiming_const, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_of_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_can_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_can_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_can_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clock_select = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_select) #6
  %0 = ptrtoint ptr %clock_select to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clock_select, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %clock_select, i32 noundef 1, i32 noundef 0) #6
  %call1 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @alloc_candev_mqs(i32 noundef 568, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call13 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %clk = getelementptr i8, ptr %call7, i32 2852
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %clk, align 4
  %cmp.i121 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %5) #9
  br label %fail_clk

if.end23:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %clock_select to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_select, align 4
  %shl = shl nuw i32 1, %7
  %and = and i32 %shl, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %fail_clk

if.end30:                                         ; preds = %if.end23
  %arrayidx = getelementptr [4 x ptr], ptr @clock_names, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call32 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %9) #6
  %can_clk = getelementptr i8, ptr %call7, i32 2856
  %10 = ptrtoint ptr %can_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %can_clk, align 8
  %cmp.i122 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %11) #9
  br label %fail_clk

if.end42:                                         ; preds = %if.end30
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rcar_can_netdev_ops, ptr %netdev_ops, align 8
  %irq43 = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 64
  %13 = ptrtoint ptr %irq43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1, ptr %irq43, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 14
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %or = or i32 %15, 262144
  store i32 %or, ptr %flags, align 8
  %ndev44 = getelementptr i8, ptr %call7, i32 2616
  %16 = ptrtoint ptr %ndev44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %ndev44, align 8
  %regs = getelementptr i8, ptr %call7, i32 2848
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %regs, align 8
  %18 = ptrtoint ptr %clock_select to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock_select, align 4
  %conv = trunc i32 %19 to i8
  %clock_select45 = getelementptr i8, ptr %call7, i32 2868
  %20 = ptrtoint ptr %clock_select45 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %clock_select45, align 4
  %call47 = call i32 @clk_get_rate(ptr noundef %call32) #6
  %clock = getelementptr i8, ptr %call7, i32 2440
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call47, ptr %clock, align 8
  %bittiming_const = getelementptr i8, ptr %call7, i32 2332
  %22 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rcar_can_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call7, i32 2596
  %23 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rcar_can_do_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call7, i32 2608
  %24 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rcar_can_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call7, i32 2480
  %25 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %ctrlmode_supported, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 133, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %parent, align 8
  %napi = getelementptr i8, ptr %call7, i32 2624
  call void @netif_napi_add(ptr noundef nonnull %call7, ptr noundef %napi, ptr noundef nonnull @rcar_can_rx_poll, i32 noundef 4) #6
  %call54 = call i32 @register_candev(ptr noundef nonnull %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call54) #9
  call void @__netif_napi_del(ptr noundef %napi) #6
  call void @synchronize_net() #6
  br label %fail_clk

if.end61:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq43, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %29) #9
  br label %cleanup

fail_clk:                                         ; preds = %do.end59, %if.then35, %if.then25, %if.then16
  %err.0 = phi i32 [ %5, %if.then16 ], [ %11, %if.then35 ], [ %call54, %do.end59 ], [ -22, %if.then25 ]
  call void @free_candev(ptr noundef nonnull %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_clk, %if.end61, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ %3, %if.then4 ], [ %err.0, %fail_clk ], [ -12, %do.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_select) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_candev(ptr noundef %1) #6
  %napi = getelementptr i8, ptr %1, i32 2624
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  tail call void @free_candev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_do_set_mode(ptr nocapture noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rcar_can_start(ptr noundef %ndev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dev, i32 2852
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr i8, ptr %dev, i32 2848
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %tecr = getelementptr inbounds %struct.rcar_can_regs, ptr %3, i32 0, i32 21
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %tecr) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bec, align 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %recr = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 20
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %recr) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %conv10 = zext i8 %8 to i16
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %9 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10, ptr %rxerr, align 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.end ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_rx_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp60 = icmp sgt i32 %quota, 0
  br i1 %cmp60, label %for.body.lr.ph, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr i8, ptr %napi, i32 224
  %ndev.i = getelementptr i8, ptr %napi, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_pkts.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %isr1 = getelementptr inbounds %struct.rcar_can_regs, ptr %1, i32 0, i32 32
  %2 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr1) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %3 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  call void @arm_heavy_mb() #6
  %and5 = and i8 %2, -17
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %isr8 = getelementptr inbounds %struct.rcar_can_regs, ptr %5, i32 0, i32 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr8, i8 %and5) #6, !srcloc !130
  br label %if.end

if.end:                                           ; preds = %do.body, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %rfcr12 = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 14
  %8 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rfcr12) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool18.not = icmp sgt i8 %8, -1
  br i1 %tobool18.not, label %if.end20, label %if.then28.critedge

if.end20:                                         ; preds = %if.end
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 8
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %11 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !132
  %call.i = call ptr @alloc_can_skb(ptr noundef %10, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 6
  %12 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %for.inc

if.end.i:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %arrayidx.i = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %15, i32 0, i32 60
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #6, !srcloc !133
  %17 = call i32 @llvm.bswap.i32(i32 %16) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool5.not.i = icmp sgt i32 %17, -1
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and7.i = and i32 %17, 536870911
  %or.i = or i32 %and7.i, -2147483648
  %18 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %19, align 8
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %17, 18
  %and8.i = and i32 %shr.i, 2047
  %21 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and8.i, ptr %22, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then6.i
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %dlc16.i = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %25, i32 0, i32 60, i32 2
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %dlc16.i) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %27 = call i8 @llvm.umin.i8(i8 %26, i8 8) #6
  %28 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf.i, align 4
  %30 = getelementptr inbounds %struct.can_frame, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %27, ptr %30, align 4
  %and26.i = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.cond.preheader.i, label %if.then28.i

for.cond.preheader.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp3476.not.i = icmp eq i8 %27, 0
  br i1 %cmp3476.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then28.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 8
  %or30.i = or i32 %33, 1073741824
  store i32 %or30.i, ptr %29, align 8
  br label %if.end51.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %arrayidx42.i = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %35, i32 0, i32 60, i32 3, i32 %indvars.iv.i
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx42.i) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %37 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf.i, align 4
  %arrayidx48.i = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 %indvars.iv.i
  %39 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %arrayidx48.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %40 = load ptr, ptr %cf.i, align 4
  %41 = getelementptr inbounds %struct.can_frame, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %44 = zext i8 %43 to i32
  %cmp34.i = icmp ult i32 %indvars.iv.next.i, %44
  br i1 %cmp34.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = zext i8 %43 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %45, %for.end.i.loopexit ]
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 2
  %46 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %47, %.lcssa.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %for.end.i, %if.then28.i
  %48 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stats1.i, align 4
  %inc52.i = add i32 %49, 1
  store i32 %inc52.i, ptr %stats1.i, align 4
  %call54.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end51.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %rfpcr = getelementptr inbounds %struct.rcar_can_regs, ptr %51, i32 0, i32 15
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfpcr, i8 -1) #6, !srcloc !130
  %inc = add nuw nsw i32 %num_pkts.061, 1
  %exitcond.not = icmp eq i32 %inc, %quota
  br i1 %exitcond.not, label %for.inc.if.end38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end38_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then28.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %num_pkts.061) #6
  %ier = getelementptr i8, ptr %napi, i32 245
  %52 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ier, align 1
  %54 = or i8 %53, 16
  store i8 %54, ptr %ier, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ier, align 1
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  %ier37 = getelementptr inbounds %struct.rcar_can_regs, ptr %58, i32 0, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier37, i8 %56) #6, !srcloc !130
  br label %if.end38

if.end38:                                         ; preds = %if.then28.critedge, %for.inc.if.end38_crit_edge, %entry.if.end38_crit_edge
  %num_pkts.058 = phi i32 [ %num_pkts.061, %if.then28.critedge ], [ 0, %entry.if.end38_crit_edge ], [ %quota, %for.inc.if.end38_crit_edge ]
  ret i32 %num_pkts.058
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %ndev, i32 2852
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %if.then

if.then:                                          ; preds = %if.then3.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.then_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %can_clk = getelementptr i8, ptr %ndev, i32 2856
  %2 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %can_clk, align 8
  %call.i45 = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.end.i49, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i49:                                       ; preds = %if.end
  %call1.i47 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool2.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool2.not.i48, label %if.end5, label %if.then3.i50

if.then3.i50:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i50, %if.end.if.then4_crit_edge
  %retval.0.i51.ph = phi i32 [ %call1.i47, %if.then3.i50 ], [ %call.i45, %if.end.if.then4_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i51.ph) #9
  br label %out_clock

if.end5:                                          ; preds = %if.end.i49
  %call6 = tail call i32 @open_candev(ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.28, i32 noundef %call6) #9
  br label %out_can_clock

if.end9:                                          ; preds = %if.end5
  %napi = getelementptr i8, ptr %ndev, i32 2624
  tail call void @napi_enable(ptr noundef %napi) #6
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i53 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @rcar_can_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool11.not = icmp eq i32 %call.i53, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %call.i53) #9
  tail call void @napi_disable(ptr noundef %napi) #6
  tail call void @close_candev(ptr noundef %ndev) #6
  br label %out_can_clock

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rcar_can_start(ptr noundef %ndev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

out_can_clock:                                    ; preds = %if.then12, %if.then8
  %err.0 = phi i32 [ %call6, %if.then8 ], [ %call.i53, %if.then12 ]
  %10 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %can_clk, align 8
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %out_clock

out_clock:                                        ; preds = %out_can_clock, %if.then4
  %err.1 = phi i32 [ %retval.0.i51.ph, %if.then4 ], [ %err.0, %out_can_clock ]
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %out_clock, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %retval.0.i.ph, %if.then ], [ %err.1, %out_clock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %regs.i = getelementptr i8, ptr %ndev, i32 2848
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %ctlr1.i = getelementptr inbounds %struct.rcar_can_regs, ptr %3, i32 0, i32 10
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctlr1.i) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %5 = or i16 %4, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %ctlr6.i = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr6.i, i16 %5) #6, !srcloc !142
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.051.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %str.i = getelementptr inbounds %struct.rcar_can_regs, ptr %9, i32 0, i32 11
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %str.i) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp ne i16 %11, 0
  %inc.i = add nuw nsw i32 %i.051.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %rcar_can_stop.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rcar_can_stop.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %mier0.i = getelementptr inbounds %struct.rcar_can_regs, ptr %13, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mier0.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %mier1.i = getelementptr inbounds %struct.rcar_can_regs, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mier1.i, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %ier.i = getelementptr inbounds %struct.rcar_can_regs, ptr %17, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier.i, i8 0) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %eier.i = getelementptr inbounds %struct.rcar_can_regs, ptr %19, i32 0, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eier.i, i8 0) #6, !srcloc !130
  %20 = or i16 %4, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %ctlr38.i = getelementptr inbounds %struct.rcar_can_regs, ptr %22, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr38.i, i16 %20) #6, !srcloc !142
  %state.i = getelementptr i8, ptr %ndev, i32 2472
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %state.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %ndev) #6
  %napi = getelementptr i8, ptr %ndev, i32 2624
  tail call void @napi_disable(ptr noundef %napi) #6
  %can_clk = getelementptr i8, ptr %ndev, i32 2856
  %26 = ptrtoint ptr %can_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %can_clk, align 8
  tail call void @clk_disable(ptr noundef %27) #6
  tail call void @clk_unprepare(ptr noundef %27) #6
  %clk = getelementptr i8, ptr %ndev, i32 2852
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  tail call void @close_candev(ptr noundef %ndev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !150

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !151

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !150

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !151

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !150

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  %and5 = and i32 %37, 536870911
  %or = or i32 %and5, -2147483648
  %and7 = shl i32 %37, 18
  %shl = and i32 %and7, 536608768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not71 = icmp slt i32 %37, 0
  %data1.0 = select i1 %tobool.not71, i32 %or, i32 %shl
  %and10 = and i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.cond.preheader, label %if.then12

for.cond.preheader:                               ; preds = %if.end
  %38 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp73.not = icmp eq i8 %40, 0
  br i1 %cmp73.not, label %for.cond.preheader.do.body21_crit_edge, label %do.body.lr.ph

for.cond.preheader.do.body21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %regs = getelementptr i8, ptr %ndev, i32 2848
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %data1.0, 1073741824
  br label %do.body21

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.074 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.074
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %arrayidx19 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %44, i32 0, i32 56, i32 3, i32 %i.074
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx19, i8 %42) #6, !srcloc !130
  %inc = add nuw nsw i32 %i.074, 1
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %38, align 4
  %conv = zext i8 %46 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.do.body21_crit_edge

do.body.do.body21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body21:                                        ; preds = %do.body.do.body21_crit_edge, %if.then12, %for.cond.preheader.do.body21_crit_edge
  %data1.1 = phi i32 [ %or13, %if.then12 ], [ %data1.0, %for.cond.preheader.do.body21_crit_edge ], [ %data1.0, %do.body.do.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %data1.1)
  %regs24 = getelementptr i8, ptr %ndev, i32 2848
  %48 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs24, align 8
  %arrayidx26 = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %49, i32 0, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx26, i32 %47) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %50 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %53 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs24, align 8
  %dlc = getelementptr [64 x %struct.rcar_can_mbox_regs], ptr %54, i32 0, i32 56, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %dlc, i8 %52) #6, !srcloc !130
  %tx_head = getelementptr i8, ptr %ndev, i32 2860
  %55 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_head, align 4
  %rem = and i32 %56, 3
  %call33 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %rem, i32 noundef 0) #6
  %57 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_head, align 4
  %inc35 = add i32 %58, 1
  store i32 %inc35, ptr %tx_head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs24, align 8
  %tfpcr = getelementptr inbounds %struct.rcar_can_regs, ptr %60, i32 0, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfpcr, i8 -1) #6, !srcloc !130
  %61 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_head, align 4
  %tx_tail = getelementptr i8, ptr %ndev, i32 2864
  %63 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_tail, align 8
  %sub = sub i32 %62, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp41 = icmp ugt i32 %sub, 3
  br i1 %cmp41, label %if.then43, label %do.body21.cleanup_crit_edge

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %65 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body21.cleanup_crit_edge, %can_dropped_invalid_skb.exit
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
define internal i32 @rcar_can_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %dev_id, i32 2848
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %isr1 = getelementptr inbounds %struct.rcar_can_regs, ptr %1, i32 0, i32 32
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr1) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %conv = zext i8 %2 to i32
  %ier = getelementptr i8, ptr %dev_id, i32 2869
  %3 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ier, align 1
  %and44 = and i8 %4, %2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and44)
  %tobool.not = icmp eq i8 %and44, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and6 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rcar_can_error(ptr noundef %dev_id)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %and11 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %tfcr37.i = getelementptr inbounds %struct.rcar_can_regs, ptr %6, i32 0, i32 16
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %tfcr37.i) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 7
  %tx_head.i = getelementptr i8, ptr %dev_id, i32 2860
  %10 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_head.i, align 4
  %tx_tail.i = getelementptr i8, ptr %dev_id, i32 2864
  %12 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_tail.i, align 8
  %sub38.i = sub i32 %11, %13
  %conv539.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i, i32 %conv539.i)
  %cmp.not40.i = icmp ugt i32 %sub38.i, %conv539.i
  br i1 %cmp.not40.i, label %cleanup.lr.ph.i, label %if.then13.rcar_can_tx_done.exit_crit_edge

if.then13.rcar_can_tx_done.exit_crit_edge:        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcar_can_tx_done.exit

cleanup.lr.ph.i:                                  ; preds = %if.then13
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %cleanup.lr.ph.i
  %14 = phi i32 [ %13, %cleanup.lr.ph.i ], [ %31, %cleanup.i.cleanup.i_crit_edge ]
  %15 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %rem.i = and i32 %14, 3
  %call8.i = tail call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef %rem.i, ptr noundef null) #6
  %17 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %18, %call8.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %19 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_tail.i, align 8
  %inc10.i = add i32 %20, 1
  store i32 %inc10.i, ptr %tx_tail.i, align 8
  %21 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %22) #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %tfcr.i = getelementptr inbounds %struct.rcar_can_regs, ptr %24, i32 0, i32 16
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %tfcr.i) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  %26 = lshr i8 %25, 1
  %27 = and i8 %26, 7
  %28 = ptrtoint ptr %tx_head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_head.i, align 4
  %30 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_tail.i, align 8
  %sub.i = sub i32 %29, %31
  %conv5.i = zext i8 %27 to i32
  %cmp.not.i = icmp ugt i32 %sub.i, %conv5.i
  br i1 %cmp.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.rcar_can_tx_done.exit_crit_edge

cleanup.i.rcar_can_tx_done.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcar_can_tx_done.exit

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

rcar_can_tx_done.exit:                            ; preds = %cleanup.i.rcar_can_tx_done.exit_crit_edge, %if.then13.rcar_can_tx_done.exit_crit_edge
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %isr14.i = getelementptr inbounds %struct.rcar_can_regs, ptr %33, i32 0, i32 32
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr14.i) #6, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %35 = and i8 %34, -9
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %isr22.i = getelementptr inbounds %struct.rcar_can_regs, ptr %37, i32 0, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %isr22.i, i8 %35) #6, !srcloc !130
  br label %if.end14

if.end14:                                         ; preds = %rcar_can_tx_done.exit, %if.end9.if.end14_crit_edge
  %and16 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.then18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  %napi = getelementptr i8, ptr %dev_id, i32 2624
  %call19 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call19, label %if.then20, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ier, align 1
  %40 = and i8 %39, -17
  store i8 %40, ptr %ier, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ier, align 1
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %ier27 = getelementptr inbounds %struct.rcar_can_regs, ptr %44, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier27, i8 %42) #6, !srcloc !130
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then18.cleanup_crit_edge ], [ 1, %if.then20 ], [ 1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_can_start(ptr nocapture noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %ndev, i32 2848
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %ctlr1 = getelementptr inbounds %struct.rcar_can_regs, ptr %1, i32 0, i32 10
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctlr1) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %3 = and i16 %2, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %ctlr6 = getelementptr inbounds %struct.rcar_can_regs, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr6, i16 %3) #6, !srcloc !142
  %6 = or i16 %3, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %ctlr13 = getelementptr inbounds %struct.rcar_can_regs, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr13, i16 %6) #6, !srcloc !142
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0159 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %str = getelementptr inbounds %struct.rcar_can_regs, ptr %10, i32 0, i32 11
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %str) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp ne i16 %12, 0
  %inc = add nuw nsw i32 %i.0159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 256
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %phase_seg1.i = getelementptr i8, ptr %ndev, i32 2356
  %13 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phase_seg1.i, align 4
  %prop_seg.i = getelementptr i8, ptr %ndev, i32 2352
  %15 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop_seg.i, align 4
  %add.i = add i32 %16, %14
  %sub.i = shl i32 %add.i, 20
  %and.i = add i32 %sub.i, 15728640
  %shl.i = and i32 %and.i, 15728640
  %brp.i = getelementptr i8, ptr %ndev, i32 2368
  %17 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brp.i, align 4
  %sub1.i = shl i32 %18, 8
  %and2.i = add i32 %sub1.i, 261888
  %shl3.i = and i32 %and2.i, 261888
  %or.i = or i32 %shl.i, %shl3.i
  %sjw.i = getelementptr i8, ptr %ndev, i32 2364
  %19 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sjw.i, align 4
  %sub4.i = shl i32 %20, 4
  %and5.i = add i32 %sub4.i, 48
  %shl6.i = and i32 %and5.i, 48
  %or7.i = or i32 %or.i, %shl6.i
  %phase_seg2.i = getelementptr i8, ptr %ndev, i32 2360
  %21 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phase_seg2.i, align 4
  %sub8.i = add i32 %22, 7
  %and9.i = and i32 %sub8.i, 7
  %or10.i = or i32 %or7.i, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %shl11.i = shl nuw i32 %or10.i, 8
  %clock_select.i = getelementptr i8, ptr %ndev, i32 2868
  %23 = ptrtoint ptr %clock_select.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %clock_select.i, align 4
  %conv.i = zext i8 %24 to i32
  %or12.i = or i32 %shl11.i, %conv.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #6
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %bcr13.i = getelementptr inbounds %struct.rcar_can_regs, ptr %27, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bcr13.i, i32 %25) #6, !srcloc !145
  %28 = or i16 %3, 3339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %ctlr39 = getelementptr inbounds %struct.rcar_can_regs, ptr %30, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr39, i16 %28) #6, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  %arrayidx = getelementptr %struct.rcar_can_regs, ptr %32, i32 0, i32 1, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %arrayidx49 = getelementptr %struct.rcar_can_regs, ptr %34, i32 0, i32 1, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx49, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %mkivlr1 = getelementptr inbounds %struct.rcar_can_regs, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mkivlr1, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %fidcr = getelementptr inbounds %struct.rcar_can_regs, ptr %38, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fidcr, i32 0) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %arrayidx64 = getelementptr %struct.rcar_can_regs, ptr %40, i32 0, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx64, i32 192) #6, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %mier1 = getelementptr inbounds %struct.rcar_can_regs, ptr %42, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mier1, i32 17) #6, !srcloc !145
  %ier = getelementptr i8, ptr %ndev, i32 2869
  %43 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 56, ptr %ier, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ier, align 1
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %ier74 = getelementptr inbounds %struct.rcar_can_regs, ptr %47, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier74, i8 %45) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %ecsr = getelementptr inbounds %struct.rcar_can_regs, ptr %49, i32 0, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr, i8 -128) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %50 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctrlmode, align 4
  %52 = trunc i32 %51 to i8
  %53 = lshr i8 %52, 4
  %conv87 = or i8 %53, 110
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  %eier = getelementptr inbounds %struct.rcar_can_regs, ptr %55, i32 0, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eier, i8 %conv87) #6, !srcloc !130
  %state = getelementptr i8, ptr %ndev, i32 2472
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %state, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %57 = and i16 %28, -8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 8
  %ctlr97 = getelementptr inbounds %struct.rcar_can_regs, ptr %59, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr97, i16 %57) #6, !srcloc !142
  br label %for.body101

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %for.end
  %i.1160 = phi i32 [ 0, %for.end ], [ %inc115, %for.body101.for.body101_crit_edge ]
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %str105 = getelementptr inbounds %struct.rcar_can_regs, ptr %61, i32 0, i32 11
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %str105) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool111.not = icmp eq i16 %63, 0
  %inc115 = add nuw nsw i32 %i.1160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc115)
  %exitcond161.not = icmp eq i32 %inc115, 256
  %or.cond162 = select i1 %tobool111.not, i1 true, i1 %exitcond161.not
  br i1 %or.cond162, label %do.body117, label %for.body101.for.body101_crit_edge

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body101

do.body117:                                       ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %rfcr = getelementptr inbounds %struct.rcar_can_regs, ptr %65, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %rfcr, i8 1) #6, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 8
  %tfcr = getelementptr inbounds %struct.rcar_can_regs, ptr %67, i32 0, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %tfcr, i8 1) #6, !srcloc !130
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_can_error(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !132
  %call1 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %regs = getelementptr i8, ptr %ndev, i32 2848
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %eifr2 = getelementptr inbounds %struct.rcar_can_regs, ptr %2, i32 0, i32 19
  %3 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %eifr2) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %tecr = getelementptr inbounds %struct.rcar_can_regs, ptr %5, i32 0, i32 21
  %6 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %tecr) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %recr = getelementptr inbounds %struct.rcar_can_regs, ptr %8, i32 0, i32 20
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %recr) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  %tobool17.not = icmp eq ptr %call1, null
  br i1 %tobool17.not, label %if.then.if.end21_crit_edge, label %if.then18

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %or = or i32 %13, 4
  store i32 %or, ptr %11, align 8
  %14 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %14, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %6, ptr %arrayidx, align 2
  %16 = load ptr, ptr %cf, align 4
  %arrayidx20 = getelementptr %struct.can_frame, ptr %16, i32 0, i32 5, i32 7
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %9, ptr %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %rxerr.0 = phi i8 [ %9, %if.then18 ], [ %9, %if.then.if.end21_crit_edge ], [ 0, %entry.if.end21_crit_edge ]
  %txerr.0 = phi i8 [ %6, %if.then18 ], [ %6, %if.then.if.end21_crit_edge ], [ 0, %entry.if.end21_crit_edge ]
  %and23 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end339_crit_edge, label %if.then25

if.end21.if.end339_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end339

if.then25:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end37)) #6
          to label %if.then33 [label %do.end37], !srcloc !183

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %ndev34 = getelementptr i8, ptr %ndev, i32 2616
  %18 = ptrtoint ptr %ndev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev34, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug459, ptr noundef %19, ptr noundef nonnull @.str.31) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %if.then25
  %tobool38.not = icmp eq ptr %call1, null
  br i1 %tobool38.not, label %do.end37.if.end42_crit_edge, label %if.then39

do.end37.if.end42_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %or41 = or i32 %23, 136
  store i32 %or41, ptr %21, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %do.end37.if.end42_crit_edge
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %ecsr46 = getelementptr inbounds %struct.rcar_can_regs, ptr %25, i32 0, i32 22
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ecsr46) #6, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  %conv50 = zext i8 %26 to i32
  %and51 = and i32 %conv50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end42.if.end86_crit_edge, label %do.body55

if.end42.if.end86_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.body55:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end75)) #6
          to label %if.then69 [label %do.end75], !srcloc !183

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %ndev70 = getelementptr i8, ptr %ndev, i32 2616
  %27 = ptrtoint ptr %ndev70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev70, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug460, ptr noundef %28, ptr noundef nonnull @.str.32) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %do.body55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %ecsr80 = getelementptr inbounds %struct.rcar_can_regs, ptr %30, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr80, i8 -65) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end75.if.end86_crit_edge, label %if.then82

do.end75.if.end86_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then82:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf, align 4
  %arrayidx84 = getelementptr %struct.can_frame, ptr %32, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 27, ptr %arrayidx84, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %do.end75.if.end86_crit_edge, %if.end42.if.end86_crit_edge
  %tx_errors.0 = phi i32 [ 1, %if.then82 ], [ 1, %do.end75.if.end86_crit_edge ], [ 0, %if.end42.if.end86_crit_edge ]
  %and88 = and i32 %conv50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.if.end127_crit_edge, label %do.body92

if.end86.if.end127_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.body92:                                        ; preds = %if.end86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end112)) #6
          to label %if.then106 [label %do.end112], !srcloc !183

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %ndev107 = getelementptr i8, ptr %ndev, i32 2616
  %34 = ptrtoint ptr %ndev107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev107, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug461, ptr noundef %35, ptr noundef nonnull @.str.33) #6
  br label %do.end112

do.end112:                                        ; preds = %if.then106, %do.body92
  %inc113 = add nuw nsw i32 %tx_errors.0, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %ecsr118 = getelementptr inbounds %struct.rcar_can_regs, ptr %37, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr118, i8 -33) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end112.if.end127_crit_edge, label %if.then120

do.end112.if.end127_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then120:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf, align 4
  %arrayidx122 = getelementptr %struct.can_frame, ptr %39, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx122, align 2
  %42 = or i8 %41, 8
  store i8 %42, ptr %arrayidx122, align 2
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %do.end112.if.end127_crit_edge, %if.end86.if.end127_crit_edge
  %tx_errors.1 = phi i32 [ %inc113, %if.then120 ], [ %inc113, %do.end112.if.end127_crit_edge ], [ %tx_errors.0, %if.end86.if.end127_crit_edge ]
  %and129 = and i32 %conv50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end127.if.end168_crit_edge, label %do.body133

if.end127.if.end168_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

do.body133:                                       ; preds = %if.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end153)) #6
          to label %if.then147 [label %do.end153], !srcloc !183

if.then147:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %ndev148 = getelementptr i8, ptr %ndev, i32 2616
  %43 = ptrtoint ptr %ndev148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev148, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug462, ptr noundef %44, ptr noundef nonnull @.str.34) #6
  br label %do.end153

do.end153:                                        ; preds = %if.then147, %do.body133
  %inc154 = add nuw nsw i32 %tx_errors.1, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 8
  %ecsr159 = getelementptr inbounds %struct.rcar_can_regs, ptr %46, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr159, i8 -17) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end153.if.end168_crit_edge, label %if.then161

do.end153.if.end168_crit_edge:                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

if.then161:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cf, align 4
  %arrayidx163 = getelementptr %struct.can_frame, ptr %48, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx163, align 2
  %51 = or i8 %50, 16
  store i8 %51, ptr %arrayidx163, align 2
  br label %if.end168

if.end168:                                        ; preds = %if.then161, %do.end153.if.end168_crit_edge, %if.end127.if.end168_crit_edge
  %tx_errors.2 = phi i32 [ %inc154, %if.then161 ], [ %inc154, %do.end153.if.end168_crit_edge ], [ %tx_errors.1, %if.end127.if.end168_crit_edge ]
  %and170 = and i32 %conv50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end168.if.end206_crit_edge, label %do.body174

if.end168.if.end206_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

do.body174:                                       ; preds = %if.end168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end194)) #6
          to label %if.then188 [label %do.end194], !srcloc !183

if.then188:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  %ndev189 = getelementptr i8, ptr %ndev, i32 2616
  %52 = ptrtoint ptr %ndev189 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev189, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug463, ptr noundef %53, ptr noundef nonnull @.str.35) #6
  br label %do.end194

do.end194:                                        ; preds = %if.then188, %do.body174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  %ecsr200 = getelementptr inbounds %struct.rcar_can_regs, ptr %55, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr200, i8 -9) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end194.if.end206_crit_edge, label %if.then202

do.end194.if.end206_crit_edge:                    ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then202:                                       ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cf, align 4
  %arrayidx204 = getelementptr %struct.can_frame, ptr %57, i32 0, i32 5, i32 3
  %58 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 8, ptr %arrayidx204, align 1
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %do.end194.if.end206_crit_edge, %if.end168.if.end206_crit_edge
  %rx_errors.0 = phi i32 [ 1, %if.then202 ], [ 1, %do.end194.if.end206_crit_edge ], [ 0, %if.end168.if.end206_crit_edge ]
  %and208 = and i32 %conv50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.end206.if.end246_crit_edge, label %do.body212

if.end206.if.end246_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end246

do.body212:                                       ; preds = %if.end206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end232)) #6
          to label %if.then226 [label %do.end232], !srcloc !183

if.then226:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  %ndev227 = getelementptr i8, ptr %ndev, i32 2616
  %59 = ptrtoint ptr %ndev227 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev227, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug464, ptr noundef %60, ptr noundef nonnull @.str.36) #6
  br label %do.end232

do.end232:                                        ; preds = %if.then226, %do.body212
  %inc233 = add nuw nsw i32 %tx_errors.2, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 8
  %ecsr238 = getelementptr inbounds %struct.rcar_can_regs, ptr %62, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr238, i8 -5) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end232.if.end246_crit_edge, label %if.then240

do.end232.if.end246_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end246

if.then240:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cf, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %or242 = or i32 %66, 32
  store i32 %or242, ptr %64, align 8
  %67 = load ptr, ptr %cf, align 4
  %arrayidx244 = getelementptr %struct.can_frame, ptr %67, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 25, ptr %arrayidx244, align 1
  br label %if.end246

if.end246:                                        ; preds = %if.then240, %do.end232.if.end246_crit_edge, %if.end206.if.end246_crit_edge
  %tx_errors.3 = phi i32 [ %inc233, %if.then240 ], [ %inc233, %do.end232.if.end246_crit_edge ], [ %tx_errors.2, %if.end206.if.end246_crit_edge ]
  %and248 = and i32 %conv50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end246.if.end287_crit_edge, label %do.body252

if.end246.if.end287_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

do.body252:                                       ; preds = %if.end246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end272)) #6
          to label %if.then266 [label %do.end272], !srcloc !183

if.then266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #8
  %ndev267 = getelementptr i8, ptr %ndev, i32 2616
  %69 = ptrtoint ptr %ndev267 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndev267, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug465, ptr noundef %70, ptr noundef nonnull @.str.37) #6
  br label %do.end272

do.end272:                                        ; preds = %if.then266, %do.body252
  %inc273 = add nuw nsw i32 %rx_errors.0, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 8
  %ecsr278 = getelementptr inbounds %struct.rcar_can_regs, ptr %72, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr278, i8 -3) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end272.if.end287_crit_edge, label %if.then280

do.end272.if.end287_crit_edge:                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287

if.then280:                                       ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cf, align 4
  %arrayidx282 = getelementptr %struct.can_frame, ptr %74, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx282, align 2
  %77 = or i8 %76, 2
  store i8 %77, ptr %arrayidx282, align 2
  br label %if.end287

if.end287:                                        ; preds = %if.then280, %do.end272.if.end287_crit_edge, %if.end246.if.end287_crit_edge
  %rx_errors.1 = phi i32 [ %inc273, %if.then280 ], [ %inc273, %do.end272.if.end287_crit_edge ], [ %rx_errors.0, %if.end246.if.end287_crit_edge ]
  %and289 = and i32 %conv50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.end287.if.end328_crit_edge, label %do.body293

if.end287.if.end328_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end328

do.body293:                                       ; preds = %if.end287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end313)) #6
          to label %if.then307 [label %do.end313], !srcloc !183

if.then307:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #8
  %ndev308 = getelementptr i8, ptr %ndev, i32 2616
  %78 = ptrtoint ptr %ndev308 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ndev308, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug466, ptr noundef %79, ptr noundef nonnull @.str.38) #6
  br label %do.end313

do.end313:                                        ; preds = %if.then307, %do.body293
  %inc314 = add nuw nsw i32 %rx_errors.1, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 8
  %ecsr319 = getelementptr inbounds %struct.rcar_can_regs, ptr %81, i32 0, i32 22
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ecsr319, i8 -2) #6, !srcloc !130
  br i1 %tobool38.not, label %do.end313.if.end328_crit_edge, label %if.then321

do.end313.if.end328_crit_edge:                    ; preds = %do.end313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end328

if.then321:                                       ; preds = %do.end313
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cf, align 4
  %arrayidx323 = getelementptr %struct.can_frame, ptr %83, i32 0, i32 5, i32 2
  %84 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx323, align 2
  %86 = or i8 %85, 4
  store i8 %86, ptr %arrayidx323, align 2
  br label %if.end328

if.end328:                                        ; preds = %if.then321, %do.end313.if.end328_crit_edge, %if.end287.if.end328_crit_edge
  %rx_errors.2 = phi i32 [ %inc314, %if.then321 ], [ %inc314, %do.end313.if.end328_crit_edge ], [ %rx_errors.1, %if.end287.if.end328_crit_edge ]
  %can_stats = getelementptr i8, ptr %ndev, i32 2308
  %87 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %can_stats, align 4
  %inc329 = add i32 %88, 1
  store i32 %inc329, ptr %can_stats, align 4
  %rx_errors330 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %89 = ptrtoint ptr %rx_errors330 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_errors330, align 8
  %add = add i32 %90, %rx_errors.2
  store i32 %add, ptr %rx_errors330, align 8
  %tx_errors332 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %91 = ptrtoint ptr %tx_errors332 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_errors332, align 4
  %add333 = add i32 %92, %tx_errors.3
  store i32 %add333, ptr %tx_errors332, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 8
  %eifr338 = getelementptr inbounds %struct.rcar_can_regs, ptr %94, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr338, i8 -2) #6, !srcloc !130
  br label %if.end339

if.end339:                                        ; preds = %if.end328, %if.end21.if.end339_crit_edge
  %and341 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %if.end339.if.end384_crit_edge, label %do.body345

if.end339.if.end384_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end384

do.body345:                                       ; preds = %if.end339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end365)) #6
          to label %if.then359 [label %do.end365], !srcloc !183

if.then359:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #8
  %ndev360 = getelementptr i8, ptr %ndev, i32 2616
  %95 = ptrtoint ptr %ndev360 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ndev360, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug467, ptr noundef %96, ptr noundef nonnull @.str.39) #6
  br label %do.end365

do.end365:                                        ; preds = %if.then359, %do.body345
  %state = getelementptr i8, ptr %ndev, i32 2472
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %state, align 8
  %error_warning = getelementptr i8, ptr %ndev, i32 2312
  %98 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %error_warning, align 4
  %inc369 = add i32 %99, 1
  store i32 %inc369, ptr %error_warning, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 8
  %eifr374 = getelementptr inbounds %struct.rcar_can_regs, ptr %101, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr374, i8 -3) #6, !srcloc !130
  %tobool375.not = icmp eq ptr %call1, null
  br i1 %tobool375.not, label %do.end365.if.end384_crit_edge, label %if.then376

do.end365.if.end384_crit_edge:                    ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end384

if.then376:                                       ; preds = %do.end365
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %txerr.0, i8 %rxerr.0)
  %cmp = icmp ugt i8 %txerr.0, %rxerr.0
  %conv380 = select i1 %cmp, i8 8, i8 4
  %102 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cf, align 4
  %arrayidx382 = getelementptr %struct.can_frame, ptr %103, i32 0, i32 5, i32 1
  %104 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv380, ptr %arrayidx382, align 1
  br label %if.end384

if.end384:                                        ; preds = %if.then376, %do.end365.if.end384_crit_edge, %if.end339.if.end384_crit_edge
  %and386 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %if.end384.if.end432_crit_edge, label %do.body390

if.end384.if.end432_crit_edge:                    ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

do.body390:                                       ; preds = %if.end384
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end410)) #6
          to label %if.then404 [label %do.end410], !srcloc !183

if.then404:                                       ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #8
  %ndev405 = getelementptr i8, ptr %ndev, i32 2616
  %105 = ptrtoint ptr %ndev405 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev405, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug468, ptr noundef %106, ptr noundef nonnull @.str.40) #6
  br label %do.end410

do.end410:                                        ; preds = %if.then404, %do.body390
  %state412 = getelementptr i8, ptr %ndev, i32 2472
  %107 = ptrtoint ptr %state412 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %state412, align 8
  %error_passive = getelementptr i8, ptr %ndev, i32 2316
  %108 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %error_passive, align 4
  %inc415 = add i32 %109, 1
  store i32 %inc415, ptr %error_passive, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 8
  %eifr420 = getelementptr inbounds %struct.rcar_can_regs, ptr %111, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr420, i8 -5) #6, !srcloc !130
  %tobool421.not = icmp eq ptr %call1, null
  br i1 %tobool421.not, label %do.end410.if.end432_crit_edge, label %if.then422

do.end410.if.end432_crit_edge:                    ; preds = %do.end410
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

if.then422:                                       ; preds = %do.end410
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp1(i8 %txerr.0, i8 %rxerr.0)
  %cmp425 = icmp ugt i8 %txerr.0, %rxerr.0
  %conv428 = select i1 %cmp425, i8 32, i8 16
  %112 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cf, align 4
  %arrayidx430 = getelementptr %struct.can_frame, ptr %113, i32 0, i32 5, i32 1
  %114 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv428, ptr %arrayidx430, align 1
  br label %if.end432

if.end432:                                        ; preds = %if.then422, %do.end410.if.end432_crit_edge, %if.end384.if.end432_crit_edge
  %and434 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and434)
  %tobool435.not = icmp eq i32 %and434, 0
  br i1 %tobool435.not, label %if.end432.if.end480_crit_edge, label %do.body438

if.end432.if.end480_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end480

do.body438:                                       ; preds = %if.end432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end458)) #6
          to label %if.then452 [label %do.end458], !srcloc !183

if.then452:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #8
  %ndev453 = getelementptr i8, ptr %ndev, i32 2616
  %115 = ptrtoint ptr %ndev453 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ndev453, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug469, ptr noundef %116, ptr noundef nonnull @.str.41) #6
  br label %do.end458

do.end458:                                        ; preds = %if.then452, %do.body438
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 0, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 1, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 2, ptr noundef null) #6
  call void @can_free_echo_skb(ptr noundef %ndev, i32 noundef 3, ptr noundef null) #6
  %ier = getelementptr i8, ptr %ndev, i32 2869
  %117 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 32, ptr %ier, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  call void @arm_heavy_mb() #6
  %118 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ier, align 1
  %120 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs, align 8
  %ier464 = getelementptr inbounds %struct.rcar_can_regs, ptr %121, i32 0, i32 31
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier464, i8 %119) #6, !srcloc !130
  %state466 = getelementptr i8, ptr %ndev, i32 2472
  %122 = ptrtoint ptr %state466 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 3, ptr %state466, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 8
  %eifr471 = getelementptr inbounds %struct.rcar_can_regs, ptr %124, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr471, i8 -9) #6, !srcloc !130
  %bus_off = getelementptr i8, ptr %ndev, i32 2320
  %125 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bus_off, align 4
  %inc474 = add i32 %126, 1
  store i32 %inc474, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %ndev) #6
  %tobool475.not = icmp eq ptr %call1, null
  br i1 %tobool475.not, label %do.end458.if.end480_crit_edge, label %if.then476

do.end458.if.end480_crit_edge:                    ; preds = %do.end458
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end480

if.then476:                                       ; preds = %do.end458
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cf, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  %or478 = or i32 %130, 64
  store i32 %or478, ptr %128, align 8
  br label %if.end480

if.end480:                                        ; preds = %if.then476, %do.end458.if.end480_crit_edge, %if.end432.if.end480_crit_edge
  %and482 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and482)
  %tobool483.not = icmp eq i32 %and482, 0
  br i1 %tobool483.not, label %if.end480.if.end524_crit_edge, label %do.body486

if.end480.if.end524_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end524

do.body486:                                       ; preds = %if.end480
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end506)) #6
          to label %if.then500 [label %do.end506], !srcloc !183

if.then500:                                       ; preds = %do.body486
  call void @__sanitizer_cov_trace_pc() #8
  %ndev501 = getelementptr i8, ptr %ndev, i32 2616
  %131 = ptrtoint ptr %ndev501 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ndev501, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug470, ptr noundef %132, ptr noundef nonnull @.str.42) #6
  br label %do.end506

do.end506:                                        ; preds = %if.then500, %do.body486
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %133 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_over_errors, align 4
  %inc508 = add i32 %134, 1
  store i32 %inc508, ptr %rx_over_errors, align 4
  %rx_errors510 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %135 = ptrtoint ptr %rx_errors510 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_errors510, align 8
  %inc511 = add i32 %136, 1
  store i32 %inc511, ptr %rx_errors510, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs, align 8
  %eifr516 = getelementptr inbounds %struct.rcar_can_regs, ptr %138, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr516, i8 -33) #6, !srcloc !130
  %tobool517.not = icmp eq ptr %call1, null
  br i1 %tobool517.not, label %if.end524.thread, label %if.then518

if.then518:                                       ; preds = %do.end506
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cf, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %or520 = or i32 %142, 4
  store i32 %or520, ptr %140, align 8
  %143 = load ptr, ptr %cf, align 4
  %arrayidx522 = getelementptr %struct.can_frame, ptr %143, i32 0, i32 5, i32 1
  %144 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %arrayidx522, align 1
  br label %if.end524

if.end524:                                        ; preds = %if.then518, %if.end480.if.end524_crit_edge
  %and526 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526)
  %tobool527.not = icmp eq i32 %and526, 0
  br i1 %tobool527.not, label %if.end572, label %if.end524.do.body530_crit_edge

if.end524.do.body530_crit_edge:                   ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body530

if.end524.thread:                                 ; preds = %do.end506
  %and526713 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526713)
  %tobool527.not714 = icmp eq i32 %and526713, 0
  br i1 %tobool527.not714, label %if.end524.thread.if.end576_crit_edge, label %if.end524.thread.do.body530_crit_edge

if.end524.thread.do.body530_crit_edge:            ; preds = %if.end524.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body530

if.end524.thread.if.end576_crit_edge:             ; preds = %if.end524.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end576

do.body530:                                       ; preds = %if.end524.thread.do.body530_crit_edge, %if.end524.do.body530_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_can_error.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_can_error, %do.end550)) #6
          to label %if.then544 [label %do.end550], !srcloc !183

if.then544:                                       ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #8
  %ndev545 = getelementptr i8, ptr %ndev, i32 2616
  %145 = ptrtoint ptr %ndev545 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ndev545, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rcar_can_error.__UNIQUE_ID_ddebug471, ptr noundef %146, ptr noundef nonnull @.str.43) #6
  br label %do.end550

do.end550:                                        ; preds = %if.then544, %do.body530
  %rx_over_errors552 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %147 = ptrtoint ptr %rx_over_errors552 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_over_errors552, align 4
  %inc553 = add i32 %148, 1
  store i32 %inc553, ptr %rx_over_errors552, align 4
  %rx_errors555 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 4
  %149 = ptrtoint ptr %rx_errors555 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rx_errors555, align 8
  %inc556 = add i32 %150, 1
  store i32 %inc556, ptr %rx_errors555, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 8
  %eifr561 = getelementptr inbounds %struct.rcar_can_regs, ptr %152, i32 0, i32 19
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eifr561, i8 -65) #6, !srcloc !130
  %cond = icmp eq ptr %call1, null
  br i1 %cond, label %do.end550.if.end576_crit_edge, label %if.end572.thread

do.end550.if.end576_crit_edge:                    ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end576

if.end572.thread:                                 ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cf, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %or565 = or i32 %156, 8
  store i32 %or565, ptr %154, align 8
  %157 = load ptr, ptr %cf, align 4
  %arrayidx567 = getelementptr %struct.can_frame, ptr %157, i32 0, i32 5, i32 2
  %158 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx567, align 2
  %160 = or i8 %159, 32
  store i8 %160, ptr %arrayidx567, align 2
  br label %if.then574

if.end572:                                        ; preds = %if.end524
  %tobool573.not = icmp eq ptr %call1, null
  br i1 %tobool573.not, label %if.end572.if.end576_crit_edge, label %if.end572.if.then574_crit_edge

if.end572.if.then574_crit_edge:                   ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then574

if.end572.if.end576_crit_edge:                    ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end576

if.then574:                                       ; preds = %if.end572.if.then574_crit_edge, %if.end572.thread
  %call575 = call i32 @netif_rx(ptr noundef nonnull %call1) #6
  br label %if.end576

if.end576:                                        ; preds = %if.then574, %if.end572.if.end576_crit_edge, %do.end550.if.end576_crit_edge, %if.end524.thread.if.end576_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void @netif_device_detach(ptr noundef %1) #6
  %regs = getelementptr i8, ptr %1, i32 2848
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %ctlr3 = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 10
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctlr3) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  %9 = or i16 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %ctlr8 = getelementptr inbounds %struct.rcar_can_regs, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr8, i16 %9) #6, !srcloc !142
  %12 = or i16 %8, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %ctlr16 = getelementptr inbounds %struct.rcar_can_regs, ptr %14, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr16, i16 %12) #6, !srcloc !142
  %state = getelementptr i8, ptr %1, i32 2472
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %state, align 8
  %clk = getelementptr i8, ptr %1, i32 2852
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_can_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr i8, ptr %1, i32 2852
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %call3) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr i8, ptr %1, i32 2848
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %ctlr6 = getelementptr inbounds %struct.rcar_can_regs, ptr %7, i32 0, i32 10
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ctlr6) #6, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %9 = and i16 %8, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %ctlr11 = getelementptr inbounds %struct.rcar_can_regs, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr11, i16 %9) #6, !srcloc !142
  %12 = and i16 %8, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %ctlr19 = getelementptr inbounds %struct.rcar_can_regs, ptr %14, i32 0, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ctlr19, i16 %12) #6, !srcloc !142
  %state = getelementptr i8, ptr %1, i32 2472
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 8
  tail call void @netif_device_attach(ptr noundef %1) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_rcar_can__474_915_rcar_can_driver_init6, !1, !"__initcall__kmod_rcar_can__474_915_rcar_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 915, i32 1}
!2 = !{ptr @__exitcall_rcar_can_driver_exit, !1, !"__exitcall_rcar_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author475, !4, !"__UNIQUE_ID_author475", i1 false, i1 false}
!4 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 917, i32 1}
!5 = !{ptr @__UNIQUE_ID_file476, !6, !"__UNIQUE_ID_file476", i1 false, i1 false}
!6 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 918, i32 1}
!7 = !{ptr @__UNIQUE_ID_license477, !6, !"__UNIQUE_ID_license477", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description478, !9, !"__UNIQUE_ID_description478", i1 false, i1 false}
!9 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 919, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias479, !11, !"__UNIQUE_ID_alias479", i1 false, i1 false}
!11 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 920, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 907, i32 11}
!14 = !{ptr @rcar_can_driver, !15, !"rcar_can_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 905, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 748, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 765, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_can_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rcar_can_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 772, i32 39}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 775, i32 3}
!30 = !{ptr @rcar_can_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rcar_can_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 782, i32 3}
!34 = !{ptr @rcar_can_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rcar_can_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 788, i32 3}
!38 = !{ptr @rcar_can_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rcar_can_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 810, i32 3}
!42 = !{ptr @rcar_can_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rcar_can_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 817, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rcar_can_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rcar_can_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 735, i32 17}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 736, i32 18}
!53 = !{ptr @clock_names, !54, !"clock_names", i1 false, i1 false}
!54 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 733, i32 27}
!55 = !{ptr @rcar_can_netdev_ops, !56, !"rcar_can_netdev_ops", i1 false, i1 false}
!56 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 629, i32 36}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 512, i32 7}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 518, i32 20}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 524, i32 20}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 530, i32 20}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 246, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug459, !66, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 252, i32 4}
!71 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug460, !70, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 259, i32 4}
!74 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug461, !73, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 266, i32 4}
!77 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug462, !76, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 273, i32 4}
!80 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug463, !79, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 280, i32 4}
!83 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug464, !82, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 289, i32 4}
!86 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug465, !85, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 296, i32 4}
!89 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug466, !88, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 309, i32 3}
!92 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug467, !91, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 319, i32 3}
!95 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug468, !94, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 329, i32 3}
!98 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug469, !97, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 342, i32 3}
!101 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug470, !100, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 352, i32 3}
!104 = !{ptr @rcar_can_error.__UNIQUE_ID_ddebug471, !103, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rcar_can_bittiming_const, !109, !"rcar_can_bittiming_const", i1 false, i1 false}
!109 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 103, i32 41}
!110 = !{ptr @rcar_can_of_table, !111, !"rcar_can_of_table", i1 false, i1 false}
!111 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 893, i32 34}
!112 = !{ptr @rcar_can_pm_ops, !113, !"rcar_can_pm_ops", i1 false, i1 false}
!113 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 891, i32 8}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/can/rcar/rcar_can.c", i32 874, i32 20}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 4641164}
!126 = !{i64 2157108563}
!127 = !{i64 2157108795}
!128 = !{i64 2157107221}
!129 = !{i64 2157107465}
!130 = !{i64 4640769}
!131 = !{i64 2157107762}
!132 = !{!"auto-init"}
!133 = !{i64 4641384}
!134 = !{i64 2157103641}
!135 = !{i64 2157103941}
!136 = !{i64 2157105807}
!137 = !{i64 2157107987}
!138 = !{i64 2157108270}
!139 = !{i64 4640546}
!140 = !{i64 2157099172}
!141 = !{i64 2157099396}
!142 = !{i64 4640346}
!143 = !{i64 2157100062}
!144 = !{i64 2157100284}
!145 = !{i64 4640966}
!146 = !{i64 2157100667}
!147 = !{i64 2157101048}
!148 = !{i64 2157101310}
!149 = !{i64 2157101586}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{i64 2157102072}
!153 = !{i64 2157102370}
!154 = !{i64 2157102784}
!155 = !{i64 2157103067}
!156 = !{i64 2157090328}
!157 = !{i64 2157089543}
!158 = !{i64 2157089798}
!159 = !{i64 2157090033}
!160 = !{i64 2157090583}
!161 = !{i64 2157091777}
!162 = !{i64 2157092002}
!163 = !{i64 2157092404}
!164 = !{i64 2157093070}
!165 = !{i64 2157091033}
!166 = !{i64 2157093331}
!167 = !{i64 2157093727}
!168 = !{i64 2157094120}
!169 = !{i64 2157094510}
!170 = !{i64 2157094898}
!171 = !{i64 2157095327}
!172 = !{i64 2157095813}
!173 = !{i64 2157096289}
!174 = !{i64 2157096575}
!175 = !{i64 2157097008}
!176 = !{i64 2157097400}
!177 = !{i64 2157098105}
!178 = !{i64 2157098342}
!179 = !{i64 2157098628}
!180 = !{i64 2157054892}
!181 = !{i64 2157055142}
!182 = !{i64 2157055374}
!183 = !{i64 2148978461, i64 2148978466, i64 2148978479, i64 2148978523, i64 2148978557, i64 2148978578}
!184 = !{i64 2157057910}
!185 = !{i64 2157060400}
!186 = !{i64 2157062963}
!187 = !{i64 2157065534}
!188 = !{i64 2157068009}
!189 = !{i64 2157070484}
!190 = !{i64 2157072979}
!191 = !{i64 2157075470}
!192 = !{i64 2157075765}
!193 = !{i64 2157078347}
!194 = !{i64 2157080939}
!195 = !{i64 2157083529}
!196 = !{i64 2157083817}
!197 = !{i64 2157086475}
!198 = !{i64 2157089234}
!199 = !{i64 2157119873}
!200 = !{i64 2157120097}
!201 = !{i64 2157120500}
!202 = !{i64 2157121192}
!203 = !{i64 2157121417}
!204 = !{i64 2157121819}
