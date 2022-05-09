; ModuleID = '/llk/IR_all_yes/drivers/net/ifb.c_pt.bc'
source_filename = "../drivers/net/ifb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ifb_q_stats_desc = type { [32 x i8], i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ifb_q_private = type { ptr, %struct.tasklet_struct, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ifb_q_stats, %struct.ifb_q_stats, [8 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.127, i32 }
%union.anon.127 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ifb_q_stats = type { i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_numifbs = internal constant [12 x i8] c"ifb.numifbs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@numifbs = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_numifbs = internal constant %struct.kernel_param { ptr @__param_str_numifbs, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @numifbs } }, section "__param", align 4
@__UNIQUE_ID_numifbstype388 = internal constant [25 x i8] c"ifb.parmtype=numifbs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_numifbs389 = internal constant [39 x i8] c"ifb.parm=numifbs:Number of ifb devices\00", section ".modinfo", align 1
@ifb_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 4, ptr null, ptr @ifb_setup, i8 0, i32 0, ptr null, ptr @ifb_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ifb__390_454_ifb_init_module6 = internal global ptr @ifb_init_module, section ".initcall6.init", align 4
@__exitcall_ifb_cleanup_module = internal global ptr @ifb_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file391 = internal constant [25 x i8] c"ifb.file=drivers/net/ifb\00", section ".modinfo", align 1
@__UNIQUE_ID_license392 = internal constant [16 x i8] c"ifb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author393 = internal constant [28 x i8] c"ifb.author=Jamal Hadi Salim\00", section ".modinfo", align 1
@__UNIQUE_ID_alias394 = internal constant [24 x i8] c"ifb.alias=rtnl-link-ifb\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ifb\00", [28 x i8] zeroinitializer }, align 32
@ifb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ifb_dev_init, ptr null, ptr @ifb_open, ptr @ifb_close, ptr @ifb_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ifb_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ifb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ifb_get_strings, ptr null, ptr @ifb_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ifb_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ifb_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&txp->rx_stats.sync)->seq\00", [36 x i8] zeroinitializer }, align 32
@ifb_dev_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&txp->tx_stats.sync)->seq\00", [36 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_%.18s\00", [46 x i8] zeroinitializer }, align 32
@ifb_q_stats_desc = internal constant { [2 x %struct.ifb_q_stats_desc], [56 x i8] } { [2 x %struct.ifb_q_stats_desc] [%struct.ifb_q_stats_desc { [32 x i8] c"packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.ifb_q_stats_desc { [32 x i8] c"bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_%.18s\00", [46 x i8] zeroinitializer }, align 32
@pernet_ops_rwsem = external dso_local global %struct.rw_semaphore, align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/net/ifb.c\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ifb%d\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"numifbs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 398, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 388, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"ifb_netdev_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 276, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"ifb_ethtool_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 285, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 199, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 200, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 271, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 216, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"ifb_q_stats_desc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 70, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 221, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 437, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [21 x i8] c"../drivers/net/ifb.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 407, i32 12 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias394, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_file391, ptr @__UNIQUE_ID_license392, ptr @__UNIQUE_ID_numifbs389, ptr @__UNIQUE_ID_numifbstype388, ptr @__exitcall_ifb_cleanup_module, ptr @__initcall__kmod_ifb__390_454_ifb_init_module6, ptr @__param_numifbs, ptr @ifb_cleanup_module, ptr @numifbs, ptr @.str, ptr @ifb_netdev_ops, ptr @ifb_ethtool_ops, ptr @ifb_dev_init.__key, ptr @.str.1, ptr @ifb_dev_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ifb_q_stats_desc, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numifbs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifb_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifb_dev_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifb_q_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ifb_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ifb_link_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ifb_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #11
  tail call void @rtnl_lock() #11
  %call = tail call i32 @__rtnl_link_register(ptr noundef nonnull @ifb_link_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader:                               ; preds = %entry
  %0 = load i32, ptr @numifbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp112 = icmp sgt i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not13 = icmp eq i32 %call, 0
  %or.cond14 = select i1 %cmp112, i1 %tobool.not13, i1 false
  br i1 %or.cond14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call2 = tail call fastcc i32 @ifb_init_one() #14
  tail call void @__might_resched(ptr noundef nonnull @.str.10, i32 noundef 437, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %inc = add nuw nsw i32 %i.015, 1
  %1 = load i32, ptr @numifbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp1 = icmp slt i32 %inc, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp1, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %err.0.lcssa = phi i32 [ %call, %for.cond.preheader.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ]
  %tobool.not.lcssa = phi i1 [ %tobool.not13, %for.cond.preheader.for.end_crit_edge ], [ %tobool.not, %for.body.for.end_crit_edge ]
  br i1 %tobool.not.lcssa, label %for.end.out_crit_edge, label %if.then5

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__rtnl_link_unregister(ptr noundef nonnull @ifb_link_ops) #11
  br label %out

out:                                              ; preds = %if.then5, %for.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0.lcssa, %if.then5 ], [ 0, %for.end.out_crit_edge ]
  tail call void @rtnl_unlock() #11
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_setup(ptr noundef %dev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ifb_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %1 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ifb_ethtool_ops, ptr %ethtool_ops, align 16
  tail call void @ether_setup(ptr noundef %dev) #11
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %2 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %tx_queue_len, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %or = or i64 %4, 35211481776361
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %5 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hw_features, align 8
  %or2 = or i64 %6, %or
  store i64 %or2, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hw_enc_features, align 16
  %or4 = or i64 %8, %or
  store i64 %or4, ptr %hw_enc_features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %9 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vlan_features, align 8
  %or5 = or i64 %10, 27109687401
  store i64 %or5, ptr %vlan_features, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or6 = and i32 %12, -4225
  %and = or i32 %or6, 128
  store i32 %and, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags, align 16
  %and.i = and i64 %14, -133153
  store i64 %and.i, ptr %priv_flags, align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %15 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.i, align 1
  %18 = and i8 %17, -4
  %19 = or i8 %18, 2
  store i8 %19, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %20 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %21 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %22 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ifb_dev_free, ptr %priv_destructor, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %23 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %24 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %max_mtu, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifb_validate(ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %is_valid_ether_addr.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then.return_crit_edge ], [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ -99, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_dev_free(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  br label %for.body

for.body:                                         ; preds = %__skb_queue_purge.exit20.for.body_crit_edge, %for.body.preheader
  %i.024 = phi i32 [ %inc, %__skb_queue_purge.exit20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %txp.022 = phi ptr [ %incdec.ptr, %__skb_queue_purge.exit20.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %ifb_tasklet = getelementptr inbounds %struct.ifb_q_private, ptr %txp.022, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %ifb_tasklet) #11
  %rq = getelementptr inbounds %struct.ifb_q_private, ptr %txp.022, i32 0, i32 4
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq, align 4
  %cmp.i.i2.i = icmp eq ptr %5, %rq
  %tobool.not.i13.i = icmp eq ptr %5, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.body.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.body.__skb_queue_purge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %qlen.i.i.i = getelementptr inbounds %struct.ifb_q_private, ptr %txp.022, i32 0, i32 4, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i ], [ %16, %while.body.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #11
  %15 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq, align 4
  %cmp.i.i.i = icmp eq ptr %16, %rq
  %tobool.not.i1.i = icmp eq ptr %16, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.body.__skb_queue_purge.exit_crit_edge
  %tq = getelementptr inbounds %struct.ifb_q_private, ptr %txp.022, i32 0, i32 5
  %17 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tq, align 4
  %cmp.i.i2.i8 = icmp eq ptr %18, %tq
  %tobool.not.i13.i9 = icmp eq ptr %18, null
  %tobool.not.i4.i10 = or i1 %cmp.i.i2.i8, %tobool.not.i13.i9
  br i1 %tobool.not.i4.i10, label %__skb_queue_purge.exit.__skb_queue_purge.exit20_crit_edge, label %while.body.lr.ph.i12

__skb_queue_purge.exit.__skb_queue_purge.exit20_crit_edge: ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit20

while.body.lr.ph.i12:                             ; preds = %__skb_queue_purge.exit
  %qlen.i.i.i11 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.022, i32 0, i32 5, i32 1
  br label %while.body.i19

while.body.i19:                                   ; preds = %while.body.i19.while.body.i19_crit_edge, %while.body.lr.ph.i12
  %19 = phi ptr [ %18, %while.body.lr.ph.i12 ], [ %29, %while.body.i19.while.body.i19_crit_edge ]
  %20 = ptrtoint ptr %qlen.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i11, align 4
  %sub.i.i.i13 = add i32 %21, -1
  store volatile i32 %sub.i.i.i13, ptr %qlen.i.i.i11, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %prev9.i.i.i14 = getelementptr inbounds %struct.anon.44, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i.i.i14, align 4
  store ptr null, ptr %prev9.i.i.i14, align 4
  store ptr null, ptr %19, align 8
  %prev17.i.i.i15 = getelementptr inbounds %struct.anon.44, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i.i.i15, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #11
  %28 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tq, align 4
  %cmp.i.i.i16 = icmp eq ptr %29, %tq
  %tobool.not.i1.i17 = icmp eq ptr %29, null
  %tobool.not.i.i18 = or i1 %cmp.i.i.i16, %tobool.not.i1.i17
  br i1 %tobool.not.i.i18, label %while.body.i19.__skb_queue_purge.exit20_crit_edge, label %while.body.i19.while.body.i19_crit_edge

while.body.i19.while.body.i19_crit_edge:          ; preds = %while.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i19

while.body.i19.__skb_queue_purge.exit20_crit_edge: ; preds = %while.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit20

__skb_queue_purge.exit20:                         ; preds = %while.body.i19.__skb_queue_purge.exit20_crit_edge, %__skb_queue_purge.exit.__skb_queue_purge.exit20_crit_edge
  %inc = add nuw i32 %i.024, 1
  %incdec.ptr = getelementptr %struct.ifb_q_private, ptr %txp.022, i32 1
  %30 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %__skb_queue_purge.exit20.for.body_crit_edge, label %__skb_queue_purge.exit20.for.end_crit_edge

__skb_queue_purge.exit20.for.end_crit_edge:       ; preds = %__skb_queue_purge.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

__skb_queue_purge.exit20.for.body_crit_edge:      ; preds = %__skb_queue_purge.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %__skb_queue_purge.exit20.for.end_crit_edge, %entry.for.end_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %33) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifb_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 256) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !63

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp37.not = icmp eq i32 %7, 0
  br i1 %cmp37.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %txp.038 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %txqnum = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 3
  %8 = ptrtoint ptr %txqnum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.039, ptr %txqnum, align 32
  %9 = ptrtoint ptr %txp.038 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %txp.038, align 128
  %rq = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 4
  %10 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rq, ptr %rq, align 4
  %prev.i = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 4, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i, align 4
  %tq = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 5
  %13 = ptrtoint ptr %tq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tq, ptr %tq, align 4
  %prev.i28 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 5, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tq, ptr %prev.i28, align 4
  %qlen.i29 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %qlen.i29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i29, align 4
  %sync = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 6, i32 2
  %dep_map.i = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 6, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ifb_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %16 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sync, align 4
  %sync5 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 7, i32 2
  %dep_map.i30 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 7, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i30, ptr noundef nonnull @.str.3, ptr noundef nonnull @ifb_dev_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %17 = ptrtoint ptr %sync5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sync5, align 4
  %ifb_tasklet = getelementptr inbounds %struct.ifb_q_private, ptr %txp.038, i32 0, i32 1
  tail call void @tasklet_setup(ptr noundef %ifb_tasklet, ptr noundef nonnull @ifb_ri_tasklet) #11
  %18 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %19, i32 %i.039, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #11
  %inc = add nuw i32 %i.039, 1
  %incdec.ptr = getelementptr %struct.ifb_q_private, ptr %txp.038, i32 1
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifb_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i, label %entry.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_start_all_queues.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %inc.i = add nuw i32 %i.05.i, 1
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %entry.netif_tx_start_all_queues.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifb_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifb_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %3 to i32
  %rx_stats = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 6
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call fastcc void @ifb_update_q_stats(ptr noundef %rx_stats, i32 noundef %5)
  %redirected = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %redirected to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %redirected, align 2
  %7 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #11
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %10 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rq = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 4
  %qlen.i = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 4, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %14 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp ult i32 %13, %15
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %txqnum = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 3
  %16 = ptrtoint ptr %txqnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txqnum, align 32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %19, i32 %17, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %rq, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rq, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %23 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %skb, ptr %21, align 4
  %25 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %tasklet_pending = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 2
  %27 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tasklet_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %29 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %tasklet_pending, align 4
  %state.i29 = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %ifb_tasklet = getelementptr %struct.ifb_q_private, ptr %1, i32 %conv, i32 1
  tail call void @__tasklet_schedule(ptr noundef %ifb_tasklet) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53.not = icmp eq i32 %1, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %do.body.preheader.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.preheader.lr.ph:                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.body.preheader

do.body.preheader:                                ; preds = %do.end21.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %i.055 = phi i32 [ 0, %do.body.preheader.lr.ph ], [ %inc, %do.end21.do.body.preheader_crit_edge ]
  %txp.054 = phi ptr [ %3, %do.body.preheader.lr.ph ], [ %incdec.ptr, %do.end21.do.body.preheader_crit_edge ]
  %rx_stats = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 6
  %sync = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 6, i32 2
  %bytes5 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 6, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync)
  %4 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rx_stats, align 8
  %6 = ptrtoint ptr %bytes5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes5, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %8 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sync, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %9, %call1
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.body
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stats, align 8
  %add = add i64 %11, %5
  store i64 %add, ptr %stats, align 8
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes, align 8
  %add9 = add i64 %13, %7
  store i64 %add9, ptr %rx_bytes, align 8
  %tx_stats = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 7
  %sync11 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 7, i32 2
  %bytes16 = getelementptr inbounds %struct.ifb_q_private, ptr %txp.054, i32 0, i32 7, i32 1
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.end
  %call12 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync11)
  %14 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_stats, align 8
  %16 = ptrtoint ptr %bytes16 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %18 = ptrtoint ptr %sync11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sync11, align 4
  %cmp.i.i.i.i49.not = icmp eq i32 %19, %call12
  br i1 %cmp.i.i.i.i49.not, label %do.end21, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.end21:                                         ; preds = %do.body10
  %20 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_packets, align 8
  %add22 = add i64 %21, %15
  store i64 %add22, ptr %tx_packets, align 8
  %22 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_bytes, align 8
  %add23 = add i64 %23, %17
  store i64 %add23, ptr %tx_bytes, align 8
  %inc = add nuw i32 %i.055, 1
  %incdec.ptr = getelementptr %struct.ifb_q_private, ptr %txp.054, i32 1
  %24 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %do.end21.do.body.preheader_crit_edge, label %do.end21.for.end_crit_edge

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end21.do.body.preheader_crit_edge:             ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.preheader

for.end:                                          ; preds = %do.end21.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %26 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped, align 8
  %conv = zext i32 %27 to i64
  %rx_dropped25 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %28 = ptrtoint ptr %rx_dropped25 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv, ptr %rx_dropped25, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %29 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped, align 4
  %conv27 = zext i32 %30 to i64
  %tx_dropped28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %31 = ptrtoint ptr %tx_dropped28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv27, ptr %tx_dropped28, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_ri_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %txqnum = getelementptr i8, ptr %t, i32 28
  %2 = ptrtoint ptr %txqnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txqnum, align 32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %5, i32 %3
  %tq = getelementptr i8, ptr %t, i32 88
  %6 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tq, align 4
  %cmp.i = icmp eq ptr %7, %tq
  %tobool.not128 = icmp eq ptr %7, null
  %tobool.not = or i1 %cmp.i, %tobool.not128
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %_xmit_lock.i = getelementptr %struct.netdev_queue, ptr %5, i32 %3, i32 10
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.then.resched_crit_edge, label %if.end, !prof !63

if.then.resched_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %resched

if.end:                                           ; preds = %if.then
  %8 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr %struct.netdev_queue, ptr %5, i32 %3, i32 11
  %12 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %xmit_lock_owner.i, align 4
  %rq = getelementptr i8, ptr %t, i32 32
  %13 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq, align 4
  %cmp.i.not.i = icmp eq ptr %14, %rq
  br i1 %cmp.i.not.i, label %if.end.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i83

if.end.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_tail_init.exit

if.then.i83:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr i8, ptr %t, i32 92
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 36
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.44, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %prev5.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %14, ptr %16, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %tq, ptr %18, align 8
  store volatile ptr %18, ptr %prev.i, align 4
  %qlen.i = getelementptr i8, ptr %t, i32 40
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr i8, ptr %t, i32 96
  %24 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %25, %23
  store i32 %add.i, ptr %qlen1.i, align 4
  %26 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rq, ptr %rq, align 4
  store ptr %rq, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i83, %if.end.skb_queue_splice_tail_init.exit_crit_edge
  %27 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #11
  br label %if.end5

if.end5:                                          ; preds = %skb_queue_splice_tail_init.exit, %entry.if.end5_crit_edge
  %28 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tq, align 4
  %cmp.i.i132 = icmp eq ptr %29, %tq
  %tobool.not.i86129133 = icmp eq ptr %29, null
  %tobool.not.i86134 = or i1 %cmp.i.i132, %tobool.not.i86129133
  br i1 %tobool.not.i86134, label %if.end5.while.end_crit_edge, label %while.body.lr.ph

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end5
  %qlen.i.i = getelementptr i8, ptr %t, i32 96
  %tx_stats = getelementptr i8, ptr %t, i32 196
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %30 = phi ptr [ %29, %while.body.lr.ph ], [ %78, %if.end32.while.body_crit_edge ]
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %30, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %prev17.i.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %36, align 8
  %redirected = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %redirected to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load = load i32, ptr %redirected, align 2
  %bf.clear9 = and i32 %bf.load, -344065
  %bf.set.i = or i32 %bf.clear9, 278528
  store i32 %bf.set.i, ptr %redirected, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  tail call fastcc void @ifb_update_q_stats(ptr noundef %tx_stats, i32 noundef %41)
  %42 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 128
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 127
  %48 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nd_net.i, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15, i32 0, i32 7
  %50 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %skb_iif, align 8
  %call13 = tail call ptr @dev_get_by_index_rcu(ptr noundef %49, i32 noundef %51) #11
  %52 = getelementptr inbounds %struct.anon.44, ptr %30, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call13, ptr %52, align 8
  %tobool14.not = icmp eq ptr %call13, null
  %call.i88 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %tobool14.not, label %if.then15, label %if.end22

if.then15:                                        ; preds = %rcu_read_lock.exit
  br i1 %call.i88, label %if.then15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i91

if.then15.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i91:                                ; preds = %if.then15
  %call1.i89 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i91
  %.b4.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92, label %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, label %if.then.i94

land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i94:                                      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i94, %land.lhs.true2.i93.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i91.rcu_read_unlock.exit_crit_edge, %if.then15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  %54 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i95 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i96, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @consume_skb(ptr noundef nonnull %30) #11
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 128
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 36, i32 7
  %60 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %62 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp19.not = icmp eq i32 %63, 0
  br i1 %cmp19.not, label %rcu_read_unlock.exit.while.end_crit_edge, label %rcu_read_unlock.exit.resched_crit_edge

rcu_read_unlock.exit.resched_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %resched

rcu_read_unlock.exit.while.end_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end22:                                         ; preds = %rcu_read_lock.exit
  br i1 %call.i88, label %if.end22.rcu_read_unlock.exit108_crit_edge, label %land.lhs.true.i101

if.end22.rcu_read_unlock.exit108_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit108

land.lhs.true.i101:                               ; preds = %if.end22
  %call1.i99 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99)
  %tobool.not.i100 = icmp eq i32 %call1.i99, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i101.rcu_read_unlock.exit108_crit_edge, label %land.lhs.true2.i103

land.lhs.true.i101.rcu_read_unlock.exit108_crit_edge: ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit108

land.lhs.true2.i103:                              ; preds = %land.lhs.true.i101
  %.b4.i102 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102, label %land.lhs.true2.i103.rcu_read_unlock.exit108_crit_edge, label %if.then.i104

land.lhs.true2.i103.rcu_read_unlock.exit108_crit_edge: ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit108

if.then.i104:                                     ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #11
  br label %rcu_read_unlock.exit108

rcu_read_unlock.exit108:                          ; preds = %if.then.i104, %land.lhs.true2.i103.rcu_read_unlock.exit108_crit_edge, %land.lhs.true.i101.rcu_read_unlock.exit108_crit_edge, %if.end22.rcu_read_unlock.exit108_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  %64 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i105 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i105 to ptr
  %preempt_count.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i106, align 4
  %sub.i.i.i107 = add i32 %67, -1
  store volatile i32 %sub.i.i.i107, ptr %preempt_count.i.i.i.i106, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 128
  %ifindex = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ifindex, align 4
  %72 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %skb_iif, align 8
  %73 = ptrtoint ptr %redirected to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %bf.load25 = load i32, ptr %redirected, align 2
  %74 = and i32 %bf.load25, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool27.not = icmp eq i32 %74, 0
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %rcu_read_unlock.exit108
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %30) #11
  br label %if.end32

if.else:                                          ; preds = %rcu_read_unlock.exit108
  call void @__sanitizer_cov_trace_pc() #13
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 8
  %75 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %76 to i32
  %call30 = tail call ptr @skb_pull_rcsum(ptr noundef nonnull %30, i32 noundef %conv) #11
  %call31 = tail call i32 @netif_receive_skb(ptr noundef nonnull %30) #11
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28
  %77 = ptrtoint ptr %tq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tq, align 4
  %cmp.i.i = icmp eq ptr %78, %tq
  %tobool.not.i86129 = icmp eq ptr %78, null
  %tobool.not.i86 = or i1 %cmp.i.i, %tobool.not.i86129
  br i1 %tobool.not.i86, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %rcu_read_unlock.exit.while.end_crit_edge, %if.end5.while.end_crit_edge
  %_xmit_lock.i109 = getelementptr %struct.netdev_queue, ptr %5, i32 %3, i32 10
  %call.i.i110 = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i109) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool.i111.not = icmp eq i32 %call.i.i110, 0
  br i1 %tobool.i111.not, label %while.end.resched_crit_edge, label %if.then34, !prof !63

while.end.resched_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %resched

if.then34:                                        ; preds = %while.end
  %79 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i112 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i112 to ptr
  %cpu.i113 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cpu.i113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i113, align 4
  %xmit_lock_owner.i114 = getelementptr %struct.netdev_queue, ptr %5, i32 %3, i32 11
  %83 = ptrtoint ptr %xmit_lock_owner.i114 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 %82, ptr %xmit_lock_owner.i114, align 4
  %rq35 = getelementptr i8, ptr %t, i32 32
  %84 = ptrtoint ptr %rq35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rq35, align 4
  %cmp.i117 = icmp eq ptr %85, %rq35
  %tobool37.not130 = icmp eq ptr %85, null
  %tobool37.not = or i1 %cmp.i117, %tobool37.not130
  br i1 %tobool37.not, label %if.then38, label %if.else42

if.then38:                                        ; preds = %if.then34
  %tasklet_pending = getelementptr i8, ptr %t, i32 24
  %86 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tasklet_pending, align 4
  %state.i = getelementptr %struct.netdev_queue, ptr %5, i32 %3, i32 13
  %87 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i119.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i119.not, label %if.then38.if.end43_crit_edge, label %if.then40

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #11
  br label %if.end43

if.else42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %xmit_lock_owner.i114 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 -1, ptr %xmit_lock_owner.i114, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i109) #11
  br label %resched

