; ModuleID = '/llk/IR_all_yes/drivers/net/can/sun4i_can.c_pt.bc'
source_filename = "../drivers/net/can/sun4i_can.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sun4ican_quirks = type { i8 }
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
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }

@__initcall__kmod_sun4i_can__468_908_sun4i_can_driver_init6 = internal global ptr @sun4i_can_driver_init, section ".initcall6.init", align 4
@sun4i_can_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4ican_probe, ptr @sun4ican_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4ican_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_can_driver_exit = internal global ptr @sun4i_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author469 = internal constant [51 x i8] c"sun4i_can.author=Peter Chen <xingkongcp@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author470 = internal constant [67 x i8] c"sun4i_can.author=Gerhard Bertelsmann <info@gerhard-bertelsmann.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file471 = internal constant [41 x i8] c"sun4i_can.file=drivers/net/can/sun4i_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [31 x i8] c"sun4i_can.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description473 = internal constant [62 x i8] c"sun4i_can.description=CAN driver for Allwinner SoCs (A10/A20)\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i_can\00", [22 x i8] zeroinitializer }, align 32
@sun4ican_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_a10 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_a10 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4ican_quirks_r40 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to determine the quirks to use\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun4ican_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/can/sun4i_can.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr = internal global ptr @sun4ican_probe._entry, section ".printk_index", align 4
@sun4ican_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 826, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to request reset\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr.8 = internal global ptr @sun4ican_probe._entry.6, section ".printk_index", align 4
@sun4ican_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr.11 = internal global ptr @sun4ican_probe._entry.9, section ".printk_index", align 4
@sun4ican_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not allocate memory for CAN device\0A\00", [54 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr.14 = internal global ptr @sun4ican_probe._entry.12, section ".printk_index", align 4
@sun4ican_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sun4ican_open, ptr @sun4ican_close, ptr @sun4ican_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sun4ican_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"sun4i_can\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@sun4ican_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->cmdreg_lock\00", [45 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registering %s failed (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr.18 = internal global ptr @sun4ican_probe._entry.16, section ".printk_index", align 4
@sun4ican_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 889, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device registered (base=%p, irq=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun4ican_probe._entry_ptr.22 = internal global ptr @sun4ican_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_irq err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not deassert CAN reset\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not enable CAN peripheral clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not start CAN peripheral\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wakeup interrupt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"can't allocate buffer - clearing pending interrupts\0A\00", [43 x i8] zeroinitializer }, align 32
@sun4i_can_interrupt.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_can_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d messages handled in ISR\00", [37 x i8] zeroinitializer }, align 32
@sun4i_can_err.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun4i_can_err\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data overrun interrupt\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_can_err.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error warning interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_can_err.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.34, i8 0, i8 -112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bus error interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@sun4i_can_err.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.35, i8 0, i8 -104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error passive interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_can_err.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.36, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arbitration lost interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setting controller into reset mode failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setting controller into normal mode failed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not enter reset mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not enter normal mode\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4ican_set_bittiming.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4ican_set_bittiming\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setting BITTIMING=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"starting CAN controller failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4ican_quirks_a10 = internal constant { %struct.sun4ican_quirks, [31 x i8] } zeroinitializer, align 32
@sun4ican_quirks_r40 = internal constant { %struct.sun4ican_quirks, [31 x i8] } { %struct.sun4ican_quirks { i8 1 }, [31 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4194304, i64 8388608]
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"sun4i_can_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 899, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 901, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"sun4ican_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 778, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 818, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 826, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 834, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 853, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"sun4ican_netdev_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 764, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"sun4ican_bittiming_const\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 221, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 875, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 882, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 888, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 708, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 715, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 722, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 728, i32 19 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 660, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 683, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 690, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 548, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 567, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 578, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 609, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 617, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 277, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 256, i32 7 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 336, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 369, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 298, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 104, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 405, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 313, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"sun4ican_quirks_a10\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 770, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"sun4ican_quirks_r40\00", align 1
@___asan_gen_.192 = private constant [31 x i8] c"../drivers/net/can/sun4i_can.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 774, i32 37 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_author470, ptr @__UNIQUE_ID_description473, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_license472, ptr @__exitcall_sun4i_can_driver_exit, ptr @__initcall__kmod_sun4i_can__468_908_sun4i_can_driver_init6, ptr @sun4i_can_driver_exit, ptr @sun4ican_probe._entry, ptr @sun4ican_probe._entry.12, ptr @sun4ican_probe._entry.16, ptr @sun4ican_probe._entry.19, ptr @sun4ican_probe._entry.6, ptr @sun4ican_probe._entry.9, ptr @sun4ican_probe._entry_ptr, ptr @sun4ican_probe._entry_ptr.11, ptr @sun4ican_probe._entry_ptr.14, ptr @sun4ican_probe._entry_ptr.18, ptr @sun4ican_probe._entry_ptr.22, ptr @sun4ican_probe._entry_ptr.8, ptr @sun4i_can_driver, ptr @.str, ptr @sun4ican_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @sun4ican_netdev_ops, ptr @sun4ican_bittiming_const, ptr @sun4ican_probe.__key, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @sun4ican_quirks_a10, ptr @sun4ican_quirks_r40], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_can_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_quirks_a10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4ican_quirks_r40 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_can_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_can_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.then5.if.end16_crit_edge

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end16:                                         ; preds = %if.then5.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %reset.0 = phi ptr [ %call.i, %if.then5.if.end16_crit_edge ], [ null, %if.end.if.end16_crit_edge ]
  %call17 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #6
  %cmp.i119 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %call28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i120 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call33 = tail call ptr @alloc_candev_mqs(i32 noundef 368, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call33, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sun4ican_netdev_ops, ptr %netdev_ops, align 8
  %irq41 = getelementptr inbounds %struct.net_device, ptr %call33, i32 0, i32 64
  %7 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call25, ptr %irq41, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call33, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %or = or i32 %9, 262144
  store i32 %or, ptr %flags, align 8
  %call43 = tail call i32 @clk_get_rate(ptr noundef %call17) #6
  %clock = getelementptr i8, ptr %call33, i32 2440
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call43, ptr %clock, align 4
  %bittiming_const = getelementptr i8, ptr %call33, i32 2332
  %11 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sun4ican_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call33, i32 2596
  %12 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4ican_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call33, i32 2608
  %13 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun4ican_get_berr_counter, ptr %do_get_berr_counter, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call33, i32 2480
  %14 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 23, ptr %ctrlmode_supported, align 4
  %base = getelementptr i8, ptr %call33, i32 2616
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %base, align 4
  %clk48 = getelementptr i8, ptr %call33, i32 2620
  %16 = ptrtoint ptr %clk48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %clk48, align 4
  %reset49 = getelementptr i8, ptr %call33, i32 2624
  %17 = ptrtoint ptr %reset49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reset.0, ptr %reset49, align 4
  %cmdreg_lock = getelementptr i8, ptr %call33, i32 2628
  tail call void @__raw_spin_lock_init(ptr noundef %cmdreg_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @sun4ican_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call33, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call33, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent, align 8
  %call56 = tail call i32 @register_candev(ptr noundef nonnull %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef %call56) #9
  tail call void @free_candev(ptr noundef nonnull %call33) #6
  br label %cleanup

if.end63:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %21, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end61, %do.end38, %if.then30, %if.end24.cleanup_crit_edge, %do.end22, %do.end12, %do.end
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %4, %do.end12 ], [ -19, %do.end22 ], [ %5, %if.then30 ], [ %call56, %do.end61 ], [ -12, %do.end38 ], [ -19, %do.end ], [ -19, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #6
  tail call void @free_candev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_set_mode(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @sun4i_can_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_get_berr_counter(ptr noundef %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dev, i32 2620
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
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr i8, ptr %dev, i32 2616
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !119
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %6 = trunc i32 %5 to i16
  %conv = and i16 %6, 255
  %7 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %bec, align 2
  %shr = lshr i32 %5, 16
  %8 = trunc i32 %shr to i16
  %conv5 = and i16 %8, 255
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %9 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv5, ptr %rxerr, align 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @sun4i_can_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i) #9
  br label %exit_irq

if.end5:                                          ; preds = %if.end
  %reset = getelementptr i8, ptr %dev, i32 2624
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %exit_soft_reset

if.end9:                                          ; preds = %if.end5
  %clk = getelementptr i8, ptr %dev, i32 2620
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i48 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.then12

if.then12:                                        ; preds = %if.then3.i, %if.end9.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i48, %if.end9.if.then12_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %exit_clock

if.end13:                                         ; preds = %if.end.i
  %call14 = tail call fastcc i32 @sun4i_can_start(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %exit_clock

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

exit_clock:                                       ; preds = %if.then16, %if.then12
  %err.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ %call14, %if.then16 ]
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  %call20 = tail call i32 @reset_control_assert(ptr noundef %11) #6
  br label %exit_soft_reset

exit_soft_reset:                                  ; preds = %exit_clock, %if.then8
  %err.1 = phi i32 [ %call6, %if.then8 ], [ %err.0, %exit_clock ]
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call22 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #6
  br label %exit_irq

exit_irq:                                         ; preds = %exit_soft_reset, %if.then4
  %err.2 = phi i32 [ %call.i, %if.then4 ], [ %err.1, %exit_soft_reset ]
  tail call void @close_candev(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_irq, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %exit_irq ], [ 0, %if.end17 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state.i, align 4
  %base.i.i = getelementptr i8, ptr %dev, i32 2616
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !123
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool17.not.i.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %sun4i_can_stop.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #6, !srcloc !123
  br label %sun4i_can_stop.exit

sun4i_can_stop.exit:                              ; preds = %do.body.i, %if.then.i
  %clk = getelementptr i8, ptr %dev, i32 2620
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  %reset = getelementptr i8, ptr %dev, i32 2624
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %18) #6
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %dev) #6
  tail call void @close_candev(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4ican_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
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
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !126

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
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !127

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
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !126

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
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !127

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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !126

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
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
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
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
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %40 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv = zext i8 %42 to i32
  %and = lshr i32 %39, 24
  %43 = and i32 %and, 64
  %44 = or i32 %43, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %tobool5.not = icmp sgt i32 %39, -1
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i32 %44, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %45 = shl i32 %39, 3
  %and8 = and i32 %45, -16777216
  %base = getelementptr i8, ptr %dev, i32 2616
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and8) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %48 = shl i32 %39, 11
  %and13 = and i32 %48, -16777216
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %50, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %and13) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %51 = shl i32 %39, 19
  %and20 = and i32 %51, -16777216
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %53, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %and20) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %shl = shl i32 %39, 27
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %55, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %shl) #6, !srcloc !123
  br label %if.end43

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %56 = shl i32 %39, 21
  %and33 = and i32 %56, -16777216
  %base34 = getelementptr i8, ptr %dev, i32 2616
  %57 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base34, align 4
  %add.ptr35 = getelementptr i8, ptr %58, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %and33) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %shl39 = shl i32 %39, 29
  %59 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base34, align 4
  %add.ptr42 = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %shl39) #6, !srcloc !123
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then6
  %dreg.0 = phi i32 [ 84, %if.then6 ], [ 76, %if.else ]
  %msg_flag_n.1 = phi i32 [ %or7, %if.then6 ], [ %44, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp106.not = icmp eq i8 %42, 0
  br i1 %cmp106.not, label %if.end43.do.body53_crit_edge, label %do.body46.lr.ph

if.end43.do.body53_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

do.body46.lr.ph:                                  ; preds = %if.end43
  %base51 = getelementptr i8, ptr %dev, i32 2616
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %do.body46.lr.ph
  %i.0107 = phi i32 [ 0, %do.body46.lr.ph ], [ %inc, %do.body46.do.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.0107
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  %conv50 = zext i8 %62 to i32
  %63 = shl nuw i32 %conv50, 24
  %64 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base51, align 4
  %mul = shl i32 %i.0107, 2
  %add = add nuw nsw i32 %mul, %dreg.0
  %add.ptr52 = getelementptr i8, ptr %65, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %63) #6, !srcloc !123
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.body46.do.body53_crit_edge, label %do.body46.do.body46_crit_edge

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

do.body46.do.body53_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

do.body53:                                        ; preds = %do.body46.do.body53_crit_edge, %if.end43.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %msg_flag_n.1)
  %base56 = getelementptr i8, ptr %dev, i32 2616
  %67 = ptrtoint ptr %base56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base56, align 4
  %add.ptr57 = getelementptr i8, ptr %68, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %66) #6, !srcloc !123
  %call58 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef 0, i32 noundef 0) #6
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %69 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctrlmode, align 4
  %and59 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %cmdreg_lock.i101 = getelementptr i8, ptr %dev, i32 2628
  %call2.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i101) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %base56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base56, align 4
  %add.ptr.i104 = getelementptr i8, ptr %72, i32 4
  br i1 %tobool60.not, label %if.else62, label %if.then61

