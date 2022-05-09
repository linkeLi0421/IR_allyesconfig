; ModuleID = '/llk/IR_all_yes/drivers/net/can/peak_canfd/peak_canfd.c_pt.bc'
source_filename = "../drivers/net/can/peak_canfd/peak_canfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pucan_rx_msg = type { i16, i16, i32, i32, i32, i32, i8, i8, i16, i32, [0 x i8] }
%struct.peak_canfd_priv = type { %struct.can_priv, ptr, i32, %struct.can_berr_counter, i32, %struct.spinlock, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.can_berr_counter = type { i16, i16 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pucan_error_msg = type { i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.pucan_status_msg = type { i16, i16, i32, i32, i8, [3 x i8] }
%struct.pucan_wr_err_cnt = type { i16, i16, i8, i8, i16 }
%struct.pucan_timing_slow = type { i16, i8, i8, i8, i8, i16 }
%struct.pucan_timing_fast = type { i16, i8, i8, i8, i8, i16 }
%struct.pucan_options = type { i16, i16, i32 }
%struct.pucan_std_filter = type { i16, i8, i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.pucan_tx_abort = type { i16, i16, i32 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.pucan_tx_msg = type { i16, i16, i32, i32, i8, i8, i16, i32, [0 x i8] }

@peak_canfd_nominal_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"peak_canfd\00\00\00\00\00\00", i32 1, i32 256, i32 1, i32 128, i32 128, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@peak_canfd_data_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"peak_canfd\00\00\00\00\00\00", i32 1, i32 32, i32 1, i32 16, i32 16, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@alloc_peak_canfd_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->echo_lock\00", [47 x i8] zeroinitializer }, align 32
@peak_canfd_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @peak_canfd_open, ptr @peak_canfd_close, ptr @peak_canfd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pucan_handle_status.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peak_pciefd\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pucan_handle_status\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/can/peak_canfd/peak_canfd.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bus-off entry status\0A\00", [42 x i8] zeroinitializer }, align 32
@pucan_handle_status.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error passive status\0A\00", [42 x i8] zeroinitializer }, align 32
@pucan_handle_status.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error warning status\0A\00", [42 x i8] zeroinitializer }, align 32
@pucan_handle_status.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error active status\0A\00", [43 x i8] zeroinitializer }, align 32
@pucan_set_timing_slow.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pucan_set_timing_slow\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nominal: brp=%u tseg1=%u tseg2=%u sjw=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@pucan_set_timing_fast.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pucan_set_timing_fast\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"data: brp=%u tseg1=%u tseg2=%u sjw=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"open_candev() failed, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"channel %u reset failed\0A\00", [39 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 258]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"peak_canfd_nominal_const\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 17, i32 41 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"peak_canfd_data_const\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 29, i32 41 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 788, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"peak_canfd_netdev_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 745, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 364, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 372, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 385, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 399, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 132, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 151, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 573, i32 20 }
@___asan_gen_.68 = private constant [43 x i8] c"../drivers/net/can/peak_canfd/peak_canfd.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 533, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 104, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @peak_canfd_nominal_const, ptr @peak_canfd_data_const, ptr @alloc_peak_canfd_dev.__key, ptr @.str, ptr @peak_canfd_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_canfd_nominal_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_canfd_data_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_peak_canfd_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_canfd_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @peak_canfd_handle_msg(ptr noundef %priv, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  %cf.i25 = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %type, align 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %msg, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %5 = tail call i16 @llvm.bswap.i16(i16 %1)
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end.exit_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb3
    i16 3, label %sw.bb5
    i16 258, label %sw.bb7
  ]

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

sw.bb:                                            ; preds = %if.end
  %ndev.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %9 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !48
  %flags.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %flags.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  %conv.i = zext i16 %12 to i32
  %and.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %channel_dlc.i124.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %channel_dlc.i124.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %channel_dlc.i124.i, align 1
  %15 = lshr i8 %14, 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %15) #6
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 8) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cf_len.0.i = phi i8 [ %call2.i, %if.then.i ], [ %16, %if.else.i ]
  %and11.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.then13.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then13.i:                                      ; preds = %if.end.i
  %echo_lock.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 5
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_lock.i) #6
  %17 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.i, align 4
  %client.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 7
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %client.i, align 1
  %conv24.i = zext i8 %20 to i32
  %call25.i = tail call i32 @can_get_echo_skb(ptr noundef %18, i32 noundef %conv24.i, ptr noundef null) #6
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 3
  %21 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %22, %call25.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 1
  %23 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %25 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %28) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_lock.i, i32 noundef %call20.i) #6
  %and29.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then13.i.pucan_handle_can_rx.exit_crit_edge, label %if.then13.i.if.end33.i_crit_edge

if.then13.i.if.end33.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then13.i.pucan_handle_can_rx.exit_crit_edge:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_handle_can_rx.exit

if.end33.i:                                       ; preds = %if.then13.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge
  %29 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev.i, align 4
  br i1 %tobool.not.i, label %if.else60.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end33.i
  %call39.i = call ptr @alloc_canfd_skb(ptr noundef %30, ptr noundef nonnull %cf.i) #6
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %if.then37.i.pucan_handle_can_rx.exit_crit_edge, label %if.end42.i

if.then37.i.pucan_handle_can_rx.exit_crit_edge:   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_handle_can_rx.exit

if.end42.i:                                       ; preds = %if.then37.i
  %and44.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end50.i_crit_edge, label %if.then46.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf.i, align 4
  %flags47.i = getelementptr inbounds %struct.canfd_frame, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags47.i, align 1
  %35 = or i8 %34, 1
  store i8 %35, ptr %flags47.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.end42.i.if.end50.i_crit_edge
  %and52.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end66.i_crit_edge, label %if.then54.i

if.end50.i.if.end66.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cf.i, align 4
  %flags55.i = getelementptr inbounds %struct.canfd_frame, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags55.i, align 1
  %40 = or i8 %39, 2
  store i8 %40, ptr %flags55.i, align 1
  br label %if.end66.i

if.else60.i:                                      ; preds = %if.end33.i
  %call62.i = call ptr @alloc_can_skb(ptr noundef %30, ptr noundef nonnull %cf.i) #6
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %if.else60.i.pucan_handle_can_rx.exit_crit_edge, label %if.else60.i.if.end66.i_crit_edge

if.else60.i.if.end66.i_crit_edge:                 ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.else60.i.pucan_handle_can_rx.exit_crit_edge:   ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_handle_can_rx.exit

if.end66.i:                                       ; preds = %if.else60.i.if.end66.i_crit_edge, %if.then54.i, %if.end50.i.if.end66.i_crit_edge
  %skb.0.i = phi ptr [ %call39.i, %if.then54.i ], [ %call39.i, %if.end50.i.if.end66.i_crit_edge ], [ %call62.i, %if.else60.i.if.end66.i_crit_edge ]
  %can_id.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 9
  %41 = ptrtoint ptr %can_id.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %can_id.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cf.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %45, align 8
  %47 = load ptr, ptr %cf.i, align 4
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %cf_len.0.i, ptr %len.i, align 4
  %and69.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end66.i.if.end74.i_crit_edge, label %if.then71.i

if.end66.i.if.end74.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i

if.then71.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %47, align 8
  %or73.i = or i32 %50, -2147483648
  store i32 %or73.i, ptr %47, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then71.i, %if.end66.i.if.end74.i_crit_edge
  %and76.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  %51 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cf.i, align 4
  br i1 %tobool77.not.i, label %if.else81.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %or80.i = or i32 %54, 1073741824
  store i32 %or80.i, ptr %52, align 8
  br label %if.end88.i

if.else81.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %52, i32 0, i32 5
  %d.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 10
  %len83.i = getelementptr inbounds %struct.canfd_frame, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %len83.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %len83.i, align 4
  %conv84.i = zext i8 %56 to i32
  %57 = call ptr @memcpy(ptr %data.i, ptr %d.i, i32 %conv84.i)
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 2
  %58 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_bytes.i, align 4
  %add87.i = add i32 %59, %conv84.i
  store i32 %add87.i, ptr %rx_bytes.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else81.i, %if.then78.i
  %60 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats1.i, align 4
  %inc89.i = add i32 %61, 1
  store i32 %inc89.i, ptr %stats1.i, align 4
  %ts_low.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 2
  %62 = ptrtoint ptr %ts_low.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ts_low.i, align 1
  %ts_high.i = getelementptr inbounds %struct.pucan_rx_msg, ptr %msg, i32 0, i32 3
  %64 = ptrtoint ptr %ts_high.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %ts_high.i, align 1
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 17
  %66 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %67, i32 0, i32 7
  %68 = zext i32 %65 to i64
  %69 = zext i32 %63 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %68
  %72 = call i64 @llvm.bswap.i64(i64 %71) #6
  %mul.i.i = mul i64 %72, 1000
  %73 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %mul.i.i, ptr %hwtstamps.i.i.i, align 8
  %call3.i.i = call i32 @netif_rx(ptr noundef nonnull %skb.0.i) #6
  br label %pucan_handle_can_rx.exit

pucan_handle_can_rx.exit:                         ; preds = %if.end88.i, %if.else60.i.pucan_handle_can_rx.exit_crit_edge, %if.then37.i.pucan_handle_can_rx.exit_crit_edge, %if.then13.i.pucan_handle_can_rx.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end88.i ], [ 0, %if.then13.i.pucan_handle_can_rx.exit_crit_edge ], [ -12, %if.then37.i.pucan_handle_can_rx.exit_crit_edge ], [ -12, %if.else60.i.pucan_handle_can_rx.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_err_cnt.i = getelementptr inbounds %struct.pucan_error_msg, ptr %msg, i32 0, i32 6
  %74 = ptrtoint ptr %tx_err_cnt.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tx_err_cnt.i, align 1
  %conv.i24 = zext i8 %75 to i16
  %bec.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3
  %76 = ptrtoint ptr %bec.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i24, ptr %bec.i, align 4
  %rx_err_cnt.i = getelementptr inbounds %struct.pucan_error_msg, ptr %msg, i32 0, i32 7
  %77 = ptrtoint ptr %rx_err_cnt.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_err_cnt.i, align 1
  %conv1.i = zext i8 %78 to i16
  %rxerr.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %rxerr.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv1.i, ptr %rxerr.i, align 2
  br label %exit

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @pucan_handle_status(ptr noundef %priv, ptr noundef %msg)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %ndev.i26 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 1
  %80 = ptrtoint ptr %ndev.i26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ndev.i26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i25) #6
  %82 = ptrtoint ptr %cf.i25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i25, align 4, !annotation !48
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 36, i32 11
  %83 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i27 = add i32 %84, 1
  store i32 %inc.i27, ptr %rx_over_errors.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 36, i32 4
  %85 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_errors.i, align 4
  %inc2.i = add i32 %86, 1
  store i32 %inc2.i, ptr %rx_errors.i, align 4
  %87 = ptrtoint ptr %ndev.i26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ndev.i26, align 4
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %88, ptr noundef nonnull %cf.i25) #6
  %tobool.not.i28 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i28, label %if.then.i29, label %if.end.i33