if.end43:                                         ; preds = %if.then40, %if.then38.if.end43_crit_edge
  %90 = ptrtoint ptr %xmit_lock_owner.i114 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 -1, ptr %xmit_lock_owner.i114, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i109) #11
  br label %if.end46

resched:                                          ; preds = %if.else42, %while.end.resched_crit_edge, %rcu_read_unlock.exit.resched_crit_edge, %if.then.resched_crit_edge
  %tasklet_pending45 = getelementptr i8, ptr %t, i32 24
  %91 = ptrtoint ptr %tasklet_pending45 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %tasklet_pending45, align 4
  %state.i124 = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i125 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i124) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.then.i127, label %resched.if.end46_crit_edge

resched.if.end46_crit_edge:                       ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then.i127:                                     ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__tasklet_schedule(ptr noundef %t) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then.i127, %resched.if.end46_crit_edge, %if.end43
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ifb_update_q_stats(ptr noundef %stats, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %5 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %14 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i7.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i9.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %25, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %26 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %33 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i12.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %36, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !71

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %sync = getelementptr inbounds %struct.ifb_q_stats, ptr %stats, i32 0, i32 2
  %37 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sync, align 4
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %sync, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  %dep_map.i.i.i = getelementptr inbounds %struct.ifb_q_stats, ptr %stats, i32 0, i32 2, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  %41 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stats, align 8
  %inc = add i64 %42, 1
  store i64 %inc, ptr %stats, align 8
  %conv = sext i32 %len to i64
  %bytes = getelementptr inbounds %struct.ifb_q_stats, ptr %stats, i32 0, i32 1
  %43 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bytes, align 8
  %add = add i64 %44, %conv
  store i64 %add, ptr %bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %40) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  %45 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sync, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %sync, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !74
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !63

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !76
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !78
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %buf) #2 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #11
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %1 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp34.not = icmp eq i32 %2, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.cond7.preheader_crit_edge, label %for.cond.preheader.for.cond1.preheader_crit_edge

