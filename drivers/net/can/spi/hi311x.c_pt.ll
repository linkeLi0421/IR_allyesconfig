; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/hi311x.c_pt.bc'
source_filename = "../drivers/net/can/spi/hi311x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.hi3110_priv = type { %struct.can_priv, ptr, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
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
%struct.can_frame = type { i32, %union.anon.147, i8, i8, i8, [8 x i8] }
%union.anon.147 = type { i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__initcall__kmod_hi311x__469_1030_hi3110_can_driver_init6 = internal global ptr @hi3110_can_driver_init, section ".initcall6.init", align 4
@hi3110_can_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @hi3110_id_table, ptr @hi3110_can_probe, ptr @hi3110_can_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3110_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi3110_can_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hi3110_can_driver_exit = internal global ptr @hi3110_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author470 = internal constant [52 x i8] c"hi311x.author=Akshay Bhat <akshay.bhat@timesys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author471 = internal constant [64 x i8] c"hi311x.author=Casey Fitzpatrick <casey.fitzpatrick@timesys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description472 = internal constant [43 x i8] c"hi311x.description=Holt HI-3110 CAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file473 = internal constant [39 x i8] c"hi311x.file=drivers/net/can/spi/hi311x\00", section ".modinfo", align 1
@__UNIQUE_ID_license474 = internal constant [22 x i8] c"hi311x.license=GPL v2\00", section ".modinfo", align 1
@hi3110_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"hi3110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12560 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hi3110\00", [25 x i8] zeroinitializer }, align 32
@hi3110_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"holt,hi3110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12560 to ptr) }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi3110_can_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hi3110_can_suspend, ptr @hi3110_can_resume, ptr @hi3110_can_suspend, ptr @hi3110_can_resume, ptr @hi3110_can_suspend, ptr @hi3110_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no CAN clock source defined\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get clock-frequency!\0A\00", [32 x i8] zeroinitializer }, align 32
@hi3110_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hi3110_open, ptr @hi3110_stop, ptr @hi3110_hard_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hi3110_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"hi3110\00\00\00\00\00\00\00\00\00\00", i32 2, i32 16, i32 2, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xceiver\00", [24 x i8] zeroinitializer }, align 32
@hi3110_can_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->hi3110_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot initialize %x. Wrong wiring?\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%x successfully initialized.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Probe failed\0A\00", [18 x i8] zeroinitializer }, align 32
@hi3110_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 761, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to acquire irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hi3110_open\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/can/spi/hi311x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi3110_open._entry_ptr = internal global ptr @hi3110_open._entry, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hi3110_wq\00", [22 x i8] zeroinitializer }, align 32
@hi3110_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@hi3110_open.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_work)\00", [57 x i8] zeroinitializer }, align 32
@hi3110_can_ist.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.12, ptr @.str.21, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hi311x\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi3110_can_ist\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bus Error\0A\00", [21 x i8] zeroinitializer }, align 32
@hi3110_spi_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.12, i32 218, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spi transfer failed: ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hi3110_spi_trans\00", [47 x i8] zeroinitializer }, align 32
@hi3110_spi_trans._entry_ptr = internal global ptr @hi3110_spi_trans._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hi3110_cmd.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.12, ptr @.str.25, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi3110_cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi3110_cmd: %02X\0A\00", [46 x i8] zeroinitializer }, align 32
@hi3110_do_set_bittiming.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.26, ptr @.str.12, ptr @.str.27, i8 0, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hi3110_do_set_bittiming\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BT: 0x%02x 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@hi3110_hard_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.12, i32 374, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hard_xmit called while tx busy\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hi3110_hard_start_xmit\00", [41 x i8] zeroinitializer }, align 32
@hi3110_hard_start_xmit._entry_ptr = internal global ptr @hi3110_hard_start_xmit._entry, section ".printk_index", align 4
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@hi3110_hw_probe.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 -126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3110_hw_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"statf: %02X\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"hi3110_can_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1019, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"hi3110_id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 819, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1021, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"hi3110_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 810, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"hi3110_can_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1017, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 840, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 845, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 847, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"hi3110_netdev_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 804, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"hi3110_bittiming_const\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 128, i32 41 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 892, i32 55 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 893, i32 61 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 905, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 925, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 935, i32 19 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 948, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 761, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 765, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 771, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 772, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 720, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 218, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 227, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 471, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 374, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 104, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [32 x i8] c"../drivers/net/can/spi/hi311x.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 522, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author470, ptr @__UNIQUE_ID_author471, ptr @__UNIQUE_ID_description472, ptr @__UNIQUE_ID_file473, ptr @__UNIQUE_ID_license474, ptr @__exitcall_hi3110_can_driver_exit, ptr @__initcall__kmod_hi311x__469_1030_hi3110_can_driver_init6, ptr @hi3110_can_driver_exit, ptr @hi3110_hard_start_xmit._entry, ptr @hi3110_hard_start_xmit._entry_ptr, ptr @hi3110_open._entry, ptr @hi3110_open._entry_ptr, ptr @hi3110_spi_trans._entry, ptr @hi3110_spi_trans._entry_ptr, ptr @hi3110_can_driver, ptr @hi3110_id_table, ptr @.str, ptr @hi3110_of_match, ptr @hi3110_can_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hi3110_netdev_ops, ptr @hi3110_bittiming_const, ptr @.str.4, ptr @.str.5, ptr @hi3110_can_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @hi3110_open.__key, ptr @.str.16, ptr @hi3110_open.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_can_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_can_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_can_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_open.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_spi_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3110_hard_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @hi3110_can_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3110_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @hi3110_can_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_probe(ptr noundef %spi) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #6
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !100
  %call = tail call ptr @devm_clk_get_optional(ptr noundef %spi, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %1, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #6
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call7, ptr %freq, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.2, ptr noundef nonnull %freq, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end13thread-pre-split, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call.i, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end13thread-pre-split:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %freq, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %if.then6
  %4 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %call7, %if.then6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %4)
  %cmp = icmp ugt i32 %4, 40000000
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  %call16 = call ptr @alloc_candev_mqs(i32 noundef 548, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call.i161 = call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.out_free_crit_edge

if.end19.out_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end.i:                                         ; preds = %if.end19
  %call1.i = call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.end.i.out_free.sink.split_crit_edge

if.end.i.out_free.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free.sink.split

if.end23:                                         ; preds = %if.end.i
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hi3110_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %or = or i32 %7, 262144
  store i32 %or, ptr %flags, align 8
  %add.ptr.i = getelementptr i8, ptr %call16, i32 2304
  %bittiming_const = getelementptr i8, ptr %call16, i32 2332
  %8 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hi3110_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call16, i32 2596
  %9 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hi3110_do_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call16, i32 2608
  %10 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hi3110_get_berr_counter, ptr %do_get_berr_counter, align 4
  %11 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freq, align 4
  %div160 = lshr i32 %12, 1
  %clock = getelementptr i8, ptr %call16, i32 2440
  %13 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div160, ptr %clock, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call16, i32 2480
  %14 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 23, ptr %ctrlmode_supported, align 4
  %call30 = call ptr @device_get_match_data(ptr noundef %spi) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call30 to i32
  br label %if.end36

if.else33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call34, i32 0, i32 1
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  %.sink = phi i32 [ %17, %if.else33 ], [ %15, %if.then32 ]
  %18 = getelementptr i8, ptr %call16, i32 2624
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %net37 = getelementptr i8, ptr %call16, i32 2616
  %20 = ptrtoint ptr %net37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16, ptr %net37, align 4
  %clk38 = getelementptr i8, ptr %call16, i32 2848
  %21 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %clk38, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %23 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %bits_per_word, align 1
  %call39 = call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end36.out_clk_crit_edge

if.end36.out_clk_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk

if.end42:                                         ; preds = %if.end36
  %call44 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.4) #6
  %power = getelementptr i8, ptr %call16, i32 2840
  %24 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call44, ptr %power, align 4
  %call46 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.5) #6
  %transceiver = getelementptr i8, ptr %call16, i32 2844
  %25 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46, ptr %transceiver, align 4
  %26 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %power, align 4
  %cmp49 = icmp eq ptr %27, inttoptr (i32 -517 to ptr)
  %cmp52 = icmp eq ptr %call46, inttoptr (i32 -517 to ptr)
  %or.cond = select i1 %cmp49, i1 true, i1 %cmp52
  br i1 %or.cond, label %if.end42.out_clk_crit_edge, label %if.end54

if.end42.out_clk_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk

if.end54:                                         ; preds = %if.end42
  %tobool.not.i.i = icmp eq ptr %27, null
  %cmp.i.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end54.if.end59_crit_edge, label %hi3110_power_enable.exit

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

hi3110_power_enable.exit:                         ; preds = %if.end54
  %call2.i = call i32 @regulator_enable(ptr noundef nonnull %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool57.not = icmp eq i32 %call2.i, 0
  br i1 %tobool57.not, label %hi3110_power_enable.exit.if.end59_crit_edge, label %hi3110_power_enable.exit.out_clk_crit_edge

hi3110_power_enable.exit.out_clk_crit_edge:       ; preds = %hi3110_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk

hi3110_power_enable.exit.if.end59_crit_edge:      ; preds = %hi3110_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end59:                                         ; preds = %hi3110_power_enable.exit.if.end59_crit_edge, %if.end54.if.end59_crit_edge
  %spi60 = getelementptr i8, ptr %call16, i32 2620
  %28 = ptrtoint ptr %spi60 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spi, ptr %spi60, align 4
  %hi3110_lock = getelementptr i8, ptr %call16, i32 2628
  call void @__mutex_init(ptr noundef %hi3110_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hi3110_can_probe.__key) #6
  %call.i164 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 15, i32 noundef 3520) #6
  %spi_tx_buf = getelementptr i8, ptr %call16, i32 2720
  %29 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i164, ptr %spi_tx_buf, align 4
  %tobool64.not = icmp eq ptr %call.i164, null
  br i1 %tobool64.not, label %if.end59.error_probe_crit_edge, label %if.end66

if.end59.error_probe_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_probe

if.end66:                                         ; preds = %if.end59
  %call.i165 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 15, i32 noundef 3520) #6
  %spi_rx_buf = getelementptr i8, ptr %call16, i32 2724
  %30 = ptrtoint ptr %spi_rx_buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i165, ptr %spi_rx_buf, align 4
  %tobool70.not = icmp eq ptr %call.i165, null
  br i1 %tobool70.not, label %if.end66.error_probe_crit_edge, label %if.end72

if.end66.error_probe_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_probe

if.end72:                                         ; preds = %if.end66
  %parent = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spi, ptr %parent, align 8
  %call75 = call fastcc i32 @hi3110_hw_probe(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end80, label %if.then77

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %18, align 4
  %call79 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call75, ptr noundef nonnull @.str.7, i32 noundef %33) #6
  br label %error_probe

if.end80:                                         ; preds = %if.end72
  call fastcc void @hi3110_hw_sleep(ptr noundef %spi)
  %call81 = call i32 @register_candev(ptr noundef nonnull %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.error_probe_crit_edge

if.end80.error_probe_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_probe

if.end84:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call16, ptr noundef nonnull @.str.8, i32 noundef %35) #9
  br label %cleanup

error_probe:                                      ; preds = %if.end80.error_probe_crit_edge, %if.then77, %if.end66.error_probe_crit_edge, %if.end59.error_probe_crit_edge
  %ret.0 = phi i32 [ %call75, %if.then77 ], [ %call81, %if.end80.error_probe_crit_edge ], [ -12, %if.end59.error_probe_crit_edge ], [ -12, %if.end66.error_probe_crit_edge ]
  %36 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power, align 4
  %tobool.not.i.i166 = icmp eq ptr %37, null
  %cmp.i.i167 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i168 = or i1 %tobool.not.i.i166, %cmp.i.i167
  br i1 %spec.select.i.i168, label %error_probe.out_clk_crit_edge, label %if.end.i169

error_probe.out_clk_crit_edge:                    ; preds = %error_probe
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clk

if.end.i169:                                      ; preds = %error_probe
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @regulator_disable(ptr noundef nonnull %37) #6
  br label %out_clk

out_clk:                                          ; preds = %if.end.i169, %error_probe.out_clk_crit_edge, %hi3110_power_enable.exit.out_clk_crit_edge, %if.end42.out_clk_crit_edge, %if.end36.out_clk_crit_edge
  %ret.1 = phi i32 [ %call39, %if.end36.out_clk_crit_edge ], [ %call2.i, %hi3110_power_enable.exit.out_clk_crit_edge ], [ -517, %if.end42.out_clk_crit_edge ], [ %ret.0, %error_probe.out_clk_crit_edge ], [ %ret.0, %if.end.i169 ]
  call void @clk_disable(ptr noundef %call) #6
  br label %out_free.sink.split

out_free.sink.split:                              ; preds = %out_clk, %if.end.i.out_free.sink.split_crit_edge
  %ret.2.ph = phi i32 [ %ret.1, %out_clk ], [ %call1.i, %if.end.i.out_free.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call) #6
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.end19.out_free_crit_edge
  %ret.2 = phi i32 [ %call.i161, %if.end19.out_free_crit_edge ], [ %ret.2.ph, %out_free.sink.split ]
  call void @free_candev(ptr noundef nonnull %call16) #6
  %call88 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %ret.2, ptr noundef nonnull @.str.9) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end84, %if.end15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call88, %out_free ], [ 0, %if.end84 ], [ %call11, %if.then10 ], [ -34, %if.end13.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net1 = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  tail call void @unregister_candev(ptr noundef %3) #6
  %power = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.hi3110_power_enable.exit_crit_edge, label %if.end.i

entry.hi3110_power_enable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_power_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %5) #6
  br label %hi3110_power_enable.exit

hi3110_power_enable.exit:                         ; preds = %if.end.i, %entry.hi3110_power_enable.exit_crit_edge
  %clk = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  tail call void @free_candev(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_do_set_mode(ptr noundef %net, i32 noundef %mode) #2 align 64 {
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
  %tx_skb.i = getelementptr i8, ptr %net, i32 2728
  %0 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.if.then.i_crit_edge

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %tx_busy.i = getelementptr i8, ptr %net, i32 2836
  %2 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_busy.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %1) #6
  %tx_busy3.i = getelementptr i8, ptr %net, i32 2836
  %6 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_busy3.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end.i.hi3110_clean.exit_crit_edge, label %if.then5.i

if.end.i.hi3110_clean.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %net6.i = getelementptr i8, ptr %net, i32 2616
  %8 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net6.i, align 4
  tail call void @can_free_echo_skb(ptr noundef %9, i32 noundef 0, ptr noundef null) #6
  br label %hi3110_clean.exit

hi3110_clean.exit:                                ; preds = %if.then5.i, %if.end.i.hi3110_clean.exit_crit_edge
  %10 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx_skb.i, align 4
  %11 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_busy3.i, align 4
  %state = getelementptr i8, ptr %net, i32 2472
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %restart_tx = getelementptr i8, ptr %net, i32 2832
  %13 = ptrtoint ptr %restart_tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %restart_tx, align 4
  %restart_ms = getelementptr i8, ptr %net, i32 2484
  %14 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %hi3110_clean.exit.if.end_crit_edge

hi3110_clean.exit.if.end_crit_edge:               ; preds = %hi3110_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %hi3110_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  %after_suspend = getelementptr i8, ptr %net, i32 2828
  %16 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %after_suspend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hi3110_clean.exit.if.end_crit_edge
  %wq = getelementptr i8, ptr %net, i32 2732
  %17 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wq, align 4
  %restart_work = getelementptr i8, ptr %net, i32 2780
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %restart_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_get_berr_counter(ptr noundef %net, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  %t.i.i10 = alloca %struct.spi_transfer, align 4
  %m.i.i11 = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %hi3110_lock = getelementptr i8, ptr %net, i32 2628
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -20, ptr %5, align 1
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %15 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %17 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx2.i, align 1
  %conv = zext i8 %30 to i16
  %31 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %bec, align 2
  %32 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i13 = getelementptr inbounds %struct.hi3110_priv, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %spi_tx_buf.i13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi_tx_buf.i13, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -22, ptr %35, align 1
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i10) #6
  %38 = getelementptr inbounds i8, ptr %t.i.i10, i32 12
  %39 = call ptr @memset(ptr %38, i32 0, i32 84)
  %spi_tx_buf.i.i14 = getelementptr inbounds %struct.hi3110_priv, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %spi_tx_buf.i.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi_tx_buf.i.i14, align 4
  %42 = ptrtoint ptr %t.i.i10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %t.i.i10, align 4
  %rx_buf.i.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i10, i32 0, i32 1
  %spi_rx_buf.i.i16 = getelementptr inbounds %struct.hi3110_priv, ptr %37, i32 0, i32 6
  %43 = ptrtoint ptr %spi_rx_buf.i.i16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi_rx_buf.i.i16, align 4
  %45 = ptrtoint ptr %rx_buf.i.i15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %rx_buf.i.i15, align 4
  %len1.i.i17 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i10, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i.i17, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i11) #6
  %47 = getelementptr inbounds i8, ptr %m.i.i11, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %m.i.i11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %m.i.i11, ptr %m.i.i11, align 4
  %prev.i.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %m.i.i11, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %m.i.i11, ptr %prev.i.i.i.i.i18, align 4
  %resources.i.i.i.i19 = getelementptr inbounds %struct.spi_message, ptr %m.i.i11, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i19, ptr %resources.i.i.i.i19, align 4
  %prev.i2.i.i.i.i20 = getelementptr inbounds %struct.spi_message, ptr %m.i.i11, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i19, ptr %prev.i2.i.i.i.i20, align 4
  %transfer_list.i.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i10, i32 0, i32 18
  %call.i.i.i.i.i22 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i21, ptr noundef nonnull %m.i.i11, ptr noundef nonnull %m.i.i11) #6
  br i1 %call.i.i.i.i.i22, label %if.end.i.i.i.i.i24, label %hi3110_read.exit.spi_message_add_tail.exit.i.i27_crit_edge

