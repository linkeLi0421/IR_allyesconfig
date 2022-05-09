; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rmnet_pcpu_stats = type { %struct.rmnet_vnd_stats, %struct.u64_stats_sync }
%struct.rmnet_vnd_stats = type { i64, i64, i64, i64, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.106, %union.anon.107, [48 x i8], %union.anon.108, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.110, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { i64 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32, ptr }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.112, i32, i32, i32, i16, i16, %union.anon.114, i32, %union.anon.115, %union.anon.116, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.112 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.105 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rmnet_port = type { ptr, i32, i8, i8, [255 x %struct.hlist_head], ptr, ptr }
%struct.rmnet_endpoint = type { i8, ptr, %struct.hlist_node }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rmnet_vnd_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @rmnet_vnd_init, ptr @rmnet_vnd_uninit, ptr null, ptr null, ptr @rmnet_vnd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmnet_vnd_change_mtu, ptr null, ptr null, ptr @rmnet_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmnet_add_bridge, ptr @rmnet_del_bridge, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmnet_vnd_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rmnet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmnet_get_strings, ptr null, ptr @rmnet_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @rmnet_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rmnet_vnd_newlink.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rmnet: MUX ID already exists\00", [35 x i8] zeroinitializer }, align 32
@rmnet_vnd_newlink.__msg.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rmnet: Invalid MTU on real dev\00", [33 x i8] zeroinitializer }, align 32
@rmnet_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@rmnet_vnd_newlink.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmnet\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmnet_vnd_newlink\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmnet dev created\0A\00", [45 x i8] zeroinitializer }, align 32
@rmnet_vnd_do_flow_control.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rmnet_vnd_do_flow_control\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting VND TX queue state to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rmnet_gstrings_stats = internal constant { [11 x [32 x i8]], [64 x i8] } { [11 x [32 x i8]] [[32 x i8] c"Checksum ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Bad IPv4 header checksum\00\00\00\00\00\00\00\00", [32 x i8] c"Checksum valid bit not set\00\00\00\00\00\00", [32 x i8] c"Checksum validation failed\00\00\00\00\00\00", [32 x i8] c"Checksum error bad buffer\00\00\00\00\00\00\00", [32 x i8] c"Checksum error bad ip version\00\00\00", [32 x i8] c"Checksum error bad transport\00\00\00\00", [32 x i8] c"Checksum skipped on ip fragment\00", [32 x i8] c"Checksum skipped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Checksum computed in software\00\00\00", [32 x i8] c"Checksum computed in hardware\00\00\00"], [64 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"rmnet_vnd_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 156, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"rmnet_ethtool_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 213, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 260, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 273, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 287, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 306, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 271, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"rmnet_gstrings_stats\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 167, i32 19 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @rmnet_vnd_ops, ptr @rmnet_ethtool_ops, ptr @rmnet_vnd_newlink.__msg, ptr @rmnet_vnd_newlink.__msg.1, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rmnet_gstrings_stats], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_vnd_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_vnd_newlink.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_vnd_newlink.__msg.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmnet_gstrings_stats to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_vnd_rx_fixup(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %9, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %9, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %conv = zext i32 %13 to i64
  %rx_bytes = getelementptr inbounds %struct.rmnet_vnd_stats, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes, align 8
  %add4 = add i64 %15, %conv
  store i64 %add4, ptr %rx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %9, i32 0, i32 1, i32 0, i32 1
  %16 = tail call ptr @llvm.returnaddress(i32 0) #12
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !33
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %5 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %14 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %33 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !38

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !39
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_vnd_tx_fixup(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %9, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %tx_pkts = getelementptr inbounds %struct.rmnet_vnd_stats, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_pkts, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %tx_pkts, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %conv = zext i32 %13 to i64
  %tx_bytes = getelementptr inbounds %struct.rmnet_vnd_stats, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_bytes, align 8
  %add4 = add i64 %15, %conv
  store i64 %add4, ptr %tx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %9, i32 0, i32 1, i32 0, i32 1
  %16 = tail call ptr @llvm.returnaddress(i32 0) #12
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !33
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_vnd_setup(ptr noundef %rmnet_dev) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rmnet_vnd_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1500, ptr %mtu, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 21
  %2 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %needed_headroom, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %3 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.i, align 1
  %6 = and i8 %5, -4
  %7 = or i8 %6, 2
  store i8 %7, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %rmnet_dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 55
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %tx_queue_len, align 16
  %header_ops = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 49
  %9 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 519, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %hard_header_len, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, -4099
  store i32 %and, ptr %flags, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 124
  %14 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %needs_free_netdev, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 44
  %15 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rmnet_ethtool_ops, ptr %ethtool_ops, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 23
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features, align 16
  %or = or i64 %17, 4096
  store i64 %or, ptr %features, align 16
  %18 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %addr_assign_type.i, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 54
  call void @get_random_bytes(ptr noundef %perm_addr, i32 noundef 6) #12
  %19 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %perm_addr, align 1
  %21 = and i8 %20, -4
  %22 = or i8 %21, 2
  store i8 %22, ptr %perm_addr, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_vnd_newlink(i8 noundef zeroext %id, ptr noundef %rmnet_dev, ptr noundef %port, ptr noundef %real_dev, ptr nocapture noundef writeonly %ep, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rmnet_dev, i32 2304
  %call1 = tail call ptr @rmnet_get_endpoint(ptr noundef %port, i8 noundef zeroext %id) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_vnd_newlink.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rmnet_vnd_newlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %hw_features = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 24
  %1 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1099511627795, ptr %hw_features, align 8
  %real_dev8 = getelementptr i8, ptr %rmnet_dev, i32 2308
  %2 = ptrtoint ptr %real_dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %real_dev, ptr %real_dev8, align 4
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i.neg = select i1 %tobool.not.i, i32 -4, i32 -8
  %mtu = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %sub = add i32 %spec.select.i.neg, %6
  %call1.i = tail call ptr @rmnet_get_port_rtnl(ptr noundef %real_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub)
  %7 = icmp ugt i32 %sub, 16384
  br i1 %7, label %if.end4.do.body13_crit_edge, label %lor.lhs.false4.i

if.end4.do.body13_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

lor.lhs.false4.i:                                 ; preds = %if.end4
  %data_format.i.i = getelementptr inbounds %struct.rmnet_port, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %data_format.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_format.i.i, align 4
  %and.i.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.neg.i = select i1 %tobool.not.i.i, i32 -4, i32 -8
  %10 = ptrtoint ptr %real_dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %real_dev8, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i, align 4
  %sub.i = add i32 %spec.select.i.neg.i, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp6.i = icmp ult i32 %sub.i, %sub
  br i1 %cmp6.i, label %lor.lhs.false4.i.do.body13_crit_edge, label %if.end21

lor.lhs.false4.i.do.body13_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

do.body13:                                        ; preds = %lor.lhs.false4.i.do.body13_crit_edge, %if.end4.do.body13_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rmnet_vnd_newlink.__msg.1) #12
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %if.then16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rmnet_vnd_newlink.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false4.i
  %mtu7.i = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 20
  %15 = ptrtoint ptr %mtu7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %mtu7.i, align 4
  %call22 = tail call i32 @register_netdevice(ptr noundef %rmnet_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %egress_dev = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %egress_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rmnet_dev, ptr %egress_dev, align 4
  %17 = ptrtoint ptr %ep to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %id, ptr %ep, align 4
  %nr_rmnet_devs = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %nr_rmnet_devs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_rmnet_devs, align 4
  %inc = add i8 %19, 1
  store i8 %inc, ptr %nr_rmnet_devs, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 136
  %20 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rmnet_link_ops, ptr %rtnl_link_ops, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %id, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_vnd_newlink.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_vnd_newlink, %if.then32)) #12
          to label %cleanup [label %if.then32], !srcloc !40

if.then32:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_vnd_newlink.__UNIQUE_ID_ddebug364, ptr noundef %rmnet_dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then24, %if.end21.cleanup_crit_edge, %if.then16, %do.body13.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body13.cleanup_crit_edge ], [ 0, %if.then32 ], [ %call22, %if.end21.cleanup_crit_edge ], [ 0, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_get_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_vnd_change_mtu(ptr nocapture noundef %rmnet_dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %rmnet_dev, i32 2308
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %call1 = tail call ptr @rmnet_get_port_rtnl(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %new_mtu)
  %2 = icmp ugt i32 %new_mtu, 16384
  br i1 %2, label %entry.cleanup_crit_edge, label %lor.lhs.false4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %entry
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i.neg = select i1 %tobool.not.i, i32 -4, i32 -8
  %5 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %real_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %sub = add i32 %spec.select.i.neg, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %new_mtu)
  %cmp6 = icmp ult i32 %sub, %new_mtu
  br i1 %cmp6, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  %mtu7 = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 20
  %9 = ptrtoint ptr %mtu7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_mtu, ptr %mtu7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rmnet_vnd_dellink(i8 noundef zeroext %id, ptr nocapture noundef %port, ptr nocapture noundef %ep) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %id)
  %cmp = icmp eq i8 %id, -1
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %egress_dev = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep, i32 0, i32 1
  %0 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %egress_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %egress_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %egress_dev, align 4
  %nr_rmnet_devs = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr_rmnet_devs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr_rmnet_devs, align 4
  %dec = add i8 %4, -1
  store i8 %dec, ptr %nr_rmnet_devs, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_vnd_do_flow_control(ptr noundef %rmnet_dev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmnet_vnd_do_flow_control.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmnet_vnd_do_flow_control, %if.then)) #12
          to label %do.end4 [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rmnet_vnd_do_flow_control.__UNIQUE_ID_ddebug365, ptr noundef %rmnet_dev, ptr noundef nonnull @.str.6, i32 noundef %enable) #12
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool5.not = icmp eq i32 %enable, 0
  %_tx.i.i17 = getelementptr inbounds %struct.net_device, ptr %rmnet_dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i17, align 128
  br i1 %tobool5.not, label %if.else, label %if.then12, !prof !38

if.then12:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %1) #12
  br label %if.end13

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_vnd_validate_real_dev_mtu(ptr noundef %real_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rmnet_get_port_rtnl(ptr noundef %real_dev) #12
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i.neg = select i1 %tobool.not.i, i32 -4, i32 -8
  %mtu11 = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %entry
  %bkt_ep.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rmnet_port, ptr %call, i32 0, i32 4, i32 %bkt_ep.045
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %tobool5.not4346 = icmp eq ptr %add.ptr, null
  %tobool5.not43 = or i1 %tobool.not, %tobool5.not4346
  br i1 %tobool5.not43, label %for.body.for.inc23_crit_edge, label %land.rhs6.lr.ph

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

land.rhs6.lr.ph:                                  ; preds = %for.body
  %4 = ptrtoint ptr %mtu11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu11, align 4
  %sub = add i32 %5, %spec.select.i.neg
  br label %land.rhs6

land.rhs6:                                        ; preds = %for.inc.land.rhs6_crit_edge, %land.rhs6.lr.ph
  %ep.144 = phi ptr [ %add.ptr, %land.rhs6.lr.ph ], [ %add.ptr19, %for.inc.land.rhs6_crit_edge ]
  %egress_dev = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.144, i32 0, i32 1
  %6 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %egress_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp12 = icmp ugt i32 %9, %sub
  br i1 %cmp12, label %land.rhs6.cleanup_crit_edge, label %for.inc

land.rhs6.cleanup_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.rhs6
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.144, i32 0, i32 2
  %10 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hlnode, align 4
  %tobool15.not = icmp eq ptr %11, null
  %add.ptr19 = getelementptr i8, ptr %11, i32 -8
  %tobool5.not49 = icmp eq ptr %add.ptr19, null
  %tobool5.not = or i1 %tobool15.not, %tobool5.not49
  br i1 %tobool5.not, label %for.inc.for.inc23_crit_edge, label %for.inc.land.rhs6_crit_edge

for.inc.land.rhs6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs6

for.inc.for.inc23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23

for.inc23:                                        ; preds = %for.inc.for.inc23_crit_edge, %for.body.for.inc23_crit_edge
  %inc = add nuw nsw i32 %bkt_ep.045, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.inc23.cleanup_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc23.cleanup_crit_edge:                      ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.cleanup_crit_edge, %land.rhs6.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.rhs6.cleanup_crit_edge ], [ 0, %for.inc23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_get_port_rtnl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmnet_vnd_update_dev_mtu(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %real_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i.neg = select i1 %tobool.not.i, i32 -4, i32 -8
  %mtu10 = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %entry
  %bkt_ep.054 = phi i32 [ 0, %entry ], [ %inc, %for.inc29.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rmnet_port, ptr %port, i32 0, i32 4, i32 %bkt_ep.054
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %tobool4.not5256 = icmp eq ptr %add.ptr, null
  %tobool4.not52 = or i1 %tobool.not, %tobool4.not5256
  br i1 %tobool4.not52, label %for.body.for.inc29_crit_edge, label %for.body.land.rhs5_crit_edge

for.body.land.rhs5_crit_edge:                     ; preds = %for.body
  br label %land.rhs5

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc29

land.rhs5:                                        ; preds = %for.inc.land.rhs5_crit_edge, %for.body.land.rhs5_crit_edge
  %ep.153 = phi ptr [ %add.ptr25, %for.inc.land.rhs5_crit_edge ], [ %add.ptr, %for.body.land.rhs5_crit_edge ]
  %hlnode = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.153, i32 0, i32 2
  %4 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlnode, align 4
  %egress_dev = getelementptr inbounds %struct.rmnet_endpoint, ptr %ep.153, i32 0, i32 1
  %6 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %egress_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %10 = ptrtoint ptr %mtu10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu10, align 4
  %sub = add i32 %11, %spec.select.i.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp11.not = icmp ugt i32 %9, %sub
  br i1 %cmp11.not, label %if.end, label %land.rhs5.for.inc_crit_edge

land.rhs5.for.inc_crit_edge:                      ; preds = %land.rhs5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %land.rhs5
  %real_dev.i = getelementptr i8, ptr %7, i32 2308
  %12 = ptrtoint ptr %real_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_dev.i, align 4
  %call1.i = tail call ptr @rmnet_get_port_rtnl(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub)
  %14 = icmp ugt i32 %sub, 16384
  br i1 %14, label %if.end.cleanup_crit_edge, label %lor.lhs.false4.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %if.end
  %data_format.i.i = getelementptr inbounds %struct.rmnet_port, ptr %call1.i, i32 0, i32 1
  %15 = ptrtoint ptr %data_format.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_format.i.i, align 4
  %and.i.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.neg.i = select i1 %tobool.not.i.i, i32 -4, i32 -8
  %17 = ptrtoint ptr %real_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %real_dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu.i, align 4
  %sub.i = add i32 %spec.select.i.neg.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp6.i = icmp ult i32 %sub.i, %sub
  br i1 %cmp6.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %rmnet_vnd_change_mtu.exit

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rmnet_vnd_change_mtu.exit:                        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %mtu, align 4
  br label %for.inc

for.inc:                                          ; preds = %rmnet_vnd_change_mtu.exit, %land.rhs5.for.inc_crit_edge
  %tobool21.not = icmp eq ptr %5, null
  %add.ptr25 = getelementptr i8, ptr %5, i32 -8
  %tobool4.not58 = icmp eq ptr %add.ptr25, null
  %tobool4.not = or i1 %tobool21.not, %tobool4.not58
  br i1 %tobool4.not, label %for.inc.for.inc29_crit_edge, label %for.inc.land.rhs5_crit_edge

for.inc.land.rhs5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs5

for.inc.for.inc29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc.for.inc29_crit_edge, %for.body.for.inc29_crit_edge
  %inc = add nuw nsw i32 %bkt_ep.054, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc29.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false4.i.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.inc29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_vnd_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 72, i32 noundef 8) #15
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %pcpu_stats, align 8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gro_cells = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @gro_cells_init(ptr noundef %gro_cells, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 8
  tail call void @free_percpu(ptr noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmnet_vnd_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_cells = getelementptr i8, ptr %dev, i32 2316
  tail call void @gro_cells_destroy(ptr noundef %gro_cells) #12
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 8
  tail call void @free_percpu(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmnet_vnd_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rmnet_egress_handler(ptr noundef %skb) #12
  br label %if.end39

do.body1:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !41
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_stats, align 8
  %tx_drops = getelementptr inbounds %struct.rmnet_vnd_stats, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %tx_drops to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !23) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add15 = add i32 %14, 1
  store i32 %add15, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not, label %if.then30, label %do.body1.do.end32_crit_edge, !prof !43

do.body1.do.end32_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

if.then30:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end32

do.end32:                                         ; preds = %if.then30, %do.body1.do.end32_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !44
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end32, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmnet_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call144 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call144, i32 %0)
  %cmp45 = icmp ult i32 %call144, %0
  br i1 %cmp45, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pcpu_stats = getelementptr i8, ptr %dev, i32 2312
  br label %do.body

do.body:                                          ; preds = %do.end8.do.body_crit_edge, %do.body.lr.ph
  %call151 = phi i32 [ %call144, %do.body.lr.ph ], [ %call1, %do.end8.do.body_crit_edge ]
  %total_stats.sroa.0.050 = phi i64 [ 0, %do.body.lr.ph ], [ %add10, %do.end8.do.body_crit_edge ]
  %total_stats.sroa.6.049 = phi i64 [ 0, %do.body.lr.ph ], [ %add12, %do.end8.do.body_crit_edge ]
  %total_stats.sroa.9.048 = phi i64 [ 0, %do.body.lr.ph ], [ %add14, %do.end8.do.body_crit_edge ]
  %total_stats.sroa.12.047 = phi i64 [ 0, %do.body.lr.ph ], [ %add16, %do.end8.do.body_crit_edge ]
  %total_stats.sroa.15.046 = phi i32 [ 0, %do.body.lr.ph ], [ %add18, %do.end8.do.body_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 8
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call151
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %6, i32 0, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.rmnet_pcpu_stats, ptr %6, i32 0, i32 1, i32 0, i32 1
  %snapshot.sroa.5.0.stats.sroa_idx = getelementptr inbounds i8, ptr %6, i32 8
  %snapshot.sroa.6.0.stats.sroa_idx = getelementptr inbounds i8, ptr %6, i32 16
  %snapshot.sroa.7.0.stats.sroa_idx = getelementptr inbounds i8, ptr %6, i32 24
  %snapshot.sroa.8.0.stats.sroa_idx = getelementptr inbounds i8, ptr %6, i32 32
  br label %do.body3

do.body3:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge, %do.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !41
  %and.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %8 = tail call ptr @llvm.returnaddress(i32 0) #12
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %9) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call ptr @llvm.returnaddress(i32 0) #12
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !42
  %and.i.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !43

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !44
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !46
  %15 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %16, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %16, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !47
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %snapshot.sroa.0.0.copyload = load i64, ptr %6, align 8
  %18 = ptrtoint ptr %snapshot.sroa.5.0.stats.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %18)
  %snapshot.sroa.5.0.copyload = load i64, ptr %snapshot.sroa.5.0.stats.sroa_idx, align 8
  %19 = ptrtoint ptr %snapshot.sroa.6.0.stats.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %19)
  %snapshot.sroa.6.0.copyload = load i64, ptr %snapshot.sroa.6.0.stats.sroa_idx, align 8
  %20 = ptrtoint ptr %snapshot.sroa.7.0.stats.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %20)
  %snapshot.sroa.7.0.copyload = load i64, ptr %snapshot.sroa.7.0.stats.sroa_idx, align 8
  %21 = ptrtoint ptr %snapshot.sroa.8.0.stats.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %snapshot.sroa.8.0.copyload = load i32, ptr %snapshot.sroa.8.0.stats.sroa_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !48
  %22 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %23, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end8, label %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge

