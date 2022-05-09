; ModuleID = '/llk/IR_all_yes/net/sched/sch_teql.c_pt.bc'
source_filename = "../net/sched/sch_teql.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.125, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.125 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.teql_master = type { %struct.Qdisc_ops, ptr, ptr, %struct.list_head, i32, i32, i32, i32 }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__param_str_max_equalizers = internal constant [24 x i8] c"sch_teql.max_equalizers\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_equalizers = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_max_equalizers = internal constant %struct.kernel_param { ptr @__param_str_max_equalizers, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.99 { ptr @max_equalizers } }, section "__param", align 4
@__UNIQUE_ID_max_equalizerstype382 = internal constant [37 x i8] c"sch_teql.parmtype=max_equalizers:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_equalizers383 = internal constant [59 x i8] c"sch_teql.parm=max_equalizers:Max number of link equalizers\00", section ".modinfo", align 1
@master_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @master_dev_list, ptr @master_dev_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_sch_teql__384_523_teql_init6 = internal global ptr @teql_init, section ".initcall6.init", align 4
@__exitcall_teql_exit = internal global ptr @teql_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file385 = internal constant [33 x i8] c"sch_teql.file=net/sched/sch_teql\00", section ".modinfo", align 1
@__UNIQUE_ID_license386 = internal constant [21 x i8] c"sch_teql.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"teql%d\00", [25 x i8] zeroinitializer }, align 32
@teql_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @teql_master_open, ptr @teql_master_close, ptr @teql_master_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @teql_master_mtu, ptr null, ptr null, ptr @teql_master_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@teql_dequeue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_teql.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@teql_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@teql_destroy.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@noop_qdisc = external dso_local global %struct.Qdisc, align 128
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dst_neigh_lookup_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"max_equalizers\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 468, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"master_dev_list\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 467, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 481, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"teql_netdev_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 432, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 99, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 271, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1984, i32 2 }
@___asan_gen_.44 = private constant [24 x i8] c"../net/sched/sch_teql.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 155, i32 44 }
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 596, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1011, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 411, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_file385, ptr @__UNIQUE_ID_license386, ptr @__UNIQUE_ID_max_equalizers383, ptr @__UNIQUE_ID_max_equalizerstype382, ptr @__exitcall_teql_exit, ptr @__initcall__kmod_sch_teql__384_523_teql_init6, ptr @__param_max_equalizers, ptr @teql_exit, ptr @max_equalizers, ptr @master_dev_list, ptr @.str, ptr @teql_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_equalizers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @teql_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @teql_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load ptr, ptr @master_dev_list, align 4
  %cmp.not19 = icmp eq ptr %0, @master_dev_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %master.0 = getelementptr i8, ptr %.pn.in20, i32 -108
  %1 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call = tail call i32 @unregister_qdisc(ptr noundef %master.0) #15
  %dev = getelementptr i8, ptr %.pn.in20, i32 -8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %11) #15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %13) #15
  %cmp.not = icmp eq ptr %.pn, @master_dev_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_equalizers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp36 = icmp sgt i32 %0, 0
  br i1 %cmp36, label %entry.for.body_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 132, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @teql_master_setup, i32 noundef 1, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @register_netdev(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.for.end.sink.split_crit_edge

if.end.for.end.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.sink.split

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %id = getelementptr i8, ptr %call, i32 2312
  %call7 = tail call i32 @strlcpy(ptr noundef %id, ptr noundef nonnull %call, i32 noundef 16) #15
  %call9 = tail call i32 @register_qdisc(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_netdev(ptr noundef nonnull %call) #15
  br label %for.end.sink.split

if.end12:                                         ; preds = %if.end4
  %master_list = getelementptr i8, ptr %call, i32 2412
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @master_dev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %master_list, ptr noundef %1, ptr noundef nonnull @master_dev_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %master_list, ptr getelementptr inbounds (%struct.list_head, ptr @master_dev_list, i32 0, i32 1), align 4
  %2 = ptrtoint ptr %master_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @master_dev_list, ptr %master_list, align 4
  %prev3.i.i = getelementptr i8, ptr %call, i32 2416
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev3.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %master_list, ptr %1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end12.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %5 = load i32, ptr @max_equalizers, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end.thread50_crit_edge

for.inc.for.end.thread50_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread50

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end.sink.split:                               ; preds = %if.then11, %if.end.for.end.sink.split_crit_edge
  %err.2.ph = phi i32 [ %call9, %if.then11 ], [ %call1, %if.end.for.end.sink.split_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #15
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.body.for.end_crit_edge
  %err.2 = phi i32 [ %err.2.ph, %for.end.sink.split ], [ -12, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037)
  %tobool14.not = icmp eq i32 %i.037, 0
  br i1 %tobool14.not, label %for.end.for.end.thread_crit_edge, label %for.end.for.end.thread50_crit_edge

for.end.for.end.thread50_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread50

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %err.249 = phi i32 [ %err.2, %for.end.for.end.thread_crit_edge ], [ -19, %entry.for.end.thread_crit_edge ]
  br label %for.end.thread50

for.end.thread50:                                 ; preds = %for.end.thread, %for.end.for.end.thread50_crit_edge, %for.inc.for.end.thread50_crit_edge
  %6 = phi i32 [ %err.249, %for.end.thread ], [ 0, %for.end.for.end.thread50_crit_edge ], [ 0, %for.inc.for.end.thread50_crit_edge ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @teql_master_setup(ptr noundef %dev) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %priv_size = getelementptr i8, ptr %dev, i32 2328
  %1 = ptrtoint ptr %priv_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %priv_size, align 4
  %enqueue = getelementptr i8, ptr %dev, i32 2336
  %2 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @teql_enqueue, ptr %enqueue, align 4
  %dequeue = getelementptr i8, ptr %dev, i32 2340
  %3 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @teql_dequeue, ptr %dequeue, align 4
  %peek = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %peek to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @teql_peek, ptr %peek, align 4
  %init = getelementptr i8, ptr %dev, i32 2348
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @teql_qdisc_init, ptr %init, align 4
  %reset = getelementptr i8, ptr %dev, i32 2352
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @teql_reset, ptr %reset, align 4
  %destroy = getelementptr i8, ptr %dev, i32 2356
  %7 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @teql_destroy, ptr %destroy, align 4
  %owner = getelementptr i8, ptr %dev, i32 2400
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @teql_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %12 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %max_mtu, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %14 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 128, ptr %flags, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 128, ptr %hard_header_len, align 2
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %18, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %q2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %prev.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %q2, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %skb, ptr %9, align 4
  %13 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %qlen, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %to_free, align 4
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @teql_dequeue(ptr noundef %sch) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %q1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %0 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q1, align 4
  %cmp.i.i = icmp eq ptr %1, %q1
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %1
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %entry.__skb_dequeue.exit_crit_edge, label %if.then.i

entry.__skb_dequeue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %spec.store.select.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %entry.__skb_dequeue.exit_crit_edge
  %m = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %10 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m, align 4
  %dev = getelementptr inbounds %struct.teql_master, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i, align 128
  %qdisc = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %qdisc, align 8
  %call5 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %__skb_dequeue.exit.do.end11_crit_edge

__skb_dequeue.exit.do.end11_crit_edge:            ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

land.lhs.true:                                    ; preds = %__skb_dequeue.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @teql_dequeue.__warned, align 1
  br i1 %.b36, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @teql_dequeue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 99, ptr noundef nonnull @.str.2) #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %__skb_dequeue.exit.do.end11_crit_edge
  br i1 %tobool.not.i, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end11
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_queue.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.then13.if.end20_crit_edge, label %if.then17

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m, align 4
  %slaves = getelementptr inbounds %struct.teql_master, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sch, ptr %slaves, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %26) #15
  br label %if.end20

if.else:                                          ; preds = %do.end11
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i.not.i.i = icmp eq i16 %32, 0
  br i1 %tobool.i.not.i.i, label %if.else.cond.end.i.i_crit_edge, label %cond.true.i.i

if.else.cond.end.i.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 5
  %33 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %34 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.else.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.else.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %36 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !66
  %40 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %45, ptrtoint (ptr @lockdep_recursion to i32)
  %46 = inttoptr i32 %add.i.i.i.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !67
  %49 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i7.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %53 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %57 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i9.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !68
  %61 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %64, ptrtoint (ptr @hardirqs_enabled to i32)
  %65 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !69
  %68 = tail call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i12.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !70

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %28 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %72 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !71
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %74 = tail call ptr @llvm.returnaddress(i32 0) #15
  %75 = ptrtoint ptr %74 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %75) #15
  %76 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %77, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %78 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %79, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %75) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !72
  %80 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %81, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %qdisc_bstats_update.exit, %if.then17, %if.then13.if.end20_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %82 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qlen, align 4
  %qlen23 = getelementptr inbounds %struct.Qdisc, ptr %17, i32 0, i32 17, i32 2
  %84 = ptrtoint ptr %qlen23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen23, align 8
  %add = add i32 %85, %83
  %qlen25 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %86 = ptrtoint ptr %qlen25 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add, ptr %qlen25, align 8
  ret ptr %spec.store.select.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @teql_peek(ptr nocapture noundef readnone %sch) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_qdisc_init(ptr noundef %sch, ptr nocapture noundef readnone %opt, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %ops = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 16
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len, align 2
  %dev2 = getelementptr inbounds %struct.teql_master, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %hard_header_len3 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %11)
  %cmp = icmp ugt i16 %7, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp7 = icmp eq ptr %9, %3
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %m11 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %12 = ptrtoint ptr %m11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %m11, align 4
  %q12 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #15
  %13 = ptrtoint ptr %q12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %q12, ptr %q12, align 4
  %prev.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %q12, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i, align 4
  %slaves = getelementptr inbounds %struct.teql_master, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slaves, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.else89, label %if.then13