hi3110_read.exit.spi_message_add_tail.exit.i.i27_crit_edge: ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i27

if.end.i.i.i.i.i24:                               ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i21, ptr %prev.i.i.i.i.i18, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %m.i.i11, ptr %transfer_list.i.i.i21, align 4
  %prev3.i.i.i.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i10, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %m.i.i11, ptr %prev3.i.i.i.i.i23, align 4
  %56 = ptrtoint ptr %m.i.i11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i21, ptr %m.i.i11, align 4
  br label %spi_message_add_tail.exit.i.i27

spi_message_add_tail.exit.i.i27:                  ; preds = %if.end.i.i.i.i.i24, %hi3110_read.exit.spi_message_add_tail.exit.i.i27_crit_edge
  %call2.i.i25 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %call2.i.i25, 0
  br i1 %tobool.not.i.i26, label %spi_message_add_tail.exit.i.i27.hi3110_read.exit31_crit_edge, label %do.end.i.i28

spi_message_add_tail.exit.i.i27.hi3110_read.exit31_crit_edge: ; preds = %spi_message_add_tail.exit.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit31

do.end.i.i28:                                     ; preds = %spi_message_add_tail.exit.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i25) #9
  br label %hi3110_read.exit31

hi3110_read.exit31:                               ; preds = %do.end.i.i28, %spi_message_add_tail.exit.i.i27.hi3110_read.exit31_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i11) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i10) #6
  %spi_rx_buf.i29 = getelementptr inbounds %struct.hi3110_priv, ptr %33, i32 0, i32 6
  %57 = ptrtoint ptr %spi_rx_buf.i29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi_rx_buf.i29, align 4
  %arrayidx2.i30 = getelementptr i8, ptr %58, i32 1
  %59 = ptrtoint ptr %arrayidx2.i30 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx2.i30, align 1
  %conv4 = zext i8 %60 to i16
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %61 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv4, ptr %rxerr, align 2
  call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3110_hw_probe(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hi3110_hw_reset(ptr noundef %spi)
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -30, ptr %3, align 1
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %6 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %13 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %15 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi3110_hw_probe.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hi3110_hw_probe, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !102

if.then:                                          ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi3110_hw_probe.__UNIQUE_ID_ddebug467, ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %hi3110_read.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %28)
  %cmp.not = icmp eq i8 %28, -126
  %. = select i1 %cmp.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi3110_hw_sleep(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 96, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %15 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %17 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_write.exit

hi3110_write.exit:                                ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_open(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %call2 = tail call i32 @open_candev(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hi3110_lock = getelementptr i8, ptr %net, i32 2628
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %transceiver = getelementptr i8, ptr %net, i32 2844
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.hi3110_power_enable.exit_crit_edge, label %if.end.i

if.end.hi3110_power_enable.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_power_enable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @regulator_enable(ptr noundef nonnull %3) #6
  br label %hi3110_power_enable.exit

hi3110_power_enable.exit:                         ; preds = %if.end.i, %if.end.hi3110_power_enable.exit_crit_edge
  %force_quit = getelementptr i8, ptr %net, i32 2824
  %4 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %force_quit, align 4
  %tx_skb = getelementptr i8, ptr %net, i32 2728
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_skb, align 4
  %tx_busy = getelementptr i8, ptr %net, i32 2836
  %6 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_busy, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call4 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef null, ptr noundef nonnull @hi3110_can_ist, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %hi3110_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %10) #9
  br label %out_close

if.end8:                                          ; preds = %hi3110_power_enable.exit
  %call9 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 12, i32 noundef 0) #6
  %wq = getelementptr i8, ptr %net, i32 2732
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %wq, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.out_free_irq_crit_edge, label %do.body14

if.end8.out_free_irq_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_irq

do.body14:                                        ; preds = %if.end8
  %tx_work = getelementptr i8, ptr %net, i32 2736
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %net, i32 2752
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @hi3110_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry18 = getelementptr i8, ptr %net, i32 2740
  %13 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr i8, ptr %net, i32 2744
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %net, i32 2748
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hi3110_tx_work_handler, ptr %func, align 4
  %restart_work = getelementptr i8, ptr %net, i32 2780
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #6
  %16 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map28 = getelementptr i8, ptr %net, i32 2796
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map28, ptr noundef nonnull @.str.18, ptr noundef nonnull @hi3110_open.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry30 = getelementptr i8, ptr %net, i32 2784
  %17 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i97 = getelementptr i8, ptr %net, i32 2788
  %18 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry30, ptr %prev.i97, align 4
  %func32 = getelementptr i8, ptr %net, i32 2792
  %19 = ptrtoint ptr %func32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hi3110_restart_work_handler, ptr %func32, align 4
  %call35 = tail call fastcc i32 @hi3110_hw_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.body14.out_free_wq_crit_edge

do.body14.out_free_wq_crit_edge:                  ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_wq

if.end38:                                         ; preds = %do.body14
  tail call fastcc void @hi3110_do_set_bittiming(ptr noundef %net) #6
  %call43 = tail call fastcc i32 @hi3110_set_normal_mode(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end38.out_free_wq_crit_edge

if.end38.out_free_wq_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_wq

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #6
  br label %cleanup.sink.split

out_free_wq:                                      ; preds = %if.end38.out_free_wq_crit_edge, %do.body14.out_free_wq_crit_edge
  %ret.0 = phi i32 [ %call35, %do.body14.out_free_wq_crit_edge ], [ %call43, %if.end38.out_free_wq_crit_edge ]
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %23) #6
  br label %out_free_irq

out_free_irq:                                     ; preds = %out_free_wq, %if.end8.out_free_irq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_wq ], [ -12, %if.end8.out_free_irq_crit_edge ]
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call50 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %add.ptr.i) #6
  tail call fastcc void @hi3110_hw_sleep(ptr noundef %1)
  br label %out_close

out_close:                                        ; preds = %out_free_irq, %do.end
  %ret.2 = phi i32 [ %call4, %do.end ], [ %ret.1, %out_free_irq ]
  %26 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i98 = icmp eq ptr %27, null
  %cmp.i.i99 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i100 = or i1 %tobool.not.i.i98, %cmp.i.i99
  br i1 %spec.select.i.i100, label %out_close.hi3110_power_enable.exit103_crit_edge, label %if.end.i101

out_close.hi3110_power_enable.exit103_crit_edge:  ; preds = %out_close
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_power_enable.exit103

if.end.i101:                                      ; preds = %out_close
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %27) #6
  br label %hi3110_power_enable.exit103

hi3110_power_enable.exit103:                      ; preds = %if.end.i101, %out_close.hi3110_power_enable.exit103_crit_edge
  tail call void @close_candev(ptr noundef %net) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %hi3110_power_enable.exit103, %if.end46
  %retval.0.ph = phi i32 [ 0, %if.end46 ], [ %ret.2, %hi3110_power_enable.exit103 ]
  tail call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_stop(ptr noundef %net) #2 align 64 {
entry:
  %t.i.i43 = alloca %struct.spi_transfer, align 4
  %m.i.i44 = alloca %struct.spi_message, align 4
  %t.i.i22 = alloca %struct.spi_transfer, align 4
  %m.i.i23 = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  tail call void @close_candev(ptr noundef %net) #6
  %force_quit = getelementptr i8, ptr %net, i32 2824
  %2 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %add.ptr.i) #6
  %wq = getelementptr i8, ptr %net, i32 2732
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #6
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wq, align 4
  %hi3110_lock = getelementptr i8, ptr %net, i32 2628
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 22, ptr %11, align 1
  %13 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx2.i, align 1
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %16 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %17 = call ptr @memset(ptr %16, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %20 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %15, i32 0, i32 6
  %21 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %23 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %25 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_write.exit

hi3110_write.exit:                                ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i25 = getelementptr inbounds %struct.hi3110_priv, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %spi_tx_buf.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi_tx_buf.i25, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 28, ptr %38, align 1
  %40 = load ptr, ptr %spi_tx_buf.i25, align 4
  %arrayidx2.i26 = getelementptr i8, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx2.i26 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx2.i26, align 1
  %42 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i22) #6
  %43 = getelementptr inbounds i8, ptr %t.i.i22, i32 12
  %44 = call ptr @memset(ptr %43, i32 0, i32 84)
  %spi_tx_buf.i.i27 = getelementptr inbounds %struct.hi3110_priv, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %spi_tx_buf.i.i27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi_tx_buf.i.i27, align 4
  %47 = ptrtoint ptr %t.i.i22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %t.i.i22, align 4
  %rx_buf.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 1
  %spi_rx_buf.i.i29 = getelementptr inbounds %struct.hi3110_priv, ptr %42, i32 0, i32 6
  %48 = ptrtoint ptr %spi_rx_buf.i.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi_rx_buf.i.i29, align 4
  %50 = ptrtoint ptr %rx_buf.i.i28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %rx_buf.i.i28, align 4
  %len1.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 2
  %51 = ptrtoint ptr %len1.i.i30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %len1.i.i30, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i23) #6
  %52 = getelementptr inbounds i8, ptr %m.i.i23, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %m.i.i23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %m.i.i23, ptr %m.i.i23, align 4
  %prev.i.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %m.i.i23, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %m.i.i23, ptr %prev.i.i.i.i.i31, align 4
  %resources.i.i.i.i32 = getelementptr inbounds %struct.spi_message, ptr %m.i.i23, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i32, ptr %resources.i.i.i.i32, align 4
  %prev.i2.i.i.i.i33 = getelementptr inbounds %struct.spi_message, ptr %m.i.i23, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i32, ptr %prev.i2.i.i.i.i33, align 4
  %transfer_list.i.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 18
  %call.i.i.i.i.i35 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i34, ptr noundef nonnull %m.i.i23, ptr noundef nonnull %m.i.i23) #6
  br i1 %call.i.i.i.i.i35, label %if.end.i.i.i.i.i37, label %hi3110_write.exit.spi_message_add_tail.exit.i.i40_crit_edge

hi3110_write.exit.spi_message_add_tail.exit.i.i40_crit_edge: ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i40

if.end.i.i.i.i.i37:                               ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %prev.i.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i34, ptr %prev.i.i.i.i.i31, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %m.i.i23, ptr %transfer_list.i.i.i34, align 4
  %prev3.i.i.i.i.i36 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %m.i.i23, ptr %prev3.i.i.i.i.i36, align 4
  %61 = ptrtoint ptr %m.i.i23 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i34, ptr %m.i.i23, align 4
  br label %spi_message_add_tail.exit.i.i40

spi_message_add_tail.exit.i.i40:                  ; preds = %if.end.i.i.i.i.i37, %hi3110_write.exit.spi_message_add_tail.exit.i.i40_crit_edge
  %call2.i.i38 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %call2.i.i38, 0
  br i1 %tobool.not.i.i39, label %spi_message_add_tail.exit.i.i40.hi3110_write.exit42_crit_edge, label %do.end.i.i41

spi_message_add_tail.exit.i.i40.hi3110_write.exit42_crit_edge: ; preds = %spi_message_add_tail.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit42

do.end.i.i41:                                     ; preds = %spi_message_add_tail.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i38) #9
  br label %hi3110_write.exit42

hi3110_write.exit42:                              ; preds = %do.end.i.i41, %spi_message_add_tail.exit.i.i40.hi3110_write.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i23) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i22) #6
  %62 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i46 = getelementptr inbounds %struct.hi3110_priv, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %spi_tx_buf.i46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spi_tx_buf.i46, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -34, ptr %65, align 1
  %67 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i43) #6
  %68 = getelementptr inbounds i8, ptr %t.i.i43, i32 12
  %69 = call ptr @memset(ptr %68, i32 0, i32 84)
  %spi_tx_buf.i.i47 = getelementptr inbounds %struct.hi3110_priv, ptr %67, i32 0, i32 5
  %70 = ptrtoint ptr %spi_tx_buf.i.i47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi_tx_buf.i.i47, align 4
  %72 = ptrtoint ptr %t.i.i43 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %t.i.i43, align 4
  %rx_buf.i.i48 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i43, i32 0, i32 1
  %spi_rx_buf.i.i49 = getelementptr inbounds %struct.hi3110_priv, ptr %67, i32 0, i32 6
  %73 = ptrtoint ptr %spi_rx_buf.i.i49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %spi_rx_buf.i.i49, align 4
  %75 = ptrtoint ptr %rx_buf.i.i48 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %rx_buf.i.i48, align 4
  %len1.i.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i43, i32 0, i32 2
  %76 = ptrtoint ptr %len1.i.i50 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %len1.i.i50, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i44) #6
  %77 = getelementptr inbounds i8, ptr %m.i.i44, i32 8
  %78 = call ptr @memset(ptr %77, i32 0, i32 40)
  %79 = ptrtoint ptr %m.i.i44 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %m.i.i44, ptr %m.i.i44, align 4
  %prev.i.i.i.i.i51 = getelementptr inbounds %struct.list_head, ptr %m.i.i44, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %m.i.i44, ptr %prev.i.i.i.i.i51, align 4
  %resources.i.i.i.i52 = getelementptr inbounds %struct.spi_message, ptr %m.i.i44, i32 0, i32 10
  %81 = ptrtoint ptr %resources.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %resources.i.i.i.i52, ptr %resources.i.i.i.i52, align 4
  %prev.i2.i.i.i.i53 = getelementptr inbounds %struct.spi_message, ptr %m.i.i44, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %prev.i2.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %resources.i.i.i.i52, ptr %prev.i2.i.i.i.i53, align 4
  %transfer_list.i.i.i54 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i43, i32 0, i32 18
  %call.i.i.i.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i54, ptr noundef nonnull %m.i.i44, ptr noundef nonnull %m.i.i44) #6
  br i1 %call.i.i.i.i.i55, label %if.end.i.i.i.i.i57, label %hi3110_write.exit42.spi_message_add_tail.exit.i.i60_crit_edge

hi3110_write.exit42.spi_message_add_tail.exit.i.i60_crit_edge: ; preds = %hi3110_write.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i60

if.end.i.i.i.i.i57:                               ; preds = %hi3110_write.exit42
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %prev.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i.i.i54, ptr %prev.i.i.i.i.i51, align 4
  %84 = ptrtoint ptr %transfer_list.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %m.i.i44, ptr %transfer_list.i.i.i54, align 4
  %prev3.i.i.i.i.i56 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i43, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %m.i.i44, ptr %prev3.i.i.i.i.i56, align 4
  %86 = ptrtoint ptr %m.i.i44 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i.i.i54, ptr %m.i.i44, align 4
  br label %spi_message_add_tail.exit.i.i60

spi_message_add_tail.exit.i.i60:                  ; preds = %if.end.i.i.i.i.i57, %hi3110_write.exit42.spi_message_add_tail.exit.i.i60_crit_edge
  %call2.i.i58 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %call2.i.i58, 0
  br i1 %tobool.not.i.i59, label %spi_message_add_tail.exit.i.i60.hi3110_read.exit_crit_edge, label %do.end.i.i61

spi_message_add_tail.exit.i.i60.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i61:                                     ; preds = %spi_message_add_tail.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i58) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i61, %spi_message_add_tail.exit.i.i60.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i43) #6
  %tx_skb.i = getelementptr i8, ptr %net, i32 2728
  %87 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %hi3110_read.exit.if.then.i_crit_edge

hi3110_read.exit.if.then.i_crit_edge:             ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %hi3110_read.exit
  %tx_busy.i = getelementptr i8, ptr %net, i32 2836
  %89 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tx_busy.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool1.not.i = icmp eq i8 %90, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %hi3110_read.exit.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %91 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  call void @consume_skb(ptr noundef %88) #6
  %tx_busy3.i = getelementptr i8, ptr %net, i32 2836
  %93 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %tx_busy3.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool4.not.i = icmp eq i8 %94, 0
  br i1 %tobool4.not.i, label %if.end.i.hi3110_clean.exit_crit_edge, label %if.then5.i

if.end.i.hi3110_clean.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %net6.i = getelementptr i8, ptr %net, i32 2616
  %95 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %net6.i, align 4
  call void @can_free_echo_skb(ptr noundef %96, i32 noundef 0, ptr noundef null) #6
  br label %hi3110_clean.exit

hi3110_clean.exit:                                ; preds = %if.then5.i, %if.end.i.hi3110_clean.exit_crit_edge
  %97 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %tx_skb.i, align 4
  %98 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %tx_busy3.i, align 4
  call fastcc void @hi3110_hw_sleep(ptr noundef %1)
  %transceiver = getelementptr i8, ptr %net, i32 2844
  %99 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i63 = icmp eq ptr %100, null
  %cmp.i.i = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i63, %cmp.i.i
  br i1 %spec.select.i.i, label %hi3110_clean.exit.hi3110_power_enable.exit_crit_edge, label %if.end.i64

hi3110_clean.exit.hi3110_power_enable.exit_crit_edge: ; preds = %hi3110_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_power_enable.exit

if.end.i64:                                       ; preds = %hi3110_clean.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @regulator_disable(ptr noundef nonnull %100) #6
  br label %hi3110_power_enable.exit

hi3110_power_enable.exit:                         ; preds = %if.end.i64, %hi3110_clean.exit.hi3110_power_enable.exit_crit_edge
  %state = getelementptr i8, ptr %net, i32 2472
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_hard_start_xmit(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %tx_skb = getelementptr i8, ptr %net, i32 2728
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %tx_busy = getelementptr i8, ptr %net, i32 2836
  %4 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_busy, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %if.end.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

if.end.can_dropped_invalid_skb.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp2.not.i = icmp eq i32 %12, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !103

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp6.i = icmp ugt i8 %14, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !104

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %if.end
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %16)
  %cmp16.not.i = icmp eq i32 %16, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !103

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp21.i = icmp ugt i8 %18, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !104

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !103

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %21 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %22 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp38.i.i = icmp eq i16 %22, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end5_crit_edge

