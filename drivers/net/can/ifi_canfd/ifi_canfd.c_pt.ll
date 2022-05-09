; ModuleID = '/llk/IR_all_yes/drivers/net/can/ifi_canfd/ifi_canfd.c_pt.bc'
source_filename = "../drivers/net/can/ifi_canfd/ifi_canfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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

@__initcall__kmod_ifi_canfd__467_1045_ifi_canfd_plat_driver_init6 = internal global ptr @ifi_canfd_plat_driver_init, section ".initcall6.init", align 4
@ifi_canfd_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ifi_canfd_plat_probe, ptr @ifi_canfd_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ifi_canfd_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ifi_canfd_plat_driver_exit = internal global ptr @ifi_canfd_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author468 = internal constant [45 x i8] c"ifi_canfd.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file469 = internal constant [51 x i8] c"ifi_canfd.file=drivers/net/can/ifi_canfd/ifi_canfd\00", section ".modinfo", align 1
@__UNIQUE_ID_license470 = internal constant [25 x i8] c"ifi_canfd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description471 = internal constant [62 x i8] c"ifi_canfd.description=CAN bus driver for IFI CANFD controller\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifi_canfd\00", [22 x i8] zeroinitializer }, align 32
@ifi_canfd_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ifi,canfd-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"This block is not IFI CANFD, id=%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ifi_canfd_plat_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/can/ifi_canfd/ifi_canfd.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry_ptr = internal global ptr @ifi_canfd_plat_probe._entry, section ".printk_index", align 4
@ifi_canfd_plat_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"This block is too old (rev %i), minimum supported is rev %i\0A\00", [35 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry_ptr.8 = internal global ptr @ifi_canfd_plat_probe._entry.6, section ".printk_index", align 4
@ifi_canfd_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ifi_canfd_open, ptr @ifi_canfd_close, ptr @ifi_canfd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ifi_canfd_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ifi_canfd\00\00\00\00\00\00\00", i32 1, i32 256, i32 2, i32 256, i32 128, i32 2, i32 512, i32 1 }, [48 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1003, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register (ret=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry_ptr.11 = internal global ptr @ifi_canfd_plat_probe._entry.9, section ".printk_index", align 4
@ifi_canfd_plat_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1010, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Driver registered: regs=%p, irq=%d, clock=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ifi_canfd_plat_probe._entry_ptr.15 = internal global ptr @ifi_canfd_plat_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to open CAN device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! TX FIFO full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ifi_canfd_handle_state_errors\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error, entered active state\0A\00", [35 x i8] zeroinitializer }, align 32
@ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 -121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error, entered warning state\0A\00", [34 x i8] zeroinitializer }, align 32
@ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error, entered passive state\0A\00", [34 x i8] zeroinitializer }, align 32
@ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error, entered bus-off state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RX FIFO overflow, message(s) lost.\0A\00", [60 x i8] zeroinitializer }, align 32
@ifi_canfd_do_rx_poll.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ifi_canfd_do_rx_poll\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No messages in RX FIFO\0A\00", [40 x i8] zeroinitializer }, align 32
@ifi_canfd_read_fifo.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ifi_canfd_read_fifo\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESI Error\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"ifi_canfd_plat_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1036, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1038, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"ifi_canfd_of_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1030, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 954, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 960, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"ifi_canfd_netdev_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 928, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"ifi_canfd_bittiming_const\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 638, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1003, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1009, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 819, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 827, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 876, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 104, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 535, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 542, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 549, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 556, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 360, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 332, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [41 x i8] c"../drivers/net/can/ifi_canfd/ifi_canfd.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 298, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author468, ptr @__UNIQUE_ID_description471, ptr @__UNIQUE_ID_file469, ptr @__UNIQUE_ID_license470, ptr @__exitcall_ifi_canfd_plat_driver_exit, ptr @__initcall__kmod_ifi_canfd__467_1045_ifi_canfd_plat_driver_init6, ptr @ifi_canfd_plat_driver_exit, ptr @ifi_canfd_plat_probe._entry, ptr @ifi_canfd_plat_probe._entry.12, ptr @ifi_canfd_plat_probe._entry.6, ptr @ifi_canfd_plat_probe._entry.9, ptr @ifi_canfd_plat_probe._entry_ptr, ptr @ifi_canfd_plat_probe._entry_ptr.11, ptr @ifi_canfd_plat_probe._entry_ptr.15, ptr @ifi_canfd_plat_probe._entry_ptr.8, ptr @ifi_canfd_plat_driver, ptr @.str, ptr @ifi_canfd_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ifi_canfd_netdev_ops, ptr @ifi_canfd_bittiming_const, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_plat_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_plat_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifi_canfd_plat_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_plat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ifi_canfd_plat_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ifi_canfd_plat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ifi_canfd_plat_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call, i32 88
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -37063728, i32 %1)
  %cmp9.not = icmp eq i32 %1, -37063728
  br i1 %cmp9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %2) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %add.ptr14 = getelementptr i8, ptr %call, i32 84
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 352321536, i32 %3)
  %cmp18 = icmp ult i32 %3, 352321536
  br i1 %cmp18, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = lshr i32 %3, 24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef 21) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %call24 = tail call ptr @alloc_candev_mqs(i32 noundef 544, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %irq27 = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 64
  %5 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %irq27, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %or = or i32 %7, 262144
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ifi_canfd_netdev_ops, ptr %netdev_ops, align 8
  %ndev29 = getelementptr i8, ptr %call24, i32 2840
  %9 = ptrtoint ptr %ndev29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call24, ptr %ndev29, align 8
  %base = getelementptr i8, ptr %call24, i32 2844
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %base, align 4
  %napi = getelementptr i8, ptr %call24, i32 2616
  tail call void @netif_napi_add(ptr noundef nonnull %call24, ptr noundef %napi, ptr noundef nonnull @ifi_canfd_poll, i32 noundef 64) #6
  %state = getelementptr i8, ptr %call24, i32 2472
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %state, align 8
  %add.ptr32 = getelementptr i8, ptr %call, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !82
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %clock = getelementptr i8, ptr %call24, i32 2440
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %clock, align 8
  %bittiming_const = getelementptr i8, ptr %call24, i32 2332
  %15 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ifi_canfd_bittiming_const, ptr %bittiming_const, align 4
  %data_bittiming_const = getelementptr i8, ptr %call24, i32 2336
  %16 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ifi_canfd_bittiming_const, ptr %data_bittiming_const, align 8
  %do_set_mode = getelementptr i8, ptr %call24, i32 2596
  %17 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ifi_canfd_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call24, i32 2608
  %18 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ifi_canfd_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode = getelementptr i8, ptr %call24, i32 2476
  %19 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %ctrlmode, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call24, i32 2480
  %20 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 179, ptr %ctrlmode_supported, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call24, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 133, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev1, ptr %parent, align 8
  %call44 = tail call i32 @register_candev(ptr noundef nonnull %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call44) #9
  tail call void @free_candev(ptr noundef nonnull %call24) #6
  br label %cleanup

if.end50:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %25 = ptrtoint ptr %irq27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq27, align 4
  %27 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %24, i32 noundef %26, i32 noundef %28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end49, %if.end23.cleanup_crit_edge, %do.end22, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -22, %do.end ], [ -22, %do.end22 ], [ %call44, %do.end49 ], [ 0, %if.end50 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_plat_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_candev(ptr noundef %1) #6
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @free_candev(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  %frame.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %base = getelementptr i8, ptr %1, i32 2844
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %call3 = tail call fastcc i32 @ifi_canfd_handle_state_errors(ptr noundef %1)
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #6
  %6 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !87
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #9
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_errors.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %rx_errors.i, align 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %9 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_over_errors.i, align 4
  %inc2.i = add i32 %10, 1
  store i32 %inc2.i, ptr %rx_over_errors.i, align 4
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %frame.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.ifi_canfd_handle_lost_msg.exit_crit_edge, label %if.end.i, !prof !88

if.then.ifi_canfd_handle_lost_msg.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_lost_msg.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frame.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %or.i = or i32 %14, 4
  store i32 %or.i, ptr %12, align 8
  %15 = load ptr, ptr %frame.i, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %15, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx.i, align 1
  %call6.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #6
  br label %ifi_canfd_handle_lost_msg.exit

ifi_canfd_handle_lost_msg.exit:                   ; preds = %if.end.i, %if.then.ifi_canfd_handle_lost_msg.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ 0, %if.then.ifi_canfd_handle_lost_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #6
  %add5 = add i32 %retval.0.i, %call3
  br label %if.end

if.end:                                           ; preds = %ifi_canfd_handle_lost_msg.exit, %entry.if.end_crit_edge
  %work_done.0 = phi i32 [ %add5, %ifi_canfd_handle_lost_msg.exit ], [ %call3, %entry.if.end_crit_edge ]
  %ctrlmode = getelementptr i8, ptr %1, i32 2476
  %17 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrlmode, align 4
  %and6 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %19 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !87
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i37 = getelementptr i8, ptr %21, i32 68
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #6, !srcloc !82
  %23 = call i32 @llvm.bswap.i32(i32 %22) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %and.i = and i32 %23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i38 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i38, label %if.then8.ifi_canfd_handle_lec_err.exit_crit_edge, label %if.end.i41

if.then8.ifi_canfd_handle_lec_err.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_lec_err.exit

if.end.i41:                                       ; preds = %if.then8
  %can_stats.i = getelementptr i8, ptr %1, i32 2308
  %24 = ptrtoint ptr %can_stats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %can_stats.i, align 4
  %inc.i39 = add i32 %25, 1
  store i32 %inc.i39, ptr %can_stats.i, align 4
  %rx_errors.i40 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %26 = ptrtoint ptr %rx_errors.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors.i40, align 4
  %inc4.i = add i32 %27, 1
  store i32 %inc4.i, ptr %rx_errors.i40, align 4
  %call5.i = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i41.ifi_canfd_handle_lec_err.exit_crit_edge, label %if.end11.i, !prof !88

if.end.i41.ifi_canfd_handle_lec_err.exit_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_lec_err.exit

if.end11.i:                                       ; preds = %if.end.i41
  %28 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %or.i42 = or i32 %31, 136
  store i32 %or.i42, ptr %29, align 8
  %and12.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then14.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cf.i, align 4
  %arrayidx.i43 = getelementptr %struct.can_frame, ptr %33, i32 0, i32 5, i32 2
  %34 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i43, align 2
  %36 = or i8 %35, 32
  store i8 %36, ptr %arrayidx.i43, align 2
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end17.i_crit_edge
  %and18.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf.i, align 4
  %arrayidx22.i = getelementptr %struct.can_frame, ptr %38, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 25, ptr %arrayidx22.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %and24.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end32.i_crit_edge, label %if.then26.i

if.end23.i.if.end32.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cf.i, align 4
  %arrayidx28.i = getelementptr %struct.can_frame, ptr %41, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx28.i, align 2
  %44 = or i8 %43, 8
  store i8 %44, ptr %arrayidx28.i, align 2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end32.i_crit_edge
  %and33.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end41.i_crit_edge, label %if.then35.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cf.i, align 4
  %arrayidx37.i = getelementptr %struct.can_frame, ptr %46, i32 0, i32 5, i32 2
  %47 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx37.i, align 2
  %49 = or i8 %48, 16
  store i8 %49, ptr %arrayidx37.i, align 2
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end41.i_crit_edge
  %and42.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end50.i_crit_edge, label %if.then44.i

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf.i, align 4
  %arrayidx46.i = getelementptr %struct.can_frame, ptr %51, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx46.i, align 2
  %54 = or i8 %53, 4
  store i8 %54, ptr %arrayidx46.i, align 2
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end50.i_crit_edge
  %and51.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end56.i_crit_edge, label %if.then53.i

if.end50.i.if.end56.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cf.i, align 4
  %arrayidx55.i = getelementptr %struct.can_frame, ptr %56, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 8, ptr %arrayidx55.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end56.i_crit_edge
  %and57.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.do.body.i_crit_edge, label %if.then59.i

if.end56.i.do.body.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cf.i, align 4
  %arrayidx61.i = getelementptr %struct.can_frame, ptr %59, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx61.i, align 2
  %62 = or i8 %61, 2
  store i8 %62, ptr %arrayidx61.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then59.i, %if.end56.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr67.i = getelementptr i8, ptr %64, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 64) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr72.i = getelementptr i8, ptr %66, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 262144) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr77.i = getelementptr i8, ptr %68, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 128) #6, !srcloc !91
  %call78.i = call i32 @netif_receive_skb(ptr noundef nonnull %call5.i) #6
  br label %ifi_canfd_handle_lec_err.exit