if.then61:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 268435456) #6, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i101, i32 noundef %call2.i102) #6
  br label %cleanup

if.else62:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 16777216) #6, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i101, i32 noundef %call2.i102) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %if.then61, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_can_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2616
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %1, i32 12
  %2 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %2)
  %tobool.not115 = icmp ugt i32 %2, 16777215
  br i1 %tobool.not115, label %while.body.lr.ph, label %entry.if.end81_crit_edge

entry.if.end81_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

while.body.lr.ph:                                 ; preds = %entry
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %cmdreg_lock.i.i = getelementptr i8, ptr %dev_id, i32 2628
  br label %while.body

while.body:                                       ; preds = %do.body.while.body_crit_edge, %while.body.lr.ph
  %3 = phi i32 [ %2, %while.body.lr.ph ], [ %89, %do.body.while.body_crit_edge ]
  %n.0116 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %do.body.while.body_crit_edge ]
  %conv117.in = lshr i32 %3, 24
  %conv117 = trunc i32 %conv117.in to i8
  %inc = add nuw nsw i32 %n.0116, 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 8
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !119
  %7 = lshr i32 %6, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %conv13 = trunc i32 %7 to i8
  %8 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.27) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %9 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %if.end.if.end22_crit_edge, label %if.then19

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef 0, ptr noundef null) #6
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %call20
  store i32 %add, ptr %tx_bytes, align 4
  %12 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_packets, align 4
  %inc21 = add i32 %13, 1
  store i32 %inc21, ptr %tx_packets, align 4
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %15) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end.if.end22_crit_edge
  %16 = and i32 %3, 150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %17 = icmp ne i32 %16, 16777216
  %18 = and i8 %conv13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool33.not111 = icmp eq i8 %18, 0
  %or.cond118 = select i1 %17, i1 true, i1 %tobool33.not111
  br i1 %or.cond118, label %if.end22.if.end43_crit_edge, label %if.end22.while.body34_crit_edge