if.end37.i.i.if.end5_crit_edge:                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex.i.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %20, align 8
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %skbcnt.i.i, align 4
  %29 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %32 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %39 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end5

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %if.end.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 7
  %40 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then40.i.i, %if.end37.i.i.if.end5_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %44 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %skb, ptr %tx_skb, align 4
  %wq = getelementptr i8, ptr %net, i32 2732
  %45 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wq, align 4
  %tx_work = getelementptr i8, ptr %net, i32 2736
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %tx_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %can_dropped_invalid_skb.exit, %do.end
  %retval.0 = phi i32 [ 16, %do.end ], [ 0, %if.end5 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_ist(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %t.i.i356 = alloca %struct.spi_transfer, align 4
  %m.i.i357 = alloca %struct.spi_message, align 4
  %t.i.i334 = alloca %struct.spi_transfer, align 4
  %m.i.i335 = alloca %struct.spi_message, align 4
  %t.i.i312 = alloca %struct.spi_transfer, align 4
  %m.i.i313 = alloca %struct.spi_message, align 4
  %t.i.i290 = alloca %struct.spi_transfer, align 4
  %m.i.i291 = alloca %struct.spi_message, align 4
  %t.i.i268 = alloca %struct.spi_transfer, align 4
  %m.i.i269 = alloca %struct.spi_message, align 4
  %t.i.i246 = alloca %struct.spi_transfer, align 4
  %m.i.i247 = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %frame.i = alloca ptr, align 4
  %buf.sroa.18.sroa.0.i = alloca i64, align 8
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  %cf = alloca ptr, align 4
  %cf70 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.hi3110_priv, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr inbounds %struct.hi3110_priv, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %hi3110_lock = getelementptr inbounds %struct.hi3110_priv, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %force_quit = getelementptr inbounds %struct.hi3110_priv, ptr %dev_id, i32 0, i32 11
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %6 = getelementptr inbounds i8, ptr %t.i.i.i, i32 12
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 1
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %7 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %8 = getelementptr inbounds i8, ptr %t.i.i246, i32 12
  %rx_buf.i.i251 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i246, i32 0, i32 1
  %len1.i.i253 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i246, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %m.i.i247, i32 8
  %prev.i.i.i.i.i254 = getelementptr inbounds %struct.list_head, ptr %m.i.i247, i32 0, i32 1
  %resources.i.i.i.i255 = getelementptr inbounds %struct.spi_message, ptr %m.i.i247, i32 0, i32 10
  %prev.i2.i.i.i.i256 = getelementptr inbounds %struct.spi_message, ptr %m.i.i247, i32 0, i32 10, i32 1
  %transfer_list.i.i.i257 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i246, i32 0, i32 18
  %prev3.i.i.i.i.i259 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i246, i32 0, i32 18, i32 1
  %10 = getelementptr inbounds i8, ptr %t.i.i268, i32 12
  %rx_buf.i.i273 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i268, i32 0, i32 1
  %len1.i.i275 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i268, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %m.i.i269, i32 8
  %prev.i.i.i.i.i276 = getelementptr inbounds %struct.list_head, ptr %m.i.i269, i32 0, i32 1
  %resources.i.i.i.i277 = getelementptr inbounds %struct.spi_message, ptr %m.i.i269, i32 0, i32 10
  %prev.i2.i.i.i.i278 = getelementptr inbounds %struct.spi_message, ptr %m.i.i269, i32 0, i32 10, i32 1
  %transfer_list.i.i.i279 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i268, i32 0, i32 18
  %prev3.i.i.i.i.i281 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i268, i32 0, i32 18, i32 1
  %state = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 21
  %12 = getelementptr inbounds i8, ptr %t.i.i290, i32 12
  %rx_buf.i.i295 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i290, i32 0, i32 1
  %len1.i.i297 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i290, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %m.i.i291, i32 8
  %prev.i.i.i.i.i298 = getelementptr inbounds %struct.list_head, ptr %m.i.i291, i32 0, i32 1
  %resources.i.i.i.i299 = getelementptr inbounds %struct.spi_message, ptr %m.i.i291, i32 0, i32 10
  %prev.i2.i.i.i.i300 = getelementptr inbounds %struct.spi_message, ptr %m.i.i291, i32 0, i32 10, i32 1
  %transfer_list.i.i.i301 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i290, i32 0, i32 18
  %prev3.i.i.i.i.i303 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i290, i32 0, i32 18, i32 1
  %14 = getelementptr inbounds i8, ptr %t.i.i312, i32 12
  %rx_buf.i.i317 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i312, i32 0, i32 1
  %len1.i.i319 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i312, i32 0, i32 2
  %15 = getelementptr inbounds i8, ptr %m.i.i313, i32 8
  %prev.i.i.i.i.i320 = getelementptr inbounds %struct.list_head, ptr %m.i.i313, i32 0, i32 1
  %resources.i.i.i.i321 = getelementptr inbounds %struct.spi_message, ptr %m.i.i313, i32 0, i32 10
  %prev.i2.i.i.i.i322 = getelementptr inbounds %struct.spi_message, ptr %m.i.i313, i32 0, i32 10, i32 1
  %transfer_list.i.i.i323 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i312, i32 0, i32 18
  %prev3.i.i.i.i.i325 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i312, i32 0, i32 18, i32 1
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 24
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 22
  %can_stats = getelementptr inbounds %struct.can_priv, ptr %dev_id, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %t.i.i334, i32 12
  %rx_buf.i.i339 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i334, i32 0, i32 1
  %len1.i.i341 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i334, i32 0, i32 2
  %17 = getelementptr inbounds i8, ptr %m.i.i335, i32 8
  %prev.i.i.i.i.i342 = getelementptr inbounds %struct.list_head, ptr %m.i.i335, i32 0, i32 1
  %resources.i.i.i.i343 = getelementptr inbounds %struct.spi_message, ptr %m.i.i335, i32 0, i32 10
  %prev.i2.i.i.i.i344 = getelementptr inbounds %struct.spi_message, ptr %m.i.i335, i32 0, i32 10, i32 1
  %transfer_list.i.i.i345 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i334, i32 0, i32 18
  %prev3.i.i.i.i.i347 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i334, i32 0, i32 18, i32 1
  %18 = getelementptr inbounds i8, ptr %t.i.i356, i32 12
  %rx_buf.i.i361 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i356, i32 0, i32 1
  %len1.i.i363 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i356, i32 0, i32 2
  %19 = getelementptr inbounds i8, ptr %m.i.i357, i32 8
  %prev.i.i.i.i.i364 = getelementptr inbounds %struct.list_head, ptr %m.i.i357, i32 0, i32 1
  %resources.i.i.i.i365 = getelementptr inbounds %struct.spi_message, ptr %m.i.i357, i32 0, i32 10
  %prev.i2.i.i.i.i366 = getelementptr inbounds %struct.spi_message, ptr %m.i.i357, i32 0, i32 10, i32 1
  %transfer_list.i.i.i367 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i356, i32 0, i32 18
  %prev3.i.i.i.i.i369 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i356, i32 0, i32 18, i32 1
  %tx_busy = getelementptr inbounds %struct.hi3110_priv, ptr %dev_id, i32 0, i32 14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  br label %while.cond

while.cond:                                       ; preds = %if.end174.while.cond_crit_edge, %entry
  %20 = ptrtoint ptr %force_quit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %force_quit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %while.cond.while.cond3_crit_edge, label %while.cond.while.end186_crit_edge

while.cond.while.end186_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end186

while.cond.while.cond3_crit_edge:                 ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %hi3110_hw_rx.exit, %while.cond.while.cond3_crit_edge
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi_tx_buf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -30, ptr %25, align 1
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %28 = call ptr @memset(ptr %4, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %27, i32 0, i32 5
  %29 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %31 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %t.i.i, align 4
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %27, i32 0, i32 6
  %32 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %34 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %rx_buf.i.i, align 4
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %36 = call ptr @memset(ptr %5, i32 0, i32 40)
  %37 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %38 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %40 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.cond3.spi_message_add_tail.exit.i.i_crit_edge

while.cond3.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %43 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %while.cond3.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %23, i32 0, i32 6
  %45 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool4.not = icmp eq i8 %49, 0
  br i1 %tobool4.not, label %while.body6, label %while.end

while.body6:                                      ; preds = %hi3110_read.exit
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #6
  %52 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.sroa.18.sroa.0.i)
  %net.i = getelementptr inbounds %struct.hi3110_priv, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i, align 4
  %call1.i = call ptr @alloc_can_skb(ptr noundef %54, ptr noundef nonnull %frame.i) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 36, i32 6
  %57 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %hi3110_hw_rx.exit

if.end.i:                                         ; preds = %while.body6
  %59 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i.i244 = getelementptr inbounds %struct.hi3110_priv, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %spi_tx_buf.i.i244 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi_tx_buf.i.i244, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 72, ptr %62, align 1
  %64 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %65 = call ptr @memset(ptr %6, i32 0, i32 84)
  %spi_tx_buf.i.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %64, i32 0, i32 5
  %66 = ptrtoint ptr %spi_tx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  %68 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %t.i.i.i, align 4
  %spi_rx_buf.i.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %64, i32 0, i32 6
  %69 = ptrtoint ptr %spi_rx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi_rx_buf.i.i.i, align 4
  %71 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %rx_buf.i.i.i, align 4
  %72 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 15, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  %73 = call ptr @memset(ptr %7, i32 0, i32 40)
  %74 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %75 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %80 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i.i.i_crit_edge
  %call2.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %spi_message_add_tail.exit.i.i.i.hi3110_hw_rx_frame.exit.i_crit_edge, label %do.end.i.i.i

spi_message_add_tail.exit.i.i.i.hi3110_hw_rx_frame.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_hw_rx_frame.exit.i

do.end.i.i.i:                                     ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i.i) #9
  br label %hi3110_hw_rx_frame.exit.i

hi3110_hw_rx_frame.exit.i:                        ; preds = %do.end.i.i.i, %spi_message_add_tail.exit.i.i.i.hi3110_hw_rx_frame.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %spi_rx_buf.i.i245 = getelementptr inbounds %struct.hi3110_priv, ptr %60, i32 0, i32 6
  %82 = ptrtoint ptr %spi_rx_buf.i.i245 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %spi_rx_buf.i.i245, align 4
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 1
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %buf.sroa.0.0.copyload.i = load i8, ptr %add.ptr.i.i, align 1
  %buf.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 2
  %85 = ptrtoint ptr %buf.sroa.5.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %buf.sroa.5.0.copyload.i = load i8, ptr %buf.sroa.5.0.add.ptr.i.sroa_idx.i, align 1
  %buf.sroa.8.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 3
  %86 = ptrtoint ptr %buf.sroa.8.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %buf.sroa.8.0.copyload.i = load i8, ptr %buf.sroa.8.0.add.ptr.i.sroa_idx.i, align 1
  %buf.sroa.11.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 4
  %87 = ptrtoint ptr %buf.sroa.11.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %buf.sroa.11.0.copyload.i = load i8, ptr %buf.sroa.11.0.add.ptr.i.sroa_idx.i, align 1
  %buf.sroa.13.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 5
  %88 = ptrtoint ptr %buf.sroa.13.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %buf.sroa.13.0.copyload.i = load i8, ptr %buf.sroa.13.0.add.ptr.i.sroa_idx.i, align 1
  %buf.sroa.16.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 6
  %89 = ptrtoint ptr %buf.sroa.16.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %buf.sroa.16.0.copyload.i = load i8, ptr %buf.sroa.16.0.add.ptr.i.sroa_idx.i, align 1
  %buf.sroa.18.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %83, i32 7
  %90 = ptrtoint ptr %buf.sroa.18.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %buf.sroa.18.0.add.ptr.i.sroa_idx.i, align 1
  %92 = ptrtoint ptr %buf.sroa.18.sroa.0.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %buf.sroa.18.sroa.0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %buf.sroa.0.0.copyload.i)
  %tobool3.not.i = icmp sgt i8 %buf.sroa.0.0.copyload.i, -1
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %hi3110_hw_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %frame.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -2147483648, ptr %94, align 8
  %conv6.i = zext i8 %buf.sroa.5.0.copyload.i to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 21
  %conv8.i = zext i8 %buf.sroa.8.0.copyload.i to i32
  %96 = shl nuw nsw i32 %conv8.i, 13
  %shl10.i = and i32 %96, 1835008
  %or.i = or i32 %shl10.i, %shl.i
  %and13.i = shl nuw nsw i32 %conv8.i, 15
  %shl14.i = and i32 %and13.i, 229376
  %or15.i = or i32 %or.i, %shl14.i
  %conv17.i = zext i8 %buf.sroa.11.0.copyload.i to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 7
  %or19.i = or i32 %or15.i, %shl18.i
  %97 = lshr i8 %buf.sroa.13.0.copyload.i, 1
  %98 = zext i8 %97 to i32
  %or23.i = or i32 %or19.i, %98
  %99 = load ptr, ptr %frame.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %or25.i = or i32 %101, %or23.i
  store i32 %or25.i, ptr %99, align 8
  br label %if.end35.i

if.else.i:                                        ; preds = %hi3110_hw_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.i = zext i8 %buf.sroa.5.0.copyload.i to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 3
  %102 = lshr i8 %buf.sroa.8.0.copyload.i, 5
  %103 = zext i8 %102 to i32
  %or33.i = or i32 %shl28.i, %103
  %104 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %frame.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or33.i, ptr %105, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %if.then4.i
  %107 = and i8 %buf.sroa.16.0.copyload.i, 15
  %108 = call i8 @llvm.umin.i8(i8 %107, i8 8) #6
  %109 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %frame.i, align 4
  %111 = getelementptr inbounds %struct.can_frame, ptr %110, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %108, ptr %111, align 4
  %113 = and i8 %buf.sroa.13.0.copyload.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool49.not.i = icmp eq i8 %113, 0
  br i1 %tobool49.not.i, label %if.else53.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %110, align 8
  %or52.i = or i32 %115, 1073741824
  store i32 %or52.i, ptr %110, align 8
  br label %if.end60.i

if.else53.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.can_frame, ptr %110, i32 0, i32 5
  %conv56.i = zext i8 %108 to i32
  %116 = call ptr @memcpy(ptr %data.i, ptr %buf.sroa.18.sroa.0.i, i32 %conv56.i)
  %117 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %net.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %118, i32 0, i32 36, i32 2
  %119 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %120, %conv56.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else53.i, %if.then50.i
  %121 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net.i, align 4
  %stats62.i = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 36
  %123 = ptrtoint ptr %stats62.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %stats62.i, align 8
  %inc63.i = add i32 %124, 1
  store i32 %inc63.i, ptr %stats62.i, align 8
  %call65.i = call i32 @netif_rx_ni(ptr noundef nonnull %call1.i) #6
  br label %hi3110_hw_rx.exit

hi3110_hw_rx.exit:                                ; preds = %if.end60.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.sroa.18.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #6
  br label %while.cond3

while.end:                                        ; preds = %hi3110_read.exit
  %conv.le = zext i8 %48 to i32
  %125 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i249 = getelementptr inbounds %struct.hi3110_priv, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %spi_tx_buf.i249 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %spi_tx_buf.i249, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -34, ptr %128, align 1
  %130 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i246) #6
  %131 = call ptr @memset(ptr %8, i32 0, i32 84)
  %spi_tx_buf.i.i250 = getelementptr inbounds %struct.hi3110_priv, ptr %130, i32 0, i32 5
  %132 = ptrtoint ptr %spi_tx_buf.i.i250 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %spi_tx_buf.i.i250, align 4
  %134 = ptrtoint ptr %t.i.i246 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %t.i.i246, align 4
  %spi_rx_buf.i.i252 = getelementptr inbounds %struct.hi3110_priv, ptr %130, i32 0, i32 6
  %135 = ptrtoint ptr %spi_rx_buf.i.i252 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %spi_rx_buf.i.i252, align 4
  %137 = ptrtoint ptr %rx_buf.i.i251 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %rx_buf.i.i251, align 4
  %138 = ptrtoint ptr %len1.i.i253 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %len1.i.i253, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i247) #6
  %139 = call ptr @memset(ptr %9, i32 0, i32 40)
  %140 = ptrtoint ptr %m.i.i247 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %m.i.i247, ptr %m.i.i247, align 4
  %141 = ptrtoint ptr %prev.i.i.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %m.i.i247, ptr %prev.i.i.i.i.i254, align 4
  %142 = ptrtoint ptr %resources.i.i.i.i255 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %resources.i.i.i.i255, ptr %resources.i.i.i.i255, align 4
  %143 = ptrtoint ptr %prev.i2.i.i.i.i256 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %resources.i.i.i.i255, ptr %prev.i2.i.i.i.i256, align 4
  %call.i.i.i.i.i258 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i257, ptr noundef nonnull %m.i.i247, ptr noundef nonnull %m.i.i247) #6
  br i1 %call.i.i.i.i.i258, label %if.end.i.i.i.i.i260, label %while.end.spi_message_add_tail.exit.i.i263_crit_edge

while.end.spi_message_add_tail.exit.i.i263_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i263

if.end.i.i.i.i.i260:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %prev.i.i.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %transfer_list.i.i.i257, ptr %prev.i.i.i.i.i254, align 4
  %145 = ptrtoint ptr %transfer_list.i.i.i257 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %m.i.i247, ptr %transfer_list.i.i.i257, align 4
  %146 = ptrtoint ptr %prev3.i.i.i.i.i259 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %m.i.i247, ptr %prev3.i.i.i.i.i259, align 4
  %147 = ptrtoint ptr %m.i.i247 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %transfer_list.i.i.i257, ptr %m.i.i247, align 4
  br label %spi_message_add_tail.exit.i.i263