ifi_canfd_handle_lec_err.exit:                    ; preds = %do.body.i, %if.end.i41.ifi_canfd_handle_lec_err.exit_crit_edge, %if.then8.ifi_canfd_handle_lec_err.exit_crit_edge
  %retval.0.i44 = phi i32 [ 1, %do.body.i ], [ 0, %if.then8.ifi_canfd_handle_lec_err.exit_crit_edge ], [ 0, %if.end.i41.ifi_canfd_handle_lec_err.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %add10 = add i32 %retval.0.i44, %work_done.0
  br label %if.end11

if.end11:                                         ; preds = %ifi_canfd_handle_lec_err.exit, %if.end.if.end11_crit_edge
  %work_done.1 = phi i32 [ %add10, %ifi_canfd_handle_lec_err.exit ], [ %work_done.0, %if.end.if.end11_crit_edge ]
  %and12 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %70, i32 4
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #6, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %72 = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i47 = icmp eq i32 %72, 0
  br i1 %tobool.not.i47, label %for.cond.preheader.i, label %do.body3.i

for.cond.preheader.i:                             ; preds = %if.then14
  %sub = sub i32 %quota, %work_done.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp43.i = icmp slt i32 %sub, 1
  br i1 %cmp43.i, label %for.cond.preheader.i.ifi_canfd_do_rx_poll.exit_crit_edge, label %for.cond.preheader.i.if.end19.i_crit_edge

for.cond.preheader.i.if.end19.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end19.i

for.cond.preheader.i.ifi_canfd_do_rx_poll.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_do_rx_poll.exit

do.body3.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_do_rx_poll.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_poll, %ifi_canfd_do_rx_poll.exit)) #6
          to label %if.then10.i [label %ifi_canfd_do_rx_poll.exit], !srcloc !95