if.end22.while.body34_crit_edge:                  ; preds = %if.end22
  br label %while.body34

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

while.body34:                                     ; preds = %sun4i_can_rx.exit.while.body34_crit_edge, %if.end22.while.body34_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %19 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !138
  %call2.i = call ptr @alloc_can_skb(ptr noundef %dev_id, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %while.body34.sun4i_can_rx.exit_crit_edge, label %if.end.i

while.body34.sun4i_can_rx.exit_crit_edge:         ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_can_rx.exit

if.end.i:                                         ; preds = %while.body34
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i109 = getelementptr i8, ptr %21, i32 64
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #6, !srcloc !119
  %23 = lshr i32 %22, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %conv6.i = and i32 %23, 15
  %24 = call i32 @llvm.umin.i32(i32 %conv6.i, i32 8) #6
  %25 = trunc i32 %24 to i8
  %26 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cf.i, align 4
  %28 = getelementptr inbounds %struct.can_frame, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool16.not.i = icmp sgt i32 %22, -1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr55.i = getelementptr i8, ptr %31, i32 68
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #6
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 %33, 21
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr28.i = getelementptr i8, ptr %35, i32 72
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #6, !srcloc !119
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %shl32.i = shl i32 %37, 13
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr36.i = getelementptr i8, ptr %39, i32 76
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #6, !srcloc !119
  %41 = call i32 @llvm.bswap.i32(i32 %40) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %shl40.i = shl i32 %41, 5
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr45.i = getelementptr i8, ptr %43, i32 80
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #6, !srcloc !119
  %45 = lshr i32 %44, 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %or.i = or i32 %shl.i, %shl32.i
  %or41.i = or i32 %or.i, %shl40.i
  %or50.i = or i32 %or41.i, %45
  %or51.i = or i32 %or50.i, -2147483648
  br label %if.end70.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr63.i = getelementptr i8, ptr %47, i32 72
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %or69.i = call i32 @llvm.fshl.i32(i32 %33, i32 %48, i32 3) #6
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else.i, %if.then17.i
  %id.0.i = phi i32 [ %or51.i, %if.then17.i ], [ %or69.i, %if.else.i ]
  %dreg.0.i = phi i32 [ 84, %if.then17.i ], [ 76, %if.else.i ]
  %49 = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool73.not.i = icmp eq i32 %49, 0
  br i1 %tobool73.not.i, label %for.cond.preheader.i, label %if.then74.i

for.cond.preheader.i:                             ; preds = %if.end70.i
  %50 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf.i, align 4
  %52 = getelementptr inbounds %struct.can_frame, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp78125.not.i = icmp eq i8 %54, 0
  br i1 %cmp78125.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then74.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  %or75.i = or i32 %id.0.i, 1073741824
  br label %if.end90.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0126.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr83.i = getelementptr i8, ptr %56, i32 %dreg.0.i
  %mul.i = shl i32 %i.0126.i, 2
  %add.ptr84.i = getelementptr i8, ptr %add.ptr83.i, i32 %mul.i
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #6, !srcloc !119
  %58 = lshr i32 %57, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %conv88.i = trunc i32 %58 to i8
  %59 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %60, i32 0, i32 5, i32 %i.0126.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv88.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0126.i, 1
  %62 = load ptr, ptr %cf.i, align 4
  %63 = getelementptr inbounds %struct.can_frame, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv77.i = zext i8 %65 to i32
  %cmp78.i = icmp ult i32 %inc.i, %conv77.i
  br i1 %cmp78.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv77.i.le = zext i8 %65 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv77.i.le, %for.end.i.loopexit ]
  %66 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %67, %.lcssa.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %for.end.i, %if.then74.i
  %id.1.i = phi i32 [ %or75.i, %if.then74.i ], [ %id.0.i, %for.end.i ]
  %68 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %stats1.i, align 4
  %inc91.i = add i32 %69, 1
  store i32 %inc91.i, ptr %stats1.i, align 4
  %70 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cf.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %id.1.i, ptr %71, align 8
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %74, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 67108864) #6, !srcloc !123
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i.i, i32 noundef %call2.i.i) #6
  %call92.i = call i32 @netif_rx(ptr noundef nonnull %call2.i) #6
  br label %sun4i_can_rx.exit