spi_message_add_tail.exit.i.i263:                 ; preds = %if.end.i.i.i.i.i260, %while.end.spi_message_add_tail.exit.i.i263_crit_edge
  %call2.i.i261 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i247) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i261)
  %tobool.not.i.i262 = icmp eq i32 %call2.i.i261, 0
  br i1 %tobool.not.i.i262, label %spi_message_add_tail.exit.i.i263.hi3110_read.exit267_crit_edge, label %do.end.i.i264

spi_message_add_tail.exit.i.i263.hi3110_read.exit267_crit_edge: ; preds = %spi_message_add_tail.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit267

do.end.i.i264:                                    ; preds = %spi_message_add_tail.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i261) #9
  br label %hi3110_read.exit267

hi3110_read.exit267:                              ; preds = %do.end.i.i264, %spi_message_add_tail.exit.i.i263.hi3110_read.exit267_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i247) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i246) #6
  %spi_rx_buf.i265 = getelementptr inbounds %struct.hi3110_priv, ptr %126, i32 0, i32 6
  %148 = ptrtoint ptr %spi_rx_buf.i265 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %spi_rx_buf.i265, align 4
  %arrayidx2.i266 = getelementptr i8, ptr %149, i32 1
  %150 = ptrtoint ptr %arrayidx2.i266 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx2.i266, align 1
  %152 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i271 = getelementptr inbounds %struct.hi3110_priv, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %spi_tx_buf.i271 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %spi_tx_buf.i271, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -36, ptr %155, align 1
  %157 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i268) #6
  %158 = call ptr @memset(ptr %10, i32 0, i32 84)
  %spi_tx_buf.i.i272 = getelementptr inbounds %struct.hi3110_priv, ptr %157, i32 0, i32 5
  %159 = ptrtoint ptr %spi_tx_buf.i.i272 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %spi_tx_buf.i.i272, align 4
  %161 = ptrtoint ptr %t.i.i268 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %t.i.i268, align 4
  %spi_rx_buf.i.i274 = getelementptr inbounds %struct.hi3110_priv, ptr %157, i32 0, i32 6
  %162 = ptrtoint ptr %spi_rx_buf.i.i274 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %spi_rx_buf.i.i274, align 4
  %164 = ptrtoint ptr %rx_buf.i.i273 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %rx_buf.i.i273, align 4
  %165 = ptrtoint ptr %len1.i.i275 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %len1.i.i275, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i269) #6
  %166 = call ptr @memset(ptr %11, i32 0, i32 40)
  %167 = ptrtoint ptr %m.i.i269 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %m.i.i269, ptr %m.i.i269, align 4
  %168 = ptrtoint ptr %prev.i.i.i.i.i276 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %m.i.i269, ptr %prev.i.i.i.i.i276, align 4
  %169 = ptrtoint ptr %resources.i.i.i.i277 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %resources.i.i.i.i277, ptr %resources.i.i.i.i277, align 4
  %170 = ptrtoint ptr %prev.i2.i.i.i.i278 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %resources.i.i.i.i277, ptr %prev.i2.i.i.i.i278, align 4
  %call.i.i.i.i.i280 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i279, ptr noundef nonnull %m.i.i269, ptr noundef nonnull %m.i.i269) #6
  br i1 %call.i.i.i.i.i280, label %if.end.i.i.i.i.i282, label %hi3110_read.exit267.spi_message_add_tail.exit.i.i285_crit_edge

hi3110_read.exit267.spi_message_add_tail.exit.i.i285_crit_edge: ; preds = %hi3110_read.exit267
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i285

if.end.i.i.i.i.i282:                              ; preds = %hi3110_read.exit267
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %prev.i.i.i.i.i276 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %transfer_list.i.i.i279, ptr %prev.i.i.i.i.i276, align 4
  %172 = ptrtoint ptr %transfer_list.i.i.i279 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %m.i.i269, ptr %transfer_list.i.i.i279, align 4
  %173 = ptrtoint ptr %prev3.i.i.i.i.i281 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %m.i.i269, ptr %prev3.i.i.i.i.i281, align 4
  %174 = ptrtoint ptr %m.i.i269 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %transfer_list.i.i.i279, ptr %m.i.i269, align 4
  br label %spi_message_add_tail.exit.i.i285

spi_message_add_tail.exit.i.i285:                 ; preds = %if.end.i.i.i.i.i282, %hi3110_read.exit267.spi_message_add_tail.exit.i.i285_crit_edge
  %call2.i.i283 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i269) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i283)
  %tobool.not.i.i284 = icmp eq i32 %call2.i.i283, 0
  br i1 %tobool.not.i.i284, label %spi_message_add_tail.exit.i.i285.hi3110_read.exit289_crit_edge, label %do.end.i.i286

spi_message_add_tail.exit.i.i285.hi3110_read.exit289_crit_edge: ; preds = %spi_message_add_tail.exit.i.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit289

do.end.i.i286:                                    ; preds = %spi_message_add_tail.exit.i.i285
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i283) #9
  br label %hi3110_read.exit289

hi3110_read.exit289:                              ; preds = %do.end.i.i286, %spi_message_add_tail.exit.i.i285.hi3110_read.exit289_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i269) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i268) #6
  %spi_rx_buf.i287 = getelementptr inbounds %struct.hi3110_priv, ptr %153, i32 0, i32 6
  %175 = ptrtoint ptr %spi_rx_buf.i287 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %spi_rx_buf.i287, align 4
  %arrayidx2.i288 = getelementptr i8, ptr %176, i32 1
  %177 = ptrtoint ptr %arrayidx2.i288 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx2.i288, align 1
  %conv9 = zext i8 %178 to i32
  %and10 = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %hi3110_read.exit289.if.end23_crit_edge

hi3110_read.exit289.if.end23_crit_edge:           ; preds = %hi3110_read.exit289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else:                                          ; preds = %hi3110_read.exit289
  %and13 = and i32 %conv9, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else16, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and18 = lshr i32 %conv.le, 4
  %and18.lobit = and i32 %and18, 1
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %if.else.if.end23_crit_edge, %hi3110_read.exit289.if.end23_crit_edge
  %new_state.0 = phi i32 [ 3, %hi3110_read.exit289.if.end23_crit_edge ], [ 2, %if.else.if.end23_crit_edge ], [ %and18.lobit, %if.else16 ]
  %179 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_state.0, i32 %180)
  %cmp.not = icmp eq i32 %new_state.0, %180
  br i1 %cmp.not, label %if.end23.if.end62_crit_edge, label %if.then25

if.end23.if.end62_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then25:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %181 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !100
  %call26 = call ptr @alloc_can_err_skb(ptr noundef %3, ptr noundef nonnull %cf) #6
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.cleanup_crit_edge, label %if.end29

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  %182 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i293 = getelementptr inbounds %struct.hi3110_priv, ptr %183, i32 0, i32 5
  %184 = ptrtoint ptr %spi_tx_buf.i293 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %spi_tx_buf.i293, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -20, ptr %185, align 1
  %187 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i290) #6
  %188 = call ptr @memset(ptr %12, i32 0, i32 84)
  %spi_tx_buf.i.i294 = getelementptr inbounds %struct.hi3110_priv, ptr %187, i32 0, i32 5
  %189 = ptrtoint ptr %spi_tx_buf.i.i294 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %spi_tx_buf.i.i294, align 4
  %191 = ptrtoint ptr %t.i.i290 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %t.i.i290, align 4
  %spi_rx_buf.i.i296 = getelementptr inbounds %struct.hi3110_priv, ptr %187, i32 0, i32 6
  %192 = ptrtoint ptr %spi_rx_buf.i.i296 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %spi_rx_buf.i.i296, align 4
  %194 = ptrtoint ptr %rx_buf.i.i295 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %rx_buf.i.i295, align 4
  %195 = ptrtoint ptr %len1.i.i297 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 2, ptr %len1.i.i297, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i291) #6
  %196 = call ptr @memset(ptr %13, i32 0, i32 40)
  %197 = ptrtoint ptr %m.i.i291 to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %m.i.i291, ptr %m.i.i291, align 4
  %198 = ptrtoint ptr %prev.i.i.i.i.i298 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %m.i.i291, ptr %prev.i.i.i.i.i298, align 4
  %199 = ptrtoint ptr %resources.i.i.i.i299 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %resources.i.i.i.i299, ptr %resources.i.i.i.i299, align 4
  %200 = ptrtoint ptr %prev.i2.i.i.i.i300 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %resources.i.i.i.i299, ptr %prev.i2.i.i.i.i300, align 4
  %call.i.i.i.i.i302 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i301, ptr noundef nonnull %m.i.i291, ptr noundef nonnull %m.i.i291) #6
  br i1 %call.i.i.i.i.i302, label %if.end.i.i.i.i.i304, label %if.end29.spi_message_add_tail.exit.i.i307_crit_edge

if.end29.spi_message_add_tail.exit.i.i307_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i307

if.end.i.i.i.i.i304:                              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %prev.i.i.i.i.i298 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %transfer_list.i.i.i301, ptr %prev.i.i.i.i.i298, align 4
  %202 = ptrtoint ptr %transfer_list.i.i.i301 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %m.i.i291, ptr %transfer_list.i.i.i301, align 4
  %203 = ptrtoint ptr %prev3.i.i.i.i.i303 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %m.i.i291, ptr %prev3.i.i.i.i.i303, align 4
  %204 = ptrtoint ptr %m.i.i291 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %transfer_list.i.i.i301, ptr %m.i.i291, align 4
  br label %spi_message_add_tail.exit.i.i307

spi_message_add_tail.exit.i.i307:                 ; preds = %if.end.i.i.i.i.i304, %if.end29.spi_message_add_tail.exit.i.i307_crit_edge
  %call2.i.i305 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i291) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i305)
  %tobool.not.i.i306 = icmp eq i32 %call2.i.i305, 0
  br i1 %tobool.not.i.i306, label %spi_message_add_tail.exit.i.i307.hi3110_read.exit311_crit_edge, label %do.end.i.i308

spi_message_add_tail.exit.i.i307.hi3110_read.exit311_crit_edge: ; preds = %spi_message_add_tail.exit.i.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit311

do.end.i.i308:                                    ; preds = %spi_message_add_tail.exit.i.i307
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i305) #9
  br label %hi3110_read.exit311

hi3110_read.exit311:                              ; preds = %do.end.i.i308, %spi_message_add_tail.exit.i.i307.hi3110_read.exit311_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i291) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i290) #6
  %spi_rx_buf.i309 = getelementptr inbounds %struct.hi3110_priv, ptr %183, i32 0, i32 6
  %205 = ptrtoint ptr %spi_rx_buf.i309 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %spi_rx_buf.i309, align 4
  %arrayidx2.i310 = getelementptr i8, ptr %206, i32 1
  %207 = ptrtoint ptr %arrayidx2.i310 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx2.i310, align 1
  %209 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i315 = getelementptr inbounds %struct.hi3110_priv, ptr %210, i32 0, i32 5
  %211 = ptrtoint ptr %spi_tx_buf.i315 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %spi_tx_buf.i315, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -22, ptr %212, align 1
  %214 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i312) #6
  %215 = call ptr @memset(ptr %14, i32 0, i32 84)
  %spi_tx_buf.i.i316 = getelementptr inbounds %struct.hi3110_priv, ptr %214, i32 0, i32 5
  %216 = ptrtoint ptr %spi_tx_buf.i.i316 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %spi_tx_buf.i.i316, align 4
  %218 = ptrtoint ptr %t.i.i312 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %217, ptr %t.i.i312, align 4
  %spi_rx_buf.i.i318 = getelementptr inbounds %struct.hi3110_priv, ptr %214, i32 0, i32 6
  %219 = ptrtoint ptr %spi_rx_buf.i.i318 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %spi_rx_buf.i.i318, align 4
  %221 = ptrtoint ptr %rx_buf.i.i317 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %220, ptr %rx_buf.i.i317, align 4
  %222 = ptrtoint ptr %len1.i.i319 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 2, ptr %len1.i.i319, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i313) #6
  %223 = call ptr @memset(ptr %15, i32 0, i32 40)
  %224 = ptrtoint ptr %m.i.i313 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %m.i.i313, ptr %m.i.i313, align 4
  %225 = ptrtoint ptr %prev.i.i.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %m.i.i313, ptr %prev.i.i.i.i.i320, align 4
  %226 = ptrtoint ptr %resources.i.i.i.i321 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile ptr %resources.i.i.i.i321, ptr %resources.i.i.i.i321, align 4
  %227 = ptrtoint ptr %prev.i2.i.i.i.i322 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %resources.i.i.i.i321, ptr %prev.i2.i.i.i.i322, align 4
  %call.i.i.i.i.i324 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i323, ptr noundef nonnull %m.i.i313, ptr noundef nonnull %m.i.i313) #6
  br i1 %call.i.i.i.i.i324, label %if.end.i.i.i.i.i326, label %hi3110_read.exit311.spi_message_add_tail.exit.i.i329_crit_edge

hi3110_read.exit311.spi_message_add_tail.exit.i.i329_crit_edge: ; preds = %hi3110_read.exit311
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i329

if.end.i.i.i.i.i326:                              ; preds = %hi3110_read.exit311
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %prev.i.i.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %transfer_list.i.i.i323, ptr %prev.i.i.i.i.i320, align 4
  %229 = ptrtoint ptr %transfer_list.i.i.i323 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %m.i.i313, ptr %transfer_list.i.i.i323, align 4
  %230 = ptrtoint ptr %prev3.i.i.i.i.i325 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %m.i.i313, ptr %prev3.i.i.i.i.i325, align 4
  %231 = ptrtoint ptr %m.i.i313 to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %transfer_list.i.i.i323, ptr %m.i.i313, align 4
  br label %spi_message_add_tail.exit.i.i329

spi_message_add_tail.exit.i.i329:                 ; preds = %if.end.i.i.i.i.i326, %hi3110_read.exit311.spi_message_add_tail.exit.i.i329_crit_edge
  %call2.i.i327 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i313) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i327)
  %tobool.not.i.i328 = icmp eq i32 %call2.i.i327, 0
  br i1 %tobool.not.i.i328, label %spi_message_add_tail.exit.i.i329.hi3110_read.exit333_crit_edge, label %do.end.i.i330

spi_message_add_tail.exit.i.i329.hi3110_read.exit333_crit_edge: ; preds = %spi_message_add_tail.exit.i.i329
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit333

do.end.i.i330:                                    ; preds = %spi_message_add_tail.exit.i.i329
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i327) #9
  br label %hi3110_read.exit333

hi3110_read.exit333:                              ; preds = %do.end.i.i330, %spi_message_add_tail.exit.i.i329.hi3110_read.exit333_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i313) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i312) #6
  %spi_rx_buf.i331 = getelementptr inbounds %struct.hi3110_priv, ptr %210, i32 0, i32 6
  %232 = ptrtoint ptr %spi_rx_buf.i331 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %spi_rx_buf.i331, align 4
  %arrayidx2.i332 = getelementptr i8, ptr %233, i32 1
  %234 = ptrtoint ptr %arrayidx2.i332 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx2.i332, align 1
  %236 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %237, i32 0, i32 5, i32 6
  %238 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %208, ptr %arrayidx, align 2
  %239 = load ptr, ptr %cf, align 4
  %arrayidx33 = getelementptr %struct.can_frame, ptr %239, i32 0, i32 5, i32 7
  %240 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %235, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %208, i8 %235)
  %cmp36.not = icmp ult i8 %208, %235
  %spec.select = select i1 %cmp36.not, i32 0, i32 %new_state.0
  call void @__sanitizer_cov_trace_cmp1(i8 %208, i8 %235)
  %cmp40.not = icmp ugt i8 %208, %235
  %cond45 = select i1 %cmp40.not, i32 0, i32 %new_state.0
  %241 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %3, ptr noundef %242, i32 noundef %spec.select, i32 noundef %cond45) #6
  %call46 = call i32 @netif_rx_ni(ptr noundef nonnull %call26) #6
  br i1 %tobool11.not, label %hi3110_read.exit333.cleanup.thread_crit_edge, label %if.then49

hi3110_read.exit333.cleanup.thread_crit_edge:     ; preds = %hi3110_read.exit333
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then49:                                        ; preds = %hi3110_read.exit333
  call void @can_bus_off(ptr noundef %3) #6
  %243 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp51 = icmp eq i32 %244, 0
  br i1 %cmp51, label %if.then53, label %if.then49.cleanup.thread_crit_edge

if.then49.cleanup.thread_crit_edge:               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %245 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1, ptr %force_quit, align 4
  call fastcc void @hi3110_hw_sleep(ptr noundef %1)
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then49.cleanup.thread_crit_edge, %hi3110_read.exit333.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  br label %if.end62

cleanup:                                          ; preds = %if.then53, %if.then25.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  br label %while.end186

if.end62:                                         ; preds = %cleanup.thread, %if.end23.if.end62_crit_edge
  %246 = and i8 %151, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool65.not = icmp eq i8 %246, 0
  br i1 %tobool65.not, label %if.end62.if.end161_crit_edge, label %land.lhs.true

if.end62.if.end161_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

land.lhs.true:                                    ; preds = %if.end62
  %247 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ctrlmode, align 4
  %and67 = and i32 %248, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true.if.end161_crit_edge, label %if.then69

land.lhs.true.if.end161_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then69:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf70) #6
  %249 = ptrtoint ptr %cf70 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf70, align 4, !annotation !100
  %and73 = and i32 %conv9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then69.cleanup157.thread_crit_edge, label %if.then75

if.then69.cleanup157.thread_crit_edge:            ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup157.thread

if.then75:                                        ; preds = %if.then69
  %call76 = call ptr @alloc_can_err_skb(ptr noundef %3, ptr noundef nonnull %cf70) #6
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %cleanup157, label %if.end79