if.then10.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_do_rx_poll.__UNIQUE_ID_ddebug462, ptr noundef %1, ptr noundef nonnull @.str.27) #6
  br label %ifi_canfd_do_rx_poll.exit

if.end19.i:                                       ; preds = %if.end19.i.if.end19.i_crit_edge, %for.cond.preheader.i.if.end19.i_crit_edge
  %quota.addr.046.i = phi i32 [ %dec.i, %if.end19.i.if.end19.i_crit_edge ], [ %sub, %for.cond.preheader.i.if.end19.i_crit_edge ]
  %pkts.045.i = phi i32 [ %inc.i48, %if.end19.i.if.end19.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end19.i_crit_edge ]
  call fastcc void @ifi_canfd_read_fifo(ptr noundef %1) #6
  %dec.i = add nsw i32 %quota.addr.046.i, -1
  %inc.i48 = add nuw nsw i32 %pkts.045.i, 1
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %74, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #6, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %76 = and i32 %75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool15.not.i = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %quota.addr.046.i)
  %cmp.i = icmp ult i32 %quota.addr.046.i, 2
  %or.cond.i = select i1 %tobool15.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %if.end19.i.ifi_canfd_do_rx_poll.exit_crit_edge, label %if.end19.i.if.end19.i_crit_edge

if.end19.i.if.end19.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i.ifi_canfd_do_rx_poll.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_do_rx_poll.exit

ifi_canfd_do_rx_poll.exit:                        ; preds = %if.end19.i.ifi_canfd_do_rx_poll.exit_crit_edge, %if.then10.i, %do.body3.i, %for.cond.preheader.i.ifi_canfd_do_rx_poll.exit_crit_edge
  %retval.0.i49 = phi i32 [ 0, %if.then10.i ], [ 0, %do.body3.i ], [ 0, %for.cond.preheader.i.ifi_canfd_do_rx_poll.exit_crit_edge ], [ %inc.i48, %if.end19.i.ifi_canfd_do_rx_poll.exit_crit_edge ]
  %add16 = add i32 %retval.0.i49, %work_done.1
  br label %if.end17