if.then.i29:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 36, i32 6
  %89 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_dropped.i, align 4
  %inc4.i = add i32 %90, 1
  store i32 %inc4.i, ptr %rx_dropped.i, align 4
  br label %pucan_handle_cache_critical.exit

if.end.i33:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %cf.i25 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cf.i25, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %or.i = or i32 %94, 4
  store i32 %or.i, ptr %92, align 8
  %95 = load ptr, ptr %cf.i25, align 4
  %arrayidx.i = getelementptr %struct.can_frame, ptr %95, i32 0, i32 5, i32 1
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %arrayidx.i, align 1
  %bec.i30 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3
  %97 = ptrtoint ptr %bec.i30 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %bec.i30, align 4
  %conv.i31 = trunc i16 %98 to i8
  %99 = load ptr, ptr %cf.i25, align 4
  %arrayidx6.i = getelementptr %struct.can_frame, ptr %99, i32 0, i32 5, i32 6
  %100 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.i31, ptr %arrayidx6.i, align 2
  %rxerr.i32 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %rxerr.i32 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %rxerr.i32, align 2
  %conv8.i = trunc i16 %102 to i8
  %103 = load ptr, ptr %cf.i25, align 4
  %arrayidx10.i = getelementptr %struct.can_frame, ptr %103, i32 0, i32 5, i32 7
  %104 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv8.i, ptr %arrayidx10.i, align 1
  %call11.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #6
  br label %pucan_handle_cache_critical.exit

pucan_handle_cache_critical.exit:                 ; preds = %if.end.i33, %if.then.i29
  %retval.0.i = phi i32 [ 0, %if.end.i33 ], [ -12, %if.then.i29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i25) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %pucan_handle_cache_critical.exit, %sw.bb5, %pucan_handle_can_rx.exit
  %err.0 = phi i32 [ %retval.0.i, %pucan_handle_cache_critical.exit ], [ %call6, %sw.bb5 ], [ %retval.1.i, %pucan_handle_can_rx.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.exit_crit_edge

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exit:                                             ; preds = %sw.epilog.exit_crit_edge, %sw.bb3, %if.end.exit_crit_edge, %entry.exit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %exit, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %exit ], [ %err.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pucan_handle_status(ptr noundef %priv, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !48
  %channel_p_w_b.i = getelementptr inbounds %struct.pucan_status_msg, ptr %msg, i32 0, i32 4
  %3 = ptrtoint ptr %channel_p_w_b.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel_p_w_b.i, align 1
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %enable_tx_path = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 12
  %6 = ptrtoint ptr %enable_tx_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_tx_path, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %call6 = tail call i32 %7(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup171_crit_edge

if.then4.cleanup171_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #6
  br label %cleanup171

if.end10:                                         ; preds = %entry
  %call11 = call ptr @alloc_can_err_skb(ptr noundef %1, ptr noundef nonnull %cf) #6
  %10 = ptrtoint ptr %channel_p_w_b.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel_p_w_b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool13.not = icmp sgt i8 %11, -1
  br i1 %tobool13.not, label %if.else, label %do.body15

do.body15:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_handle_status.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_handle_status, %do.end24)) #6
          to label %if.then21 [label %do.end24], !srcloc !49

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_handle_status.__UNIQUE_ID_ddebug463, ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body15
  %state = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 4
  %bus_off = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_off, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %1) #6
  %cond = icmp eq ptr %call11, null
  br i1 %cond, label %do.end24.if.then167_crit_edge, label %if.then27

do.end24.if.then167_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %or = or i32 %18, 64
  store i32 %or, ptr %16, align 8
  br label %if.end169

if.else:                                          ; preds = %if.end10
  %19 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool30.not = icmp eq i8 %19, 0
  br i1 %tobool30.not, label %if.else77, label %do.body33

do.body33:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_handle_status.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_handle_status, %do.end52)) #6
          to label %if.then47 [label %do.end52], !srcloc !49

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_handle_status.__UNIQUE_ID_ddebug464, ptr noundef %1, ptr noundef nonnull @.str.5) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body33
  %state54 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %20 = ptrtoint ptr %state54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %state54, align 4
  %error_passive = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_passive, align 4
  %inc57 = add i32 %22, 1
  store i32 %inc57, ptr %error_passive, align 4
  %cond215 = icmp eq ptr %call11, null
  br i1 %cond215, label %do.end52.if.then167_crit_edge, label %if.then59

do.end52.if.then167_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

if.then59:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %or61 = or i32 %26, 4
  store i32 %or61, ptr %24, align 8
  %bec = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3
  %27 = ptrtoint ptr %bec to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bec, align 4
  %rxerr = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rxerr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp = icmp ugt i16 %28, %30
  %conv65 = select i1 %cmp, i8 32, i8 16
  %31 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %32, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv65, ptr %arrayidx, align 1
  %34 = ptrtoint ptr %bec to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bec, align 4
  %conv68 = trunc i16 %35 to i8
  %36 = load ptr, ptr %cf, align 4
  %arrayidx70 = getelementptr %struct.can_frame, ptr %36, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv68, ptr %arrayidx70, align 2
  %38 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rxerr, align 2
  %conv73 = trunc i16 %39 to i8
  %40 = load ptr, ptr %cf, align 4
  %arrayidx75 = getelementptr %struct.can_frame, ptr %40, i32 0, i32 5, i32 7
  %41 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv73, ptr %arrayidx75, align 1
  br label %if.end169

if.else77:                                        ; preds = %if.else
  %42 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool79.not = icmp eq i8 %42, 0
  br i1 %tobool79.not, label %if.else134, label %do.body82

do.body82:                                        ; preds = %if.else77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_handle_status.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_handle_status, %do.end101)) #6
          to label %if.then96 [label %do.end101], !srcloc !49

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_handle_status.__UNIQUE_ID_ddebug465, ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body82
  %state103 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %43 = ptrtoint ptr %state103 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %state103, align 4
  %error_warning = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error_warning, align 4
  %inc106 = add i32 %45, 1
  store i32 %inc106, ptr %error_warning, align 4
  %cond216 = icmp eq ptr %call11, null
  br i1 %cond216, label %do.end101.if.then167_crit_edge, label %if.then108

do.end101.if.then167_crit_edge:                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

if.then108:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cf, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %or110 = or i32 %49, 4
  store i32 %or110, ptr %47, align 8
  %bec111 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3
  %50 = ptrtoint ptr %bec111 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bec111, align 4
  %rxerr115 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %rxerr115 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rxerr115, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp117 = icmp ugt i16 %51, %53
  %conv120 = select i1 %cmp117, i8 8, i8 4
  %54 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cf, align 4
  %arrayidx122 = getelementptr %struct.can_frame, ptr %55, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv120, ptr %arrayidx122, align 1
  %57 = ptrtoint ptr %bec111 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %bec111, align 4
  %conv125 = trunc i16 %58 to i8
  %59 = load ptr, ptr %cf, align 4
  %arrayidx127 = getelementptr %struct.can_frame, ptr %59, i32 0, i32 5, i32 6
  %60 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv125, ptr %arrayidx127, align 2
  %61 = ptrtoint ptr %rxerr115 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rxerr115, align 2
  %conv130 = trunc i16 %62 to i8
  %63 = load ptr, ptr %cf, align 4
  %arrayidx132 = getelementptr %struct.can_frame, ptr %63, i32 0, i32 5, i32 7
  %64 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv130, ptr %arrayidx132, align 1
  br label %if.end169

if.else134:                                       ; preds = %if.else77
  %state136 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %65 = ptrtoint ptr %state136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp137.not = icmp eq i32 %66, 0
  br i1 %cmp137.not, label %if.else161, label %do.body141

do.body141:                                       ; preds = %if.else134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_handle_status.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_handle_status, %if.end165)) #6
          to label %if.then155 [label %if.end165], !srcloc !49

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_handle_status.__UNIQUE_ID_ddebug466, ptr noundef %1, ptr noundef nonnull @.str.7) #6
  br label %if.end165

if.else161:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef %call11) #6
  br label %cleanup171

if.end165:                                        ; preds = %if.then155, %do.body141
  %67 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf, align 4
  call void @can_change_state(ptr noundef %1, ptr noundef %68, i32 noundef 0, i32 noundef 0) #6
  %tobool166.not = icmp eq ptr %call11, null
  br i1 %tobool166.not, label %if.end165.if.then167_crit_edge, label %if.end165.if.end169_crit_edge

if.end165.if.end169_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.end165.if.then167_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then167

if.then167:                                       ; preds = %if.end165.if.then167_crit_edge, %do.end101.if.then167_crit_edge, %do.end52.if.then167_crit_edge, %do.end24.if.then167_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %69 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_dropped, align 4
  %inc168 = add i32 %70, 1
  store i32 %inc168, ptr %rx_dropped, align 4
  br label %cleanup171

if.end169:                                        ; preds = %if.end165.if.end169_crit_edge, %if.then108, %if.then59, %if.then27
  %ts_low = getelementptr inbounds %struct.pucan_status_msg, ptr %msg, i32 0, i32 2
  %71 = ptrtoint ptr %ts_low to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %ts_low, align 1
  %ts_high = getelementptr inbounds %struct.pucan_status_msg, ptr %msg, i32 0, i32 3
  %73 = ptrtoint ptr %ts_high to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %ts_high, align 1
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 17
  %75 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %76, i32 0, i32 7
  %77 = zext i32 %74 to i64
  %78 = zext i32 %72 to i64
  %79 = shl nuw i64 %78, 32
  %80 = or i64 %79, %77
  %81 = call i64 @llvm.bswap.i64(i64 %80) #6
  %mul.i = mul i64 %81, 1000
  %82 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %mul.i, ptr %hwtstamps.i.i, align 8
  %call3.i = call i32 @netif_rx(ptr noundef nonnull %call11) #6
  br label %cleanup171