if.end79:                                         ; preds = %if.then75
  %250 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cf70, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 8
  %or = or i32 %253, 136
  store i32 %or, ptr %251, align 8
  %254 = ptrtoint ptr %can_stats to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %can_stats, align 4
  %inc = add i32 %255, 1
  store i32 %inc, ptr %can_stats, align 4
  %256 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %net2, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %257, i32 0, i32 36, i32 4
  %258 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rx_errors, align 8
  %inc82 = add i32 %259, 1
  store i32 %inc82, ptr %rx_errors, align 8
  %and84 = and i32 %conv9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else92, label %if.then86

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %260 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cf70, align 4
  %arrayidx88 = getelementptr %struct.can_frame, ptr %261, i32 0, i32 5, i32 2
  %262 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx88, align 2
  %264 = or i8 %263, 1
  store i8 %264, ptr %arrayidx88, align 2
  br label %if.end136

if.else92:                                        ; preds = %if.end79
  %and94 = and i32 %conv9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else102, label %if.then96

if.then96:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  %265 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cf70, align 4
  %arrayidx98 = getelementptr %struct.can_frame, ptr %266, i32 0, i32 5, i32 2
  %267 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx98, align 2
  %269 = or i8 %268, 2
  store i8 %269, ptr %arrayidx98, align 2
  br label %if.end136

if.else102:                                       ; preds = %if.else92
  %and104 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else112, label %if.then106

if.then106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cf70, align 4
  %arrayidx108 = getelementptr %struct.can_frame, ptr %271, i32 0, i32 5, i32 2
  %272 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx108, align 2
  %274 = or i8 %273, 4
  store i8 %274, ptr %arrayidx108, align 2
  br label %if.end136

if.else112:                                       ; preds = %if.else102
  %and114 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.else122, label %if.then116

if.then116:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cf70, align 4
  %arrayidx118 = getelementptr %struct.can_frame, ptr %276, i32 0, i32 5, i32 3
  %277 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx118, align 1
  %279 = or i8 %278, 8
  store i8 %279, ptr %arrayidx118, align 1
  br label %if.end136

if.else122:                                       ; preds = %if.else112
  %and124 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.else122.if.end136_crit_edge, label %if.then126

if.else122.if.end136_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then126:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #8
  %280 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cf70, align 4
  %arrayidx128 = getelementptr %struct.can_frame, ptr %281, i32 0, i32 5, i32 3
  %282 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx128, align 1
  %284 = or i8 %283, 25
  store i8 %284, ptr %arrayidx128, align 1
  br label %if.end136

if.end136:                                        ; preds = %if.then126, %if.else122.if.end136_crit_edge, %if.then116, %if.then106, %if.then96, %if.then86
  %285 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i337 = getelementptr inbounds %struct.hi3110_priv, ptr %286, i32 0, i32 5
  %287 = ptrtoint ptr %spi_tx_buf.i337 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %spi_tx_buf.i337, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 -20, ptr %288, align 1
  %290 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i334) #6
  %291 = call ptr @memset(ptr %16, i32 0, i32 84)
  %spi_tx_buf.i.i338 = getelementptr inbounds %struct.hi3110_priv, ptr %290, i32 0, i32 5
  %292 = ptrtoint ptr %spi_tx_buf.i.i338 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %spi_tx_buf.i.i338, align 4
  %294 = ptrtoint ptr %t.i.i334 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %293, ptr %t.i.i334, align 4
  %spi_rx_buf.i.i340 = getelementptr inbounds %struct.hi3110_priv, ptr %290, i32 0, i32 6
  %295 = ptrtoint ptr %spi_rx_buf.i.i340 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %spi_rx_buf.i.i340, align 4
  %297 = ptrtoint ptr %rx_buf.i.i339 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %296, ptr %rx_buf.i.i339, align 4
  %298 = ptrtoint ptr %len1.i.i341 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 2, ptr %len1.i.i341, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i335) #6
  %299 = call ptr @memset(ptr %17, i32 0, i32 40)
  %300 = ptrtoint ptr %m.i.i335 to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile ptr %m.i.i335, ptr %m.i.i335, align 4
  %301 = ptrtoint ptr %prev.i.i.i.i.i342 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %m.i.i335, ptr %prev.i.i.i.i.i342, align 4
  %302 = ptrtoint ptr %resources.i.i.i.i343 to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile ptr %resources.i.i.i.i343, ptr %resources.i.i.i.i343, align 4
  %303 = ptrtoint ptr %prev.i2.i.i.i.i344 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %resources.i.i.i.i343, ptr %prev.i2.i.i.i.i344, align 4
  %call.i.i.i.i.i346 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i345, ptr noundef nonnull %m.i.i335, ptr noundef nonnull %m.i.i335) #6
  br i1 %call.i.i.i.i.i346, label %if.end.i.i.i.i.i348, label %if.end136.spi_message_add_tail.exit.i.i351_crit_edge

if.end136.spi_message_add_tail.exit.i.i351_crit_edge: ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i351

if.end.i.i.i.i.i348:                              ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %304 = ptrtoint ptr %prev.i.i.i.i.i342 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %transfer_list.i.i.i345, ptr %prev.i.i.i.i.i342, align 4
  %305 = ptrtoint ptr %transfer_list.i.i.i345 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %m.i.i335, ptr %transfer_list.i.i.i345, align 4
  %306 = ptrtoint ptr %prev3.i.i.i.i.i347 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %m.i.i335, ptr %prev3.i.i.i.i.i347, align 4
  %307 = ptrtoint ptr %m.i.i335 to i32
  call void @__asan_store4_noabort(i32 %307)
  store volatile ptr %transfer_list.i.i.i345, ptr %m.i.i335, align 4
  br label %spi_message_add_tail.exit.i.i351

spi_message_add_tail.exit.i.i351:                 ; preds = %if.end.i.i.i.i.i348, %if.end136.spi_message_add_tail.exit.i.i351_crit_edge
  %call2.i.i349 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i335) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i349)
  %tobool.not.i.i350 = icmp eq i32 %call2.i.i349, 0
  br i1 %tobool.not.i.i350, label %spi_message_add_tail.exit.i.i351.hi3110_read.exit355_crit_edge, label %do.end.i.i352

spi_message_add_tail.exit.i.i351.hi3110_read.exit355_crit_edge: ; preds = %spi_message_add_tail.exit.i.i351
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit355

do.end.i.i352:                                    ; preds = %spi_message_add_tail.exit.i.i351
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i349) #9
  br label %hi3110_read.exit355

hi3110_read.exit355:                              ; preds = %do.end.i.i352, %spi_message_add_tail.exit.i.i351.hi3110_read.exit355_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i335) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i334) #6
  %spi_rx_buf.i353 = getelementptr inbounds %struct.hi3110_priv, ptr %286, i32 0, i32 6
  %308 = ptrtoint ptr %spi_rx_buf.i353 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %spi_rx_buf.i353, align 4
  %arrayidx2.i354 = getelementptr i8, ptr %309, i32 1
  %310 = ptrtoint ptr %arrayidx2.i354 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx2.i354, align 1
  %312 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cf70, align 4
  %arrayidx139 = getelementptr %struct.can_frame, ptr %313, i32 0, i32 5, i32 6
  %314 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %311, ptr %arrayidx139, align 2
  %315 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i359 = getelementptr inbounds %struct.hi3110_priv, ptr %316, i32 0, i32 5
  %317 = ptrtoint ptr %spi_tx_buf.i359 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %spi_tx_buf.i359, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 -22, ptr %318, align 1
  %320 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i356) #6
  %321 = call ptr @memset(ptr %18, i32 0, i32 84)
  %spi_tx_buf.i.i360 = getelementptr inbounds %struct.hi3110_priv, ptr %320, i32 0, i32 5
  %322 = ptrtoint ptr %spi_tx_buf.i.i360 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %spi_tx_buf.i.i360, align 4
  %324 = ptrtoint ptr %t.i.i356 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %323, ptr %t.i.i356, align 4
  %spi_rx_buf.i.i362 = getelementptr inbounds %struct.hi3110_priv, ptr %320, i32 0, i32 6
  %325 = ptrtoint ptr %spi_rx_buf.i.i362 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %spi_rx_buf.i.i362, align 4
  %327 = ptrtoint ptr %rx_buf.i.i361 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %326, ptr %rx_buf.i.i361, align 4
  %328 = ptrtoint ptr %len1.i.i363 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 2, ptr %len1.i.i363, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i357) #6
  %329 = call ptr @memset(ptr %19, i32 0, i32 40)
  %330 = ptrtoint ptr %m.i.i357 to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile ptr %m.i.i357, ptr %m.i.i357, align 4
  %331 = ptrtoint ptr %prev.i.i.i.i.i364 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %m.i.i357, ptr %prev.i.i.i.i.i364, align 4
  %332 = ptrtoint ptr %resources.i.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile ptr %resources.i.i.i.i365, ptr %resources.i.i.i.i365, align 4
  %333 = ptrtoint ptr %prev.i2.i.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %resources.i.i.i.i365, ptr %prev.i2.i.i.i.i366, align 4
  %call.i.i.i.i.i368 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i367, ptr noundef nonnull %m.i.i357, ptr noundef nonnull %m.i.i357) #6
  br i1 %call.i.i.i.i.i368, label %if.end.i.i.i.i.i370, label %hi3110_read.exit355.spi_message_add_tail.exit.i.i373_crit_edge

hi3110_read.exit355.spi_message_add_tail.exit.i.i373_crit_edge: ; preds = %hi3110_read.exit355
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i373

if.end.i.i.i.i.i370:                              ; preds = %hi3110_read.exit355
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %prev.i.i.i.i.i364 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %transfer_list.i.i.i367, ptr %prev.i.i.i.i.i364, align 4
  %335 = ptrtoint ptr %transfer_list.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %m.i.i357, ptr %transfer_list.i.i.i367, align 4
  %336 = ptrtoint ptr %prev3.i.i.i.i.i369 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %m.i.i357, ptr %prev3.i.i.i.i.i369, align 4
  %337 = ptrtoint ptr %m.i.i357 to i32
  call void @__asan_store4_noabort(i32 %337)
  store volatile ptr %transfer_list.i.i.i367, ptr %m.i.i357, align 4
  br label %spi_message_add_tail.exit.i.i373

spi_message_add_tail.exit.i.i373:                 ; preds = %if.end.i.i.i.i.i370, %hi3110_read.exit355.spi_message_add_tail.exit.i.i373_crit_edge
  %call2.i.i371 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i357) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i371)
  %tobool.not.i.i372 = icmp eq i32 %call2.i.i371, 0
  br i1 %tobool.not.i.i372, label %spi_message_add_tail.exit.i.i373.hi3110_read.exit377_crit_edge, label %do.end.i.i374

spi_message_add_tail.exit.i.i373.hi3110_read.exit377_crit_edge: ; preds = %spi_message_add_tail.exit.i.i373
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit377

do.end.i.i374:                                    ; preds = %spi_message_add_tail.exit.i.i373
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i371) #9
  br label %hi3110_read.exit377

hi3110_read.exit377:                              ; preds = %do.end.i.i374, %spi_message_add_tail.exit.i.i373.hi3110_read.exit377_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i357) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i356) #6
  %spi_rx_buf.i375 = getelementptr inbounds %struct.hi3110_priv, ptr %316, i32 0, i32 6
  %338 = ptrtoint ptr %spi_rx_buf.i375 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %spi_rx_buf.i375, align 4
  %arrayidx2.i376 = getelementptr i8, ptr %339, i32 1
  %340 = ptrtoint ptr %arrayidx2.i376 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx2.i376, align 1
  %342 = ptrtoint ptr %cf70 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cf70, align 4
  %arrayidx142 = getelementptr %struct.can_frame, ptr %343, i32 0, i32 5, i32 7
  %344 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %341, ptr %arrayidx142, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi3110_can_ist.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hi3110_can_ist, %do.end154)) #6
          to label %if.then150 [label %do.end154], !srcloc !102

if.then150:                                       ; preds = %hi3110_read.exit377
  call void @__sanitizer_cov_trace_pc() #8
  %345 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %net2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hi3110_can_ist.__UNIQUE_ID_ddebug468, ptr noundef %346, ptr noundef nonnull @.str.21) #6
  br label %do.end154

do.end154:                                        ; preds = %if.then150, %hi3110_read.exit377
  %call155 = call i32 @netif_rx_ni(ptr noundef nonnull %call76) #6
  br label %cleanup157.thread

cleanup157.thread:                                ; preds = %do.end154, %if.then69.cleanup157.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf70) #6
  br label %if.end161

cleanup157:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf70) #6
  br label %while.end186

if.end161:                                        ; preds = %cleanup157.thread, %land.lhs.true.if.end161_crit_edge, %if.end62.if.end161_crit_edge
  %347 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %tx_busy, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %tobool162.not = icmp eq i8 %348, 0
  %and166 = and i32 %conv.le, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  %or.cond = select i1 %tobool162.not, i1 true, i1 %tobool167.not
  br i1 %or.cond, label %if.end161.if.end174_crit_edge, label %if.then168

if.end161.if.end174_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then168:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  %349 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %tx_packets, align 4
  %inc170 = add i32 %350, 1
  store i32 %inc170, ptr %tx_packets, align 4
  %call171 = call i32 @can_get_echo_skb(ptr noundef %3, i32 noundef 0, ptr noundef null) #6
  %351 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %352, %call171
  store i32 %add, ptr %tx_bytes, align 4
  %353 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %tx_busy, align 4
  %354 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %355) #6
  br label %if.end174

if.end174:                                        ; preds = %if.then168, %if.end161.if.end174_crit_edge
  %cmp176 = icmp eq i8 %151, 0
  br i1 %cmp176, label %if.end174.while.end186_crit_edge, label %if.end174.while.cond_crit_edge

if.end174.while.cond_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end174.while.end186_crit_edge:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end186

while.end186:                                     ; preds = %if.end174.while.end186_crit_edge, %cleanup157, %cleanup, %while.cond.while.end186_crit_edge
  call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3110_tx_work_handler(ptr noundef %ws) #2 align 64 {
entry:
  %t.i.i77.i = alloca %struct.spi_transfer, align 4
  %m.i.i78.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i.i = alloca %struct.spi_message, align 4
  %buf.i = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %ws, i32 -116
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr i8, ptr %ws, i32 -120
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %hi3110_lock = getelementptr i8, ptr %ws, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %tx_skb = getelementptr i8, ptr %ws, i32 -8
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %ws, i32 -264
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %tx_skb.i = getelementptr i8, ptr %3, i32 2728
  %8 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then3.if.then.i_crit_edge

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then3
  %tx_busy.i = getelementptr i8, ptr %3, i32 2836
  %10 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_busy.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then3.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %12 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %9) #6
  %tx_busy3.i = getelementptr i8, ptr %3, i32 2836
  %14 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_busy3.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %if.end.i.hi3110_clean.exit_crit_edge, label %if.then5.i

if.end.i.hi3110_clean.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %net6.i = getelementptr i8, ptr %3, i32 2616
  %16 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net6.i, align 4
  tail call void @can_free_echo_skb(ptr noundef %17, i32 noundef 0, ptr noundef null) #6
  br label %hi3110_clean.exit

hi3110_clean.exit:                                ; preds = %if.then5.i, %if.end.i.hi3110_clean.exit_crit_edge
  %18 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_skb.i, align 4
  %19 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_busy3.i, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf.i)
  %buf.i.1.buf.i.1..sroa_idx27 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %22 = call ptr @memset(ptr %buf.i.1.buf.i.1..sroa_idx27, i32 255, i32 13)
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf.i, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i19 = icmp sgt i32 %25, -1
  br i1 %tobool.not.i19, label %if.else.i, label %if.then.i20

if.then.i20:                                      ; preds = %if.else
  %and2.i = lshr i32 %25, 21
  %conv.i = trunc i32 %and2.i to i8
  %26 = ptrtoint ptr %buf.i.1.buf.i.1..sroa_idx27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %buf.i.1.buf.i.1..sroa_idx27, align 1
  %shr6.i = lshr i32 %25, 13
  %and7.i = and i32 %shr6.i, 224
  %and5.i = lshr i32 %25, 15
  %and11.i = and i32 %and5.i, 7
  %or.i = or i32 %and7.i, %and11.i
  %27 = trunc i32 %or.i to i8
  %conv13.i = or i8 %27, 24
  %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 2
  %28 = ptrtoint ptr %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv13.i, ptr %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx, align 1
  %and16.i = lshr i32 %25, 7
  %conv18.i = trunc i32 %and16.i to i8
  %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 3
  %29 = ptrtoint ptr %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv18.i, ptr %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx, align 1
  %and21.i = shl i32 %25, 1
  %and23.i = lshr i32 %25, 30
  %and23.lobit.i = and i32 %and23.i, 1
  %or25.i = or i32 %and23.lobit.i, %and21.i
  %conv26.i = trunc i32 %or25.i to i8
  %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx30 = getelementptr inbounds i8, ptr %buf.i, i32 4
  %30 = ptrtoint ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx30 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26.i, ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx30, align 1
  %31 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %buf.i.5.buf.i.5.buf.5.buf.5..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 5
  %34 = ptrtoint ptr %buf.i.5.buf.i.5.buf.5.buf.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %buf.i.5.buf.i.5.buf.5.buf.5..sroa_idx, align 1
  %data.i = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 5
  %conv30.i = zext i8 %33 to i32
  %buf.i.6.buf.i.6.buf.6.buf.6..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 6
  %35 = call ptr @memcpy(ptr %buf.i.6.buf.i.6.buf.6.buf.6..sroa_idx, ptr %data.i, i32 %conv30.i)
  %sub33.i = add nuw nsw i32 %conv30.i, 6
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 18, ptr %39, align 1
  %41 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 1
  %42 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %buf.i, i32 %sub33.i)
  %add.i.i = add nuw nsw i32 %conv30.i, 7
  %43 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %44 = getelementptr inbounds i8, ptr %t.i.i.i, i32 12
  %45 = call ptr @memset(ptr %44, i32 0, i32 84)
  %spi_tx_buf.i.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %43, i32 0, i32 5
  %46 = ptrtoint ptr %spi_tx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spi_tx_buf.i.i.i, align 4
  %48 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %t.i.i.i, align 4
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 1
  %spi_rx_buf.i.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %43, i32 0, i32 6
  %49 = ptrtoint ptr %spi_rx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi_rx_buf.i.i.i, align 4
  %51 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %rx_buf.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i.i, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i.i) #6
  %53 = getelementptr inbounds i8, ptr %m.i.i.i, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 40)
  %55 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %m.i.i.i, ptr %m.i.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %m.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i.i, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %m.i.i.i, ptr noundef nonnull %m.i.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i20.spi_message_add_tail.exit.i.i.i_crit_edge