if.end17:                                         ; preds = %ifi_canfd_do_rx_poll.exit, %if.end11.if.end17_crit_edge
  %work_done.2 = phi i32 [ %work_done.1, %if.end11.if.end17_crit_edge ], [ %add16, %ifi_canfd_do_rx_poll.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.2, i32 %quota)
  %cmp = icmp slt i32 %work_done.2, %quota
  br i1 %cmp, label %if.then18, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.2) #6
  %77 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctrlmode, align 4
  %and.i50 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool1.not.i = icmp eq i32 %and.i50, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 -2122219385, i32 -2122218361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  %79 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr.i52 = getelementptr i8, ptr %81, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %79) #6, !srcloc !91
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end17.if.end20_crit_edge
  ret i32 %work_done.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_set_mode(ptr nocapture noundef %ndev, i32 noundef %mode) #2 align 64 {
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
  tail call fastcc void @ifi_canfd_start(ptr noundef %ndev)
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
define internal i32 @ifi_canfd_get_berr_counter(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %ndev, i32 2844
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %shr = lshr i32 %3, 16
  %4 = trunc i32 %shr to i16
  %conv = and i16 %4, 255
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %5 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %rxerr, align 2
  %6 = trunc i32 %3 to i16
  %conv5 = and i16 %6, 255
  %7 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv5, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ifi_canfd_isr, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.17) #9
  tail call void @close_candev(ptr noundef %ndev) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ifi_canfd_start(ptr noundef %ndev)
  %napi = getelementptr i8, ptr %ndev, i32 2616
  tail call void @napi_enable(ptr noundef %napi) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call.i, %if.then3 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %napi = getelementptr i8, ptr %ndev, i32 2616
  tail call void @napi_disable(ptr noundef %napi) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr i8, ptr %ndev, i32 2844
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 64) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -37048866) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -1) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 -129) #6, !srcloc !91
  %state.i = getelementptr i8, ptr %ndev, i32 2472
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state.i, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %ndev) #6
  tail call void @close_candev(ptr noundef %ndev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
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
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !104

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
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !88

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
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !104

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
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !88

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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !104

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  %base = getelementptr i8, ptr %ndev, i32 2844
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %39 = and i32 %38, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  %_tx.i.i107 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i107, align 128
  %state.i.i108 = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i108) #6
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 8
  %and10 = lshr i32 %43, 18
  %shr = and i32 %and10, 2047
  %shl = shl i32 %43, 11
  %or = or i32 %shr, %shl
  %or12 = or i32 %or, 536870912
  %and14 = and i32 %43, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool7.not111 = icmp slt i32 %43, 0
  %txid.0 = select i1 %tobool7.not111, i32 %or12, i32 %and14
  %len = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %len, align 4
  %call16 = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %45) #6
  %conv = zext i8 %call16 to i32
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %46 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrlmode, align 4
  %and17 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end5.if.end29_crit_edge, label %land.lhs.true

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end5
  %len.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %49)
  %cmp.i = icmp eq i32 %49, 72
  br i1 %cmp.i, label %if.then21, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool25.not = icmp eq i8 %52, 0
  %spec.select.v = select i1 %tobool25.not, i32 32, i32 96
  %spec.select = or i32 %spec.select.v, %conv
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %land.lhs.true.if.end29_crit_edge, %if.end5.if.end29_crit_edge
  %txdlc.0 = phi i32 [ %conv, %land.lhs.true.if.end29_crit_edge ], [ %conv, %if.end5.if.end29_crit_edge ], [ %spec.select, %if.then21 ]
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 8
  %and31 = lshr i32 %54, 26
  %55 = and i32 %and31, 16
  %56 = or i32 %55, %txdlc.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %txid.0)
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %59, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %57) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %56)
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %62, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %60) #6, !srcloc !91
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp113.not = icmp eq i8 %64, 0
  br i1 %cmp113.not, label %if.end29.do.body54_crit_edge, label %do.body46.lr.ph

if.end29.do.body54_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body46.lr.ph:                                  ; preds = %if.end29
  %data49 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %do.body46.lr.ph
  %i.0114 = phi i32 [ 0, %do.body46.lr.ph ], [ %add, %do.body46.do.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %add.ptr50 = getelementptr i8, ptr %data49, i32 %i.0114
  %65 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr50, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %69, i32 192
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 %i.0114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %67) #6, !srcloc !91
  %add = add nuw nsw i32 %i.0114, 4
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %len, align 4
  %conv44 = zext i8 %71 to i32
  %cmp = icmp ult i32 %add, %conv44
  br i1 %cmp, label %do.body46.do.body46_crit_edge, label %do.body46.do.body54_crit_edge

do.body46.do.body54_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

do.body54:                                        ; preds = %do.body46.do.body54_crit_edge, %if.end29.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %73, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %75, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #6, !srcloc !91
  %call64 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef 0, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %77, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 16777216) #6, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %do.body54, %if.then4, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 16, %if.then4 ], [ 0, %do.body54 ], [ 0, %can_dropped_invalid_skb.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifi_canfd_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2844
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -129) #6, !srcloc !91
  %and = and i32 %3, 50332679
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end7_crit_edge, label %if.then6

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i34 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 -2139062144) #6, !srcloc !91
  %napi = getelementptr i8, ptr %dev_id, i32 2616
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %do.body.if.end7_crit_edge
  %and8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @can_get_echo_skb(ptr noundef %dev_id, i32 noundef 0, ptr noundef null) #6
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %9, %call11
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %and13 = and i32 %3, 4259840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then15 ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ifi_canfd_start(ptr nocapture noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %base = getelementptr i8, ptr %ndev, i32 2844
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -37048866) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 4) #6, !srcloc !91
  %brp2.i = getelementptr i8, ptr %ndev, i32 2368
  %4 = ptrtoint ptr %brp2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brp2.i, align 4
  %sjw3.i = getelementptr i8, ptr %ndev, i32 2364
  %6 = ptrtoint ptr %sjw3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sjw3.i, align 4
  %prop_seg.i = getelementptr i8, ptr %ndev, i32 2352
  %8 = ptrtoint ptr %prop_seg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prop_seg.i, align 4
  %phase_seg1.i = getelementptr i8, ptr %ndev, i32 2356
  %10 = ptrtoint ptr %phase_seg1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phase_seg1.i, align 4
  %add.i = add i32 %11, %9
  %phase_seg2.i = getelementptr i8, ptr %ndev, i32 2360
  %12 = ptrtoint ptr %phase_seg2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phase_seg2.i, align 4
  %conv9.i = add i32 %13, 65534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %conv10.i = and i32 %conv9.i, 65535
  %conv7.i = shl i32 %add.i, 8
  %conv11.i = add i32 %conv7.i, 16776960
  %shl12.i = and i32 %conv11.i, 16776960
  %conv.i = shl i32 %5, 16
  %shl14.i = add i32 %conv.i, -131072
  %conv5.i = shl i32 %7, 25
  %shl17.i = add i32 %conv5.i, -33554432
  %or.i = or i32 %shl17.i, %shl14.i
  %or15.i = or i32 %or.i, %conv10.i
  %or18.i = or i32 %or15.i, %shl12.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i112 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %14) #6, !srcloc !91
  %brp19.i = getelementptr i8, ptr %ndev, i32 2400
  %17 = ptrtoint ptr %brp19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brp19.i, align 4
  %sjw22.i = getelementptr i8, ptr %ndev, i32 2396
  %19 = ptrtoint ptr %sjw22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sjw22.i, align 4
  %prop_seg25.i = getelementptr i8, ptr %ndev, i32 2384
  %21 = ptrtoint ptr %prop_seg25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prop_seg25.i, align 4
  %phase_seg126.i = getelementptr i8, ptr %ndev, i32 2388
  %23 = ptrtoint ptr %phase_seg126.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phase_seg126.i, align 4
  %add27.i = add i32 %24, %22
  %phase_seg230.i = getelementptr i8, ptr %ndev, i32 2392
  %25 = ptrtoint ptr %phase_seg230.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phase_seg230.i, align 4
  %conv32.i = add i32 %26, 65534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %conv36.i = and i32 %conv32.i, 65535
  %conv29.i = shl i32 %add27.i, 8
  %conv38.i = add i32 %conv29.i, 16776960
  %shl39.i = and i32 %conv38.i, 16776960
  %conv21.i = shl i32 %18, 16
  %shl42.i = add i32 %conv21.i, -131072
  %conv24.i = shl i32 %20, 25
  %shl45.i = add i32 %conv24.i, -33554432
  %or40.i = or i32 %shl45.i, %shl42.i
  %or43.i = or i32 %or40.i, %conv36.i
  %or46.i = or i32 %or43.i, %shl39.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #6
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr48.i = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %27) #6, !srcloc !91
  %30 = ptrtoint ptr %brp19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brp19.i, align 4
  %32 = ptrtoint ptr %prop_seg25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prop_seg25.i, align 4
  %34 = ptrtoint ptr %phase_seg126.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phase_seg126.i, align 4
  %add52.i = add i32 %35, %33
  %mul.i = mul i32 %add52.i, %31
  %conv55.i = and i32 %mul.i, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %or60.i = or i32 %conv55.i, 32768
  %36 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #6
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr62.i = getelementptr i8, ptr %38, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %36) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 160) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %42, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 128) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %44, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 160) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr9.i5.i = getelementptr i8, ptr %46, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i5.i, i32 160) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %48, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 224) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr9.i8.i = getelementptr i8, ptr %50, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i8.i, i32 224) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -2147483648) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -2147483648) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %60, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 -129) #6, !srcloc !91
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %65 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -2080374783, i32 -2080309247
  %and43 = shl i32 %66, 18
  %67 = and i32 %and43, 262144
  %68 = or i32 %spec.select, %67
  %69 = and i32 %66, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %69)
  %70 = icmp eq i32 %69, 32
  %or57 = or i32 %68, 33554432
  %stcmd.2 = select i1 %70, i32 %or57, i32 %68
  %and50 = shl i32 %66, 19
  %71 = and i32 %and50, 16777216
  %72 = or i32 %stcmd.2, %71
  %73 = xor i32 %72, 16777216
  %state = getelementptr i8, ptr %ndev, i32 2472
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %state, align 8
  %and.i = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 -2122219385, i32 -2122218361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %75 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr.i114 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %75) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %79, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 -1725419487) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %81, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 64) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr81 = getelementptr i8, ptr %83, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 128) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %84 = tail call i32 @llvm.bswap.i32(i32 %73)
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #6, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ifi_canfd_handle_state_errors(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %cf.i159 = alloca ptr, align 4
  %cf.i148 = alloca ptr, align 4
  %cf.i137 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %ndev, i32 2844
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr i8, ptr %ndev, i32 2472
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.if.end14_crit_edge, label %do.body3

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body3:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_handle_state_errors, %do.end12)) #6
          to label %if.then10 [label %do.end12], !srcloc !95