if.then13:                                        ; preds = %if.end10
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then13
  %and19 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then16.lor.lhs.false_crit_edge, label %land.lhs.true

if.then16.lor.lhs.false_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then16
  %flags21 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags21, align 8
  %and22 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then16.lor.lhs.false_crit_edge
  %and26 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false.lor.lhs.false32_crit_edge, label %land.lhs.true28

lor.lhs.false.lor.lhs.false32_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false32

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %flags29 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags29, align 8
  %and30 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.lor.lhs.false32_crit_edge

land.lhs.true28.lor.lhs.false32_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false32

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false32:                                  ; preds = %land.lhs.true28.lor.lhs.false32_crit_edge, %lor.lhs.false.lor.lhs.false32_crit_edge
  %and35 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false32.lor.lhs.false41_crit_edge, label %land.lhs.true37

lor.lhs.false32.lor.lhs.false41_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false41

land.lhs.true37:                                  ; preds = %lor.lhs.false32
  %flags38 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %26 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags38, align 8
  %and39 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true37.cleanup_crit_edge, label %land.lhs.true37.lor.lhs.false41_crit_edge

land.lhs.true37.lor.lhs.false41_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false41

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false41:                                  ; preds = %land.lhs.true37.lor.lhs.false41_crit_edge, %lor.lhs.false32.lor.lhs.false41_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu, align 4
  %mtu43 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %30 = ptrtoint ptr %mtu43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mtu43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp44 = icmp ult i32 %29, %31
  br i1 %cmp44, label %lor.lhs.false41.cleanup_crit_edge, label %lor.lhs.false41.if.end82_crit_edge

lor.lhs.false41.if.end82_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.then13
  %flags48 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %32 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags48, align 8
  %and49 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %and54 = and i32 %21, -17
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and54, ptr %flags, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.else.if.end55_crit_edge
  %35 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags48, align 8
  %and57 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end55.if.end63_crit_edge

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev2, align 4
  %flags61 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %flags61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags61, align 8
  %and62 = and i32 %40, -3
  store i32 %and62, ptr %flags61, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end55.if.end63_crit_edge
  %41 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags48, align 8
  %and65 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev2, align 4
  %flags69 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags69, align 8
  %and70 = and i32 %46, -4097
  store i32 %and70, ptr %flags69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63.if.end71_crit_edge
  %mtu72 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %47 = ptrtoint ptr %mtu72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mtu72, align 4
  %49 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev2, align 4
  %mtu74 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %mtu74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %52)
  %cmp75 = icmp ult i32 %48, %52
  br i1 %cmp75, label %if.then77, label %if.end71.if.end82_crit_edge