if.then.i20.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %m.i.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %m.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %m.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i.i, ptr %m.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then.i20.spi_message_add_tail.exit.i.i.i_crit_edge
  %call2.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %spi_message_add_tail.exit.i.i.i.hi3110_hw_tx_frame.exit.i_crit_edge, label %do.end.i.i.i

spi_message_add_tail.exit.i.i.i.hi3110_hw_tx_frame.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_hw_tx_frame.exit.i

do.end.i.i.i:                                     ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i.i) #9
  br label %hi3110_hw_tx_frame.exit.i

hi3110_hw_tx_frame.exit.i:                        ; preds = %do.end.i.i.i, %spi_message_add_tail.exit.i.i.i.hi3110_hw_tx_frame.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #6
  br label %hi3110_hw_tx.exit

if.else.i:                                        ; preds = %if.else
  %and35.i = lshr i32 %25, 3
  %conv37.i = trunc i32 %and35.i to i8
  %63 = ptrtoint ptr %buf.i.1.buf.i.1..sroa_idx27 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv37.i, ptr %buf.i.1.buf.i.1..sroa_idx27, align 1
  %and40.i = shl i32 %25, 5
  %and43.i = lshr i32 %25, 26
  %64 = and i32 %and43.i, 16
  %or46.i = or i32 %64, %and40.i
  %conv47.i = trunc i32 %or46.i to i8
  %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx28 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %65 = ptrtoint ptr %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx28 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv47.i, ptr %buf.i.2.buf.i.2.buf.2.buf.2..sroa_idx28, align 1
  %66 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx29 = getelementptr inbounds i8, ptr %buf.i, i32 3
  %69 = ptrtoint ptr %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx29 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %buf.i.3.buf.i.3.buf.3.buf.3..sroa_idx29, align 1
  %data52.i = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 5
  %conv54.i = zext i8 %68 to i32
  %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %70 = call ptr @memcpy(ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, ptr %data52.i, i32 %conv54.i)
  %sub58.i = add nuw nsw i32 %conv54.i, 4
  %driver_data.i.i.i79.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i79.i, align 4
  %spi_tx_buf.i80.i = getelementptr inbounds %struct.hi3110_priv, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %spi_tx_buf.i80.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %spi_tx_buf.i80.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 18, ptr %74, align 1
  %76 = load ptr, ptr %spi_tx_buf.i80.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %76, i32 1
  %77 = call ptr @memcpy(ptr %add.ptr.i81.i, ptr %buf.i, i32 %sub58.i)
  %add.i82.i = add nuw nsw i32 %conv54.i, 5
  %78 = load ptr, ptr %driver_data.i.i.i79.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i77.i) #6
  %79 = getelementptr inbounds i8, ptr %t.i.i77.i, i32 12
  %80 = call ptr @memset(ptr %79, i32 0, i32 84)
  %spi_tx_buf.i.i83.i = getelementptr inbounds %struct.hi3110_priv, ptr %78, i32 0, i32 5
  %81 = ptrtoint ptr %spi_tx_buf.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi_tx_buf.i.i83.i, align 4
  %83 = ptrtoint ptr %t.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %t.i.i77.i, align 4
  %rx_buf.i.i84.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i77.i, i32 0, i32 1
  %spi_rx_buf.i.i85.i = getelementptr inbounds %struct.hi3110_priv, ptr %78, i32 0, i32 6
  %84 = ptrtoint ptr %spi_rx_buf.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi_rx_buf.i.i85.i, align 4
  %86 = ptrtoint ptr %rx_buf.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %rx_buf.i.i84.i, align 4
  %len1.i.i86.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i77.i, i32 0, i32 2
  %87 = ptrtoint ptr %len1.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i82.i, ptr %len1.i.i86.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i78.i) #6
  %88 = getelementptr inbounds i8, ptr %m.i.i78.i, i32 8
  %89 = call ptr @memset(ptr %88, i32 0, i32 40)
  %90 = ptrtoint ptr %m.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %m.i.i78.i, ptr %m.i.i78.i, align 4
  %prev.i.i.i.i.i87.i = getelementptr inbounds %struct.list_head, ptr %m.i.i78.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %m.i.i78.i, ptr %prev.i.i.i.i.i87.i, align 4
  %resources.i.i.i.i88.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i78.i, i32 0, i32 10
  %92 = ptrtoint ptr %resources.i.i.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %resources.i.i.i.i88.i, ptr %resources.i.i.i.i88.i, align 4
  %prev.i2.i.i.i.i89.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i78.i, i32 0, i32 10, i32 1
  %93 = ptrtoint ptr %prev.i2.i.i.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %resources.i.i.i.i88.i, ptr %prev.i2.i.i.i.i89.i, align 4
  %transfer_list.i.i.i90.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i77.i, i32 0, i32 18
  %call.i.i.i.i.i91.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i90.i, ptr noundef nonnull %m.i.i78.i, ptr noundef nonnull %m.i.i78.i) #6
  br i1 %call.i.i.i.i.i91.i, label %if.end.i.i.i.i.i93.i, label %if.else.i.spi_message_add_tail.exit.i.i96.i_crit_edge

if.else.i.spi_message_add_tail.exit.i.i96.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i96.i

if.end.i.i.i.i.i93.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %prev.i.i.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %transfer_list.i.i.i90.i, ptr %prev.i.i.i.i.i87.i, align 4
  %95 = ptrtoint ptr %transfer_list.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %m.i.i78.i, ptr %transfer_list.i.i.i90.i, align 4
  %prev3.i.i.i.i.i92.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i77.i, i32 0, i32 18, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %m.i.i78.i, ptr %prev3.i.i.i.i.i92.i, align 4
  %97 = ptrtoint ptr %m.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %transfer_list.i.i.i90.i, ptr %m.i.i78.i, align 4
  br label %spi_message_add_tail.exit.i.i96.i

spi_message_add_tail.exit.i.i96.i:                ; preds = %if.end.i.i.i.i.i93.i, %if.else.i.spi_message_add_tail.exit.i.i96.i_crit_edge
  %call2.i.i94.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i78.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i94.i)
  %tobool.not.i.i95.i = icmp eq i32 %call2.i.i94.i, 0
  br i1 %tobool.not.i.i95.i, label %spi_message_add_tail.exit.i.i96.i.hi3110_hw_tx_frame.exit98.i_crit_edge, label %do.end.i.i97.i

spi_message_add_tail.exit.i.i96.i.hi3110_hw_tx_frame.exit98.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_hw_tx_frame.exit98.i

do.end.i.i97.i:                                   ; preds = %spi_message_add_tail.exit.i.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i94.i) #9
  br label %hi3110_hw_tx_frame.exit98.i

hi3110_hw_tx_frame.exit98.i:                      ; preds = %do.end.i.i97.i, %spi_message_add_tail.exit.i.i96.i.hi3110_hw_tx_frame.exit98.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i78.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i77.i) #6
  br label %hi3110_hw_tx.exit

hi3110_hw_tx.exit:                                ; preds = %hi3110_hw_tx_frame.exit98.i, %hi3110_hw_tx_frame.exit.i
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf.i)
  %tx_busy = getelementptr i8, ptr %ws, i32 100
  %98 = ptrtoint ptr %tx_busy to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %tx_busy, align 4
  %99 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_skb, align 4
  %call = call i32 @can_put_echo_skb(ptr noundef %100, ptr noundef %3, i32 noundef 0, i32 noundef 0) #6
  %101 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end7

if.end7:                                          ; preds = %hi3110_hw_tx.exit, %hi3110_clean.exit, %entry.if.end7_crit_edge
  call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3110_restart_work_handler(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %ws, i32 -160
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %net2 = getelementptr i8, ptr %ws, i32 -164
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %hi3110_lock = getelementptr i8, ptr %ws, i32 -152
  tail call void @mutex_lock_nested(ptr noundef %hi3110_lock, i32 noundef 0) #6
  %after_suspend = getelementptr i8, ptr %ws, i32 48
  %4 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %after_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @hi3110_hw_reset(ptr noundef %1)
  tail call fastcc void @hi3110_do_set_bittiming(ptr noundef %3) #6
  %6 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %after_suspend, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call fastcc i32 @hi3110_set_normal_mode(ptr noundef %1)
  br label %if.end14

if.else:                                          ; preds = %if.then
  %and9 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  tail call void @netif_device_attach(ptr noundef %3) #6
  %tx_skb.i = getelementptr i8, ptr %3, i32 2728
  %8 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then11.if.then.i_crit_edge

if.then11.if.then.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then11
  %tx_busy.i = getelementptr i8, ptr %3, i32 2836
  %10 = ptrtoint ptr %tx_busy.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_busy.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then11.if.then.i_crit_edge
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %12 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  tail call void @consume_skb(ptr noundef %9) #6
  %tx_busy3.i = getelementptr i8, ptr %3, i32 2836
  %14 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_busy3.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %if.end.i.hi3110_clean.exit_crit_edge, label %if.then5.i

if.end.i.hi3110_clean.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_clean.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %net6.i = getelementptr i8, ptr %3, i32 2616
  %16 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net6.i, align 4
  tail call void @can_free_echo_skb(ptr noundef %17, i32 noundef 0, ptr noundef null) #6
  br label %hi3110_clean.exit

hi3110_clean.exit:                                ; preds = %if.then5.i, %if.end.i.hi3110_clean.exit_crit_edge
  %18 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_skb.i, align 4
  %19 = ptrtoint ptr %tx_busy3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_busy3.i, align 4
  %call12 = tail call fastcc i32 @hi3110_set_normal_mode(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #6
  br label %if.end14

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @hi3110_hw_sleep(ptr noundef %1)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %hi3110_clean.exit, %if.then6
  %22 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %after_suspend, align 4
  %force_quit = getelementptr i8, ptr %ws, i32 44
  %23 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %force_quit, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  %restart_tx = getelementptr i8, ptr %ws, i32 52
  %24 = ptrtoint ptr %restart_tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %restart_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %if.then18

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %26 = ptrtoint ptr %restart_tx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %restart_tx, align 4
  %call20 = tail call fastcc i32 @hi3110_hw_reset(ptr noundef %1)
  tail call fastcc void @hi3110_do_set_bittiming(ptr noundef %3) #6
  %tx_skb.i46 = getelementptr i8, ptr %3, i32 2728
  %27 = ptrtoint ptr %tx_skb.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_skb.i46, align 4
  %tobool.not.i47 = icmp eq ptr %28, null
  br i1 %tobool.not.i47, label %lor.lhs.false.i50, label %if.then18.if.then.i53_crit_edge

if.then18.if.then.i53_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i53

lor.lhs.false.i50:                                ; preds = %if.then18
  %tx_busy.i48 = getelementptr i8, ptr %3, i32 2836
  %29 = ptrtoint ptr %tx_busy.i48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_busy.i48, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i49 = icmp eq i8 %30, 0
  br i1 %tobool1.not.i49, label %lor.lhs.false.i50.if.end.i56_crit_edge, label %lor.lhs.false.i50.if.then.i53_crit_edge

lor.lhs.false.i50.if.then.i53_crit_edge:          ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i53

lor.lhs.false.i50.if.end.i56_crit_edge:           ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i56

if.then.i53:                                      ; preds = %lor.lhs.false.i50.if.then.i53_crit_edge, %if.then18.if.then.i53_crit_edge
  %tx_errors.i51 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %31 = ptrtoint ptr %tx_errors.i51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_errors.i51, align 4
  %inc.i52 = add i32 %32, 1
  store i32 %inc.i52, ptr %tx_errors.i51, align 4
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i53, %lor.lhs.false.i50.if.end.i56_crit_edge
  tail call void @consume_skb(ptr noundef %28) #6
  %tx_busy3.i54 = getelementptr i8, ptr %3, i32 2836
  %33 = ptrtoint ptr %tx_busy3.i54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_busy3.i54, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool4.not.i55 = icmp eq i8 %34, 0
  br i1 %tobool4.not.i55, label %if.end.i56.hi3110_clean.exit59_crit_edge, label %if.then5.i58

if.end.i56.hi3110_clean.exit59_crit_edge:         ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_clean.exit59

if.then5.i58:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  %net6.i57 = getelementptr i8, ptr %3, i32 2616
  %35 = ptrtoint ptr %net6.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net6.i57, align 4
  tail call void @can_free_echo_skb(ptr noundef %36, i32 noundef 0, ptr noundef null) #6
  br label %hi3110_clean.exit59

hi3110_clean.exit59:                              ; preds = %if.then5.i58, %if.end.i56.hi3110_clean.exit59_crit_edge
  %37 = ptrtoint ptr %tx_skb.i46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tx_skb.i46, align 4
  %38 = ptrtoint ptr %tx_busy3.i54 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %tx_busy3.i54, align 4
  %call22 = tail call fastcc i32 @hi3110_set_normal_mode(ptr noundef %1)
  %_tx.i.i60 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i60, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %40) #6
  br label %if.end23

if.end23:                                         ; preds = %hi3110_clean.exit59, %if.end16.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %hi3110_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3110_hw_reset(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %t.i.i17 = alloca %struct.spi_transfer, align 4
  %m.i.i18 = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  %call = tail call fastcc i32 @hi3110_cmd(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.body6.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body6.preheader:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi_tx_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -46, ptr %23, align 1
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %26 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %27 = call ptr @memset(ptr %26, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %30 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %25, i32 0, i32 6
  %31 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %33 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %35 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.body6.preheader.spi_message_add_tail.exit.i.i_crit_edge

while.body6.preheader.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %while.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %while.body6.preheader.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %21, i32 0, i32 6
  %45 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx2.i, align 1
  %49 = and i8 %48, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %49)
  %cmp.not = icmp eq i8 %49, -128
  br i1 %cmp.not, label %if.end11, label %hi3110_read.exit.cleanup_crit_edge

hi3110_read.exit.cleanup_crit_edge:               ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %hi3110_read.exit
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i20 = getelementptr inbounds %struct.hi3110_priv, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %spi_tx_buf.i20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi_tx_buf.i20, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -36, ptr %53, align 1
  %55 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i17) #6
  %56 = getelementptr inbounds i8, ptr %t.i.i17, i32 12
  %57 = call ptr @memset(ptr %56, i32 0, i32 84)
  %spi_tx_buf.i.i21 = getelementptr inbounds %struct.hi3110_priv, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %spi_tx_buf.i.i21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi_tx_buf.i.i21, align 4
  %60 = ptrtoint ptr %t.i.i17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %t.i.i17, align 4
  %rx_buf.i.i22 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 1
  %spi_rx_buf.i.i23 = getelementptr inbounds %struct.hi3110_priv, ptr %55, i32 0, i32 6
  %61 = ptrtoint ptr %spi_rx_buf.i.i23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi_rx_buf.i.i23, align 4
  %63 = ptrtoint ptr %rx_buf.i.i22 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %rx_buf.i.i22, align 4
  %len1.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 2
  %64 = ptrtoint ptr %len1.i.i24 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %len1.i.i24, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i18) #6
  %65 = getelementptr inbounds i8, ptr %m.i.i18, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %m.i.i18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %m.i.i18, ptr %m.i.i18, align 4
  %prev.i.i.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %m.i.i18, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %m.i.i18, ptr %prev.i.i.i.i.i25, align 4
  %resources.i.i.i.i26 = getelementptr inbounds %struct.spi_message, ptr %m.i.i18, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i26, ptr %resources.i.i.i.i26, align 4
  %prev.i2.i.i.i.i27 = getelementptr inbounds %struct.spi_message, ptr %m.i.i18, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i26, ptr %prev.i2.i.i.i.i27, align 4
  %transfer_list.i.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18
  %call.i.i.i.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i28, ptr noundef nonnull %m.i.i18, ptr noundef nonnull %m.i.i18) #6
  br i1 %call.i.i.i.i.i29, label %if.end.i.i.i.i.i31, label %if.end11.spi_message_add_tail.exit.i.i34_crit_edge

if.end11.spi_message_add_tail.exit.i.i34_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i34

if.end.i.i.i.i.i31:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %prev.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i.i.i28, ptr %prev.i.i.i.i.i25, align 4
  %72 = ptrtoint ptr %transfer_list.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %m.i.i18, ptr %transfer_list.i.i.i28, align 4
  %prev3.i.i.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %m.i.i18, ptr %prev3.i.i.i.i.i30, align 4
  %74 = ptrtoint ptr %m.i.i18 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i.i.i28, ptr %m.i.i18, align 4
  br label %spi_message_add_tail.exit.i.i34

spi_message_add_tail.exit.i.i34:                  ; preds = %if.end.i.i.i.i.i31, %if.end11.spi_message_add_tail.exit.i.i34_crit_edge
  %call2.i.i32 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call2.i.i32, 0
  br i1 %tobool.not.i.i33, label %spi_message_add_tail.exit.i.i34.hi3110_read.exit38_crit_edge, label %do.end.i.i35

spi_message_add_tail.exit.i.i34.hi3110_read.exit38_crit_edge: ; preds = %spi_message_add_tail.exit.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit38

do.end.i.i35:                                     ; preds = %spi_message_add_tail.exit.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i32) #9
  br label %hi3110_read.exit38