for.cond.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond1.preheader

for.cond.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %for.cond.preheader.for.cond1.preheader_crit_edge
  %i.035 = phi i32 [ %inc5, %for.cond1.preheader.for.cond1.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond1.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.8, i32 noundef %i.035, ptr noundef nonnull @ifb_q_stats_desc) #11
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.8, i32 noundef %i.035, ptr noundef getelementptr inbounds ([2 x %struct.ifb_q_stats_desc], ptr @ifb_q_stats_desc, i32 0, i32 1)) #11
  %inc5 = add nuw i32 %i.035, 1
  %3 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %real_num_rx_queues, align 4
  %cmp = icmp ult i32 %inc5, %4
  br i1 %cmp, label %for.cond1.preheader.for.cond1.preheader_crit_edge, label %for.cond1.preheader.for.cond7.preheader_crit_edge

for.cond1.preheader.for.cond7.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond7.preheader

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.cond7.preheader:                              ; preds = %for.cond1.preheader.for.cond7.preheader_crit_edge, %for.cond.preheader.for.cond7.preheader_crit_edge
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %5 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp837.not = icmp eq i32 %6, 0
  br i1 %cmp837.not, label %for.cond7.preheader.sw.epilog_crit_edge, label %for.cond7.preheader.for.cond10.preheader_crit_edge