if.end71.if.end82_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %mtu74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %48, ptr %mtu74, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end71.if.end82_crit_edge, %lor.lhs.false41.if.end82_crit_edge
  %54 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slaves, align 4
  %privdata.i144 = getelementptr inbounds %struct.Qdisc, ptr %55, i32 0, i32 30
  %56 = ptrtoint ptr %privdata.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %privdata.i144, align 4
  %58 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %privdata.i, align 4
  %59 = load ptr, ptr %slaves, align 4
  %privdata.i145 = getelementptr inbounds %struct.Qdisc, ptr %59, i32 0, i32 30
  %60 = ptrtoint ptr %privdata.i145 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %sch, ptr %privdata.i145, align 4
  br label %cleanup

if.else89:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sch, ptr %privdata.i, align 4
  %62 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sch, ptr %slaves, align 4
  %mtu92 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %63 = ptrtoint ptr %mtu92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mtu92, align 4
  %65 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev2, align 4
  %mtu94 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 20
  %67 = ptrtoint ptr %mtu94 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %mtu94, align 4
  %68 = load ptr, ptr %dev2, align 4
  %flags96 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags96, align 8
  %and97 = and i32 %70, -19
  %flags98 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %71 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags98, align 8
  %and99 = and i32 %72, 18
  %or = or i32 %and99, %and97
  store i32 %or, ptr %flags96, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else89, %if.end82, %lor.lhs.false41.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -40, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %land.lhs.true37.cleanup_crit_edge ], [ -22, %land.lhs.true28.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else89 ], [ 0, %if.end82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @teql_reset(ptr noundef %sch) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  tail call void @skb_queue_purge(ptr noundef %q) #15
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %qlen, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @teql_destroy(ptr noundef %sch) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %slaves = getelementptr inbounds %struct.teql_master, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %do.cond46.do.body_crit_edge, %if.end.do.body_crit_edge
  %prev.0 = phi ptr [ %5, %do.cond46.do.body_crit_edge ], [ %3, %if.end.do.body_crit_edge ]
  %privdata.i77 = getelementptr inbounds %struct.Qdisc, ptr %prev.0, i32 0, i32 30
  %4 = ptrtoint ptr %privdata.i77 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %privdata.i77, align 4
  %cmp = icmp eq ptr %5, %sch
  br i1 %cmp, label %if.then4, label %do.cond46

if.then4:                                         ; preds = %do.body
  %privdata.i78 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %6 = ptrtoint ptr %privdata.i78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %privdata.i78, align 4
  %8 = ptrtoint ptr %privdata.i77 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %privdata.i77, align 4
  %9 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slaves, align 4
  %cmp10 = icmp eq ptr %10, %sch
  br i1 %cmp10, label %if.then11, label %if.then4.if.end43_crit_edge

if.then4.if.end43_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then11:                                        ; preds = %if.then4
  %11 = ptrtoint ptr %privdata.i78 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %privdata.i78, align 4
  %13 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %slaves, align 4
  %cmp16 = icmp eq ptr %12, %sch
  br i1 %cmp16, label %if.then17, label %if.then11.if.end43_crit_edge

if.then11.if.end43_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then17:                                        ; preds = %if.then11
  %dev = getelementptr inbounds %struct.teql_master, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i, align 128
  %18 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %slaves, align 4
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call21, label %if.then17.do.end_crit_edge, label %land.lhs.true

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %if.then17
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true24

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @teql_destroy.__warned, align 1
  br i1 %.b76, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @teql_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @.str.5) #15
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then17.do.end_crit_edge
  %qdisc = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc, align 8
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.end.qdisc_root_sleeping_lock.exit_crit_edge

do.end.qdisc_root_sleeping_lock.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_root_sleeping_lock.exit

land.rhs.i:                                       ; preds = %do.end
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge, label %if.then.i, !prof !70

land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %qdisc_root_sleeping_lock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 596) #15
  br label %qdisc_root_sleeping_lock.exit

qdisc_root_sleeping_lock.exit:                    ; preds = %if.then.i, %land.rhs.i.qdisc_root_sleeping_lock.exit_crit_edge, %do.end.qdisc_root_sleeping_lock.exit_crit_edge
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %24, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #15
  %call30 = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call30, label %qdisc_root_sleeping_lock.exit.do.end39_crit_edge, label %land.lhs.true31

qdisc_root_sleeping_lock.exit.do.end39_crit_edge: ; preds = %qdisc_root_sleeping_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true31:                                  ; preds = %qdisc_root_sleeping_lock.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b7475 = load i1, ptr @teql_destroy.__warned.6, align 1
  br i1 %.b7475, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @teql_destroy.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef nonnull @.str.5) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %qdisc_root_sleeping_lock.exit.do.end39_crit_edge
  %25 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qdisc, align 8
  tail call void @qdisc_reset(ptr noundef %26) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #15
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %if.then11.if.end43_crit_edge, %if.then4.if.end43_crit_edge
  %q44 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  tail call void @skb_queue_purge(ptr noundef %q44) #15
  br label %cleanup

do.cond46:                                        ; preds = %do.body
  %cmp48.not = icmp eq ptr %5, %3
  br i1 %cmp48.not, label %do.cond46.cleanup_crit_edge, label %do.cond46.do.body_crit_edge

do.cond46.do.body_crit_edge:                      ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond46.cleanup_crit_edge:                      ; preds = %do.cond46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %do.cond46.cleanup_crit_edge, %if.end43, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_master_open(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves = getelementptr i8, ptr %dev, i32 2408
  %0 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slaves, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup43_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %q.0 = phi ptr [ %14, %do.cond.do.body_crit_edge ], [ %1, %entry.do.body_crit_edge ]
  %mtu.0 = phi i32 [ %10, %do.cond.do.body_crit_edge ], [ 65534, %entry.do.body_crit_edge ]
  %flags.0 = phi i32 [ %flags.3, %do.cond.do.body_crit_edge ], [ 18, %entry.do.body_crit_edge ]
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %do.body.cleanup43_crit_edge, label %if.end5

do.body.cleanup43_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end5:                                          ; preds = %do.body
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %7)
  %cmp11 = icmp ugt i16 %7, 128
  br i1 %cmp11, label %if.end5.cleanup43_crit_edge, label %do.cond