hi3110_read.exit38:                               ; preds = %do.end.i.i35, %spi_message_add_tail.exit.i.i34.hi3110_read.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i18) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i17) #6
  br label %cleanup

cleanup:                                          ; preds = %hi3110_read.exit38, %hi3110_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hi3110_read.exit38 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %hi3110_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3110_set_normal_mode(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %t.i.i67 = alloca %struct.spi_transfer, align 4
  %m.i.i68 = alloca %struct.spi_message, align 4
  %t.i.i46 = alloca %struct.spi_transfer, align 4
  %m.i.i47 = alloca %struct.spi_message, align 4
  %t.i.i25 = alloca %struct.spi_transfer, align 4
  %m.i.i26 = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 28, ptr %3, align 1
  %5 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 112, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %15 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %17 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_write.exit

hi3110_write.exit:                                ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i28 = getelementptr inbounds %struct.hi3110_priv, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %spi_tx_buf.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi_tx_buf.i28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 22, ptr %30, align 1
  %32 = load ptr, ptr %spi_tx_buf.i28, align 4
  %arrayidx2.i29 = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx2.i29 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -128, ptr %arrayidx2.i29, align 1
  %34 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i25) #6
  %35 = getelementptr inbounds i8, ptr %t.i.i25, i32 12
  %36 = call ptr @memset(ptr %35, i32 0, i32 84)
  %spi_tx_buf.i.i30 = getelementptr inbounds %struct.hi3110_priv, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %spi_tx_buf.i.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi_tx_buf.i.i30, align 4
  %39 = ptrtoint ptr %t.i.i25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %t.i.i25, align 4
  %rx_buf.i.i31 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i25, i32 0, i32 1
  %spi_rx_buf.i.i32 = getelementptr inbounds %struct.hi3110_priv, ptr %34, i32 0, i32 6
  %40 = ptrtoint ptr %spi_rx_buf.i.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi_rx_buf.i.i32, align 4
  %42 = ptrtoint ptr %rx_buf.i.i31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %rx_buf.i.i31, align 4
  %len1.i.i33 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i25, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i.i33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len1.i.i33, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i26) #6
  %44 = getelementptr inbounds i8, ptr %m.i.i26, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %m.i.i26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %m.i.i26, ptr %m.i.i26, align 4
  %prev.i.i.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %m.i.i26, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m.i.i26, ptr %prev.i.i.i.i.i34, align 4
  %resources.i.i.i.i35 = getelementptr inbounds %struct.spi_message, ptr %m.i.i26, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i35, ptr %resources.i.i.i.i35, align 4
  %prev.i2.i.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %m.i.i26, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i35, ptr %prev.i2.i.i.i.i36, align 4
  %transfer_list.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i25, i32 0, i32 18
  %call.i.i.i.i.i38 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i37, ptr noundef nonnull %m.i.i26, ptr noundef nonnull %m.i.i26) #6
  br i1 %call.i.i.i.i.i38, label %if.end.i.i.i.i.i40, label %hi3110_write.exit.spi_message_add_tail.exit.i.i43_crit_edge

hi3110_write.exit.spi_message_add_tail.exit.i.i43_crit_edge: ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i43

if.end.i.i.i.i.i40:                               ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %prev.i.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i37, ptr %prev.i.i.i.i.i34, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %m.i.i26, ptr %transfer_list.i.i.i37, align 4
  %prev3.i.i.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i25, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %m.i.i26, ptr %prev3.i.i.i.i.i39, align 4
  %53 = ptrtoint ptr %m.i.i26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i37, ptr %m.i.i26, align 4
  br label %spi_message_add_tail.exit.i.i43

spi_message_add_tail.exit.i.i43:                  ; preds = %if.end.i.i.i.i.i40, %hi3110_write.exit.spi_message_add_tail.exit.i.i43_crit_edge
  %call2.i.i41 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %call2.i.i41, 0
  br i1 %tobool.not.i.i42, label %spi_message_add_tail.exit.i.i43.hi3110_write.exit45_crit_edge, label %do.end.i.i44

spi_message_add_tail.exit.i.i43.hi3110_write.exit45_crit_edge: ; preds = %spi_message_add_tail.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit45

do.end.i.i44:                                     ; preds = %spi_message_add_tail.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i41) #9
  br label %hi3110_write.exit45

hi3110_write.exit45:                              ; preds = %do.end.i.i44, %spi_message_add_tail.exit.i.i43.hi3110_write.exit45_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i26) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i25) #6
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 22
  %54 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %56 = trunc i32 %55 to i8
  %57 = shl i8 %56, 5
  %58 = and i8 %57, 64
  %reg.0 = select i1 %tobool.not, i8 %58, i8 32
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i49 = getelementptr inbounds %struct.hi3110_priv, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %spi_tx_buf.i49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi_tx_buf.i49, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 20, ptr %62, align 1
  %64 = load ptr, ptr %spi_tx_buf.i49, align 4
  %arrayidx2.i50 = getelementptr i8, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx2.i50 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %reg.0, ptr %arrayidx2.i50, align 1
  %66 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i46) #6
  %67 = getelementptr inbounds i8, ptr %t.i.i46, i32 12
  %68 = call ptr @memset(ptr %67, i32 0, i32 84)
  %spi_tx_buf.i.i51 = getelementptr inbounds %struct.hi3110_priv, ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %spi_tx_buf.i.i51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi_tx_buf.i.i51, align 4
  %71 = ptrtoint ptr %t.i.i46 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %t.i.i46, align 4
  %rx_buf.i.i52 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 1
  %spi_rx_buf.i.i53 = getelementptr inbounds %struct.hi3110_priv, ptr %66, i32 0, i32 6
  %72 = ptrtoint ptr %spi_rx_buf.i.i53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spi_rx_buf.i.i53, align 4
  %74 = ptrtoint ptr %rx_buf.i.i52 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %rx_buf.i.i52, align 4
  %len1.i.i54 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 2
  %75 = ptrtoint ptr %len1.i.i54 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %len1.i.i54, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i47) #6
  %76 = getelementptr inbounds i8, ptr %m.i.i47, i32 8
  %77 = call ptr @memset(ptr %76, i32 0, i32 40)
  %78 = ptrtoint ptr %m.i.i47 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %m.i.i47, ptr %m.i.i47, align 4
  %prev.i.i.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %m.i.i47, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %m.i.i47, ptr %prev.i.i.i.i.i55, align 4
  %resources.i.i.i.i56 = getelementptr inbounds %struct.spi_message, ptr %m.i.i47, i32 0, i32 10
  %80 = ptrtoint ptr %resources.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %resources.i.i.i.i56, ptr %resources.i.i.i.i56, align 4
  %prev.i2.i.i.i.i57 = getelementptr inbounds %struct.spi_message, ptr %m.i.i47, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %prev.i2.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %resources.i.i.i.i56, ptr %prev.i2.i.i.i.i57, align 4
  %transfer_list.i.i.i58 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 18
  %call.i.i.i.i.i59 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i58, ptr noundef nonnull %m.i.i47, ptr noundef nonnull %m.i.i47) #6
  br i1 %call.i.i.i.i.i59, label %if.end.i.i.i.i.i61, label %hi3110_write.exit45.spi_message_add_tail.exit.i.i64_crit_edge

hi3110_write.exit45.spi_message_add_tail.exit.i.i64_crit_edge: ; preds = %hi3110_write.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i64

if.end.i.i.i.i.i61:                               ; preds = %hi3110_write.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %prev.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i.i58, ptr %prev.i.i.i.i.i55, align 4
  %83 = ptrtoint ptr %transfer_list.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %m.i.i47, ptr %transfer_list.i.i.i58, align 4
  %prev3.i.i.i.i.i60 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %m.i.i47, ptr %prev3.i.i.i.i.i60, align 4
  %85 = ptrtoint ptr %m.i.i47 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i.i58, ptr %m.i.i47, align 4
  br label %spi_message_add_tail.exit.i.i64

spi_message_add_tail.exit.i.i64:                  ; preds = %if.end.i.i.i.i.i61, %hi3110_write.exit45.spi_message_add_tail.exit.i.i64_crit_edge
  %call2.i.i62 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %call2.i.i62, 0
  br i1 %tobool.not.i.i63, label %spi_message_add_tail.exit.i.i64.hi3110_write.exit66_crit_edge, label %do.end.i.i65

spi_message_add_tail.exit.i.i64.hi3110_write.exit66_crit_edge: ; preds = %spi_message_add_tail.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit66

do.end.i.i65:                                     ; preds = %spi_message_add_tail.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i62) #9
  br label %hi3110_write.exit66

hi3110_write.exit66:                              ; preds = %do.end.i.i65, %spi_message_add_tail.exit.i.i64.hi3110_write.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i47) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i46) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #6
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf.i70 = getelementptr inbounds %struct.hi3110_priv, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %spi_tx_buf.i70 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %spi_tx_buf.i70, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -46, ptr %99, align 1
  %101 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i67) #6
  %102 = getelementptr inbounds i8, ptr %t.i.i67, i32 12
  %103 = call ptr @memset(ptr %102, i32 0, i32 84)
  %spi_tx_buf.i.i71 = getelementptr inbounds %struct.hi3110_priv, ptr %101, i32 0, i32 5
  %104 = ptrtoint ptr %spi_tx_buf.i.i71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %spi_tx_buf.i.i71, align 4
  %106 = ptrtoint ptr %t.i.i67 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %t.i.i67, align 4
  %rx_buf.i.i72 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67, i32 0, i32 1
  %spi_rx_buf.i.i73 = getelementptr inbounds %struct.hi3110_priv, ptr %101, i32 0, i32 6
  %107 = ptrtoint ptr %spi_rx_buf.i.i73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi_rx_buf.i.i73, align 4
  %109 = ptrtoint ptr %rx_buf.i.i72 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %rx_buf.i.i72, align 4
  %len1.i.i74 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67, i32 0, i32 2
  %110 = ptrtoint ptr %len1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %len1.i.i74, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i68) #6
  %111 = getelementptr inbounds i8, ptr %m.i.i68, i32 8
  %112 = call ptr @memset(ptr %111, i32 0, i32 40)
  %113 = ptrtoint ptr %m.i.i68 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %m.i.i68, ptr %m.i.i68, align 4
  %prev.i.i.i.i.i75 = getelementptr inbounds %struct.list_head, ptr %m.i.i68, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %m.i.i68, ptr %prev.i.i.i.i.i75, align 4
  %resources.i.i.i.i76 = getelementptr inbounds %struct.spi_message, ptr %m.i.i68, i32 0, i32 10
  %115 = ptrtoint ptr %resources.i.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %resources.i.i.i.i76, ptr %resources.i.i.i.i76, align 4
  %prev.i2.i.i.i.i77 = getelementptr inbounds %struct.spi_message, ptr %m.i.i68, i32 0, i32 10, i32 1
  %116 = ptrtoint ptr %prev.i2.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %resources.i.i.i.i76, ptr %prev.i2.i.i.i.i77, align 4
  %transfer_list.i.i.i78 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67, i32 0, i32 18
  %call.i.i.i.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i78, ptr noundef nonnull %m.i.i68, ptr noundef nonnull %m.i.i68) #6
  br i1 %call.i.i.i.i.i79, label %if.end.i.i.i.i.i81, label %hi3110_write.exit66.spi_message_add_tail.exit.i.i84_crit_edge

hi3110_write.exit66.spi_message_add_tail.exit.i.i84_crit_edge: ; preds = %hi3110_write.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i84

if.end.i.i.i.i.i81:                               ; preds = %hi3110_write.exit66
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %prev.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %transfer_list.i.i.i78, ptr %prev.i.i.i.i.i75, align 4
  %118 = ptrtoint ptr %transfer_list.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %m.i.i68, ptr %transfer_list.i.i.i78, align 4
  %prev3.i.i.i.i.i80 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i67, i32 0, i32 18, i32 1
  %119 = ptrtoint ptr %prev3.i.i.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %m.i.i68, ptr %prev3.i.i.i.i.i80, align 4
  %120 = ptrtoint ptr %m.i.i68 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %transfer_list.i.i.i78, ptr %m.i.i68, align 4
  br label %spi_message_add_tail.exit.i.i84

spi_message_add_tail.exit.i.i84:                  ; preds = %if.end.i.i.i.i.i81, %hi3110_write.exit66.spi_message_add_tail.exit.i.i84_crit_edge
  %call2.i.i82 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i.i68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %call2.i.i82, 0
  br i1 %tobool.not.i.i83, label %spi_message_add_tail.exit.i.i84.hi3110_read.exit_crit_edge, label %do.end.i.i85

spi_message_add_tail.exit.i.i84.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i85:                                     ; preds = %spi_message_add_tail.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i82) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i85, %spi_message_add_tail.exit.i.i84.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i68) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i67) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %97, i32 0, i32 6
  %121 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i86 = getelementptr i8, ptr %122, i32 1
  %123 = ptrtoint ptr %arrayidx2.i86 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx2.i86, align 1
  %conv = zext i8 %124 to i32
  %and10 = and i32 %conv, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %conv)
  %cmp.not = icmp eq i32 %and10, %conv
  br i1 %cmp.not, label %if.end14, label %hi3110_read.exit.cleanup_crit_edge

hi3110_read.exit.cleanup_crit_edge:               ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.can_priv, ptr %1, i32 0, i32 21
  %125 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %hi3110_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -16, %hi3110_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hi3110_cmd(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %t.i = alloca %struct.spi_transfer, align 4
  %m.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_tx_buf = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_tx_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 86, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi3110_cmd.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hi3110_cmd, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !102

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi3110_cmd.__UNIQUE_ID_ddebug463, ptr noundef %spi, ptr noundef nonnull @.str.25, i32 noundef 86) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i, i32 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 84)
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_tx_buf.i, align 4
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %t.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_rx_buf.i, align 4
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #6
  %16 = getelementptr inbounds i8, ptr %m.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.spi_message_add_tail.exit.i_crit_edge

do.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %do.end.spi_message_add_tail.exit.i_crit_edge
  %call2.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %m.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit.i.hi3110_spi_trans.exit_crit_edge, label %do.end.i

spi_message_add_tail.exit.i.hi3110_spi_trans.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_spi_trans.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %call2.i) #9
  br label %hi3110_spi_trans.exit

hi3110_spi_trans.exit:                            ; preds = %do.end.i, %spi_message_add_tail.exit.i.hi3110_spi_trans.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hi3110_do_set_bittiming(ptr nocapture noundef readonly %net) unnamed_addr #2 align 64 {
entry:
  %t.i.i42 = alloca %struct.spi_transfer, align 4
  %m.i.i43 = alloca %struct.spi_message, align 4
  %t.i.i22 = alloca %struct.spi_transfer, align 4
  %m.i.i23 = alloca %struct.spi_message, align 4
  %t.i.i1 = alloca %struct.spi_transfer, align 4
  %m.i.i2 = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %m.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr i8, ptr %net, i32 2620
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %sjw = getelementptr i8, ptr %net, i32 2364
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %sub = shl i32 %3, 6
  %shl = add i32 %sub, 192
  %brp = getelementptr i8, ptr %net, i32 2368
  %4 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brp, align 4
  %sub2 = add i32 %5, 255
  %or = or i32 %shl, %sub2
  %conv = trunc i32 %or to i8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %spi_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_tx_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 24, ptr %9, align 1
  %11 = load ptr, ptr %spi_tx_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx2.i, align 1
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %15 = call ptr @memset(ptr %14, i32 0, i32 84)
  %spi_tx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %spi_tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi_tx_buf.i.i, align 4
  %18 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %spi_rx_buf.i.i = getelementptr inbounds %struct.hi3110_priv, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %spi_rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi_rx_buf.i.i, align 4
  %21 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i) #6
  %23 = getelementptr inbounds i8, ptr %m.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %m.i.i, ptr %m.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %m.i.i, ptr noundef nonnull %m.i.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m.i.i, ptr %prev3.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %m.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i, ptr %m.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %call2.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge, label %do.end.i.i

spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit

do.end.i.i:                                       ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #9
  br label %hi3110_write.exit

hi3110_write.exit:                                ; preds = %do.end.i.i, %spi_message_add_tail.exit.i.i.hi3110_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %ctrlmode = getelementptr i8, ptr %net, i32 2476
  %33 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrlmode, align 4
  %and = shl i32 %34, 5
  %35 = and i32 %and, 128
  %phase_seg1 = getelementptr i8, ptr %net, i32 2356
  %36 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phase_seg1, align 4
  %prop_seg = getelementptr i8, ptr %net, i32 2352
  %38 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prop_seg, align 4
  %add = add i32 %37, 255
  %sub5 = add i32 %add, %39
  %or7 = or i32 %sub5, %35
  %phase_seg2 = getelementptr i8, ptr %net, i32 2360
  %40 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phase_seg2, align 4
  %sub8 = shl i32 %41, 4
  %shl9 = add i32 %sub8, 240
  %or10 = or i32 %or7, %shl9
  %conv11 = trunc i32 %or10 to i8
  %42 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i4 = getelementptr inbounds %struct.hi3110_priv, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %spi_tx_buf.i4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spi_tx_buf.i4, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 26, ptr %45, align 1
  %47 = load ptr, ptr %spi_tx_buf.i4, align 4
  %arrayidx2.i5 = getelementptr i8, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv11, ptr %arrayidx2.i5, align 1
  %49 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i1) #6
  %50 = getelementptr inbounds i8, ptr %t.i.i1, i32 12
  %51 = call ptr @memset(ptr %50, i32 0, i32 84)
  %spi_tx_buf.i.i6 = getelementptr inbounds %struct.hi3110_priv, ptr %49, i32 0, i32 5
  %52 = ptrtoint ptr %spi_tx_buf.i.i6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi_tx_buf.i.i6, align 4
  %54 = ptrtoint ptr %t.i.i1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %t.i.i1, align 4
  %rx_buf.i.i7 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i1, i32 0, i32 1
  %spi_rx_buf.i.i8 = getelementptr inbounds %struct.hi3110_priv, ptr %49, i32 0, i32 6
  %55 = ptrtoint ptr %spi_rx_buf.i.i8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi_rx_buf.i.i8, align 4
  %57 = ptrtoint ptr %rx_buf.i.i7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %rx_buf.i.i7, align 4
  %len1.i.i9 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i1, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len1.i.i9, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i2) #6
  %59 = getelementptr inbounds i8, ptr %m.i.i2, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %m.i.i2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %m.i.i2, ptr %m.i.i2, align 4
  %prev.i.i.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %m.i.i2, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %m.i.i2, ptr %prev.i.i.i.i.i10, align 4
  %resources.i.i.i.i11 = getelementptr inbounds %struct.spi_message, ptr %m.i.i2, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i11, ptr %resources.i.i.i.i11, align 4
  %prev.i2.i.i.i.i12 = getelementptr inbounds %struct.spi_message, ptr %m.i.i2, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i11, ptr %prev.i2.i.i.i.i12, align 4
  %transfer_list.i.i.i13 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i1, i32 0, i32 18
  %call.i.i.i.i.i14 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i13, ptr noundef nonnull %m.i.i2, ptr noundef nonnull %m.i.i2) #6
  br i1 %call.i.i.i.i.i14, label %if.end.i.i.i.i.i16, label %hi3110_write.exit.spi_message_add_tail.exit.i.i19_crit_edge