if.then10:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug463, ptr noundef %ndev, ptr noundef nonnull @.str.21) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %do.body3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %6 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !87
  %error_warning.i = getelementptr i8, ptr %ndev, i32 2312
  %7 = ptrtoint ptr %error_warning.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error_warning.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %error_warning.i, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 8
  %call21.i = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf.i) #6
  %tobool.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not.i, label %do.end12.ifi_canfd_handle_state_change.exit_crit_edge, label %if.end.i, !prof !88

do.end12.ifi_canfd_handle_state_change.exit_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_state_change.exit

if.end.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %11, i32 32
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i) #6, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %call70.i = call i32 @netif_receive_skb(ptr noundef nonnull %call21.i) #6
  br label %ifi_canfd_handle_state_change.exit

ifi_canfd_handle_state_change.exit:               ; preds = %if.end.i, %do.end12.ifi_canfd_handle_state_change.exit_crit_edge
  %retval.0.i136 = phi i32 [ 1, %if.end.i ], [ 0, %do.end12.ifi_canfd_handle_state_change.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  br label %if.end14

if.end14:                                         ; preds = %ifi_canfd_handle_state_change.exit, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %work_done.0 = phi i32 [ %retval.0.i136, %ifi_canfd_handle_state_change.exit ], [ 0, %land.lhs.true.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge ]
  %and15 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end45_crit_edge, label %land.lhs.true17

if.end14.if.end45_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true17:                                  ; preds = %if.end14
  %state19 = getelementptr i8, ptr %ndev, i32 2472
  %13 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp20.not = icmp eq i32 %14, 1
  br i1 %cmp20.not, label %land.lhs.true17.if.end45_crit_edge, label %do.body23

land.lhs.true17.if.end45_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.body23:                                        ; preds = %land.lhs.true17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_handle_state_errors, %do.end42)) #6
          to label %if.then37 [label %do.end42], !srcloc !95

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug464, ptr noundef %ndev, ptr noundef nonnull @.str.22) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i137) #6
  %15 = ptrtoint ptr %cf.i137 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i137, align 4, !annotation !87
  %error_warning5.i = getelementptr i8, ptr %ndev, i32 2312
  %16 = ptrtoint ptr %error_warning5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error_warning5.i, align 4
  %inc6.i = add i32 %17, 1
  store i32 %inc6.i, ptr %error_warning5.i, align 4
  %18 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state19, align 8
  %call21.i138 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf.i137) #6
  %tobool.not.i139 = icmp eq ptr %call21.i138, null
  br i1 %tobool.not.i139, label %do.end42.ifi_canfd_handle_state_change.exit147_crit_edge, label %if.end.i144, !prof !88

do.end42.ifi_canfd_handle_state_change.exit147_crit_edge: ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_state_change.exit147