if.end5.cleanup43_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

do.cond:                                          ; preds = %if.end5
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu6, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %mtu.0)
  %flags15 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags15, align 8
  %and = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and17 = and i32 %flags.0, -17
  %spec.select66 = select i1 %tobool.not, i32 %and17, i32 %flags.0
  %and20 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %and23 = and i32 %spec.select66, -3
  %flags.2 = select i1 %tobool21.not, i32 %and23, i32 %spec.select66
  %and26 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %flags.2, -4097
  %flags.3 = select i1 %tobool27.not, i32 %and29, i32 %flags.2
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 30
  %13 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %privdata.i, align 4
  %cmp33.not = icmp eq ptr %14, %1
  br i1 %cmp33.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  %dev35 = getelementptr i8, ptr %dev, i32 2404
  %15 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev35, align 4
  %mtu36 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %mtu36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %mtu36, align 4
  %18 = load ptr, ptr %dev35, align 4
  %flags38 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags38, align 8
  %and39 = and i32 %20, -19
  %or = or i32 %and39, %flags.3
  store i32 %or, ptr %flags38, align 8
  %21 = load ptr, ptr %dev35, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup43

cleanup43:                                        ; preds = %do.end, %if.end5.cleanup43_crit_edge, %do.body.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.2 = phi i32 [ 0, %do.end ], [ -49, %entry.cleanup43_crit_edge ], [ -49, %do.body.cleanup43_crit_edge ], [ -22, %if.end5.cleanup43_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_master_close(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_master_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #6 align 64 {
entry:
  %haddr.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %slaves = getelementptr i8, ptr %dev, i32 2408
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves, align 4
  %tobool.not = icmp eq ptr %3, null
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %vlan_proto.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %_tx.i114 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  br i1 %tobool.not, label %entry.drop_crit_edge, label %entry.restart_crit_edge

entry.restart_crit_edge:                          ; preds = %entry
  br label %restart

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

restart:                                          ; preds = %do.end.restart_crit_edge, %entry.restart_crit_edge
  %skb_res.0 = phi ptr [ %skb, %do.end.restart_crit_edge ], [ null, %entry.restart_crit_edge ]
  %cmp20.i.i = icmp eq ptr %skb_res.0, null
  %cond.i.i = select i1 %cmp20.i.i, i32 -11, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %restart
  %q.0 = phi ptr [ %132, %do.cond.do.body_crit_edge ], [ %3, %restart ]
  %busy.0 = phi i32 [ %busy.2.ph, %do.cond.do.body_crit_edge ], [ 0, %restart ]
  %nores.0 = phi i32 [ %nores.2.ph, %do.cond.do.body_crit_edge ], [ 0, %restart ]
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i, align 128
  %qdisc_sleeping = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %qdisc_sleeping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qdisc_sleeping, align 4
  %cmp.not = icmp eq ptr %12, %q.0
  br i1 %cmp.not, label %if.end6, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end6:                                          ; preds = %do.body
  %state.i = getelementptr %struct.netdev_queue, ptr %10, i32 %conv, i32 13
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %and.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end6.do.cond_crit_edge

if.end6.do.cond_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

lor.lhs.false:                                    ; preds = %if.end6
  %state.i98 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %state.i98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i98, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i99.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i99.not, label %lor.lhs.false.do.cond_crit_edge, label %if.end12

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end12:                                         ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 8
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i11.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i11.i, label %if.end12.skb_dst.exit.i_crit_edge, label %land.lhs.true.i13.i

if.end12.skb_dst.exit.i_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.lhs.true.i13.i:                              ; preds = %if.end12
  %call.i12.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool1.not.i.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge

land.lhs.true.i13.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i13.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !73

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge, %if.end12.skb_dst.exit.i_crit_edge
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %20, -2
  %21 = inttoptr i32 %and25.i.i to ptr
  %qdisc.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %qdisc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %qdisc.i, align 8
  %cmp.i = icmp eq ptr %23, @noop_qdisc
  br i1 %cmp.i, label %skb_dst.exit.i.sw.epilog_crit_edge, label %if.end.i

skb_dst.exit.i.sw.epilog_crit_edge:               ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %skb_dst.exit.i
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 49
  %24 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool2.not.i = icmp eq i32 %and25.i.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.sw.bb_crit_edge, label %if.end4.i

if.end.i.sw.bb_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end4.i:                                        ; preds = %if.end.i
  %26 = call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !74
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end4.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end4.i.rcu_read_lock.exit.i_crit_edge
  %ops.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.i, align 4
  %neigh_lookup.i.i.i = getelementptr inbounds %struct.dst_ops, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %neigh_lookup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %neigh_lookup.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %rcu_read_lock.exit.i
  %.b48.i.i.i = load i1, ptr @dst_neigh_lookup_skb.__already_done, align 1
  br i1 %.b48.i.i.i, label %land.rhs.i.i.i.__teql_resolve.exit.i_crit_edge, label %if.then.i.i.i, !prof !70

land.rhs.i.i.i.__teql_resolve.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__teql_resolve.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dst_neigh_lookup_skb.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 411, i32 noundef 9, ptr noundef null) #15
  br label %__teql_resolve.exit.i

if.end39.i.i.i:                                   ; preds = %rcu_read_lock.exit.i
  %call.i.i.i = call ptr %33(ptr noundef nonnull %21, ptr noundef %skb, ptr noundef null) #15
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %tobool.not.i14.i = icmp eq ptr %call.i.i.i, null
  %or.cond.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i14.i
  br i1 %or.cond.i.i, label %if.end39.i.i.i.__teql_resolve.exit.i_crit_edge, label %if.end.i.i

if.end39.i.i.i.__teql_resolve.exit.i_crit_edge:   ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__teql_resolve.exit.i

if.end.i.i:                                       ; preds = %if.end39.i.i.i
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %21, align 4
  %cmp.not.i.i = icmp eq ptr %35, %8
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %tbl.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tbl.i.i, align 4
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i.i, i32 0, i32 27
  %call.i1.i.i = call ptr @neigh_lookup(ptr noundef %37, ptr noundef %primary_key.i.i, ptr noundef %8) #15
  %tobool.not.i2.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool.not.i2.i.i, label %if.end.i.i.i, label %if.then2.i.i.__neigh_lookup_errno.exit.i.i_crit_edge

if.then2.i.i.__neigh_lookup_errno.exit.i.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__neigh_lookup_errno.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = call ptr @__neigh_create(ptr noundef %37, ptr noundef %primary_key.i.i, ptr noundef %8, i1 noundef zeroext true) #15
  br label %__neigh_lookup_errno.exit.i.i

__neigh_lookup_errno.exit.i.i:                    ; preds = %if.end.i.i.i, %if.then2.i.i.__neigh_lookup_errno.exit.i.i_crit_edge
  %retval.0.i3.i.i = phi ptr [ %call.i.i.i.i, %if.end.i.i.i ], [ %call.i1.i.i, %if.then2.i.i.__neigh_lookup_errno.exit.i.i_crit_edge ]
  %refcnt.i.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !75
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #15
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #15, !srcloc !76
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %__neigh_lookup_errno.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.neigh_release.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !70

if.end5.i.i.i.i.i.i.neigh_release.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %neigh_release.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #15
  br label %neigh_release.exit.i.i

if.then.i4.i.i:                                   ; preds = %__neigh_lookup_errno.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  call void @neigh_destroy(ptr noundef nonnull %call.i.i.i) #15
  br label %neigh_release.exit.i.i

neigh_release.exit.i.i:                           ; preds = %if.then.i4.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.neigh_release.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %retval.0.i3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cleanup.thread.i.i, label %neigh_release.exit.i.i.if.end8.i.i_crit_edge

neigh_release.exit.i.i.if.end8.i.i_crit_edge:     ; preds = %neigh_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

cleanup.thread.i.i:                               ; preds = %neigh_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %retval.0.i3.i.i to i32
  br label %__teql_resolve.exit.i

if.end8.i.i:                                      ; preds = %neigh_release.exit.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %n.1.i.i = phi ptr [ %call.i.i.i, %if.end.i.i.if.end8.i.i_crit_edge ], [ %retval.0.i3.i.i, %neigh_release.exit.i.i.if.end8.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %used.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %used.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.not.i.i.i.i = icmp eq i32 %42, %40
  br i1 %cmp.not.i.i.i.i, label %if.end8.i.i.if.end.i.i.i.i_crit_edge, label %do.body5.i.i.i.i

if.end8.i.i.if.end.i.i.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

do.body5.i.i.i.i:                                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %40, ptr %used.i.i.i.i, align 8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body5.i.i.i.i, %if.end8.i.i.if.end.i.i.i.i_crit_edge
  %nud_state.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 12
  %44 = ptrtoint ptr %nud_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nud_state.i.i.i.i, align 8
  %46 = and i8 %45, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i.i.i, label %neigh_event_send.exit.i.i, label %if.end.i.i.i.i.if.then11.i.i_crit_edge

if.end.i.i.i.i.if.then11.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

neigh_event_send.exit.i.i:                        ; preds = %if.end.i.i.i.i
  %call.i.i6.i.i = call i32 @__neigh_event_send(ptr noundef %n.1.i.i, ptr noundef %skb_res.0, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6.i.i)
  %cmp10.i.i = icmp eq i32 %call.i.i6.i.i, 0
  br i1 %cmp10.i.i, label %neigh_event_send.exit.i.i.if.then11.i.i_crit_edge, label %neigh_event_send.exit.i.i.if.end21.i.i_crit_edge

neigh_event_send.exit.i.i.if.end21.i.i_crit_edge: ; preds = %neigh_event_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

neigh_event_send.exit.i.i.if.then11.i.i_crit_edge: ; preds = %neigh_event_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %neigh_event_send.exit.i.i.if.then11.i.i_crit_edge, %if.end.i.i.i.i.if.then11.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %haddr.i.i) #15
  %ha_lock.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 17
  %dep_map.c48.i.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 17, i32 0, i32 0, i32 1
  %ha.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 18
  %addr_len.i.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 56
  %47 = call ptr @memset(ptr %haddr.i.i, i32 255, i32 32)
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %read_seqbegin.exit.i.i.i.do.body.i.i.i_crit_edge, %if.then11.i.i
  %48 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !78
  %and.i.i.i.i.i15.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i15.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i15.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.body24.critedge.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @trace_hardirqs_off() #15
  %49 = call ptr @llvm.returnaddress(i32 0) #15
  %50 = ptrtoint ptr %49 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %50) #15
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %50) #15
  call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i.i.i