sun4i_can_rx.exit:                                ; preds = %if.end90.i, %while.body34.sun4i_can_rx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %76, i32 8
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  %78 = and i32 %77, 16777216
  %tobool33.not = icmp eq i32 %78, 0
  br i1 %tobool33.not, label %while.cond30.if.end43.loopexit_crit_edge, label %sun4i_can_rx.exit.while.body34_crit_edge

sun4i_can_rx.exit.while.body34_crit_edge:         ; preds = %sun4i_can_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body34

while.cond30.if.end43.loopexit_crit_edge:         ; preds = %sun4i_can_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %79 = lshr i32 %77, 24
  %conv42.le = trunc i32 %79 to i8
  br label %if.end43

if.end43:                                         ; preds = %while.cond30.if.end43.loopexit_crit_edge, %if.end22.if.end43_crit_edge
  %status.1 = phi i8 [ %conv13, %if.end22.if.end43_crit_edge ], [ %conv42.le, %while.cond30.if.end43.loopexit_crit_edge ]
  %80 = and i32 %3, -335544320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool46.not = icmp eq i32 %80, 0
  br i1 %tobool46.not, label %if.end43.do.body_crit_edge, label %if.then47

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then47:                                        ; preds = %if.end43
  %call48 = call fastcc i32 @sun4i_can_err(ptr noundef %dev_id, i8 noundef zeroext %conv117, i8 noundef zeroext %status.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.do.body_crit_edge, label %if.then50

if.then47.do.body_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.28) #9
  br label %do.body

do.body:                                          ; preds = %if.then50, %if.then47.do.body_crit_edge, %if.end43.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  call void @arm_heavy_mb() #6
  %81 = and i32 %3, -16777216
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %83, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %81) #6, !srcloc !123
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %85, i32 12
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %88, i32 12
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %89)
  %tobool.not = icmp ugt i32 %89, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %n.0116)
  %cmp = icmp ult i32 %n.0116, 19
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body.while.body_crit_edge, label %while.end63

do.body.while.body_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end63:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %n.0116)
  %cmp64 = icmp ugt i32 %n.0116, 18
  br i1 %cmp64, label %do.body68, label %while.end63.if.end81_crit_edge

while.end63.if.end81_crit_edge:                   ; preds = %while.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.body68:                                        ; preds = %while.end63
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_interrupt.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_interrupt, %if.end81)) #6
          to label %if.then75 [label %if.end81], !srcloc !149