for.cond7.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond7.preheader
  br label %for.cond10.preheader

for.cond7.preheader.sw.epilog_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %for.cond7.preheader.for.cond10.preheader_crit_edge
  %i.138 = phi i32 [ %inc20, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ 0, %for.cond7.preheader.for.cond10.preheader_crit_edge ]
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.9, i32 noundef %i.138, ptr noundef nonnull @ifb_q_stats_desc) #11
  call void (ptr, ptr, ...) @ethtool_sprintf(ptr noundef nonnull %p, ptr noundef nonnull @.str.9, i32 noundef %i.138, ptr noundef getelementptr inbounds ([2 x %struct.ifb_q_stats_desc], ptr @ifb_q_stats_desc, i32 0, i32 1)) #11
  %inc20 = add nuw i32 %i.138, 1
  %7 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %real_num_tx_queues, align 8
  %cmp8 = icmp ult i32 %inc20, %8
  br i1 %cmp8, label %for.cond10.preheader.for.cond10.preheader_crit_edge, label %for.cond10.preheader.sw.epilog_crit_edge

for.cond10.preheader.sw.epilog_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond10.preheader

sw.epilog:                                        ; preds = %for.cond10.preheader.sw.epilog_crit_edge, %for.cond7.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifb_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.not = icmp eq i32 %1, 0
  br i1 %cmp31.not, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %ifb_fill_stats_data.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %data.addr.0.lcssa = phi ptr [ %data, %entry.for.cond1.preheader_crit_edge ], [ %add.ptr5.i, %ifb_fill_stats_data.exit.for.cond1.preheader_crit_edge ]
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp234.not = icmp eq i32 %3, 0
  br i1 %cmp234.not, label %for.cond1.preheader.for.end8_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.end8_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end8