do.body24.critedge.i.i.i.i.i:                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = call ptr @llvm.returnaddress(i32 0) #15
  %52 = ptrtoint ptr %51 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %52) #15
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %52) #15
  br label %do.body24.i.i.i.i.i

do.body24.i.i.i.i.i:                              ; preds = %do.body24.critedge.i.i.i.i.i, %if.then.i.i.i.i.i
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !79
  %and.i.i.i.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i.i, label %if.then36.i.i.i.i.i, label %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge, !prof !73

do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

if.then36.i.i.i.i.i:                              ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i:      ; preds = %if.then36.i.i.i.i.i, %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #15, !srcloc !80
  %54 = ptrtoint ptr %ha_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %ha_lock.i.i.i, align 4
  %and18.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i.i)
  %tobool.not19.i.i.i.i = icmp eq i32 %and18.i.i.i.i, 0
  br i1 %tobool.not19.i.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  br label %do.end.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i.do.end.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end.i.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !82
  %56 = ptrtoint ptr %ha_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %ha_lock.i.i.i, align 4
  %and.i.i.i.i = and i32 %57, 1
  %tobool.not.i.i7.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i7.i.i, label %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, label %do.end.i.i.i.i.do.end.i.i.i.i_crit_edge

do.end.i.i.i.i.do.end.i.i.i.i_crit_edge:          ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i.i.i

do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_seqbegin.exit.i.i.i