if.end.i144:                                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i89.i141 = getelementptr i8, ptr %20, i32 32
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i141) #6, !srcloc !82
  %22 = call i32 @llvm.bswap.i32(i32 %21) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %shr.i.i142 = lshr i32 %22, 16
  %23 = trunc i32 %22 to i16
  %conv5.i.i143 = and i16 %23, 255
  %24 = trunc i32 %shr.i.i142 to i16
  %conv.i.i = and i16 %24, 255
  %25 = ptrtoint ptr %cf.i137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cf.i137, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %or.i = or i32 %28, 4
  store i32 %or.i, ptr %26, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv5.i.i143, i16 %conv.i.i)
  %cmp.i = icmp ugt i16 %conv5.i.i143, %conv.i.i
  %conv29.i = select i1 %cmp.i, i8 8, i8 4
  %29 = ptrtoint ptr %cf.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cf.i137, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %30, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv29.i, ptr %arrayidx.i, align 1
  %conv31.i = trunc i32 %22 to i8
  %32 = load ptr, ptr %cf.i137, align 4
  %arrayidx33.i = getelementptr %struct.can_frame, ptr %32, i32 0, i32 5, i32 6
  %33 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv31.i, ptr %arrayidx33.i, align 2
  %conv35.i = trunc i32 %shr.i.i142 to i8
  %34 = load ptr, ptr %cf.i137, align 4
  %arrayidx37.i = getelementptr %struct.can_frame, ptr %34, i32 0, i32 5, i32 7
  %35 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv35.i, ptr %arrayidx37.i, align 1
  %call70.i145 = call i32 @netif_receive_skb(ptr noundef nonnull %call21.i138) #6
  br label %ifi_canfd_handle_state_change.exit147

ifi_canfd_handle_state_change.exit147:            ; preds = %if.end.i144, %do.end42.ifi_canfd_handle_state_change.exit147_crit_edge
  %retval.0.i146 = phi i32 [ 1, %if.end.i144 ], [ 0, %do.end42.ifi_canfd_handle_state_change.exit147_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i137) #6
  %add44 = add nuw nsw i32 %retval.0.i146, %work_done.0
  br label %if.end45

if.end45:                                         ; preds = %ifi_canfd_handle_state_change.exit147, %land.lhs.true17.if.end45_crit_edge, %if.end14.if.end45_crit_edge
  %work_done.1 = phi i32 [ %add44, %ifi_canfd_handle_state_change.exit147 ], [ %work_done.0, %land.lhs.true17.if.end45_crit_edge ], [ %work_done.0, %if.end14.if.end45_crit_edge ]
  %and46 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end76_crit_edge, label %land.lhs.true48

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true48:                                  ; preds = %if.end45
  %state50 = getelementptr i8, ptr %ndev, i32 2472
  %36 = ptrtoint ptr %state50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp51.not = icmp eq i32 %37, 2
  br i1 %cmp51.not, label %land.lhs.true48.if.end76_crit_edge, label %do.body54

land.lhs.true48.if.end76_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.body54:                                        ; preds = %land.lhs.true48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_handle_state_errors, %do.end73)) #6
          to label %if.then68 [label %do.end73], !srcloc !95

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug465, ptr noundef %ndev, ptr noundef nonnull @.str.23) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i148) #6
  %38 = ptrtoint ptr %cf.i148 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i148, align 4, !annotation !87
  %error_passive.i = getelementptr i8, ptr %ndev, i32 2316
  %39 = ptrtoint ptr %error_passive.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error_passive.i, align 4
  %inc12.i = add i32 %40, 1
  store i32 %inc12.i, ptr %error_passive.i, align 4
  %41 = ptrtoint ptr %state50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %state50, align 8
  %call21.i149 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf.i148) #6
  %tobool.not.i150 = icmp eq ptr %call21.i149, null
  br i1 %tobool.not.i150, label %do.end73.ifi_canfd_handle_state_change.exit158_crit_edge, label %if.end.i155, !prof !88

do.end73.ifi_canfd_handle_state_change.exit158_crit_edge: ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_state_change.exit158

if.end.i155:                                      ; preds = %do.end73
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i89.i152 = getelementptr i8, ptr %43, i32 32
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i152) #6, !srcloc !82
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %shr.i.i153 = lshr i32 %45, 16
  %46 = ptrtoint ptr %cf.i148 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cf.i148, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %or40.i = or i32 %49, 4
  store i32 %or40.i, ptr %47, align 8
  %50 = load ptr, ptr %cf.i148, align 4
  %arrayidx42.i = getelementptr %struct.can_frame, ptr %50, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx42.i, align 1
  %53 = or i8 %52, 16
  store i8 %53, ptr %arrayidx42.i, align 1
  %conv5.i.i154174 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i.i154174)
  %cmp48.i.not = icmp eq i32 %conv5.i.i154174, 0
  br i1 %cmp48.i.not, label %if.end.i155.if.end56.i_crit_edge, label %if.then50.i

if.end.i155.if.end56.i_crit_edge:                 ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then50.i:                                      ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %cf.i148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cf.i148, align 4
  %arrayidx52.i = getelementptr %struct.can_frame, ptr %55, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx52.i, align 1
  %58 = or i8 %57, 32
  store i8 %58, ptr %arrayidx52.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then50.i, %if.end.i155.if.end56.i_crit_edge
  %conv58.i = trunc i32 %45 to i8
  %59 = ptrtoint ptr %cf.i148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf.i148, align 4
  %arrayidx60.i = getelementptr %struct.can_frame, ptr %60, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv58.i, ptr %arrayidx60.i, align 2
  %conv62.i = trunc i32 %shr.i.i153 to i8
  %62 = load ptr, ptr %cf.i148, align 4
  %arrayidx64.i = getelementptr %struct.can_frame, ptr %62, i32 0, i32 5, i32 7
  %63 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv62.i, ptr %arrayidx64.i, align 1
  %call70.i156 = call i32 @netif_receive_skb(ptr noundef nonnull %call21.i149) #6
  br label %ifi_canfd_handle_state_change.exit158

ifi_canfd_handle_state_change.exit158:            ; preds = %if.end56.i, %do.end73.ifi_canfd_handle_state_change.exit158_crit_edge
  %retval.0.i157 = phi i32 [ 1, %if.end56.i ], [ 0, %do.end73.ifi_canfd_handle_state_change.exit158_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i148) #6
  %add75 = add nuw nsw i32 %retval.0.i157, %work_done.1
  br label %if.end76

if.end76:                                         ; preds = %ifi_canfd_handle_state_change.exit158, %land.lhs.true48.if.end76_crit_edge, %if.end45.if.end76_crit_edge
  %work_done.2 = phi i32 [ %add75, %ifi_canfd_handle_state_change.exit158 ], [ %work_done.1, %land.lhs.true48.if.end76_crit_edge ], [ %work_done.1, %if.end45.if.end76_crit_edge ]
  %and77 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end107_crit_edge, label %land.lhs.true79