for.body:                                         ; preds = %ifb_fill_stats_data.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %ifb_fill_stats_data.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data.addr.032 = phi ptr [ %add.ptr5.i, %ifb_fill_stats_data.exit.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %rx_stats = getelementptr %struct.ifb_q_private, ptr %5, i32 %i.033, i32 6
  %sync.i = getelementptr %struct.ifb_q_private, ptr %5, i32 %i.033, i32 6, i32 2
  %add.ptr.1.i = getelementptr i8, ptr %rx_stats, i32 8
  %arrayidx2.1.i = getelementptr i64, ptr %data.addr.032, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body
  %call.i = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync.i) #11
  %6 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_stats, align 8
  %8 = ptrtoint ptr %data.addr.032 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data.addr.032, align 8
  %9 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.1.i, align 8
  %11 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx2.1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %12 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sync.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %13, %call.i
  br i1 %cmp.i.i.i.i.not.i, label %ifb_fill_stats_data.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

ifb_fill_stats_data.exit:                         ; preds = %do.body.i
  %add.ptr5.i = getelementptr i64, ptr %data.addr.032, i32 2
  %inc = add nuw i32 %i.033, 1
  %14 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %real_num_rx_queues, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %ifb_fill_stats_data.exit.for.body_crit_edge, label %ifb_fill_stats_data.exit.for.cond1.preheader_crit_edge