read_seqbegin.exit.i.i.i:                         ; preds = %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge
  %.lcssa.i.i.i.i = phi i32 [ %55, %seqcount_lockdep_reader_access.exit.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge ], [ %57, %do.end.i.i.i.i.read_seqbegin.exit.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  %58 = ptrtoint ptr %addr_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %addr_len.i.i.i, align 1
  %conv.i.i.i = zext i8 %59 to i32
  %60 = call ptr @memcpy(ptr %haddr.i.i, ptr %ha.i.i.i, i32 %conv.i.i.i)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !84
  %61 = ptrtoint ptr %ha_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %ha_lock.i.i.i, align 4
  %cmp.i.i.i.not.i.i.i = icmp eq i32 %62, %.lcssa.i.i.i.i
  br i1 %cmp.i.i.i.not.i.i.i, label %neigh_ha_snapshot.exit.i.i, label %read_seqbegin.exit.i.i.i.do.body.i.i.i_crit_edge

read_seqbegin.exit.i.i.i.do.body.i.i.i_crit_edge: ; preds = %read_seqbegin.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

neigh_ha_snapshot.exit.i.i:                       ; preds = %read_seqbegin.exit.i.i.i
  %63 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i.i)
  %tobool1.not2.i.i.i = icmp slt i32 %bf.load.i.i.i, 0
  %cond.in.in.i.i.i = select i1 %tobool1.not2.i.i.i, ptr %vlan_proto.i.i.i, ptr %protocol.i.i.i
  %64 = ptrtoint ptr %cond.in.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %cond.in1.i.i.i = load i16, ptr %cond.in.in.i.i.i, align 8
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  %67 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i8.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i8.i.i, label %neigh_ha_snapshot.exit.i.i.dev_hard_header.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

neigh_ha_snapshot.exit.i.i.dev_hard_header.exit.i.i_crit_edge: ; preds = %neigh_ha_snapshot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %neigh_ha_snapshot.exit.i.i
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool2.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.dev_hard_header.exit.i.i_crit_edge, label %if.end.i10.i.i

lor.lhs.false.i.i.i.dev_hard_header.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit.i.i

if.end.i10.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i9.i.i = call i32 %70(ptr noundef %skb, ptr noundef %8, i16 noundef zeroext %cond.in1.i.i.i, ptr noundef nonnull %haddr.i.i, ptr noundef null, i32 noundef %66) #15
  br label %dev_hard_header.exit.i.i

dev_hard_header.exit.i.i:                         ; preds = %if.end.i10.i.i, %lor.lhs.false.i.i.i.dev_hard_header.exit.i.i_crit_edge, %neigh_ha_snapshot.exit.i.i.dev_hard_header.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %haddr.i.i) #15
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %dev_hard_header.exit.i.i, %neigh_event_send.exit.i.i.if.end21.i.i_crit_edge
  %err.0.i.i = phi i32 [ 0, %dev_hard_header.exit.i.i ], [ %cond.i.i, %neigh_event_send.exit.i.i.if.end21.i.i_crit_edge ]
  %refcnt.i12.i.i = getelementptr inbounds %struct.neighbour, ptr %n.1.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i13.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i12.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !75
  call void @llvm.prefetch.p0(ptr %refcnt.i12.i.i, i32 1, i32 3, i32 1) #15
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i12.i.i, ptr %refcnt.i12.i.i, i32 1, ptr elementtype(i32) %refcnt.i12.i.i) #15, !srcloc !76
  %asmresult.i.i.i.i.i.i.i14.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i14.i.i)
  %cmp.i.i.i.i15.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i14.i.i, 1
  br i1 %cmp.i.i.i.i15.i.i, label %if.then.i19.i.i, label %if.end5.i.i.i.i17.i.i

if.end5.i.i.i.i17.i.i:                            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i14.i.i)
  %.not.i.i.i.i16.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i14.i.i, 0
  br i1 %.not.i.i.i.i16.i.i, label %if.end5.i.i.i.i17.i.i.__teql_resolve.exit.i_crit_edge, label %if.then10.i.i.i.i18.i.i, !prof !70

if.end5.i.i.i.i17.i.i.__teql_resolve.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__teql_resolve.exit.i

if.then10.i.i.i.i18.i.i:                          ; preds = %if.end5.i.i.i.i17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i12.i.i, i32 noundef 3) #15
  br label %__teql_resolve.exit.i

if.then.i19.i.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  call void @neigh_destroy(ptr noundef %n.1.i.i) #15
  br label %__teql_resolve.exit.i

__teql_resolve.exit.i:                            ; preds = %if.then.i19.i.i, %if.then10.i.i.i.i18.i.i, %if.end5.i.i.i.i17.i.i.__teql_resolve.exit.i_crit_edge, %cleanup.thread.i.i, %if.end39.i.i.i.__teql_resolve.exit.i_crit_edge, %if.then.i.i.i, %land.rhs.i.i.i.__teql_resolve.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %39, %cleanup.thread.i.i ], [ %err.0.i.i, %if.end5.i.i.i.i17.i.i.__teql_resolve.exit.i_crit_edge ], [ %err.0.i.i, %if.then10.i.i.i.i18.i.i ], [ %err.0.i.i, %if.then.i19.i.i ], [ -2, %if.then.i.i.i ], [ -2, %land.rhs.i.i.i.__teql_resolve.exit.i_crit_edge ], [ -2, %if.end39.i.i.i.__teql_resolve.exit.i_crit_edge ]
  %call.i16.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i16.i, label %__teql_resolve.exit.i.teql_resolve.exit_crit_edge, label %land.lhs.true.i19.i

__teql_resolve.exit.i.teql_resolve.exit_crit_edge: ; preds = %__teql_resolve.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %teql_resolve.exit

land.lhs.true.i19.i:                              ; preds = %__teql_resolve.exit.i
  %call1.i17.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.teql_resolve.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.teql_resolve.exit_crit_edge:  ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %teql_resolve.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.teql_resolve.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.teql_resolve.exit_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %teql_resolve.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.14) #15
  br label %teql_resolve.exit