cleanup171:                                       ; preds = %if.end169, %if.then167, %if.else161, %if.end9, %if.then4.cleanup171_crit_edge
  %retval.1 = phi i32 [ 0, %if.end9 ], [ %call6, %if.then4.cleanup171_crit_edge ], [ 0, %if.end169 ], [ -12, %if.then167 ], [ 0, %if.else161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @peak_canfd_handle_msgs_list(ptr noundef %priv, ptr nocapture noundef readonly %msg_list, i32 noundef %msg_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_count)
  %cmp13 = icmp sgt i32 %msg_count, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %msg_ptr.014 = phi ptr [ %add.ptr, %if.end.for.body_crit_edge ], [ %msg_list, %entry.for.body_crit_edge ]
  %call = tail call i32 @peak_canfd_handle_msg(ptr noundef %priv, ptr noundef %msg_ptr.014)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %add = add nuw i32 %call, 3
  %and = and i32 %add, -4
  %add.ptr = getelementptr i8, ptr %msg_ptr.014, i32 %and
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %msg_count
  br i1 %exitcond.not, label %if.end.for.end.thread_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp2.not, i32 %i.015, i32 %call
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %0 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ %msg_count, %if.end.for.end.thread_crit_edge ]
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_peak_canfd_dev(i32 noundef %sizeof_priv, i32 noundef %index, i32 noundef %echo_skb_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %echo_skb_max)
  %cmp = icmp slt i32 %echo_skb_max, 0
  %spec.store.select = select i1 %cmp, i32 24, i32 %echo_skb_max
  %call = tail call ptr @alloc_candev_mqs(i32 noundef %sizeof_priv, i32 noundef %spec.store.select, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr i8, ptr %call, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 4
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %1 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @peak_canfd_nominal_const, ptr %bittiming_const, align 4
  %data_bittiming_const = getelementptr i8, ptr %call, i32 2336
  %2 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @peak_canfd_data_const, ptr %data_bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %3 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @peak_canfd_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call, i32 2608
  %4 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @peak_canfd_get_berr_counter, ptr %do_get_berr_counter, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %5 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @peak_canfd_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_data_bittiming = getelementptr i8, ptr %call, i32 2592
  %6 = ptrtoint ptr %do_set_data_bittiming to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @peak_canfd_set_data_bittiming, ptr %do_set_data_bittiming, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %7 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 183, ptr %ctrlmode_supported, align 4
  %ndev11 = getelementptr i8, ptr %call, i32 2616
  %8 = ptrtoint ptr %ndev11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ndev11, align 4
  %index12 = getelementptr i8, ptr %call, i32 2620
  %9 = ptrtoint ptr %index12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %index12, align 4
  %cmd_len = getelementptr i8, ptr %call, i32 2676
  %10 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cmd_len, align 4
  %echo_lock = getelementptr i8, ptr %call, i32 2632
  tail call void @__raw_spin_lock_init(ptr noundef %echo_lock, ptr noundef nonnull @.str, ptr noundef nonnull @alloc_peak_canfd_dev.__key, i16 noundef signext 3) #6
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or = or i32 %12, 262144
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @peak_canfd_netdev_ops, ptr %netdev_ops, align 8
  %conv = trunc i32 %index to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 60
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %dev_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_set_mode(ptr noundef %ndev, i32 noundef %mode) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @peak_canfd_start(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @peak_canfd_get_berr_counter(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %bec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %ndev, i32 2624
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bec1, align 4
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_set_bittiming(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %bittiming = getelementptr i8, ptr %ndev, i32 2340
  %call1 = tail call fastcc i32 @pucan_set_timing_slow(ptr noundef %add.ptr.i, ptr noundef %bittiming)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_set_data_bittiming(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %data_bittiming = getelementptr i8, ptr %ndev, i32 2372
  %call1 = tail call fastcc i32 @pucan_set_timing_fast(ptr noundef %add.ptr.i, ptr noundef %data_bittiming)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @peak_canfd_start(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_len.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_len.i.i, align 4
  %cmd_maxlen.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 8
  %1 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i.i = icmp ult i32 %2, 8
  br i1 %cmp.i.i, label %entry.pucan_add_cmd.exit.i_crit_edge, label %if.end.i.i

entry.pucan_add_cmd.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buffer.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 1
  %index.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %.tr.i = trunc i32 %7 to i16
  %8 = shl i16 %.tr.i, 12
  %conv.i.i.i = or i16 %8, 10
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %4, align 1
  %11 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i = add i32 %12, 8
  store i32 %add3.i.i, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i

pucan_add_cmd.exit.i:                             ; preds = %if.end.i.i, %entry.pucan_add_cmd.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ null, %entry.pucan_add_cmd.exit.i_crit_edge ]
  %sel_mask.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %retval.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %sel_mask.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 192, ptr %sel_mask.i, align 1
  %tx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %retval.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %tx_counter.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tx_counter.i, align 1
  %rx_counter.i = getelementptr inbounds %struct.pucan_wr_err_cnt, ptr %retval.0.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %rx_counter.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rx_counter.i, align 1
  %pre_cmd.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 9
  %16 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %pucan_add_cmd.exit.i.if.end4.i.i_crit_edge, label %if.then.i.i

pucan_add_cmd.exit.i.if.end4.i.i_crit_edge:       ; preds = %pucan_add_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %pucan_add_cmd.exit.i
  %call.i.i = tail call i32 %17(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.err_exit_crit_edge

if.then.i.i.err_exit_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %pucan_add_cmd.exit.i.if.end4.i.i_crit_edge
  %write_cmd.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 10
  %18 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i = tail call i32 %19(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.err_exit_crit_edge

if.end4.i.i.err_exit_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %post_cmd.i.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 11
  %20 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.if.end_crit_edge, label %pucan_clr_err_counters.exit

if.end8.i.i.if.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pucan_clr_err_counters.exit:                      ; preds = %if.end8.i.i
  %call12.i.i = tail call i32 %21(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not, label %pucan_clr_err_counters.exit.if.end_crit_edge, label %pucan_clr_err_counters.exit.err_exit_crit_edge

pucan_clr_err_counters.exit.err_exit_crit_edge:   ; preds = %pucan_clr_err_counters.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

pucan_clr_err_counters.exit.if.end_crit_edge:     ; preds = %pucan_clr_err_counters.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %pucan_clr_err_counters.exit.if.end_crit_edge, %if.end8.i.i.if.end_crit_edge
  %bec = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 3
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %22 = ptrtoint ptr %bec to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %bec, align 4
  %23 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %25 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd_len.i.i, align 4
  %26 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i.i39 = icmp ult i32 %27, 8
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %cmp.i.i39, label %if.then3.pucan_add_cmd.exit.i25_crit_edge, label %if.end.i.i22

if.then3.pucan_add_cmd.exit.i25_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i25

if.end.i.i22:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i17 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 7
  %28 = ptrtoint ptr %cmd_buffer.i.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd_buffer.i.i17, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %29, align 1
  %index.i.i18 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 2
  %31 = ptrtoint ptr %index.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i18, align 4
  %.tr.i19 = trunc i32 %32 to i16
  %33 = shl i16 %.tr.i19, 12
  %conv.i.i.i20 = or i16 %33, 3
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i20) #6
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %29, align 1
  %36 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i21 = add i32 %37, 8
  store i32 %add3.i.i21, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i25

pucan_add_cmd.exit.i25:                           ; preds = %if.end.i.i22, %if.then3.pucan_add_cmd.exit.i25_crit_edge
  %38 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i24 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i24, label %pucan_add_cmd.exit.i25.if.end4.i.i32_crit_edge, label %if.then.i.i28

pucan_add_cmd.exit.i25.if.end4.i.i32_crit_edge:   ; preds = %pucan_add_cmd.exit.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i32

if.then.i.i28:                                    ; preds = %pucan_add_cmd.exit.i25
  %call.i.i26 = tail call i32 %39(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool2.not.i.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool2.not.i.i27, label %if.then.i.i28.if.end4.i.i32_crit_edge, label %if.then.i.i28.err_exit_crit_edge

if.then.i.i28.err_exit_crit_edge:                 ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then.i.i28.if.end4.i.i32_crit_edge:            ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i32

if.end4.i.i32:                                    ; preds = %if.then.i.i28.if.end4.i.i32_crit_edge, %pucan_add_cmd.exit.i25.if.end4.i.i32_crit_edge
  %40 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i30 = tail call i32 %41(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i30)
  %tobool6.not.i.i31 = icmp eq i32 %call5.i.i30, 0
  br i1 %tobool6.not.i.i31, label %if.end8.i.i35, label %if.end4.i.i32.err_exit_crit_edge

if.end4.i.i32.err_exit_crit_edge:                 ; preds = %if.end4.i.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end8.i.i35:                                    ; preds = %if.end4.i.i32
  %42 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i34 = icmp eq ptr %43, null
  br i1 %tobool9.not.i.i34, label %if.end8.i.i35.err_exit.sink.split_crit_edge, label %pucan_write_cmd.exit.i

if.end8.i.i35.err_exit.sink.split_crit_edge:      ; preds = %if.end8.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit.sink.split

pucan_write_cmd.exit.i:                           ; preds = %if.end8.i.i35
  %call12.i.i36 = tail call i32 %43(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i36)
  %tobool.not.i = icmp eq i32 %call12.i.i36, 0
  br i1 %tobool.not.i, label %pucan_write_cmd.exit.i.err_exit.sink.split_crit_edge, label %pucan_write_cmd.exit.i.err_exit_crit_edge

pucan_write_cmd.exit.i.err_exit_crit_edge:        ; preds = %pucan_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

pucan_write_cmd.exit.i.err_exit.sink.split_crit_edge: ; preds = %pucan_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit.sink.split

if.else:                                          ; preds = %if.end
  br i1 %cmp.i.i39, label %if.else.pucan_add_cmd.exit.i48_crit_edge, label %if.end.i.i45

if.else.pucan_add_cmd.exit.i48_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i48

if.end.i.i45:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i40 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 7
  %44 = ptrtoint ptr %cmd_buffer.i.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd_buffer.i.i40, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 0, ptr %45, align 1
  %index.i.i41 = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 2
  %47 = ptrtoint ptr %index.i.i41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index.i.i41, align 4
  %.tr.i42 = trunc i32 %48 to i16
  %49 = shl i16 %.tr.i42, 12
  %conv.i.i.i43 = or i16 %49, 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i43) #6
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %45, align 1
  %52 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i44 = add i32 %53, 8
  store i32 %add3.i.i44, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i48

pucan_add_cmd.exit.i48:                           ; preds = %if.end.i.i45, %if.else.pucan_add_cmd.exit.i48_crit_edge
  %54 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i47 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i47, label %pucan_add_cmd.exit.i48.if.end4.i.i55_crit_edge, label %if.then.i.i51

pucan_add_cmd.exit.i48.if.end4.i.i55_crit_edge:   ; preds = %pucan_add_cmd.exit.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i55

if.then.i.i51:                                    ; preds = %pucan_add_cmd.exit.i48
  %call.i.i49 = tail call i32 %55(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool2.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool2.not.i.i50, label %if.then.i.i51.if.end4.i.i55_crit_edge, label %if.then.i.i51.err_exit_crit_edge

if.then.i.i51.err_exit_crit_edge:                 ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then.i.i51.if.end4.i.i55_crit_edge:            ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i55

if.end4.i.i55:                                    ; preds = %if.then.i.i51.if.end4.i.i55_crit_edge, %pucan_add_cmd.exit.i48.if.end4.i.i55_crit_edge
  %56 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i53 = tail call i32 %57(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i53)
  %tobool6.not.i.i54 = icmp eq i32 %call5.i.i53, 0
  br i1 %tobool6.not.i.i54, label %if.end8.i.i58, label %if.end4.i.i55.err_exit_crit_edge

if.end4.i.i55.err_exit_crit_edge:                 ; preds = %if.end4.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end8.i.i58:                                    ; preds = %if.end4.i.i55
  %58 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i57 = icmp eq ptr %59, null
  br i1 %tobool9.not.i.i57, label %if.end8.i.i58.err_exit.sink.split_crit_edge, label %pucan_write_cmd.exit.i61

if.end8.i.i58.err_exit.sink.split_crit_edge:      ; preds = %if.end8.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit.sink.split

pucan_write_cmd.exit.i61:                         ; preds = %if.end8.i.i58
  %call12.i.i59 = tail call i32 %59(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i59)
  %tobool.not.i60 = icmp eq i32 %call12.i.i59, 0
  br i1 %tobool.not.i60, label %pucan_write_cmd.exit.i61.err_exit.sink.split_crit_edge, label %pucan_write_cmd.exit.i61.err_exit_crit_edge

pucan_write_cmd.exit.i61.err_exit_crit_edge:      ; preds = %pucan_write_cmd.exit.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

pucan_write_cmd.exit.i61.err_exit.sink.split_crit_edge: ; preds = %pucan_write_cmd.exit.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit.sink.split

err_exit.sink.split:                              ; preds = %pucan_write_cmd.exit.i61.err_exit.sink.split_crit_edge, %if.end8.i.i58.err_exit.sink.split_crit_edge, %pucan_write_cmd.exit.i.err_exit.sink.split_crit_edge, %if.end8.i.i35.err_exit.sink.split_crit_edge
  %state.i62 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 21
  %60 = ptrtoint ptr %state.i62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %state.i62, align 4
  br label %err_exit

err_exit:                                         ; preds = %err_exit.sink.split, %pucan_write_cmd.exit.i61.err_exit_crit_edge, %if.end4.i.i55.err_exit_crit_edge, %if.then.i.i51.err_exit_crit_edge, %pucan_write_cmd.exit.i.err_exit_crit_edge, %if.end4.i.i32.err_exit_crit_edge, %if.then.i.i28.err_exit_crit_edge, %pucan_clr_err_counters.exit.err_exit_crit_edge, %if.end4.i.i.err_exit_crit_edge, %if.then.i.i.err_exit_crit_edge
  %err.0 = phi i32 [ %call12.i.i, %pucan_clr_err_counters.exit.err_exit_crit_edge ], [ %call12.i.i36, %pucan_write_cmd.exit.i.err_exit_crit_edge ], [ %call5.i.i30, %if.end4.i.i32.err_exit_crit_edge ], [ %call.i.i26, %if.then.i.i28.err_exit_crit_edge ], [ %call12.i.i59, %pucan_write_cmd.exit.i61.err_exit_crit_edge ], [ %call5.i.i53, %if.end4.i.i55.err_exit_crit_edge ], [ %call.i.i49, %if.then.i.i51.err_exit_crit_edge ], [ %call5.i.i, %if.end4.i.i.err_exit_crit_edge ], [ %call.i.i, %if.then.i.i.err_exit_crit_edge ], [ 0, %err_exit.sink.split ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pucan_set_timing_slow(ptr noundef %priv, ptr nocapture noundef readonly %pbt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_len.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_len.i, align 4
  %cmd_maxlen.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 8
  %1 = ptrtoint ptr %cmd_maxlen.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_maxlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp ult i32 %2, 8
  br i1 %cmp.i, label %entry.pucan_add_cmd.exit_crit_edge, label %if.end.i

entry.pucan_add_cmd.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buffer.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 1
  %index.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %.tr = trunc i32 %7 to i16
  %8 = shl i16 %.tr, 12
  %conv.i.i = or i16 %8, 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %4, align 1
  %11 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_len.i, align 4
  %add3.i = add i32 %12, 8
  store i32 %add3.i, ptr %cmd_len.i, align 4
  br label %pucan_add_cmd.exit

pucan_add_cmd.exit:                               ; preds = %if.end.i, %entry.pucan_add_cmd.exit_crit_edge
  %retval.0.i51 = phi ptr [ %4, %if.end.i ], [ null, %entry.pucan_add_cmd.exit_crit_edge ]
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 6
  %13 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sjw, align 4
  %sub = add i32 %14, 127
  %and = and i32 %sub, 127
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrlmode, align 4
  %17 = shl i32 %16, 5
  %shl = and i32 %17, 128
  %or = or i32 %shl, %and
  %conv = trunc i32 %or to i8
  %sjw_t = getelementptr inbounds %struct.pucan_timing_slow, ptr %retval.0.i51, i32 0, i32 2
  %18 = ptrtoint ptr %sjw_t to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %sjw_t, align 1
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 3
  %19 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 4
  %21 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %22, %20
  %23 = trunc i32 %add to i8
  %conv6 = add i8 %23, -1
  %tseg1 = getelementptr inbounds %struct.pucan_timing_slow, ptr %retval.0.i51, i32 0, i32 4
  %24 = ptrtoint ptr %tseg1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6, ptr %tseg1, align 1
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 5
  %25 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phase_seg2, align 4
  %27 = trunc i32 %26 to i8
  %28 = add i8 %27, 127
  %conv9 = and i8 %28, 127
  %tseg2 = getelementptr inbounds %struct.pucan_timing_slow, ptr %retval.0.i51, i32 0, i32 3
  %29 = ptrtoint ptr %tseg2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv9, ptr %tseg2, align 1
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 7
  %30 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brp, align 4
  %32 = trunc i32 %31 to i16
  %33 = add i16 %32, 1023
  %conv12 = and i16 %33, 1023
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %brp13 = getelementptr inbounds %struct.pucan_timing_slow, ptr %retval.0.i51, i32 0, i32 5
  %35 = ptrtoint ptr %brp13 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %brp13, align 1
  %ewl = getelementptr inbounds %struct.pucan_timing_slow, ptr %retval.0.i51, i32 0, i32 1
  %36 = ptrtoint ptr %ewl to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 96, ptr %ewl, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_set_timing_slow.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_set_timing_slow, %do.end33)) #6
          to label %if.then [label %do.end33], !srcloc !49

if.then:                                          ; preds = %pucan_add_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 4
  %39 = ptrtoint ptr %brp13 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %brp13, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv25 = zext i16 %41 to i32
  %42 = ptrtoint ptr %tseg1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tseg1, align 1
  %conv27 = zext i8 %43 to i32
  %44 = ptrtoint ptr %tseg2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tseg2, align 1
  %conv29 = zext i8 %45 to i32
  %46 = ptrtoint ptr %sjw_t to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sjw_t, align 1
  %conv31 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_set_timing_slow.__UNIQUE_ID_ddebug459, ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then, %pucan_add_cmd.exit
  %pre_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 9
  %48 = ptrtoint ptr %pre_cmd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pre_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %do.end33.if.end4.i_crit_edge, label %if.then.i

do.end33.if.end4.i_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %do.end33
  %call.i = tail call i32 %49(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.pucan_write_cmd.exit_crit_edge

if.then.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %do.end33.if.end4.i_crit_edge
  %write_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 10
  %50 = ptrtoint ptr %write_cmd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_cmd.i, align 4
  %call5.i = tail call i32 %51(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.pucan_write_cmd.exit_crit_edge

if.end4.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.end8.i:                                        ; preds = %if.end4.i
  %post_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 11
  %52 = ptrtoint ptr %post_cmd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %post_cmd.i, align 4
  %tobool9.not.i = icmp eq ptr %53, null
  br i1 %tobool9.not.i, label %if.end8.i.pucan_write_cmd.exit_crit_edge, label %if.then10.i

if.end8.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 %53(ptr noundef %priv) #6
  br label %pucan_write_cmd.exit

pucan_write_cmd.exit:                             ; preds = %if.then10.i, %if.end8.i.pucan_write_cmd.exit_crit_edge, %if.end4.i.pucan_write_cmd.exit_crit_edge, %if.then.i.pucan_write_cmd.exit_crit_edge
  %retval.0.i52 = phi i32 [ %call.i, %if.then.i.pucan_write_cmd.exit_crit_edge ], [ %call5.i, %if.end4.i.pucan_write_cmd.exit_crit_edge ], [ %call12.i, %if.then10.i ], [ 0, %if.end8.i.pucan_write_cmd.exit_crit_edge ]
  ret i32 %retval.0.i52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pucan_set_timing_fast(ptr noundef %priv, ptr nocapture noundef readonly %pbt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_len.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_len.i, align 4
  %cmd_maxlen.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 8
  %1 = ptrtoint ptr %cmd_maxlen.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_maxlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp ult i32 %2, 8
  br i1 %cmp.i, label %entry.pucan_add_cmd.exit_crit_edge, label %if.end.i

entry.pucan_add_cmd.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %cmd_buffer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buffer.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 1
  %index.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %.tr = trunc i32 %7 to i16
  %8 = shl i16 %.tr, 12
  %conv.i.i = or i16 %8, 5
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %4, align 1
  %11 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_len.i, align 4
  %add3.i = add i32 %12, 8
  store i32 %add3.i, ptr %cmd_len.i, align 4
  br label %pucan_add_cmd.exit

pucan_add_cmd.exit:                               ; preds = %if.end.i, %entry.pucan_add_cmd.exit_crit_edge
  %retval.0.i43 = phi ptr [ %4, %if.end.i ], [ null, %entry.pucan_add_cmd.exit_crit_edge ]
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 6
  %13 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sjw, align 4
  %15 = trunc i32 %14 to i8
  %16 = add i8 %15, 15
  %conv = and i8 %16, 15
  %sjw2 = getelementptr inbounds %struct.pucan_timing_fast, ptr %retval.0.i43, i32 0, i32 2
  %17 = ptrtoint ptr %sjw2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %sjw2, align 1
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 3
  %18 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 4
  %20 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %21, %19
  %22 = trunc i32 %add to i8
  %23 = add i8 %22, 31
  %conv5 = and i8 %23, 31
  %tseg1 = getelementptr inbounds %struct.pucan_timing_fast, ptr %retval.0.i43, i32 0, i32 4
  %24 = ptrtoint ptr %tseg1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv5, ptr %tseg1, align 1
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 5
  %25 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phase_seg2, align 4
  %27 = trunc i32 %26 to i8
  %28 = add i8 %27, 15
  %conv8 = and i8 %28, 15
  %tseg2 = getelementptr inbounds %struct.pucan_timing_fast, ptr %retval.0.i43, i32 0, i32 3
  %29 = ptrtoint ptr %tseg2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv8, ptr %tseg2, align 1
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %pbt, i32 0, i32 7
  %30 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brp, align 4
  %32 = trunc i32 %31 to i16
  %33 = add i16 %32, 1023
  %conv11 = and i16 %33, 1023
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %brp12 = getelementptr inbounds %struct.pucan_timing_fast, ptr %retval.0.i43, i32 0, i32 5
  %35 = ptrtoint ptr %brp12 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %brp12, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pucan_set_timing_fast.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pucan_set_timing_fast, %do.end27)) #6
          to label %if.then [label %do.end27], !srcloc !49

if.then:                                          ; preds = %pucan_add_cmd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ndev = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 4
  %38 = ptrtoint ptr %brp12 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %brp12, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv19 = zext i16 %40 to i32
  %41 = ptrtoint ptr %tseg1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tseg1, align 1
  %conv21 = zext i8 %42 to i32
  %43 = ptrtoint ptr %tseg2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tseg2, align 1
  %conv23 = zext i8 %44 to i32
  %45 = ptrtoint ptr %sjw2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sjw2, align 1
  %conv25 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pucan_set_timing_fast.__UNIQUE_ID_ddebug460, ptr noundef %37, ptr noundef nonnull @.str.11, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then, %pucan_add_cmd.exit
  %pre_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 9
  %47 = ptrtoint ptr %pre_cmd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pre_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %do.end27.if.end4.i_crit_edge, label %if.then.i

do.end27.if.end4.i_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %do.end27
  %call.i = tail call i32 %48(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.pucan_write_cmd.exit_crit_edge

if.then.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %do.end27.if.end4.i_crit_edge
  %write_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 10
  %49 = ptrtoint ptr %write_cmd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_cmd.i, align 4
  %call5.i = tail call i32 %50(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.pucan_write_cmd.exit_crit_edge

if.end4.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.end8.i:                                        ; preds = %if.end4.i
  %post_cmd.i = getelementptr inbounds %struct.peak_canfd_priv, ptr %priv, i32 0, i32 11
  %51 = ptrtoint ptr %post_cmd.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %post_cmd.i, align 4
  %tobool9.not.i = icmp eq ptr %52, null
  br i1 %tobool9.not.i, label %if.end8.i.pucan_write_cmd.exit_crit_edge, label %if.then10.i

if.end8.i.pucan_write_cmd.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_write_cmd.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 %52(ptr noundef %priv) #6
  br label %pucan_write_cmd.exit

pucan_write_cmd.exit:                             ; preds = %if.then10.i, %if.end8.i.pucan_write_cmd.exit_crit_edge, %if.end4.i.pucan_write_cmd.exit_crit_edge, %if.then.i.pucan_write_cmd.exit_crit_edge
  %retval.0.i44 = phi i32 [ %call.i, %if.then.i.pucan_write_cmd.exit_crit_edge ], [ %call5.i, %if.end4.i.pucan_write_cmd.exit_crit_edge ], [ %call12.i, %if.then10.i ], [ 0, %if.end8.i.pucan_write_cmd.exit_crit_edge ]
  ret i32 %retval.0.i44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @open_candev(ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.12, i32 noundef %call1) #9
  br label %err_exit

if.end:                                           ; preds = %entry
  %cmd_len.i.i = getelementptr i8, ptr %ndev, i32 2676
  %0 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_len.i.i, align 4
  %cmd_maxlen.i.i = getelementptr i8, ptr %ndev, i32 2684
  %1 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i.i = icmp ult i32 %2, 8
  br i1 %cmp.i.i, label %if.end.pucan_add_cmd.exit.i_crit_edge, label %if.end.i.i

if.end.pucan_add_cmd.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i = getelementptr i8, ptr %ndev, i32 2680
  %3 = ptrtoint ptr %cmd_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_buffer.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 1
  %index.i.i = getelementptr i8, ptr %ndev, i32 2620
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %.tr.i = trunc i32 %7 to i16
  %8 = shl i16 %.tr.i, 12
  %conv.i.i.i = or i16 %8, 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %4, align 1
  %11 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i = add i32 %12, 8
  store i32 %add3.i.i, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i

pucan_add_cmd.exit.i:                             ; preds = %if.end.i.i, %if.end.pucan_add_cmd.exit.i_crit_edge
  %pre_cmd.i.i = getelementptr i8, ptr %ndev, i32 2688
  %13 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %pucan_add_cmd.exit.i.if.end4.i.i_crit_edge, label %if.then.i.i

pucan_add_cmd.exit.i.if.end4.i.i_crit_edge:       ; preds = %pucan_add_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %pucan_add_cmd.exit.i
  %call.i.i = tail call i32 %14(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.err_close_crit_edge

if.then.i.i.err_close_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %pucan_add_cmd.exit.i.if.end4.i.i_crit_edge
  %write_cmd.i.i = getelementptr i8, ptr %ndev, i32 2692
  %15 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i = tail call i32 %16(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.err_close_crit_edge

if.end4.i.i.err_close_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %post_cmd.i.i = getelementptr i8, ptr %ndev, i32 2696
  %17 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i.i, label %if.end8.i.i.if.end5_crit_edge, label %pucan_set_reset_mode.exit

if.end8.i.i.if.end5_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

pucan_set_reset_mode.exit:                        ; preds = %if.end8.i.i
  %call12.i.i = tail call i32 %18(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool3.not = icmp eq i32 %call12.i.i, 0
  br i1 %tobool3.not, label %pucan_set_reset_mode.exit.if.end5_crit_edge, label %pucan_set_reset_mode.exit.err_close_crit_edge

pucan_set_reset_mode.exit.err_close_crit_edge:    ; preds = %pucan_set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

pucan_set_reset_mode.exit.if.end5_crit_edge:      ; preds = %pucan_set_reset_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %pucan_set_reset_mode.exit.if.end5_crit_edge, %if.end8.i.i.if.end5_crit_edge
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %19 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %if.then7

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then7:                                         ; preds = %if.end5
  %and10 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %21 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cmd_len.i.i, align 4
  %22 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp.i.i79 = icmp ult i32 %23, 8
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then7
  br i1 %cmp.i.i79, label %if.then12.pucan_add_cmd.exit.i64_crit_edge, label %if.end.i.i61

if.then12.pucan_add_cmd.exit.i64_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i64

if.end.i.i61:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i56 = getelementptr i8, ptr %ndev, i32 2680
  %24 = ptrtoint ptr %cmd_buffer.i.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_buffer.i.i56, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 0, ptr %25, align 1
  %index.i.i57 = getelementptr i8, ptr %ndev, i32 2620
  %27 = ptrtoint ptr %index.i.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i.i57, align 4
  %.tr.i58 = trunc i32 %28 to i16
  %29 = shl i16 %.tr.i58, 12
  %conv.i.i.i59 = or i16 %29, 12
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i59) #6
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %25, align 1
  %32 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i60 = add i32 %33, 8
  store i32 %add3.i.i60, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i64

pucan_add_cmd.exit.i64:                           ; preds = %if.end.i.i61, %if.then12.pucan_add_cmd.exit.i64_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i61 ], [ null, %if.then12.pucan_add_cmd.exit.i64_crit_edge ]
  %options.i = getelementptr inbounds %struct.pucan_options, ptr %retval.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %options.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 1024, ptr %options.i, align 1
  %35 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i63 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i63, label %pucan_add_cmd.exit.i64.if.end4.i.i71_crit_edge, label %if.then.i.i67

pucan_add_cmd.exit.i64.if.end4.i.i71_crit_edge:   ; preds = %pucan_add_cmd.exit.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i71

if.then.i.i67:                                    ; preds = %pucan_add_cmd.exit.i64
  %call.i.i65 = tail call i32 %36(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool2.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool2.not.i.i66, label %if.then.i.i67.if.end4.i.i71_crit_edge, label %if.then.i.i67.err_close_crit_edge

if.then.i.i67.err_close_crit_edge:                ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then.i.i67.if.end4.i.i71_crit_edge:            ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i71

if.end4.i.i71:                                    ; preds = %if.then.i.i67.if.end4.i.i71_crit_edge, %pucan_add_cmd.exit.i64.if.end4.i.i71_crit_edge
  %37 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i69 = tail call i32 %38(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i69)
  %tobool6.not.i.i70 = icmp eq i32 %call5.i.i69, 0
  br i1 %tobool6.not.i.i70, label %if.end8.i.i74, label %if.end4.i.i71.err_close_crit_edge

if.end4.i.i71.err_close_crit_edge:                ; preds = %if.end4.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end8.i.i74:                                    ; preds = %if.end4.i.i71
  %39 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i73 = icmp eq ptr %40, null
  br i1 %tobool9.not.i.i73, label %if.end8.i.i74.if.end19_crit_edge, label %if.end8.i.i74.if.end15_crit_edge

if.end8.i.i74.if.end15_crit_edge:                 ; preds = %if.end8.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end8.i.i74.if.end19_crit_edge:                 ; preds = %if.end8.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %if.then7
  br i1 %cmp.i.i79, label %if.else.pucan_add_cmd.exit.i90_crit_edge, label %if.end.i.i85

if.else.pucan_add_cmd.exit.i90_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i90

if.end.i.i85:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i80 = getelementptr i8, ptr %ndev, i32 2680
  %41 = ptrtoint ptr %cmd_buffer.i.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmd_buffer.i.i80, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 0, ptr %42, align 1
  %index.i.i81 = getelementptr i8, ptr %ndev, i32 2620
  %44 = ptrtoint ptr %index.i.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index.i.i81, align 4
  %.tr.i82 = trunc i32 %45 to i16
  %46 = shl i16 %.tr.i82, 12
  %conv.i.i.i83 = or i16 %46, 11
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i83) #6
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %42, align 1
  %49 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i84 = add i32 %50, 8
  store i32 %add3.i.i84, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i90

pucan_add_cmd.exit.i90:                           ; preds = %if.end.i.i85, %if.else.pucan_add_cmd.exit.i90_crit_edge
  %retval.0.i.i86 = phi ptr [ %42, %if.end.i.i85 ], [ null, %if.else.pucan_add_cmd.exit.i90_crit_edge ]
  %options.i87 = getelementptr inbounds %struct.pucan_options, ptr %retval.0.i.i86, i32 0, i32 1
  %51 = ptrtoint ptr %options.i87 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 1024, ptr %options.i87, align 1
  %52 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i89 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i89, label %pucan_add_cmd.exit.i90.if.end4.i.i97_crit_edge, label %if.then.i.i93

pucan_add_cmd.exit.i90.if.end4.i.i97_crit_edge:   ; preds = %pucan_add_cmd.exit.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i97

if.then.i.i93:                                    ; preds = %pucan_add_cmd.exit.i90
  %call.i.i91 = tail call i32 %53(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool2.not.i.i92 = icmp eq i32 %call.i.i91, 0
  br i1 %tobool2.not.i.i92, label %if.then.i.i93.if.end4.i.i97_crit_edge, label %if.then.i.i93.err_close_crit_edge

if.then.i.i93.err_close_crit_edge:                ; preds = %if.then.i.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then.i.i93.if.end4.i.i97_crit_edge:            ; preds = %if.then.i.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i97

if.end4.i.i97:                                    ; preds = %if.then.i.i93.if.end4.i.i97_crit_edge, %pucan_add_cmd.exit.i90.if.end4.i.i97_crit_edge
  %54 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i95 = tail call i32 %55(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i95)
  %tobool6.not.i.i96 = icmp eq i32 %call5.i.i95, 0
  br i1 %tobool6.not.i.i96, label %if.end8.i.i100, label %if.end4.i.i97.err_close_crit_edge

if.end4.i.i97.err_close_crit_edge:                ; preds = %if.end4.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end8.i.i100:                                   ; preds = %if.end4.i.i97
  %56 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i99 = icmp eq ptr %57, null
  br i1 %tobool9.not.i.i99, label %if.end8.i.i100.if.end19_crit_edge, label %if.end8.i.i100.if.end15_crit_edge

if.end8.i.i100.if.end15_crit_edge:                ; preds = %if.end8.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end8.i.i100.if.end19_crit_edge:                ; preds = %if.end8.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end15:                                         ; preds = %if.end8.i.i100.if.end15_crit_edge, %if.end8.i.i74.if.end15_crit_edge
  %.sink = phi ptr [ %40, %if.end8.i.i74.if.end15_crit_edge ], [ %57, %if.end8.i.i100.if.end15_crit_edge ]
  %call12.i.i101 = tail call i32 %.sink(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i101)
  %tobool16.not = icmp eq i32 %call12.i.i101, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.end15.err_close_crit_edge

if.end15.err_close_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.end15.if.end19_crit_edge, %if.end8.i.i100.if.end19_crit_edge, %if.end8.i.i74.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %58 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %cmd_len.i.i, align 4
  %59 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i.i106 = icmp ult i32 %60, 8
  br i1 %cmp.i.i106, label %if.end19.pucan_add_cmd.exit.i117_crit_edge, label %if.end.i.i112

if.end19.pucan_add_cmd.exit.i117_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i117

if.end.i.i112:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i107 = getelementptr i8, ptr %ndev, i32 2680
  %61 = ptrtoint ptr %cmd_buffer.i.i107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd_buffer.i.i107, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 0, ptr %62, align 1
  %index.i.i108 = getelementptr i8, ptr %ndev, i32 2620
  %64 = ptrtoint ptr %index.i.i108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index.i.i108, align 4
  %.tr.i109 = trunc i32 %65 to i16
  %66 = shl i16 %.tr.i109, 12
  %conv.i.i.i110 = or i16 %66, 11
  %67 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i110) #6
  %68 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %67, ptr %62, align 1
  %69 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i111 = add i32 %70, 8
  store i32 %add3.i.i111, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i117

pucan_add_cmd.exit.i117:                          ; preds = %if.end.i.i112, %if.end19.pucan_add_cmd.exit.i117_crit_edge
  %retval.0.i.i113 = phi ptr [ %62, %if.end.i.i112 ], [ null, %if.end19.pucan_add_cmd.exit.i117_crit_edge ]
  %options.i114 = getelementptr inbounds %struct.pucan_options, ptr %retval.0.i.i113, i32 0, i32 1
  %71 = ptrtoint ptr %options.i114 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 256, ptr %options.i114, align 1
  %72 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i116 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i116, label %pucan_add_cmd.exit.i117.if.end4.i.i124_crit_edge, label %if.then.i.i120

pucan_add_cmd.exit.i117.if.end4.i.i124_crit_edge: ; preds = %pucan_add_cmd.exit.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i124

if.then.i.i120:                                   ; preds = %pucan_add_cmd.exit.i117
  %call.i.i118 = tail call i32 %73(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %tobool2.not.i.i119 = icmp eq i32 %call.i.i118, 0
  br i1 %tobool2.not.i.i119, label %if.then.i.i120.if.end4.i.i124_crit_edge, label %if.then.i.i120.err_close_crit_edge

if.then.i.i120.err_close_crit_edge:               ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then.i.i120.if.end4.i.i124_crit_edge:          ; preds = %if.then.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i124

if.end4.i.i124:                                   ; preds = %if.then.i.i120.if.end4.i.i124_crit_edge, %pucan_add_cmd.exit.i117.if.end4.i.i124_crit_edge
  %74 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i122 = tail call i32 %75(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i122)
  %tobool6.not.i.i123 = icmp eq i32 %call5.i.i122, 0
  br i1 %tobool6.not.i.i123, label %if.end8.i.i127, label %if.end4.i.i124.err_close_crit_edge

if.end4.i.i124.err_close_crit_edge:               ; preds = %if.end4.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end8.i.i127:                                   ; preds = %if.end4.i.i124
  %76 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i126 = icmp eq ptr %77, null
  br i1 %tobool9.not.i.i126, label %if.end8.i.i127.for.cond.preheader_crit_edge, label %pucan_set_options.exit131

if.end8.i.i127.for.cond.preheader_crit_edge:      ; preds = %if.end8.i.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

pucan_set_options.exit131:                        ; preds = %if.end8.i.i127
  %call12.i.i128 = tail call i32 %77(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i128)
  %tobool21.not = icmp eq i32 %call12.i.i128, 0
  br i1 %tobool21.not, label %pucan_set_options.exit131.for.cond.preheader_crit_edge, label %pucan_set_options.exit131.err_close_crit_edge

pucan_set_options.exit131.err_close_crit_edge:    ; preds = %pucan_set_options.exit131
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

pucan_set_options.exit131.for.cond.preheader_crit_edge: ; preds = %pucan_set_options.exit131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %pucan_set_options.exit131.for.cond.preheader_crit_edge, %if.end8.i.i127.for.cond.preheader_crit_edge
  %cmd_buffer.i.i135 = getelementptr i8, ptr %ndev, i32 2680
  %index.i.i136 = getelementptr i8, ptr %ndev, i32 2620
  br label %for.body

for.body:                                         ; preds = %pucan_set_std_filter.exit.for.body_crit_edge, %for.cond.preheader
  %i.0200 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %pucan_set_std_filter.exit.for.body_crit_edge ]
  %conv = trunc i32 %i.0200 to i8
  %78 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %cmd_len.i.i, align 4
  %79 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %80)
  %cmp.i.i134 = icmp ult i32 %80, 8
  br i1 %cmp.i.i134, label %for.body.pucan_add_cmd.exit.i144_crit_edge, label %if.end.i.i140

for.body.pucan_add_cmd.exit.i144_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i144

if.end.i.i140:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %cmd_buffer.i.i135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd_buffer.i.i135, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 0, ptr %82, align 1
  %84 = ptrtoint ptr %index.i.i136 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i.i136, align 4
  %.tr.i137 = trunc i32 %85 to i16
  %86 = shl i16 %.tr.i137, 12
  %conv.i.i.i138 = or i16 %86, 6
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i138) #6
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %87, ptr %82, align 1
  %89 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i139 = add i32 %90, 8
  store i32 %add3.i.i139, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i144

pucan_add_cmd.exit.i144:                          ; preds = %if.end.i.i140, %for.body.pucan_add_cmd.exit.i144_crit_edge
  %retval.0.i.i141 = phi ptr [ %82, %if.end.i.i140 ], [ null, %for.body.pucan_add_cmd.exit.i144_crit_edge ]
  %idx.i = getelementptr inbounds %struct.pucan_std_filter, ptr %retval.0.i.i141, i32 0, i32 2
  %91 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv, ptr %idx.i, align 1
  %mask2.i = getelementptr inbounds %struct.pucan_std_filter, ptr %retval.0.i.i141, i32 0, i32 3
  %92 = ptrtoint ptr %mask2.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 -1, ptr %mask2.i, align 1
  %93 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i143 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i143, label %pucan_add_cmd.exit.i144.if.end4.i.i151_crit_edge, label %if.then.i.i147

pucan_add_cmd.exit.i144.if.end4.i.i151_crit_edge: ; preds = %pucan_add_cmd.exit.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i151

if.then.i.i147:                                   ; preds = %pucan_add_cmd.exit.i144
  %call.i.i145 = tail call i32 %94(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %tobool2.not.i.i146 = icmp eq i32 %call.i.i145, 0
  br i1 %tobool2.not.i.i146, label %if.then.i.i147.if.end4.i.i151_crit_edge, label %if.then.i.i147.pucan_set_std_filter.exit_crit_edge

if.then.i.i147.pucan_set_std_filter.exit_crit_edge: ; preds = %if.then.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_set_std_filter.exit

if.then.i.i147.if.end4.i.i151_crit_edge:          ; preds = %if.then.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i151

if.end4.i.i151:                                   ; preds = %if.then.i.i147.if.end4.i.i151_crit_edge, %pucan_add_cmd.exit.i144.if.end4.i.i151_crit_edge
  %95 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i149 = tail call i32 %96(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i149)
  %tobool6.not.i.i150 = icmp eq i32 %call5.i.i149, 0
  br i1 %tobool6.not.i.i150, label %if.end8.i.i154, label %if.end4.i.i151.pucan_set_std_filter.exit_crit_edge

if.end4.i.i151.pucan_set_std_filter.exit_crit_edge: ; preds = %if.end4.i.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_set_std_filter.exit

if.end8.i.i154:                                   ; preds = %if.end4.i.i151
  %97 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i153 = icmp eq ptr %98, null
  br i1 %tobool9.not.i.i153, label %if.end8.i.i154.pucan_set_std_filter.exit_crit_edge, label %if.then10.i.i156

if.end8.i.i154.pucan_set_std_filter.exit_crit_edge: ; preds = %if.end8.i.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_set_std_filter.exit

if.then10.i.i156:                                 ; preds = %if.end8.i.i154
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i.i155 = tail call i32 %98(ptr noundef %add.ptr.i) #6
  br label %pucan_set_std_filter.exit

pucan_set_std_filter.exit:                        ; preds = %if.then10.i.i156, %if.end8.i.i154.pucan_set_std_filter.exit_crit_edge, %if.end4.i.i151.pucan_set_std_filter.exit_crit_edge, %if.then.i.i147.pucan_set_std_filter.exit_crit_edge
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %pucan_set_std_filter.exit.for.body_crit_edge

pucan_set_std_filter.exit.for.body_crit_edge:     ; preds = %pucan_set_std_filter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pucan_set_std_filter.exit
  %call25 = tail call fastcc i32 @peak_canfd_start(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %for.end.err_close_crit_edge

for.end.err_close_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end28:                                         ; preds = %for.end
  %99 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %cmd_len.i.i, align 4
  %100 = ptrtoint ptr %cmd_maxlen.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cmd_maxlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %101)
  %cmp.i.i159 = icmp ult i32 %101, 8
  br i1 %cmp.i.i159, label %if.end28.pucan_add_cmd.exit.i168_crit_edge, label %if.end.i.i165

if.end28.pucan_add_cmd.exit.i168_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i168

if.end.i.i165:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %cmd_buffer.i.i135 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cmd_buffer.i.i135, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 0, ptr %103, align 1
  %105 = ptrtoint ptr %index.i.i136 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %index.i.i136, align 4
  %.tr.i162 = trunc i32 %106 to i16
  %107 = shl i16 %.tr.i162, 12
  %conv.i.i.i163 = or i16 %107, 16
  %108 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i163) #6
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %103, align 1
  %110 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cmd_len.i.i, align 4
  %add3.i.i164 = add i32 %111, 8
  store i32 %add3.i.i164, ptr %cmd_len.i.i, align 4
  br label %pucan_add_cmd.exit.i168

pucan_add_cmd.exit.i168:                          ; preds = %if.end.i.i165, %if.end28.pucan_add_cmd.exit.i168_crit_edge
  %112 = ptrtoint ptr %pre_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pre_cmd.i.i, align 4
  %tobool.not.i.i167 = icmp eq ptr %113, null
  br i1 %tobool.not.i.i167, label %pucan_add_cmd.exit.i168.if.end4.i.i175_crit_edge, label %if.then.i.i171

pucan_add_cmd.exit.i168.if.end4.i.i175_crit_edge: ; preds = %pucan_add_cmd.exit.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i175

if.then.i.i171:                                   ; preds = %pucan_add_cmd.exit.i168
  %call.i.i169 = tail call i32 %113(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool2.not.i.i170 = icmp eq i32 %call.i.i169, 0
  br i1 %tobool2.not.i.i170, label %if.then.i.i171.if.end4.i.i175_crit_edge, label %if.then.i.i171.err_close_crit_edge

if.then.i.i171.err_close_crit_edge:               ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.then.i.i171.if.end4.i.i175_crit_edge:          ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i175

if.end4.i.i175:                                   ; preds = %if.then.i.i171.if.end4.i.i175_crit_edge, %pucan_add_cmd.exit.i168.if.end4.i.i175_crit_edge
  %114 = ptrtoint ptr %write_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_cmd.i.i, align 4
  %call5.i.i173 = tail call i32 %115(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i173)
  %tobool6.not.i.i174 = icmp eq i32 %call5.i.i173, 0
  br i1 %tobool6.not.i.i174, label %if.end8.i.i178, label %if.end4.i.i175.err_close_crit_edge

if.end4.i.i175.err_close_crit_edge:               ; preds = %if.end4.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

if.end8.i.i178:                                   ; preds = %if.end4.i.i175
  %116 = ptrtoint ptr %post_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %post_cmd.i.i, align 4
  %tobool9.not.i.i177 = icmp eq ptr %117, null
  br i1 %tobool9.not.i.i177, label %if.end8.i.i178.err_exit_crit_edge, label %pucan_setup_rx_barrier.exit

if.end8.i.i178.err_exit_crit_edge:                ; preds = %if.end8.i.i178
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

pucan_setup_rx_barrier.exit:                      ; preds = %if.end8.i.i178
  %call12.i.i179 = tail call i32 %117(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i179)
  %tobool30.not = icmp eq i32 %call12.i.i179, 0
  br i1 %tobool30.not, label %pucan_setup_rx_barrier.exit.err_exit_crit_edge, label %pucan_setup_rx_barrier.exit.err_close_crit_edge

pucan_setup_rx_barrier.exit.err_close_crit_edge:  ; preds = %pucan_setup_rx_barrier.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_close

pucan_setup_rx_barrier.exit.err_exit_crit_edge:   ; preds = %pucan_setup_rx_barrier.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

err_close:                                        ; preds = %pucan_setup_rx_barrier.exit.err_close_crit_edge, %if.end4.i.i175.err_close_crit_edge, %if.then.i.i171.err_close_crit_edge, %for.end.err_close_crit_edge, %pucan_set_options.exit131.err_close_crit_edge, %if.end4.i.i124.err_close_crit_edge, %if.then.i.i120.err_close_crit_edge, %if.end15.err_close_crit_edge, %if.end4.i.i97.err_close_crit_edge, %if.then.i.i93.err_close_crit_edge, %if.end4.i.i71.err_close_crit_edge, %if.then.i.i67.err_close_crit_edge, %pucan_set_reset_mode.exit.err_close_crit_edge, %if.end4.i.i.err_close_crit_edge, %if.then.i.i.err_close_crit_edge
  %err.1 = phi i32 [ %call12.i.i, %pucan_set_reset_mode.exit.err_close_crit_edge ], [ %call12.i.i101, %if.end15.err_close_crit_edge ], [ %call12.i.i128, %pucan_set_options.exit131.err_close_crit_edge ], [ %call25, %for.end.err_close_crit_edge ], [ %call12.i.i179, %pucan_setup_rx_barrier.exit.err_close_crit_edge ], [ %call5.i.i, %if.end4.i.i.err_close_crit_edge ], [ %call.i.i, %if.then.i.i.err_close_crit_edge ], [ %call5.i.i95, %if.end4.i.i97.err_close_crit_edge ], [ %call.i.i91, %if.then.i.i93.err_close_crit_edge ], [ %call5.i.i69, %if.end4.i.i71.err_close_crit_edge ], [ %call.i.i65, %if.then.i.i67.err_close_crit_edge ], [ %call5.i.i122, %if.end4.i.i124.err_close_crit_edge ], [ %call.i.i118, %if.then.i.i120.err_close_crit_edge ], [ %call5.i.i173, %if.end4.i.i175.err_close_crit_edge ], [ %call.i.i169, %if.then.i.i171.err_close_crit_edge ]
  tail call void @close_candev(ptr noundef %ndev) #6
  br label %err_exit

err_exit:                                         ; preds = %err_close, %pucan_setup_rx_barrier.exit.err_exit_crit_edge, %if.end8.i.i178.err_exit_crit_edge, %if.then
  %err.2 = phi i32 [ %call1, %if.then ], [ %err.1, %err_close ], [ 0, %pucan_setup_rx_barrier.exit.err_exit_crit_edge ], [ 0, %if.end8.i.i178.err_exit_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_close(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %cmd_len.i.i.i = getelementptr i8, ptr %ndev, i32 2676
  %2 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_len.i.i.i, align 4
  %cmd_maxlen.i.i.i = getelementptr i8, ptr %ndev, i32 2684
  %3 = ptrtoint ptr %cmd_maxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_maxlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i.i.i = icmp ult i32 %4, 8
  br i1 %cmp.i.i.i, label %entry.pucan_add_cmd.exit.i.i_crit_edge, label %if.end.i.i.i

entry.pucan_add_cmd.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i.i = getelementptr i8, ptr %ndev, i32 2680
  %5 = ptrtoint ptr %cmd_buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_buffer.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 1
  %index.i.i.i = getelementptr i8, ptr %ndev, i32 2620
  %8 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i.i, align 4
  %.tr.i.i = trunc i32 %9 to i16
  %10 = shl i16 %.tr.i.i, 12
  %conv.i.i.i.i = or i16 %10, 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i.i) #6
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %6, align 1
  %13 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_len.i.i.i, align 4
  %add3.i.i.i = add i32 %14, 8
  store i32 %add3.i.i.i, ptr %cmd_len.i.i.i, align 4
  br label %pucan_add_cmd.exit.i.i

pucan_add_cmd.exit.i.i:                           ; preds = %if.end.i.i.i, %entry.pucan_add_cmd.exit.i.i_crit_edge
  %pre_cmd.i.i.i = getelementptr i8, ptr %ndev, i32 2688
  %15 = ptrtoint ptr %pre_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pre_cmd.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %pucan_add_cmd.exit.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i

pucan_add_cmd.exit.i.i.if.end4.i.i.i_crit_edge:   ; preds = %pucan_add_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %pucan_add_cmd.exit.i.i
  %call.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i.if.then.i_crit_edge

if.then.i.i.i.if.then.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i.if.end4.i.i.i_crit_edge, %pucan_add_cmd.exit.i.i.if.end4.i.i.i_crit_edge
  %write_cmd.i.i.i = getelementptr i8, ptr %ndev, i32 2692
  %17 = ptrtoint ptr %write_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_cmd.i.i.i, align 4
  %call5.i.i.i = tail call i32 %18(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.if.then.i_crit_edge

if.end4.i.i.i.if.then.i_crit_edge:                ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %post_cmd.i.i.i = getelementptr i8, ptr %ndev, i32 2696
  %19 = ptrtoint ptr %post_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %post_cmd.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool9.not.i.i.i, label %if.end8.i.i.i.if.else.i_crit_edge, label %pucan_set_reset_mode.exit.i

if.end8.i.i.i.if.else.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

pucan_set_reset_mode.exit.i:                      ; preds = %if.end8.i.i.i
  %call12.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool.not.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool.not.i, label %pucan_set_reset_mode.exit.i.if.else.i_crit_edge, label %pucan_set_reset_mode.exit.i.if.then.i_crit_edge

pucan_set_reset_mode.exit.i.if.then.i_crit_edge:  ; preds = %pucan_set_reset_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

pucan_set_reset_mode.exit.i.if.else.i_crit_edge:  ; preds = %pucan_set_reset_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %pucan_set_reset_mode.exit.i.if.then.i_crit_edge, %if.end4.i.i.i.if.then.i_crit_edge, %if.then.i.i.i.if.then.i_crit_edge
  %ndev.i = getelementptr i8, ptr %ndev, i32 2616
  %21 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev.i, align 4
  %index.i = getelementptr i8, ptr %ndev, i32 2620
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %24) #9
  br label %peak_canfd_stop.exit

if.else.i:                                        ; preds = %pucan_set_reset_mode.exit.i.if.else.i_crit_edge, %if.end8.i.i.i.if.else.i_crit_edge
  %25 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd_len.i.i.i, align 4
  %26 = ptrtoint ptr %cmd_maxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_maxlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp.i.i7.i = icmp ult i32 %27, 8
  br i1 %cmp.i.i7.i, label %if.else.i.pucan_add_cmd.exit.i16.i_crit_edge, label %if.end.i.i13.i

if.else.i.pucan_add_cmd.exit.i16.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pucan_add_cmd.exit.i16.i

if.end.i.i13.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_buffer.i.i8.i = getelementptr i8, ptr %ndev, i32 2680
  %28 = ptrtoint ptr %cmd_buffer.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd_buffer.i.i8.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %29, align 1
  %index.i.i9.i = getelementptr i8, ptr %ndev, i32 2620
  %31 = ptrtoint ptr %index.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i9.i, align 4
  %.tr.i10.i = trunc i32 %32 to i16
  %33 = shl i16 %.tr.i10.i, 12
  %conv.i.i.i11.i = or i16 %33, 9
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i11.i) #6
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %29, align 1
  %36 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_len.i.i.i, align 4
  %add3.i.i12.i = add i32 %37, 8
  store i32 %add3.i.i12.i, ptr %cmd_len.i.i.i, align 4
  br label %pucan_add_cmd.exit.i16.i

pucan_add_cmd.exit.i16.i:                         ; preds = %if.end.i.i13.i, %if.else.i.pucan_add_cmd.exit.i16.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i13.i ], [ null, %if.else.i.pucan_add_cmd.exit.i16.i_crit_edge ]
  %flags2.i.i = getelementptr inbounds %struct.pucan_tx_abort, ptr %retval.0.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 256, ptr %flags2.i.i, align 1
  %39 = ptrtoint ptr %pre_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pre_cmd.i.i.i, align 4
  %tobool.not.i.i15.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i15.i, label %pucan_add_cmd.exit.i16.i.if.end4.i.i23.i_crit_edge, label %if.then.i.i19.i

pucan_add_cmd.exit.i16.i.if.end4.i.i23.i_crit_edge: ; preds = %pucan_add_cmd.exit.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i23.i

if.then.i.i19.i:                                  ; preds = %pucan_add_cmd.exit.i16.i
  %call.i.i17.i = tail call i32 %40(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %tobool2.not.i.i18.i = icmp eq i32 %call.i.i17.i, 0
  br i1 %tobool2.not.i.i18.i, label %if.then.i.i19.i.if.end4.i.i23.i_crit_edge, label %if.then.i.i19.i.peak_canfd_stop.exit_crit_edge

if.then.i.i19.i.peak_canfd_stop.exit_crit_edge:   ; preds = %if.then.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %peak_canfd_stop.exit

if.then.i.i19.i.if.end4.i.i23.i_crit_edge:        ; preds = %if.then.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i23.i

if.end4.i.i23.i:                                  ; preds = %if.then.i.i19.i.if.end4.i.i23.i_crit_edge, %pucan_add_cmd.exit.i16.i.if.end4.i.i23.i_crit_edge
  %41 = ptrtoint ptr %write_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_cmd.i.i.i, align 4
  %call5.i.i21.i = tail call i32 %42(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i21.i)
  %tobool6.not.i.i22.i = icmp eq i32 %call5.i.i21.i, 0
  br i1 %tobool6.not.i.i22.i, label %if.end8.i.i26.i, label %if.end4.i.i23.i.peak_canfd_stop.exit_crit_edge

if.end4.i.i23.i.peak_canfd_stop.exit_crit_edge:   ; preds = %if.end4.i.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %peak_canfd_stop.exit

if.end8.i.i26.i:                                  ; preds = %if.end4.i.i23.i
  %43 = ptrtoint ptr %post_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %post_cmd.i.i.i, align 4
  %tobool9.not.i.i25.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i.i25.i, label %if.end8.i.i26.i.peak_canfd_stop.exit_crit_edge, label %if.then10.i.i28.i

if.end8.i.i26.i.peak_canfd_stop.exit_crit_edge:   ; preds = %if.end8.i.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %peak_canfd_stop.exit

if.then10.i.i28.i:                                ; preds = %if.end8.i.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i.i27.i = tail call i32 %44(ptr noundef %add.ptr.i) #6
  br label %peak_canfd_stop.exit

peak_canfd_stop.exit:                             ; preds = %if.then10.i.i28.i, %if.end8.i.i26.i.peak_canfd_stop.exit_crit_edge, %if.end4.i.i23.i.peak_canfd_stop.exit_crit_edge, %if.then.i.i19.i.peak_canfd_stop.exit_crit_edge, %if.then.i
  tail call void @close_candev(ptr noundef %ndev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_canfd_start_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  %room_left = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %room_left) #6
  %2 = ptrtoint ptr %room_left to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %room_left, align 4, !annotation !48
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol.i, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %4, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp2.not.i = icmp eq i32 %7, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !50

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp6.i = icmp ugt i8 %9, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !51

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %11)
  %cmp16.not.i = icmp eq i32 %11, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !50

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %cmp21.i = icmp ugt i8 %13, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !51

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %17 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp38.i.i = icmp eq i16 %17, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %18 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex.i.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %15, align 8
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %skbcnt.i.i, align 4
  %24 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %27 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %32 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %len3 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %len3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len3, align 4
  %conv = zext i8 %38 to i16
  %add4 = add nuw nsw i16 %conv, 23
  %and = and i16 %add4, 508
  %alloc_tx_msg = getelementptr i8, ptr %ndev, i32 2704
  %39 = ptrtoint ptr %alloc_tx_msg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alloc_tx_msg, align 4
  %call6 = call ptr %40(ptr noundef %add.ptr.i, i16 noundef zeroext %and, ptr noundef nonnull %room_left) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %41 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %43 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %45 = call i16 @llvm.bswap.i16(i16 %and)
  %46 = ptrtoint ptr %call6 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %call6, align 1
  %type = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 1
  %47 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 16, ptr %type, align 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool10.not = icmp sgt i32 %49, -1
  %. = select i1 %tobool10.not, i32 2047, i32 536870911
  %50 = lshr i32 %49, 30
  %51 = trunc i32 %50 to i16
  %52 = and i16 %51, 2
  %and18 = and i32 %49, %.
  %53 = call i32 @llvm.bswap.i32(i32 %and18)
  %54 = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 7
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %53, ptr %54, align 1
  %len.i185 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i185 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %57)
  %cmp.i = icmp eq i32 %57, 72
  %58 = ptrtoint ptr %len3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %len3, align 4
  br i1 %cmp.i, label %if.then22, label %if.else46

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %59) #6
  %flags28 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags28, align 1
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool31.not = icmp eq i8 %62, 0
  %spec.select.v = select i1 %tobool31.not, i16 16, i16 48
  %spec.select = or i16 %spec.select.v, %52
  %63 = shl i8 %61, 5
  %64 = and i8 %63, 64
  %65 = zext i8 %64 to i16
  %66 = or i16 %spec.select, %65
  br label %if.end56

if.else46:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %1, align 8
  %and49 = lshr i32 %68, 30
  %69 = trunc i32 %and49 to i16
  %70 = and i16 %69, 1
  %71 = or i16 %70, %52
  br label %if.end56

if.end56:                                         ; preds = %if.else46, %if.then22
  %msg_flags.2 = phi i16 [ %71, %if.else46 ], [ %66, %if.then22 ]
  %len.0 = phi i8 [ %59, %if.else46 ], [ %call24, %if.then22 ]
  %ctrlmode = getelementptr i8, ptr %ndev, i32 2476
  %72 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ctrlmode, align 4
  %and60 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %spec.select183.v = select i1 %tobool61.not, i16 4, i16 132
  %spec.select183 = or i16 %spec.select183.v, %msg_flags.2
  %74 = call i16 @llvm.bswap.i16(i16 %spec.select183)
  %flags67 = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 6
  %75 = ptrtoint ptr %flags67 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %flags67, align 1
  %index = getelementptr i8, ptr %ndev, i32 2620
  %76 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index, align 4
  %and68 = and i32 %77, 15
  %conv69 = zext i8 %len.0 to i32
  %shl = shl nuw nsw i32 %conv69, 4
  %or70 = or i32 %and68, %shl
  %conv71 = trunc i32 %or70 to i8
  %channel_dlc = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 4
  %78 = ptrtoint ptr %channel_dlc to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv71, ptr %channel_dlc, align 1
  %d = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 8
  %data72 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %len3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %len3, align 4
  %conv75 = zext i8 %80 to i32
  %81 = call ptr @memcpy(ptr %d, ptr %data72, i32 %conv75)
  %echo_idx = getelementptr i8, ptr %ndev, i32 2628
  %82 = ptrtoint ptr %echo_idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %echo_idx, align 4
  %conv76 = trunc i32 %83 to i8
  %client = getelementptr inbounds %struct.pucan_tx_msg, ptr %call6, i32 0, i32 5
  %84 = ptrtoint ptr %client to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv76, ptr %client, align 1
  %echo_lock = getelementptr i8, ptr %ndev, i32 2632
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_lock) #6
  %85 = ptrtoint ptr %echo_idx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %echo_idx, align 4
  %call84 = call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %86, i32 noundef 0) #6
  %87 = ptrtoint ptr %echo_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %echo_idx, align 4
  %add86 = add i32 %88, 1
  %echo_skb_max = getelementptr i8, ptr %ndev, i32 2464
  %89 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %echo_skb_max, align 4
  %rem = urem i32 %add86, %90
  store i32 %rem, ptr %echo_idx, align 4
  %echo_skb = getelementptr i8, ptr %ndev, i32 2468
  %91 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %92, i32 %rem
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx, align 4
  %tobool91 = icmp ne ptr %94, null
  %95 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ctrlmode, align 4
  %and95 = and i32 %96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  %97 = ptrtoint ptr %room_left to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %room_left, align 4
  %.191 = select i1 %tobool96.not, i32 28, i32 84
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %.191)
  %cmp106 = icmp ult i32 %98, %.191
  %should_stop_tx_queue.0.in = or i1 %tobool91, %cmp106
  br i1 %should_stop_tx_queue.0.in, label %if.then115, label %if.end56.if.end116_crit_edge

if.end56.if.end116_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then115:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i186 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %99 = ptrtoint ptr %_tx.i.i186 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %_tx.i.i186, align 128
  %state.i.i187 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i187) #6
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end56.if.end116_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_lock, i32 noundef %call80) #6
  %write_tx_msg = getelementptr i8, ptr %ndev, i32 2708
  %101 = ptrtoint ptr %write_tx_msg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_tx_msg, align 4
  %call118 = call i32 %102(ptr noundef %add.ptr.i, ptr noundef nonnull %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then7, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %if.end116 ], [ 16, %if.then7 ], [ 0, %can_dropped_invalid_skb.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %room_left) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @alloc_peak_canfd_dev.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 788, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 364, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pucan_handle_status.__UNIQUE_ID_ddebug463, !4, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 372, i32 3}
!11 = !{ptr @pucan_handle_status.__UNIQUE_ID_ddebug464, !10, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 385, i32 3}
!14 = !{ptr @pucan_handle_status.__UNIQUE_ID_ddebug465, !13, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 399, i32 3}
!17 = !{ptr @pucan_handle_status.__UNIQUE_ID_ddebug466, !16, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!18 = !{ptr @peak_canfd_nominal_const, !19, !"peak_canfd_nominal_const", i1 false, i1 false}
!19 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 17, i32 41}
!20 = !{ptr @peak_canfd_data_const, !21, !"peak_canfd_data_const", i1 false, i1 false}
!21 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 29, i32 41}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 132, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pucan_set_timing_slow.__UNIQUE_ID_ddebug459, !23, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 151, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pucan_set_timing_fast.__UNIQUE_ID_ddebug460, !27, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!30 = !{ptr @peak_canfd_netdev_ops, !31, !"peak_canfd_netdev_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 745, i32 36}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 573, i32 20}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/peak_canfd/peak_canfd.c", i32 533, i32 26}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2148753828, i64 2148753833, i64 2148753846, i64 2148753890, i64 2148753924, i64 2148753945}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 2000}