ifb_fill_stats_data.exit.for.cond1.preheader_crit_edge: ; preds = %ifb_fill_stats_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

ifb_fill_stats_data.exit.for.body_crit_edge:      ; preds = %ifb_fill_stats_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body3:                                        ; preds = %ifb_fill_stats_data.exit25.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.136 = phi i32 [ %inc7, %ifb_fill_stats_data.exit25.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %data.addr.135 = phi ptr [ %add.ptr5.i24, %ifb_fill_stats_data.exit25.for.body3_crit_edge ], [ %data.addr.0.lcssa, %for.cond1.preheader.for.body3_crit_edge ]
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %tx_stats = getelementptr %struct.ifb_q_private, ptr %17, i32 %i.136, i32 7
  %sync.i18 = getelementptr %struct.ifb_q_private, ptr %17, i32 %i.136, i32 7, i32 2
  %add.ptr.1.i19 = getelementptr i8, ptr %tx_stats, i32 8
  %arrayidx2.1.i21 = getelementptr i64, ptr %data.addr.135, i32 1
  br label %do.body.i23

do.body.i23:                                      ; preds = %do.body.i23.do.body.i23_crit_edge, %for.body3
  %call.i20 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %sync.i18) #11
  %18 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_stats, align 8
  %20 = ptrtoint ptr %data.addr.135 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %data.addr.135, align 8
  %21 = ptrtoint ptr %add.ptr.1.i19 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.1.i19, align 8
  %23 = ptrtoint ptr %arrayidx2.1.i21 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx2.1.i21, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !64
  %24 = ptrtoint ptr %sync.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sync.i18, align 4
  %cmp.i.i.i.i.not.i22 = icmp eq i32 %25, %call.i20
  br i1 %cmp.i.i.i.i.not.i22, label %ifb_fill_stats_data.exit25, label %do.body.i23.do.body.i23_crit_edge