teql_resolve.exit:                                ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.teql_resolve.exit_crit_edge, %land.lhs.true.i19.i.teql_resolve.exit_crit_edge, %__teql_resolve.exit.i.teql_resolve.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !85
  %72 = call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i.i.i23.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %76 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %teql_resolve.exit.sw.epilog_crit_edge [
    i32 0, label %teql_resolve.exit.sw.bb_crit_edge
    i32 1, label %sw.bb30
  ]

teql_resolve.exit.sw.bb_crit_edge:                ; preds = %teql_resolve.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

teql_resolve.exit.sw.epilog_crit_edge:            ; preds = %teql_resolve.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %teql_resolve.exit.sw.bb_crit_edge, %if.end.i.sw.bb_crit_edge
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 10
  %call.i.i100 = call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.i101.not = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.i101.not, label %sw.bb.if.end25_crit_edge, label %if.then15, !prof !73

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then15:                                        ; preds = %sw.bb
  %77 = call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i102 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i102 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 11
  %81 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %80, ptr %xmit_lock_owner.i, align 4
  %state.i104 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  %82 = ptrtoint ptr %state.i104 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i104, align 4
  %and.i105 = and i32 %83, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.i106.not = icmp eq i32 %and.i105, 0
  br i1 %tobool.i106.not, label %land.lhs.true, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then15
  %84 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cb.i.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 16
  %86 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev_ops.i, align 8
  %88 = call i32 @llvm.read_register.i32(metadata !56) #15
  %and.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %93, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %94 = inttoptr i32 %add.i.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %94, align 1
  %ndo_start_xmit.i.i = getelementptr inbounds %struct.net_device_ops, ptr %87, i32 0, i32 4
  %96 = ptrtoint ptr %ndo_start_xmit.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ndo_start_xmit.i.i, align 4
  %call9.i.i = call i32 %97(ptr noundef %skb, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i107 = icmp eq i32 %call9.i.i, 0
  br i1 %cmp.i107, label %if.then.i, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then.i:                                        ; preds = %land.lhs.true
  %98 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %xmit_lock_owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.not.i.i108 = icmp eq i32 %99, -1
  br i1 %cmp.not.i.i108, label %if.then.i.if.then21_crit_edge, label %do.body2.i.i

if.then.i.if.then21_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then21

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 12
  %101 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %100, ptr %trans_start.i.i, align 16
  br label %if.then21

if.then21:                                        ; preds = %do.body2.i.i, %if.then.i.if.then21_crit_edge
  %102 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #15
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 30
  %103 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %privdata.i, align 4
  %105 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %slaves, align 4
  %106 = ptrtoint ptr %_tx.i114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %_tx.i114, align 128
  call void @netif_tx_wake_queue(ptr noundef %107) #15
  %tx_packets = getelementptr i8, ptr %dev, i32 2424
  %108 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %109, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr i8, ptr %dev, i32 2420
  %110 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %111, %85
  store i32 %add, ptr %tx_bytes, align 4
  br label %cleanup55

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.then15.if.end24_crit_edge
  %112 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %sw.bb.if.end25_crit_edge
  %113 = ptrtoint ptr %_tx.i114 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %_tx.i114, align 128
  %state.i115 = getelementptr inbounds %struct.netdev_queue, ptr %114, i32 0, i32 13
  %115 = ptrtoint ptr %state.i115 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %state.i115, align 4
  %and.i116 = and i32 %116, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.i117.not = icmp eq i32 %and.i116, 0
  %spec.select = select i1 %tobool.i117.not, i32 %busy.0, i32 1
  br label %sw.epilog

sw.bb30:                                          ; preds = %teql_resolve.exit
  call void @__sanitizer_cov_trace_pc() #17
  %privdata.i118 = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 30
  %117 = ptrtoint ptr %privdata.i118 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %privdata.i118, align 4
  %119 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %slaves, align 4
  br label %cleanup55

sw.epilog:                                        ; preds = %if.end25, %teql_resolve.exit.sw.epilog_crit_edge, %skb_dst.exit.i.sw.epilog_crit_edge
  %busy.1 = phi i32 [ %spec.select, %if.end25 ], [ %busy.0, %teql_resolve.exit.sw.epilog_crit_edge ], [ %busy.0, %skb_dst.exit.i.sw.epilog_crit_edge ]
  %nores.1 = phi i32 [ %nores.0, %if.end25 ], [ 1, %teql_resolve.exit.sw.epilog_crit_edge ], [ 1, %skb_dst.exit.i.sw.epilog_crit_edge ]
  %120 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %head.i.i, align 8
  %122 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %123 to i32
  %add.ptr.i.i = getelementptr i8, ptr %121, i32 %conv.i.i
  %124 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %126 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len.i.i, align 4
  %sub.i = sub i32 %127, %sub.ptr.sub.i
  store i32 %sub.i, ptr %len.i.i, align 4
  %128 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %129)
  %cmp.i119 = icmp ult i32 %sub.i, %129
  br i1 %cmp.i119, label %do.body4.i, label %__skb_pull.exit, !prof !73

do.body4.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #15, !srcloc !86
  unreachable

__skb_pull.exit:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i121 = getelementptr i8, ptr %125, i32 %sub.ptr.sub.i
  %130 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %add.ptr.i121, ptr %data.i, align 4
  br label %do.cond

do.cond:                                          ; preds = %__skb_pull.exit, %lor.lhs.false.do.cond_crit_edge, %if.end6.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %busy.2.ph = phi i32 [ 1, %if.end6.do.cond_crit_edge ], [ 1, %lor.lhs.false.do.cond_crit_edge ], [ %busy.0, %do.body.do.cond_crit_edge ], [ %busy.1, %__skb_pull.exit ]
  %nores.2.ph = phi i32 [ %nores.0, %if.end6.do.cond_crit_edge ], [ %nores.0, %lor.lhs.false.do.cond_crit_edge ], [ %nores.0, %do.body.do.cond_crit_edge ], [ %nores.1, %__skb_pull.exit ]
  %privdata.i122 = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 30
  %131 = ptrtoint ptr %privdata.i122 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %privdata.i122, align 4
  %cmp42.not = icmp eq ptr %132, %3
  br i1 %cmp42.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nores.2.ph)
  %tobool44.not = icmp ne i32 %nores.2.ph, 0
  %or.cond = and i1 %cmp20.i.i, %tobool44.not
  br i1 %or.cond, label %do.end.restart_crit_edge, label %if.end49