if.end76.if.end107_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

land.lhs.true79:                                  ; preds = %if.end76
  %state81 = getelementptr i8, ptr %ndev, i32 2472
  %64 = ptrtoint ptr %state81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp82.not = icmp eq i32 %65, 3
  br i1 %cmp82.not, label %land.lhs.true79.if.end107_crit_edge, label %do.body85

land.lhs.true79.if.end107_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.body85:                                        ; preds = %land.lhs.true79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_handle_state_errors, %do.end104)) #6
          to label %if.then99 [label %do.end104], !srcloc !95

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug466, ptr noundef %ndev, ptr noundef nonnull @.str.24) #6
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.body85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i159) #6
  %66 = ptrtoint ptr %cf.i159 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i159, align 4, !annotation !87
  %67 = ptrtoint ptr %state81 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %state81, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %69, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 -2139062144) #6, !srcloc !91
  %bus_off.i = getelementptr i8, ptr %ndev, i32 2320
  %70 = ptrtoint ptr %bus_off.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus_off.i, align 4
  %inc20.i = add i32 %71, 1
  store i32 %inc20.i, ptr %bus_off.i, align 4
  call void @can_bus_off(ptr noundef %ndev) #6
  %call21.i160 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf.i159) #6
  %tobool.not.i161 = icmp eq ptr %call21.i160, null
  br i1 %tobool.not.i161, label %do.end104.ifi_canfd_handle_state_change.exit169_crit_edge, label %if.end.i166, !prof !88

do.end104.ifi_canfd_handle_state_change.exit169_crit_edge: ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %ifi_canfd_handle_state_change.exit169

if.end.i166:                                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr.i89.i163 = getelementptr i8, ptr %73, i32 32
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i163) #6, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %75 = ptrtoint ptr %cf.i159 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cf.i159, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %or67.i = or i32 %78, 64
  store i32 %or67.i, ptr %76, align 8
  %call70.i167 = call i32 @netif_receive_skb(ptr noundef nonnull %call21.i160) #6
  br label %ifi_canfd_handle_state_change.exit169

ifi_canfd_handle_state_change.exit169:            ; preds = %if.end.i166, %do.end104.ifi_canfd_handle_state_change.exit169_crit_edge
  %retval.0.i168 = phi i32 [ 1, %if.end.i166 ], [ 0, %do.end104.ifi_canfd_handle_state_change.exit169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i159) #6
  %add106 = add nuw nsw i32 %retval.0.i168, %work_done.2
  br label %if.end107

if.end107:                                        ; preds = %ifi_canfd_handle_state_change.exit169, %land.lhs.true79.if.end107_crit_edge, %if.end76.if.end107_crit_edge
  %work_done.3 = phi i32 [ %add106, %ifi_canfd_handle_state_change.exit169 ], [ %work_done.2, %land.lhs.true79.if.end107_crit_edge ], [ %work_done.2, %if.end76.if.end107_crit_edge ]
  ret i32 %work_done.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ifi_canfd_read_fifo(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !87
  %base = getelementptr i8, ptr %ndev, i32 2844
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 104
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call5 = call ptr @alloc_can_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.then7_crit_edge, label %if.else14

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end.thread:                                    ; preds = %entry
  %call4 = call ptr @alloc_canfd_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %tobool6.not145 = icmp eq ptr %call4, null
  br i1 %tobool6.not145, label %if.end.thread.if.then7_crit_edge, label %if.then12

if.end.thread.if.then7_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.end.thread.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  %5 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_dropped, align 4
  br label %cleanup

if.then12:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %7 = trunc i32 %4 to i8
  %conv = and i8 %7, 15
  %call13 = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv) #6
  br label %if.end24

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %4, 15
  %8 = call i32 @llvm.umin.i32(i32 %and9, i32 8)
  %9 = trunc i32 %8 to i8
  br label %if.end24

if.end24:                                         ; preds = %if.else14, %if.then12
  %.sink = phi i8 [ %9, %if.else14 ], [ %call13, %if.then12 ]
  %skb.0146149 = phi ptr [ %call5, %if.else14 ], [ %call4, %if.then12 ]
  %10 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink160 = load ptr, ptr %cf, align 4
  %len23 = getelementptr inbounds %struct.canfd_frame, ptr %.sink160, i32 0, i32 1
  %11 = ptrtoint ptr %len23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %len23, align 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 108
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !82
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %and33 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else40, label %if.then35

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %and36 = lshr i32 %15, 11
  %shr37 = and i32 %and36, 262143
  %and38 = shl i32 %15, 18
  %shl = and i32 %and38, 536608768
  %or = or i32 %shl, %shr37
  %or39 = or i32 %or, -2147483648
  br label %if.end42

if.else40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i32 %15, 2047
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then35
  %id.0 = phi i32 [ %or39, %if.then35 ], [ %and41, %if.else40 ]
  %16 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %id.0, ptr %17, align 8
  %and43 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end60_crit_edge, label %if.then45

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cf, align 4
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %23 = or i8 %22, 2
  store i8 %23, ptr %flags, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifi_canfd_read_fifo.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ifi_canfd_read_fifo, %if.end60)) #6
          to label %if.then56 [label %if.end60], !srcloc !95

if.then56:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ifi_canfd_read_fifo.__UNIQUE_ID_ddebug461, ptr noundef %ndev, ptr noundef nonnull @.str.29) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then45, %if.end42.if.end60_crit_edge
  %tobool.not.not = xor i1 %tobool.not, true
  %and63 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.else68, label %if.then65

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %or67 = or i32 %27, 1073741824
  store i32 %or67, ptr %25, align 8
  br label %if.end93

if.else68:                                        ; preds = %if.end60
  %and69 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else68.if.end76_crit_edge, label %if.then71