if.then75:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_interrupt.__UNIQUE_ID_ddebug467, ptr noundef %dev_id, ptr noundef nonnull @.str.30, i32 noundef %inc) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %do.body68, %while.end63.if.end81_crit_edge, %entry.if.end81_crit_edge
  %cond = zext i1 %tobool.not115 to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_can_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %dev, i32 2616
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !123
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not.i = icmp eq i32 %9, 0
  br i1 %tobool17.not.i, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #6, !srcloc !123
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %16 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 16
  br i1 %tobool12.not, label %do.body19, label %do.body14

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -16777216) #6, !srcloc !123
  br label %if.end24

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 2130706432) #6, !srcloc !123
  br label %if.end24

if.end24:                                         ; preds = %do.body19, %do.body14
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !119
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  %24 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrlmode, align 4
  %and31 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %and37 = and i32 %25, 2
  %mod_reg_val.0.v = select i1 %tobool32.not, i32 %and37, i32 4
  %mod_reg_val.0 = or i32 %23, %mod_reg_val.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %mod_reg_val.0)
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !123
  %brp.i = getelementptr i8, ptr %dev, i32 2368
  %29 = ptrtoint ptr %brp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %brp.i, align 4
  %sub.i = add i32 %30, 1023
  %and.i = and i32 %sub.i, 1023
  %sjw.i = getelementptr i8, ptr %dev, i32 2364
  %31 = ptrtoint ptr %sjw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sjw.i, align 4
  %sub1.i = shl i32 %32, 14
  %and2.i = add i32 %sub1.i, 49152
  %shl.i = and i32 %and2.i, 49152
  %or.i = or i32 %shl.i, %and.i
  %prop_seg.i = getelementptr i8, ptr %dev, i32 2352
  %33 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr i8, ptr %dev, i32 2356
  %35 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %36, %34
  %sub3.i = shl i32 %add.i, 16
  %and4.i = add i32 %sub3.i, 983040
  %shl5.i = and i32 %and4.i, 983040
  %or6.i = or i32 %or.i, %shl5.i
  %phase_seg2.i = getelementptr i8, ptr %dev, i32 2360
  %37 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phase_seg2.i, align 4
  %sub7.i = shl i32 %38, 20
  %and8.i = add i32 %sub7.i, 7340032
  %shl9.i = and i32 %and8.i, 7340032
  %or10.i = or i32 %or6.i, %shl9.i
  %39 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrlmode, align 4
  %and12.i = shl i32 %40, 21
  %41 = and i32 %and12.i, 8388608
  %42 = or i32 %or10.i, %41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4ican_set_bittiming.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_start, %sun4ican_set_bittiming.exit)) #6
          to label %if.then20.i [label %sun4ican_set_bittiming.exit], !srcloc !149

if.then20.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4ican_set_bittiming.__UNIQUE_ID_ddebug459, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %42) #6
  br label %sun4ican_set_bittiming.exit

sun4ican_set_bittiming.exit:                      ; preds = %if.then20.i, %if.end24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %43) #6, !srcloc !123
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #6, !srcloc !123
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool18.not.i = icmp eq i32 %55, 0
  br i1 %tobool18.not.i, label %if.end55, label %if.then54

if.then54:                                        ; preds = %sun4ican_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end55:                                         ; preds = %sun4ican_set_bittiming.exit
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr i8, ptr %dev, i32 2472
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then54, %if.then
  %retval.0 = phi i32 [ -110, %if.then ], [ -110, %if.then54 ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_can_err(ptr noundef %dev, i8 noundef zeroext %isrc, i8 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !138
  %state2 = getelementptr i8, ptr %dev, i32 2472
  %1 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state2, align 4
  %call3 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %cf) #6
  %base = getelementptr i8, ptr %dev, i32 2616
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 28
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !119
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %shr = lshr i32 %6, 16
  %and = and i32 %shr, 255
  %and6 = and i32 %6, 255
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %8, i32 0, i32 5, i32 6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 2
  %conv7 = trunc i32 %shr to i8
  %10 = load ptr, ptr %cf, align 4
  %arrayidx9 = getelementptr %struct.can_frame, ptr %10, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv10 = zext i8 %isrc to i32
  %and11 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end39_crit_edge, label %do.body14

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.body14:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_err.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_err, %do.end24)) #6
          to label %if.then21 [label %do.end24], !srcloc !149

if.then21:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_err.__UNIQUE_ID_ddebug462, ptr noundef %dev, ptr noundef nonnull @.str.32) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body14
  br i1 %tobool.not, label %do.end24.if.end35_crit_edge, label %if.then32, !prof !127

do.end24.if.end35_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %or = or i32 %15, 4
  store i32 %or, ptr %13, align 8
  %16 = load ptr, ptr %cf, align 4
  %arrayidx34 = getelementptr %struct.can_frame, ptr %16, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx34, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %do.end24.if.end35_crit_edge
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 4
  %inc36 = add i32 %21, 1
  store i32 %inc36, ptr %rx_errors, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %25 = or i32 %24, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !123
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not.i = icmp eq i32 %31, 0
  br i1 %tobool17.not.i, label %if.then.i, label %if.end35.set_reset_mode.exit_crit_edge

if.end35.set_reset_mode.exit_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_reset_mode.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  br label %set_reset_mode.exit

set_reset_mode.exit:                              ; preds = %if.then.i, %if.end35.set_reset_mode.exit_crit_edge
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %35 = and i32 %34, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !123
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool18.not.i = icmp eq i32 %41, 0
  br i1 %tobool18.not.i, label %set_reset_mode.exit.set_normal_mode.exit_crit_edge, label %if.then.i351

set_reset_mode.exit.set_normal_mode.exit_crit_edge: ; preds = %set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_normal_mode.exit