do.end.restart_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %restart

if.end49:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy.2.ph)
  %tobool50.not = icmp eq i32 %busy.2.ph, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %_tx.i114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %_tx.i114, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %134, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup55

if.end52:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors = getelementptr i8, ptr %dev, i32 2428
  %135 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_errors, align 4
  %inc53 = add i32 %136, 1
  store i32 %inc53, ptr %tx_errors, align 4
  br label %drop

drop:                                             ; preds = %if.end52, %entry.drop_crit_edge
  %tx_dropped = getelementptr i8, ptr %dev, i32 2432
  %137 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_dropped, align 4
  %inc54 = add i32 %138, 1
  store i32 %inc54, ptr %tx_dropped, align 4
  call void @consume_skb(ptr noundef %skb) #15
  br label %cleanup55

cleanup55:                                        ; preds = %drop, %if.then51, %sw.bb30, %if.then21
  %retval.6 = phi i32 [ 16, %if.then51 ], [ 0, %drop ], [ 0, %if.then21 ], [ 0, %sw.bb30 ]
  ret i32 %retval.6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @teql_master_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves = getelementptr i8, ptr %dev, i32 2408
  %0 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slaves, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %q.0 = phi ptr [ %9, %do.cond.do.body_crit_edge ], [ %1, %entry.do.body_crit_edge ]
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_mtu)
  %cmp = icmp ult i32 %7, %new_mtu
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %q.0, i32 0, i32 30
  %8 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %privdata.i, align 4
  %cmp5.not = icmp eq ptr %9, %1
  br i1 %cmp5.not, label %do.cond.if.end6_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.if.end6_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6:                                          ; preds = %do.cond.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mtu7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %mtu7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %new_mtu, ptr %mtu7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @teql_master_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_packets = getelementptr i8, ptr %dev, i32 2424
  %0 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_packets, align 4
  %conv = zext i32 %1 to i64
  %tx_packets1 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %2 = ptrtoint ptr %tx_packets1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %tx_packets1, align 8
  %tx_bytes = getelementptr i8, ptr %dev, i32 2420
  %3 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_bytes, align 4
  %conv2 = zext i32 %4 to i64
  %tx_bytes3 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %5 = ptrtoint ptr %tx_bytes3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv2, ptr %tx_bytes3, align 8
  %tx_errors = getelementptr i8, ptr %dev, i32 2428
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %conv4 = zext i32 %7 to i64
  %tx_errors5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %8 = ptrtoint ptr %tx_errors5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv4, ptr %tx_errors5, align 8
  %tx_dropped = getelementptr i8, ptr %dev, i32 2432
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %conv6 = zext i32 %10 to i64
  %tx_dropped7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %11 = ptrtoint ptr %tx_dropped7 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv6, ptr %tx_dropped7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !51, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__param_max_equalizers, !1, !"__param_max_equalizers", i1 false, i1 false}
!1 = !{!"../net/sched/sch_teql.c", i32 469, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_equalizerstype382, !1, !"__UNIQUE_ID_max_equalizerstype382", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_equalizers383, !4, !"__UNIQUE_ID_max_equalizers383", i1 false, i1 false}
!4 = !{!"../net/sched/sch_teql.c", i32 470, i32 1}
!5 = !{ptr @__initcall__kmod_sch_teql__384_523_teql_init6, !6, !"__initcall__kmod_sch_teql__384_523_teql_init6", i1 false, i1 false}
!6 = !{!"../net/sched/sch_teql.c", i32 523, i32 1}
!7 = !{ptr @__exitcall_teql_exit, !8, !"__exitcall_teql_exit", i1 false, i1 false}
!8 = !{!"../net/sched/sch_teql.c", i32 524, i32 1}
!9 = !{ptr @__UNIQUE_ID_file385, !10, !"__UNIQUE_ID_file385", i1 false, i1 false}
!10 = !{!"../net/sched/sch_teql.c", i32 526, i32 1}
!11 = !{ptr @__UNIQUE_ID_license386, !10, !"__UNIQUE_ID_license386", i1 false, i1 false}
!12 = !{ptr @__param_str_max_equalizers, !1, !"__param_str_max_equalizers", i1 false, i1 false}
!13 = !{ptr @max_equalizers, !14, !"max_equalizers", i1 false, i1 false}
!14 = !{!"../net/sched/sch_teql.c", i32 468, i32 12}
!15 = !{ptr @master_dev_list, !16, !"master_dev_list", i1 false, i1 false}
!16 = !{!"../net/sched/sch_teql.c", i32 467, i32 8}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/sch_teql.c", i32 481, i32 9}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/sch_teql.c", i32 99, i32 6}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @skb_queue_head_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/sched/sch_teql.c", i32 155, i32 44}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/sched/sch_teql.c", i32 157, i32 19}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @teql_netdev_ops, !39, !"teql_netdev_ops", i1 false, i1 false}
!39 = !{!"../net/sched/sch_teql.c", i32 432, i32 36}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/net/dst.h", i32 411, i32 6}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/netdevice.h", i32 4684, i32 2}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2149874350}
!67 = !{i64 2149879282}
!68 = !{i64 2149900994}
!69 = !{i64 2149905886}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2149982343}
!72 = !{i64 2149982668}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2149366351}
!75 = !{i64 2148439747}
!76 = !{i64 2148354187, i64 2148354219, i64 2148354248, i64 2148354282, i64 2148354313, i64 2148354336}
!77 = !{i64 2149315861}
!78 = !{i64 753892, i64 753953}
!79 = !{i64 756624}
!80 = !{i64 756909}
!81 = !{i64 2149996771}
!82 = !{i64 2149996613}
!83 = !{i64 2149996941}
!84 = !{i64 2149982018}
!85 = !{i64 2149366617}
!86 = !{i64 2154576287, i64 2154576775, i64 2154576324, i64 2154576380, i64 2154576414, i64 2154576438, i64 2154576479, i64 2154576500, i64 2154576528, i64 2154576562}