u64_stats_fetch_begin_irq.exit.do.body3_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.end8:                                          ; preds = %u64_stats_fetch_begin_irq.exit
  %add10 = add i64 %snapshot.sroa.0.0.copyload, %total_stats.sroa.0.050
  %add12 = add i64 %snapshot.sroa.5.0.copyload, %total_stats.sroa.6.049
  %add14 = add i64 %snapshot.sroa.6.0.copyload, %total_stats.sroa.9.048
  %add16 = add i64 %snapshot.sroa.7.0.copyload, %total_stats.sroa.12.047
  %add18 = add i32 %snapshot.sroa.8.0.copyload, %total_stats.sroa.15.046
  %call1 = tail call i32 @cpumask_next(i32 noundef %call151, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %24
  br i1 %cmp, label %do.end8.do.body_crit_edge, label %do.end8.for.end_crit_edge

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end8.do.body_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %total_stats.sroa.15.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add18, %do.end8.for.end_crit_edge ]
  %total_stats.sroa.12.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add16, %do.end8.for.end_crit_edge ]
  %total_stats.sroa.9.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add14, %do.end8.for.end_crit_edge ]
  %total_stats.sroa.6.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add12, %do.end8.for.end_crit_edge ]
  %total_stats.sroa.0.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add10, %do.end8.for.end_crit_edge ]
  %25 = ptrtoint ptr %s to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %total_stats.sroa.0.0.lcssa, ptr %s, align 8
  %rx_bytes21 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 2
  %26 = ptrtoint ptr %rx_bytes21 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %total_stats.sroa.6.0.lcssa, ptr %rx_bytes21, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 1
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %total_stats.sroa.9.0.lcssa, ptr %tx_packets, align 8
  %tx_bytes24 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 3
  %28 = ptrtoint ptr %tx_bytes24 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %total_stats.sroa.12.0.lcssa, ptr %tx_bytes24, align 8
  %conv = zext i32 %total_stats.sroa.15.0.lcssa to i64
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %s, i32 0, i32 7
  %29 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv, ptr %tx_dropped, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_add_bridge(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_del_bridge(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmnet_vnd_get_iflink(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmnet_egress_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rmnet_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %buf, ptr @rmnet_gstrings_stats, i32 352)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rmnet_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats1 = getelementptr i8, ptr %dev, i32 2320
  %0 = call ptr @memcpy(ptr %data, ptr %stats1, i32 88)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmnet_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 11, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @rmnet_vnd_newlink.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 260, i32 3}
!2 = !{ptr @rmnet_vnd_newlink.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 273, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 287, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rmnet_vnd_newlink.__UNIQUE_ID_ddebug364, !5, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 306, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rmnet_vnd_do_flow_control.__UNIQUE_ID_ddebug365, !11, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rmnet_vnd_ops, !18, !"rmnet_vnd_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 156, i32 36}
!19 = !{ptr @rmnet_ethtool_ops, !20, !"rmnet_ethtool_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 213, i32 33}
!21 = !{ptr @rmnet_gstrings_stats, !22, !"rmnet_gstrings_stats", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qualcomm/rmnet/rmnet_vnd.c", i32 167, i32 19}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2150288262}
!34 = !{i64 2150179864}
!35 = !{i64 2150184798}
!36 = !{i64 2150206516}
!37 = !{i64 2150211410}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2150287937}
!40 = !{i64 2148856421, i64 2148856426, i64 2148856439, i64 2148856483, i64 2148856517, i64 2148856538}
!41 = !{i64 767087, i64 767148}
!42 = !{i64 769819}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 770104}
!45 = !{i64 2154911436}
!46 = !{i64 2154911278}
!47 = !{i64 2154911606}
!48 = !{i64 2150287612}