if.then.i351:                                     ; preds = %set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %set_normal_mode.exit

set_normal_mode.exit:                             ; preds = %if.then.i351, %set_reset_mode.exit.set_normal_mode.exit_crit_edge
  %cmdreg_lock.i = getelementptr i8, ptr %dev, i32 2628
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cmdreg_lock.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i354 = getelementptr i8, ptr %43, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 134217728) #6, !srcloc !123
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cmdreg_lock.i, i32 noundef %call2.i) #6
  br label %if.end39

if.end39:                                         ; preds = %set_normal_mode.exit, %if.end.if.end39_crit_edge
  %and41 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end76_crit_edge, label %do.body45

if.end39.if.end76_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body45:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_err.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_err, %do.end64)) #6
          to label %if.then59 [label %do.end64], !srcloc !149

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_err.__UNIQUE_ID_ddebug463, ptr noundef %dev, ptr noundef nonnull @.str.33) #6
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body45
  %conv65 = zext i8 %status to i32
  %and66 = and i32 %conv65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else, label %do.end64.if.end76_crit_edge

do.end64.if.end76_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.else:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  %and70 = lshr i32 %conv65, 6
  %and70.lobit = and i32 %and70, 1
  br label %if.end76

if.end76:                                         ; preds = %if.else, %do.end64.if.end76_crit_edge, %if.end39.if.end76_crit_edge
  %state.0 = phi i32 [ %2, %if.end39.if.end76_crit_edge ], [ 3, %do.end64.if.end76_crit_edge ], [ %and70.lobit, %if.else ]
  %and78 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end156_crit_edge, label %do.body82

if.end76.if.end156_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

do.body82:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_err.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_err, %do.end101)) #6
          to label %if.then96 [label %do.end101], !srcloc !149

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_err.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.34) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body82
  %can_stats = getelementptr i8, ptr %dev, i32 2308
  %44 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %can_stats, align 4
  %inc103 = add i32 %45, 1
  store i32 %inc103, ptr %can_stats, align 4
  %rx_errors104 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %46 = ptrtoint ptr %rx_errors104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_errors104, align 4
  %inc105 = add i32 %47, 1
  store i32 %inc105, ptr %rx_errors104, align 4
  br i1 %tobool.not, label %do.end101.if.end156_crit_edge, label %if.then113, !prof !127

do.end101.if.end156_crit_edge:                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then113:                                       ; preds = %do.end101
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr117 = getelementptr i8, ptr %49, i32 8
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #6, !srcloc !119
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  %52 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cf, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %or122 = or i32 %55, 136
  store i32 %or122, ptr %53, align 8
  %and123 = and i32 %51, 12582912
  %56 = zext i32 %and123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and123, label %sw.default [
    i32 0, label %sw.bb
    i32 4194304, label %sw.bb129
    i32 8388608, label %sw.bb135
  ]

sw.bb:                                            ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf, align 4
  %arrayidx125 = getelementptr %struct.can_frame, ptr %58, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx125, align 2
  %61 = or i8 %60, 1
  store i8 %61, ptr %arrayidx125, align 2
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cf, align 4
  %arrayidx131 = getelementptr %struct.can_frame, ptr %63, i32 0, i32 5, i32 2
  %64 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx131, align 2
  %66 = or i8 %65, 2
  store i8 %66, ptr %arrayidx131, align 2
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf, align 4
  %arrayidx137 = getelementptr %struct.can_frame, ptr %68, i32 0, i32 5, i32 2
  %69 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx137, align 2
  %71 = or i8 %70, 4
  store i8 %71, ptr %arrayidx137, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %and141 = lshr i32 %51, 16
  %72 = trunc i32 %and141 to i8
  %conv143 = and i8 %72, 31
  %73 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cf, align 4
  %arrayidx145 = getelementptr %struct.can_frame, ptr %74, i32 0, i32 5, i32 3
  %75 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv143, ptr %arrayidx145, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb135, %sw.bb129, %sw.bb
  %and146 = and i32 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %cmp = icmp eq i32 %and146, 0
  br i1 %cmp, label %if.then148, label %sw.epilog.if.end156_crit_edge

sw.epilog.if.end156_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then148:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cf, align 4
  %arrayidx150 = getelementptr %struct.can_frame, ptr %77, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx150, align 2
  %80 = or i8 %79, -128
  store i8 %80, ptr %arrayidx150, align 2
  br label %if.end156

if.end156:                                        ; preds = %if.then148, %sw.epilog.if.end156_crit_edge, %do.end101.if.end156_crit_edge, %if.end76.if.end156_crit_edge
  %and158 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end156.if.end187_crit_edge, label %do.body162

if.end156.if.end187_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187

do.body162:                                       ; preds = %if.end156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_err.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_err, %do.end181)) #6
          to label %if.then176 [label %do.end181], !srcloc !149

if.then176:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_err.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.35) #6
  br label %do.end181

do.end181:                                        ; preds = %if.then176, %do.body162
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state.0)
  %cmp182 = icmp eq i32 %state.0, 2
  %.336 = select i1 %cmp182, i32 1, i32 2
  br label %if.end187

if.end187:                                        ; preds = %do.end181, %if.end156.if.end187_crit_edge
  %state.1 = phi i32 [ %state.0, %if.end156.if.end187_crit_edge ], [ %.336, %do.end181 ]
  %and189 = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end239, label %do.body193

do.body193:                                       ; preds = %if.end187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_can_err.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun4i_can_err, %do.end212)) #6
          to label %if.then207 [label %do.end212], !srcloc !149