hi3110_write.exit.spi_message_add_tail.exit.i.i19_crit_edge: ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i19

if.end.i.i.i.i.i16:                               ; preds = %hi3110_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %prev.i.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i13, ptr %prev.i.i.i.i.i10, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %m.i.i2, ptr %transfer_list.i.i.i13, align 4
  %prev3.i.i.i.i.i15 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i1, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %m.i.i2, ptr %prev3.i.i.i.i.i15, align 4
  %68 = ptrtoint ptr %m.i.i2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i13, ptr %m.i.i2, align 4
  br label %spi_message_add_tail.exit.i.i19

spi_message_add_tail.exit.i.i19:                  ; preds = %if.end.i.i.i.i.i16, %hi3110_write.exit.spi_message_add_tail.exit.i.i19_crit_edge
  %call2.i.i17 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %call2.i.i17, 0
  br i1 %tobool.not.i.i18, label %spi_message_add_tail.exit.i.i19.hi3110_write.exit21_crit_edge, label %do.end.i.i20

spi_message_add_tail.exit.i.i19.hi3110_write.exit21_crit_edge: ; preds = %spi_message_add_tail.exit.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_write.exit21

do.end.i.i20:                                     ; preds = %spi_message_add_tail.exit.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i17) #9
  br label %hi3110_write.exit21

hi3110_write.exit21:                              ; preds = %do.end.i.i20, %spi_message_add_tail.exit.i.i19.hi3110_write.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i2) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi3110_do_set_bittiming.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hi3110_do_set_bittiming, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !102

if.then:                                          ; preds = %hi3110_write.exit21
  %69 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i25 = getelementptr inbounds %struct.hi3110_priv, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %spi_tx_buf.i25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi_tx_buf.i25, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -42, ptr %72, align 1
  %74 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i22) #6
  %75 = getelementptr inbounds i8, ptr %t.i.i22, i32 12
  %76 = call ptr @memset(ptr %75, i32 0, i32 84)
  %spi_tx_buf.i.i26 = getelementptr inbounds %struct.hi3110_priv, ptr %74, i32 0, i32 5
  %77 = ptrtoint ptr %spi_tx_buf.i.i26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spi_tx_buf.i.i26, align 4
  %79 = ptrtoint ptr %t.i.i22 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %t.i.i22, align 4
  %rx_buf.i.i27 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 1
  %spi_rx_buf.i.i28 = getelementptr inbounds %struct.hi3110_priv, ptr %74, i32 0, i32 6
  %80 = ptrtoint ptr %spi_rx_buf.i.i28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %spi_rx_buf.i.i28, align 4
  %82 = ptrtoint ptr %rx_buf.i.i27 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %rx_buf.i.i27, align 4
  %len1.i.i29 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 2
  %83 = ptrtoint ptr %len1.i.i29 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %len1.i.i29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i23) #6
  %84 = getelementptr inbounds i8, ptr %m.i.i23, i32 8
  %85 = call ptr @memset(ptr %84, i32 0, i32 40)
  %86 = ptrtoint ptr %m.i.i23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %m.i.i23, ptr %m.i.i23, align 4
  %prev.i.i.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %m.i.i23, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %m.i.i23, ptr %prev.i.i.i.i.i30, align 4
  %resources.i.i.i.i31 = getelementptr inbounds %struct.spi_message, ptr %m.i.i23, i32 0, i32 10
  %88 = ptrtoint ptr %resources.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %resources.i.i.i.i31, ptr %resources.i.i.i.i31, align 4
  %prev.i2.i.i.i.i32 = getelementptr inbounds %struct.spi_message, ptr %m.i.i23, i32 0, i32 10, i32 1
  %89 = ptrtoint ptr %prev.i2.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %resources.i.i.i.i31, ptr %prev.i2.i.i.i.i32, align 4
  %transfer_list.i.i.i33 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 18
  %call.i.i.i.i.i34 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i33, ptr noundef nonnull %m.i.i23, ptr noundef nonnull %m.i.i23) #6
  br i1 %call.i.i.i.i.i34, label %if.end.i.i.i.i.i36, label %if.then.spi_message_add_tail.exit.i.i39_crit_edge

if.then.spi_message_add_tail.exit.i.i39_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i39

if.end.i.i.i.i.i36:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %prev.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %transfer_list.i.i.i33, ptr %prev.i.i.i.i.i30, align 4
  %91 = ptrtoint ptr %transfer_list.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %m.i.i23, ptr %transfer_list.i.i.i33, align 4
  %prev3.i.i.i.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22, i32 0, i32 18, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %m.i.i23, ptr %prev3.i.i.i.i.i35, align 4
  %93 = ptrtoint ptr %m.i.i23 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %transfer_list.i.i.i33, ptr %m.i.i23, align 4
  br label %spi_message_add_tail.exit.i.i39

spi_message_add_tail.exit.i.i39:                  ; preds = %if.end.i.i.i.i.i36, %if.then.spi_message_add_tail.exit.i.i39_crit_edge
  %call2.i.i37 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %call2.i.i37, 0
  br i1 %tobool.not.i.i38, label %spi_message_add_tail.exit.i.i39.hi3110_read.exit_crit_edge, label %do.end.i.i40

spi_message_add_tail.exit.i.i39.hi3110_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit

do.end.i.i40:                                     ; preds = %spi_message_add_tail.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i37) #9
  br label %hi3110_read.exit

hi3110_read.exit:                                 ; preds = %do.end.i.i40, %spi_message_add_tail.exit.i.i39.hi3110_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i23) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i22) #6
  %spi_rx_buf.i = getelementptr inbounds %struct.hi3110_priv, ptr %70, i32 0, i32 6
  %94 = ptrtoint ptr %spi_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spi_rx_buf.i, align 4
  %arrayidx2.i41 = getelementptr i8, ptr %95, i32 1
  %96 = ptrtoint ptr %arrayidx2.i41 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx2.i41, align 1
  %conv18 = zext i8 %97 to i32
  %98 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data.i.i.i, align 4
  %spi_tx_buf.i45 = getelementptr inbounds %struct.hi3110_priv, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %spi_tx_buf.i45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spi_tx_buf.i45, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -40, ptr %101, align 1
  %103 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i42) #6
  %104 = getelementptr inbounds i8, ptr %t.i.i42, i32 12
  %105 = call ptr @memset(ptr %104, i32 0, i32 84)
  %spi_tx_buf.i.i46 = getelementptr inbounds %struct.hi3110_priv, ptr %103, i32 0, i32 5
  %106 = ptrtoint ptr %spi_tx_buf.i.i46 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %spi_tx_buf.i.i46, align 4
  %108 = ptrtoint ptr %t.i.i42 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %t.i.i42, align 4
  %rx_buf.i.i47 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 1
  %spi_rx_buf.i.i48 = getelementptr inbounds %struct.hi3110_priv, ptr %103, i32 0, i32 6
  %109 = ptrtoint ptr %spi_rx_buf.i.i48 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %spi_rx_buf.i.i48, align 4
  %111 = ptrtoint ptr %rx_buf.i.i47 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %rx_buf.i.i47, align 4
  %len1.i.i49 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 2
  %112 = ptrtoint ptr %len1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %len1.i.i49, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i.i43) #6
  %113 = getelementptr inbounds i8, ptr %m.i.i43, i32 8
  %114 = call ptr @memset(ptr %113, i32 0, i32 40)
  %115 = ptrtoint ptr %m.i.i43 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %m.i.i43, ptr %m.i.i43, align 4
  %prev.i.i.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %m.i.i43, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %m.i.i43, ptr %prev.i.i.i.i.i50, align 4
  %resources.i.i.i.i51 = getelementptr inbounds %struct.spi_message, ptr %m.i.i43, i32 0, i32 10
  %117 = ptrtoint ptr %resources.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %resources.i.i.i.i51, ptr %resources.i.i.i.i51, align 4
  %prev.i2.i.i.i.i52 = getelementptr inbounds %struct.spi_message, ptr %m.i.i43, i32 0, i32 10, i32 1
  %118 = ptrtoint ptr %prev.i2.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %resources.i.i.i.i51, ptr %prev.i2.i.i.i.i52, align 4
  %transfer_list.i.i.i53 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 18
  %call.i.i.i.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i53, ptr noundef nonnull %m.i.i43, ptr noundef nonnull %m.i.i43) #6
  br i1 %call.i.i.i.i.i54, label %if.end.i.i.i.i.i56, label %hi3110_read.exit.spi_message_add_tail.exit.i.i59_crit_edge

hi3110_read.exit.spi_message_add_tail.exit.i.i59_crit_edge: ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i59

if.end.i.i.i.i.i56:                               ; preds = %hi3110_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %prev.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %transfer_list.i.i.i53, ptr %prev.i.i.i.i.i50, align 4
  %120 = ptrtoint ptr %transfer_list.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %m.i.i43, ptr %transfer_list.i.i.i53, align 4
  %prev3.i.i.i.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i42, i32 0, i32 18, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %m.i.i43, ptr %prev3.i.i.i.i.i55, align 4
  %122 = ptrtoint ptr %m.i.i43 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %transfer_list.i.i.i53, ptr %m.i.i43, align 4
  br label %spi_message_add_tail.exit.i.i59

spi_message_add_tail.exit.i.i59:                  ; preds = %if.end.i.i.i.i.i56, %hi3110_read.exit.spi_message_add_tail.exit.i.i59_crit_edge
  %call2.i.i57 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m.i.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %call2.i.i57, 0
  br i1 %tobool.not.i.i58, label %spi_message_add_tail.exit.i.i59.hi3110_read.exit63_crit_edge, label %do.end.i.i60

spi_message_add_tail.exit.i.i59.hi3110_read.exit63_crit_edge: ; preds = %spi_message_add_tail.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_read.exit63

do.end.i.i60:                                     ; preds = %spi_message_add_tail.exit.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call2.i.i57) #9
  br label %hi3110_read.exit63

hi3110_read.exit63:                               ; preds = %do.end.i.i60, %spi_message_add_tail.exit.i.i59.hi3110_read.exit63_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i.i43) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i42) #6
  %spi_rx_buf.i61 = getelementptr inbounds %struct.hi3110_priv, ptr %99, i32 0, i32 6
  %123 = ptrtoint ptr %spi_rx_buf.i61 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %spi_rx_buf.i61, align 4
  %arrayidx2.i62 = getelementptr i8, ptr %124, i32 1
  %125 = ptrtoint ptr %arrayidx2.i62 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx2.i62, align 1
  %conv20 = zext i8 %126 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hi3110_do_set_bittiming.__UNIQUE_ID_ddebug466, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %conv18, i32 noundef %conv20) #6
  br label %do.end

do.end:                                           ; preds = %hi3110_read.exit63, %hi3110_write.exit21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net2 = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  %force_quit = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #6
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %3) #6
  tail call fastcc void @hi3110_hw_sleep(ptr noundef %dev)
  %transceiver = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %cmp.i.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %10) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.then.if.end_crit_edge ], [ 1, %if.end.i ], [ 2, %entry.if.end_crit_edge ]
  %after_suspend5 = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %after_suspend5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %after_suspend5, align 4
  %power = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #6
  %after_suspend10 = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %after_suspend10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %after_suspend10, align 4
  %or = or i32 %15, 4
  store i32 %or, ptr %after_suspend10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3110_can_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %after_suspend = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %after_suspend, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %power = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @regulator_enable(ptr noundef nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %after_suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %after_suspend, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %transceiver = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transceiver, align 4
  %tobool.not.i.i19 = icmp eq ptr %9, null
  %cmp.i.i20 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i21 = or i1 %tobool.not.i.i19, %cmp.i.i20
  br i1 %spec.select.i.i21, label %if.then6.hi3110_power_enable.exit25_crit_edge, label %if.end.i22

if.then6.hi3110_power_enable.exit25_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %hi3110_power_enable.exit25

if.end.i22:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i23 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #6
  br label %hi3110_power_enable.exit25

hi3110_power_enable.exit25:                       ; preds = %if.end.i22, %if.then6.hi3110_power_enable.exit25_crit_edge
  %wq = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  %restart_work = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %restart_work) #6
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %after_suspend to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %after_suspend, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %hi3110_power_enable.exit25
  %force_quit = getelementptr inbounds %struct.hi3110_priv, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %force_quit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %force_quit, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %15) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !86, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_hi311x__469_1030_hi3110_can_driver_init6, !1, !"__initcall__kmod_hi311x__469_1030_hi3110_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/hi311x.c", i32 1030, i32 1}
!2 = !{ptr @__exitcall_hi3110_can_driver_exit, !1, !"__exitcall_hi3110_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author470, !4, !"__UNIQUE_ID_author470", i1 false, i1 false}
!4 = !{!"../drivers/net/can/spi/hi311x.c", i32 1032, i32 1}
!5 = !{ptr @__UNIQUE_ID_author471, !6, !"__UNIQUE_ID_author471", i1 false, i1 false}
!6 = !{!"../drivers/net/can/spi/hi311x.c", i32 1033, i32 1}
!7 = !{ptr @__UNIQUE_ID_description472, !8, !"__UNIQUE_ID_description472", i1 false, i1 false}
!8 = !{!"../drivers/net/can/spi/hi311x.c", i32 1034, i32 1}
!9 = !{ptr @__UNIQUE_ID_file473, !10, !"__UNIQUE_ID_file473", i1 false, i1 false}
!10 = !{!"../drivers/net/can/spi/hi311x.c", i32 1035, i32 1}
!11 = !{ptr @__UNIQUE_ID_license474, !10, !"__UNIQUE_ID_license474", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/spi/hi311x.c", i32 1021, i32 11}
!14 = !{ptr @hi3110_can_driver, !15, !"hi3110_can_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/spi/hi311x.c", i32 1019, i32 26}
!16 = !{ptr @hi3110_id_table, !17, !"hi3110_id_table", i1 false, i1 false}
!17 = !{!"../drivers/net/can/spi/hi311x.c", i32 819, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/spi/hi311x.c", i32 840, i32 43}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/spi/hi311x.c", i32 845, i32 39}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/spi/hi311x.c", i32 847, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/spi/hi311x.c", i32 892, i32 55}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/spi/hi311x.c", i32 893, i32 61}
!28 = !{ptr @hi3110_can_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/can/spi/hi311x.c", i32 905, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/spi/hi311x.c", i32 925, i32 27}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/spi/hi311x.c", i32 935, i32 19}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/spi/hi311x.c", i32 948, i32 33}
!37 = !{ptr @hi3110_netdev_ops, !38, !"hi3110_netdev_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/can/spi/hi311x.c", i32 804, i32 36}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/spi/hi311x.c", i32 761, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hi3110_open._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @hi3110_open._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/spi/hi311x.c", i32 765, i32 29}
!49 = !{ptr @hi3110_open.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/can/spi/hi311x.c", i32 771, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hi3110_open.__key.17, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/can/spi/hi311x.c", i32 772, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/spi/hi311x.c", i32 720, i32 5}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hi3110_can_ist.__UNIQUE_ID_ddebug468, !56, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/spi/hi311x.c", i32 218, i32 3}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hi3110_spi_trans._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hi3110_spi_trans._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/spi/hi311x.c", i32 227, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hi3110_cmd.__UNIQUE_ID_ddebug463, !66, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/spi/hi311x.c", i32 471, i32 2}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hi3110_do_set_bittiming.__UNIQUE_ID_ddebug466, !70, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/spi/hi311x.c", i32 374, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hi3110_hard_start_xmit._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hi3110_hard_start_xmit._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hi3110_bittiming_const, !82, !"hi3110_bittiming_const", i1 false, i1 false}
!82 = !{!"../drivers/net/can/spi/hi311x.c", i32 128, i32 41}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/can/spi/hi311x.c", i32 522, i32 2}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hi3110_hw_probe.__UNIQUE_ID_ddebug467, !84, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!87 = !{ptr @hi3110_of_match, !88, !"hi3110_of_match", i1 false, i1 false}
!88 = !{!"../drivers/net/can/spi/hi311x.c", i32 810, i32 34}
!89 = !{ptr @hi3110_can_pm_ops, !90, !"hi3110_can_pm_ops", i1 false, i1 false}
!90 = !{!"../drivers/net/can/spi/hi311x.c", i32 1017, i32 8}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{i8 0, i8 2}
!102 = !{i64 2148762417, i64 2148762422, i64 2148762435, i64 2148762479, i64 2148762513, i64 2148762534}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!"branch_weights", i32 1, i32 2000}