do.body.i23.do.body.i23_crit_edge:                ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i23

ifb_fill_stats_data.exit25:                       ; preds = %do.body.i23
  %add.ptr5.i24 = getelementptr i64, ptr %data.addr.135, i32 2
  %inc7 = add nuw i32 %i.136, 1
  %26 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %real_num_tx_queues, align 8
  %cmp2 = icmp ult i32 %inc7, %27
  br i1 %cmp2, label %ifb_fill_stats_data.exit25.for.body3_crit_edge, label %ifb_fill_stats_data.exit25.for.end8_crit_edge

ifb_fill_stats_data.exit25.for.end8_crit_edge:    ; preds = %ifb_fill_stats_data.exit25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end8

ifb_fill_stats_data.exit25.for.body3_crit_edge:   ; preds = %ifb_fill_stats_data.exit25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.end8:                                         ; preds = %ifb_fill_stats_data.exit25.for.end8_crit_edge, %for.cond1.preheader.for.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifb_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %real_num_rx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 89
  %0 = ptrtoint ptr %real_num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_num_rx_queues, align 4
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %2 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %real_num_tx_queues, align 8
  %add = add i32 %3, %1
  %mul = shl i32 %add, 1
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %mul, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ifb_init_one() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 4, ptr noundef nonnull @.str.11, i8 noundef zeroext 0, ptr noundef nonnull @ifb_setup, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ifb_link_ops, ptr %rtnl_link_ops, align 4
  %call1 = tail call i32 @register_netdevice(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %err4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err4:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_netdev(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__param_numifbs, !1, !"__param_numifbs", i1 false, i1 false}
!1 = !{!"../drivers/net/ifb.c", i32 399, i32 1}
!2 = !{ptr @__UNIQUE_ID_numifbstype388, !1, !"__UNIQUE_ID_numifbstype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_numifbs389, !4, !"__UNIQUE_ID_numifbs389", i1 false, i1 false}
!4 = !{!"../drivers/net/ifb.c", i32 400, i32 1}
!5 = !{ptr @__initcall__kmod_ifb__390_454_ifb_init_module6, !6, !"__initcall__kmod_ifb__390_454_ifb_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/net/ifb.c", i32 454, i32 1}
!7 = !{ptr @__exitcall_ifb_cleanup_module, !8, !"__exitcall_ifb_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/net/ifb.c", i32 455, i32 1}
!9 = !{ptr @__UNIQUE_ID_file391, !10, !"__UNIQUE_ID_file391", i1 false, i1 false}
!10 = !{!"../drivers/net/ifb.c", i32 456, i32 1}
!11 = !{ptr @__UNIQUE_ID_license392, !10, !"__UNIQUE_ID_license392", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author393, !13, !"__UNIQUE_ID_author393", i1 false, i1 false}
!13 = !{!"../drivers/net/ifb.c", i32 457, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias394, !15, !"__UNIQUE_ID_alias394", i1 false, i1 false}
!15 = !{!"../drivers/net/ifb.c", i32 458, i32 1}
!16 = !{ptr @__param_str_numifbs, !1, !"__param_str_numifbs", i1 false, i1 false}
!17 = !{ptr @numifbs, !18, !"numifbs", i1 false, i1 false}
!18 = !{!"../drivers/net/ifb.c", i32 398, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ifb.c", i32 388, i32 11}
!21 = !{ptr @ifb_link_ops, !22, !"ifb_link_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/ifb.c", i32 387, i32 29}
!23 = !{ptr @ifb_netdev_ops, !24, !"ifb_netdev_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/ifb.c", i32 276, i32 36}
!25 = !{ptr @ifb_dev_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ifb.c", i32 199, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ifb_dev_init.__key.2, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ifb.c", i32 200, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ifb_ethtool_ops, !42, !"ifb_ethtool_ops", i1 false, i1 false}
!42 = !{!"../drivers/net/ifb.c", i32 285, i32 33}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ifb.c", i32 216, i32 25}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ifb.c", i32 221, i32 25}
!47 = !{ptr @ifb_q_stats_desc, !48, !"ifb_q_stats_desc", i1 false, i1 false}
!48 = !{!"../drivers/net/ifb.c", i32 70, i32 38}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ifb.c", i32 437, i32 3}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ifb.c", i32 407, i32 12}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2149980915}
!65 = !{i64 2149365248}
!66 = !{i64 2149365514}
!67 = !{i64 2149873247}
!68 = !{i64 2149878179}
!69 = !{i64 2149899891}
!70 = !{i64 2149904783}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2149981240}
!73 = !{i64 2149981565}
!74 = !{i64 752789, i64 752850}
!75 = !{i64 755521}
!76 = !{i64 755806}
!77 = !{i64 2152368960}
!78 = !{i64 2152368802}
!79 = !{i64 2152369130}