if.then207:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sun4i_can_err.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.36) #6
  br label %do.end212

do.end212:                                        ; preds = %if.then207, %do.body193
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr216 = getelementptr i8, ptr %82, i32 8
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #6, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %arbitration_lost = getelementptr i8, ptr %dev, i32 2324
  %84 = ptrtoint ptr %arbitration_lost to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arbitration_lost, align 4
  %inc222 = add i32 %85, 1
  store i32 %inc222, ptr %arbitration_lost, align 4
  br i1 %tobool.not, label %if.end239.thread367, label %if.end239.thread, !prof !127

if.end239:                                        ; preds = %if.end187
  %86 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %87)
  %cmp242.not = icmp eq i32 %state.1, %87
  br i1 %cmp242.not, label %if.end239.if.end269_crit_edge, label %if.then244

if.end239.if.end269_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end269

if.end239.thread367:                              ; preds = %do.end212
  %88 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %89)
  %cmp242.not368 = icmp eq i32 %state.1, %89
  br i1 %cmp242.not368, label %if.end239.thread367.cleanup_crit_edge, label %if.end239.thread367.if.else261_crit_edge

if.end239.thread367.if.else261_crit_edge:         ; preds = %if.end239.thread367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else261

if.end239.thread367.cleanup_crit_edge:            ; preds = %if.end239.thread367
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end239.thread:                                 ; preds = %do.end212
  %90 = lshr i32 %83, 16
  %91 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cf, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %or232 = or i32 %94, 2
  store i32 %or232, ptr %92, align 8
  %95 = trunc i32 %90 to i8
  %conv235 = and i8 %95, 31
  %96 = load ptr, ptr %cf, align 4
  %data236 = getelementptr inbounds %struct.can_frame, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %data236 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv235, ptr %data236, align 8
  %98 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %state.1, i32 %99)
  %cmp242.not360 = icmp eq i32 %state.1, %99
  br i1 %cmp242.not360, label %if.end239.thread.if.then277_crit_edge, label %if.then244.thread

if.end239.thread.if.then277_crit_edge:            ; preds = %if.end239.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then277

if.then244.thread:                                ; preds = %if.end239.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %and)
  %cmp245.not361 = icmp ult i32 %and6, %and
  %spec.select362 = select i1 %cmp245.not361, i32 0, i32 %state.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %and)
  %cmp247.not363 = icmp ugt i32 %and6, %and
  %cond252364 = select i1 %cmp247.not363, i32 0, i32 %state.1
  br label %if.then260

if.then244:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %and)
  %cmp245.not = icmp ult i32 %and6, %and
  %spec.select = select i1 %cmp245.not, i32 0, i32 %state.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %and)
  %cmp247.not = icmp ugt i32 %and6, %and
  %cond252 = select i1 %cmp247.not, i32 0, i32 %state.1
  br i1 %tobool.not, label %if.then244.if.else261_crit_edge, label %if.then244.if.then260_crit_edge, !prof !127

if.then244.if.then260_crit_edge:                  ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then260

if.then244.if.else261_crit_edge:                  ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else261

if.then260:                                       ; preds = %if.then244.if.then260_crit_edge, %if.then244.thread
  %cond252366 = phi i32 [ %cond252364, %if.then244.thread ], [ %cond252, %if.then244.if.then260_crit_edge ]
  %spec.select365 = phi i32 [ %spec.select362, %if.then244.thread ], [ %spec.select, %if.then244.if.then260_crit_edge ]
  %100 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %dev, ptr noundef %101, i32 noundef %spec.select365, i32 noundef %cond252366) #6
  br label %if.end264

if.else261:                                       ; preds = %if.then244.if.else261_crit_edge, %if.end239.thread367.if.else261_crit_edge
  %102 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %state.1, ptr %state2, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.else261, %if.then260
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state.1)
  %cmp265 = icmp eq i32 %state.1, 3
  br i1 %cmp265, label %if.then267, label %if.end264.if.end269_crit_edge

if.end264.if.end269_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end269

if.then267:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  call void @can_bus_off(ptr noundef %dev) #6
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %if.end264.if.end269_crit_edge, %if.end239.if.end269_crit_edge
  br i1 %tobool.not, label %if.end269.cleanup_crit_edge, label %if.end269.if.then277_crit_edge, !prof !127

if.end269.if.then277_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then277

if.end269.cleanup_crit_edge:                      ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then277:                                       ; preds = %if.end269.if.then277_crit_edge, %if.end239.thread.if.then277_crit_edge
  %call278 = call i32 @netif_rx(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then277, %if.end269.cleanup_crit_edge, %if.end239.thread367.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then277 ], [ -12, %if.end269.cleanup_crit_edge ], [ -12, %if.end239.thread367.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_sun4i_can__468_908_sun4i_can_driver_init6, !1, !"__initcall__kmod_sun4i_can__468_908_sun4i_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sun4i_can.c", i32 908, i32 1}