if.else68.if.end76_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf, align 4
  %flags72 = getelementptr inbounds %struct.canfd_frame, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %flags72 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags72, align 1
  %32 = or i8 %31, 1
  store i8 %32, ptr %flags72, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.else68.if.end76_crit_edge
  %33 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf, align 4
  %len77154 = getelementptr inbounds %struct.canfd_frame, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %len77154 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %len77154, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp79156.not = icmp eq i8 %36, 0
  br i1 %cmp79156.not, label %if.end76.for.end_crit_edge, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  br label %for.body

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end76.for.body_crit_edge
  %i.0157 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end76.for.body_crit_edge ]
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr84 = getelementptr i8, ptr %38, i32 112
  %add.ptr85 = getelementptr i8, ptr %add.ptr84, i32 %i.0157
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #6, !srcloc !82
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %41 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cf, align 4
  %data = getelementptr inbounds %struct.canfd_frame, ptr %42, i32 0, i32 5
  %add.ptr89 = getelementptr i8, ptr %data, i32 %i.0157
  %43 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %add.ptr89, align 4
  %add = add nuw nsw i32 %i.0157, 4
  %44 = load ptr, ptr %cf, align 4
  %len77 = getelementptr inbounds %struct.canfd_frame, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %len77 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len77, align 4
  %conv78 = zext i8 %46 to i32
  %cmp79 = icmp ult i32 %add, %conv78
  br i1 %cmp79, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %46 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end76.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end76.for.end_crit_edge ]
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_bytes, align 4
  %add92 = add i32 %48, %.lcssa
  store i32 %add92, ptr %rx_bytes, align 4
  br label %if.end93

if.end93:                                         ; preds = %for.end, %if.then65
  %49 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats1, align 4
  %inc94 = add i32 %50, 1
  store i32 %inc94, ptr %stats1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr99 = getelementptr i8, ptr %52, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 16777216) #6, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr104 = getelementptr i8, ptr %54, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 3) #6, !srcloc !91
  %call105 = call i32 @netif_receive_skb(ptr noundef nonnull %skb.0146149) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_ifi_canfd__467_1045_ifi_canfd_plat_driver_init6, !1, !"__initcall__kmod_ifi_canfd__467_1045_ifi_canfd_plat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1045, i32 1}
!2 = !{ptr @__exitcall_ifi_canfd_plat_driver_exit, !1, !"__exitcall_ifi_canfd_plat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author468, !4, !"__UNIQUE_ID_author468", i1 false, i1 false}
!4 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1047, i32 1}
!5 = !{ptr @__UNIQUE_ID_file469, !6, !"__UNIQUE_ID_file469", i1 false, i1 false}
!6 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1048, i32 1}
!7 = !{ptr @__UNIQUE_ID_license470, !6, !"__UNIQUE_ID_license470", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description471, !9, !"__UNIQUE_ID_description471", i1 false, i1 false}
!9 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1049, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1038, i32 12}
!12 = !{ptr @ifi_canfd_plat_driver, !13, !"ifi_canfd_plat_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1036, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 954, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ifi_canfd_plat_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ifi_canfd_plat_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 960, i32 3}
!24 = !{ptr @ifi_canfd_plat_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ifi_canfd_plat_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1003, i32 3}
!28 = !{ptr @ifi_canfd_plat_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ifi_canfd_plat_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1009, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ifi_canfd_plat_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ifi_canfd_plat_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ifi_canfd_netdev_ops, !36, !"ifi_canfd_netdev_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 928, i32 36}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 819, i32 20}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 827, i32 20}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 876, i32 20}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 535, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug463, !47, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 542, i32 3}
!52 = !{ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug464, !51, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 549, i32 3}
!55 = !{ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug465, !54, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 556, i32 3}
!58 = !{ptr @ifi_canfd_handle_state_errors.__UNIQUE_ID_ddebug466, !57, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 360, i32 19}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 332, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ifi_canfd_do_rx_poll.__UNIQUE_ID_ddebug462, !62, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 298, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ifi_canfd_read_fifo.__UNIQUE_ID_ddebug461, !66, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!69 = !{ptr @ifi_canfd_bittiming_const, !70, !"ifi_canfd_bittiming_const", i1 false, i1 false}
!70 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 638, i32 41}
!71 = !{ptr @ifi_canfd_of_table, !72, !"ifi_canfd_of_table", i1 false, i1 false}
!72 = !{!"../drivers/net/can/ifi_canfd/ifi_canfd.c", i32 1030, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 4265648}
!83 = !{i64 2157150195}
!84 = !{i64 2157152399}
!85 = !{i64 2157154960}
!86 = !{i64 2157130601}
!87 = !{!"auto-init"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2157116478}
!90 = !{i64 2157118045}
!91 = !{i64 4265230}
!92 = !{i64 2157118621}
!93 = !{i64 2157119214}
!94 = !{i64 2157113030}
!95 = !{i64 2148749769, i64 2148749774, i64 2148749787, i64 2148749831, i64 2148749865, i64 2148749886}
!96 = !{i64 2157115938}
!97 = !{i64 2157104884}
!98 = !{i64 2157119982}
!99 = !{i64 2157143989}
!100 = !{i64 2157144456}
!101 = !{i64 2157144860}
!102 = !{i64 2157145273}
!103 = !{i64 2157145797}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2157146603}
!106 = !{i64 2157147326}
!107 = !{i64 2157147725}
!108 = !{i64 2157148148}
!109 = !{i64 2157148601}
!110 = !{i64 2157148987}
!111 = !{i64 2157149479}
!112 = !{i64 2157132015}
!113 = !{i64 2157132241}
!114 = !{i64 2157136908}
!115 = !{i64 2157137429}
!116 = !{i64 2157132859}
!117 = !{i64 2157133583}
!118 = !{i64 2157134339}
!119 = !{i64 2157134871}
!120 = !{i64 2157135336}
!121 = !{i64 2157138001}
!122 = !{i64 2157138462}
!123 = !{i64 2157138953}
!124 = !{i64 2157139414}
!125 = !{i64 2157139799}
!126 = !{i64 2157140185}
!127 = !{i64 2157140706}
!128 = !{i64 2157141867}
!129 = !{i64 2157142391}
!130 = !{i64 2157142985}
!131 = !{i64 2157143481}
!132 = !{i64 2157120571}
!133 = !{i64 2157106120}
!134 = !{i64 2157108362}
!135 = !{i64 2157111552}
!136 = !{i64 2157111875}
!137 = !{i64 2157112346}