!2 = !{ptr @__exitcall_sun4i_can_driver_exit, !1, !"__exitcall_sun4i_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author469, !4, !"__UNIQUE_ID_author469", i1 false, i1 false}
!4 = !{!"../drivers/net/can/sun4i_can.c", i32 910, i32 1}
!5 = !{ptr @__UNIQUE_ID_author470, !6, !"__UNIQUE_ID_author470", i1 false, i1 false}
!6 = !{!"../drivers/net/can/sun4i_can.c", i32 911, i32 1}
!7 = !{ptr @__UNIQUE_ID_file471, !8, !"__UNIQUE_ID_file471", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sun4i_can.c", i32 912, i32 1}
!9 = !{ptr @__UNIQUE_ID_license472, !8, !"__UNIQUE_ID_license472", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description473, !11, !"__UNIQUE_ID_description473", i1 false, i1 false}
!11 = !{!"../drivers/net/can/sun4i_can.c", i32 913, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/sun4i_can.c", i32 901, i32 11}
!14 = !{ptr @sun4i_can_driver, !15, !"sun4i_can_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/sun4i_can.c", i32 899, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/sun4i_can.c", i32 818, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4ican_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4ican_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/sun4i_can.c", i32 826, i32 4}
!26 = !{ptr @sun4ican_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4ican_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/can/sun4i_can.c", i32 834, i32 3}
!30 = !{ptr @sun4ican_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sun4ican_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/sun4i_can.c", i32 853, i32 3}
!34 = !{ptr @sun4ican_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sun4ican_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sun4ican_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/can/sun4i_can.c", i32 875, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/sun4i_can.c", i32 882, i32 3}
!41 = !{ptr @sun4ican_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun4ican_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/sun4i_can.c", i32 888, i32 2}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sun4ican_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sun4ican_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sun4ican_netdev_ops, !49, !"sun4ican_netdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/can/sun4i_can.c", i32 764, i32 36}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/sun4i_can.c", i32 708, i32 19}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/sun4i_can.c", i32 715, i32 19}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/sun4i_can.c", i32 722, i32 19}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/sun4i_can.c", i32 728, i32 19}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/sun4i_can.c", i32 660, i32 21}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/sun4i_can.c", i32 683, i32 21}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/sun4i_can.c", i32 690, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sun4i_can_interrupt.__UNIQUE_ID_ddebug467, !63, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/sun4i_can.c", i32 548, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sun4i_can_err.__UNIQUE_ID_ddebug462, !67, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/sun4i_can.c", i32 567, i32 3}
!72 = !{ptr @sun4i_can_err.__UNIQUE_ID_ddebug463, !71, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/sun4i_can.c", i32 578, i32 3}
!75 = !{ptr @sun4i_can_err.__UNIQUE_ID_ddebug464, !74, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/sun4i_can.c", i32 609, i32 3}
!78 = !{ptr @sun4i_can_err.__UNIQUE_ID_ddebug465, !77, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/sun4i_can.c", i32 617, i32 3}
!81 = !{ptr @sun4i_can_err.__UNIQUE_ID_ddebug466, !80, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/sun4i_can.c", i32 277, i32 19}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/sun4i_can.c", i32 256, i32 7}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/sun4i_can.c", i32 336, i32 19}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/sun4i_can.c", i32 369, i32 19}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/sun4i_can.c", i32 298, i32 2}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sun4ican_set_bittiming.__UNIQUE_ID_ddebug459, !91, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sun4ican_bittiming_const, !98, !"sun4ican_bittiming_const", i1 false, i1 false}
!98 = !{!"../drivers/net/can/sun4i_can.c", i32 221, i32 41}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/sun4i_can.c", i32 405, i32 20}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/sun4i_can.c", i32 313, i32 19}
!103 = !{ptr @sun4ican_of_match, !104, !"sun4ican_of_match", i1 false, i1 false}
!104 = !{!"../drivers/net/can/sun4i_can.c", i32 778, i32 34}
!105 = !{ptr @sun4ican_quirks_a10, !106, !"sun4ican_quirks_a10", i1 false, i1 false}
!106 = !{!"../drivers/net/can/sun4i_can.c", i32 770, i32 37}
!107 = !{ptr @sun4ican_quirks_r40, !108, !"sun4ican_quirks_r40", i1 false, i1 false}
!108 = !{!"../drivers/net/can/sun4i_can.c", i32 774, i32 37}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
!119 = !{i64 6551280}
!120 = !{i64 2157146784}
!121 = !{i64 2157142415}
!122 = !{i64 2157142728}
!123 = !{i64 6550862}
!124 = !{i64 2157143512}
!125 = !{i64 2157150383}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2157150989}
!129 = !{i64 2157151445}
!130 = !{i64 2157151901}
!131 = !{i64 2157152357}
!132 = !{i64 2157152819}
!133 = !{i64 2157153271}
!134 = !{i64 2157153719}
!135 = !{i64 2157154158}
!136 = !{i64 2157174783}
!137 = !{i64 2157175287}
!138 = !{!"auto-init"}
!139 = !{i64 2157155026}
!140 = !{i64 2157157782}
!141 = !{i64 2157158283}
!142 = !{i64 2157158784}
!143 = !{i64 2157159805}
!144 = !{i64 2157160417}
!145 = !{i64 2157140045}
!146 = !{i64 2157176210}
!147 = !{i64 2157176844}
!148 = !{i64 2157177525}
!149 = !{i64 2149062808, i64 2149062813, i64 2149062826, i64 2149062870, i64 2149062904, i64 2149062925}
!150 = !{i64 2157147014}
!151 = !{i64 2157147442}
!152 = !{i64 2157147861}
!153 = !{i64 2157149556}
!154 = !{i64 2157149961}
!155 = !{i64 2157146106}
!156 = !{i64 2157140727}
!157 = !{i64 2157141040}
!158 = !{i64 2157141824}
!159 = !{i64 2157161000}
!160 = !{i64 2157168788}
!161 = !{i64 2157174174}
