; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/fib.c_pt.bc'
source_filename = "../drivers/net/netdevsim/fib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nsim_fib_data = type { %struct.notifier_block, %struct.nsim_per_fib_data, %struct.nsim_per_fib_data, %struct.nsim_fib_entry, %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.rhashtable, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, i8, i8, i8 }
%struct.nsim_per_fib_data = type { %struct.nsim_fib_entry, %struct.nsim_fib_entry }
%struct.nsim_fib_entry = type { i64, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.162, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.162 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_fib_rt_key = type { [16 x i8], i8, i32, i32 }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.nsim_fib_event = type { %struct.list_head, %union.anon.163, ptr, i32, i32 }
%union.anon.163 = type { %struct.fib_entry_notifier_info }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.nsim_fib_rt = type { %struct.nsim_fib_rt_key, %struct.rhash_head, %struct.list_head }
%struct.rhash_head = type { ptr }
%struct.nsim_fib4_rt = type { %struct.nsim_fib_rt, ptr, i8, i8 }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.95, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.95 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.92, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.92 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib6_table = type { %struct.hlist_node, i32, %struct.spinlock, %struct.fib6_node, %struct.inet_peer_base, i32, i32 }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nsim_fib6_rt = type { %struct.nsim_fib_rt, %struct.list_head, i32 }
%struct.nsim_fib6_rt_nh = type { %struct.list_head, ptr }
%struct.nh_notifier_info = type { ptr, ptr, i32, i32, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.nsim_nexthop = type { %struct.rhash_head, i64, i32, i8 }
%struct.nh_notifier_grp_info = type { i16, i8, [0 x %struct.nh_notifier_grp_entry_info] }
%struct.nh_notifier_grp_entry_info = type { i8, i32, %struct.nh_notifier_single_info }
%struct.nh_notifier_single_info = type { ptr, i8, %union.anon.165, i8 }
%union.anon.165 = type { %struct.in6_addr }
%struct.fib6_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nsim_fib6_event = type { ptr, i32 }

@nsim_fib_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&data->nh_lock\00", [17 x i8] zeroinitializer }, align 32
@nsim_nexthop_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 16, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nsim_fib_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->fib_lock\00", [16 x i8] zeroinitializer }, align 32
@nsim_fib_rt_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 28, i16 0, i16 28, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nsim_fib_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&data->fib_event_work)\00", [55 x i8] zeroinitializer }, align 32
@nsim_fib_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&data->fib_event_queue_lock\00", [36 x i8] zeroinitializer }, align 32
@nsim_fib_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to register nexthop notifier\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nsim_fib_create\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/netdevsim/fib.c\00", [36 x i8] zeroinitializer }, align 32
@nsim_fib_create._entry_ptr = internal global ptr @nsim_fib_create._entry, section ".printk_index", align 4
@nsim_fib_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to register fib notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@nsim_fib_create._entry_ptr.12 = internal global ptr @nsim_fib_create._entry.10, section ".printk_index", align 4
@nsim_fib_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nsim_fib_destroy.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fib\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fail_route_offload\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail_res_nexthop_group_replace\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail_nexthop_bucket_replace\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nexthop_bucket_activity\00", [40 x i8] zeroinitializer }, align 32
@nsim_nexthop_bucket_activity_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @nsim_nexthop_bucket_activity_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %hu\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rhashtable_replace_fast.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_replace_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nsim_fib6_rt_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nsim_nexthop_create.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"netdevsim: Unsupported nexthop type\00", [60 x i8] zeroinitializer }, align 32
@nsim_nexthop_add.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"netdevsim: Failed to insert nexthop\00", [60 x i8] zeroinitializer }, align 32
@nsim_nexthop_account.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"netdevsim: Exceeded number of supported nexthops\00", [47 x i8] zeroinitializer }, align 32
@nsim_nexthop_replace.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"netdevsim: Failed to replace nexthop\00", [59 x i8] zeroinitializer }, align 32
@nsim_nexthop_res_table_pre_replace.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netdevsim: Failed to replace a resilient nexthop group\00", [41 x i8] zeroinitializer }, align 32
@nsim_nexthop_bucket_replace.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"netdevsim: Failed to replace nexthop bucket\00", [52 x i8] zeroinitializer }, align 32
@nsim_fib_rule_account.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"netdevsim: Exceeded number of supported fib rule entries\00", [39 x i8] zeroinitializer }, align 32
@nsim_fib4_prepare_event.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"netdevsim: Exceeded number of supported fib entries\00", [44 x i8] zeroinitializer }, align 32
@nsim_fib6_prepare_event.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"netdevsim: Exceeded number of supported fib entries\00", [44 x i8] zeroinitializer }, align 32
@nsim_fib6_event_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nsim_fib_rt_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1531, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"nsim_nexthop_ht_params\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 126, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1536, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"nsim_fib_rt_ht_params\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 112, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1542, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1544, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1552, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1560, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1488, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1493, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1497, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1501, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1504, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant [34 x i8] c"nsim_nexthop_bucket_activity_fops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1399, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1369, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 156, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 695, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 594, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 723, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 755, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1127, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1197, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1151, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1226, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1285, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1296, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 197, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 911, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.166 = private constant [31 x i8] c"../drivers/net/netdevsim/fib.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 949, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @nsim_fib_create._entry, ptr @nsim_fib_create._entry.10, ptr @nsim_fib_create._entry_ptr, ptr @nsim_fib_create._entry_ptr.12, ptr @nsim_fib_create.__key, ptr @.str, ptr @nsim_nexthop_ht_params, ptr @nsim_fib_create.__key.1, ptr @.str.2, ptr @nsim_fib_rt_ht_params, ptr @nsim_fib_create.__key.3, ptr @.str.4, ptr @nsim_fib_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @nsim_nexthop_bucket_activity_fops, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @nsim_nexthop_create.__msg, ptr @nsim_nexthop_add.__msg, ptr @nsim_nexthop_account.__msg, ptr @nsim_nexthop_replace.__msg, ptr @nsim_nexthop_res_table_pre_replace.__msg, ptr @nsim_nexthop_bucket_replace.__msg, ptr @nsim_fib_rule_account.__msg, ptr @nsim_fib4_prepare_event.__msg, ptr @nsim_fib6_prepare_event.__msg], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_rt_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_bucket_activity_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_create.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_add.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_account.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_replace.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_res_table_pre_replace.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_nexthop_bucket_replace.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib_rule_account.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib4_prepare_event.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_fib6_prepare_event.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nsim_fib_get_val(ptr noundef %fib_data, i32 noundef %res_id, i1 noundef zeroext %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %res_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %res_id, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ipv4 = getelementptr inbounds %struct.nsim_fib_data, ptr %fib_data, i32 0, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rules = getelementptr inbounds %struct.nsim_fib_data, ptr %fib_data, i32 0, i32 1, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ipv6 = getelementptr inbounds %struct.nsim_fib_data, ptr %fib_data, i32 0, i32 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rules8 = getelementptr inbounds %struct.nsim_fib_data, ptr %fib_data, i32 0, i32 2, i32 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nexthops = getelementptr inbounds %struct.nsim_fib_data, ptr %fib_data, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %entry1.0 = phi ptr [ %nexthops, %sw.bb9 ], [ %rules8, %sw.bb6 ], [ %ipv6, %sw.bb4 ], [ %rules, %sw.bb2 ], [ %ipv4, %sw.bb ]
  br i1 %max, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry1.0, align 8
  br label %cleanup

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %num = getelementptr inbounds %struct.nsim_fib_entry, ptr %entry1.0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %num) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %2, %cond.true ], [ %call.i, %cond.false ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nsim_fib_create(ptr noundef %devlink, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 864) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %devlink2 = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %devlink2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %devlink, ptr %devlink2, align 8
  %call3 = tail call ptr @devlink_priv(ptr noundef %devlink) #12
  %ddir.i = getelementptr inbounds %struct.nsim_dev, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddir.i, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef %3) #12
  %ddir1.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %ddir1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ddir1.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nsim_fib_debugfs_init.exit, label %nsim_fib_debugfs_init.exit.thread

nsim_fib_debugfs_init.exit.thread:                ; preds = %if.end
  %fail_route_offload.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %fail_route_offload.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %fail_route_offload.i, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.15, i16 noundef zeroext 384, ptr noundef %call.i, ptr noundef %fail_route_offload.i) #12
  %fail_res_nexthop_group_replace.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %fail_res_nexthop_group_replace.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fail_res_nexthop_group_replace.i, align 1
  %7 = ptrtoint ptr %ddir1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddir1.i, align 8
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %8, ptr noundef %fail_res_nexthop_group_replace.i) #12
  %fail_nexthop_bucket_replace.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %fail_nexthop_bucket_replace.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fail_nexthop_bucket_replace.i, align 2
  %10 = ptrtoint ptr %ddir1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddir1.i, align 8
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.17, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %fail_nexthop_bucket_replace.i) #12
  %12 = ptrtoint ptr %ddir1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddir1.i, align 8
  %call13.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 128, ptr noundef %13, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nsim_nexthop_bucket_activity_fops) #12
  %nh_lock = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %nh_lock, ptr noundef nonnull @.str, ptr noundef nonnull @nsim_fib_create.__key) #12
  %nexthop_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 8
  %call8 = tail call i32 @rhashtable_init(ptr noundef %nexthop_ht, ptr noundef nonnull @nsim_nexthop_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body12, label %nsim_fib_debugfs_init.exit.thread.err_debugfs_exit_crit_edge

nsim_fib_debugfs_init.exit.thread.err_debugfs_exit_crit_edge: ; preds = %nsim_fib_debugfs_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_debugfs_exit

nsim_fib_debugfs_init.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call.i to i32
  br label %err_data_free

do.body12:                                        ; preds = %nsim_fib_debugfs_init.exit.thread
  %fib_lock = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %fib_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @nsim_fib_create.__key.1) #12
  %fib_rt_list = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %fib_rt_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %fib_rt_list, ptr %fib_rt_list, align 4
  %prev.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fib_rt_list, ptr %prev.i, align 8
  %fib_rt_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 4
  %call15 = tail call i32 @rhashtable_init(ptr noundef %fib_rt_ht, ptr noundef nonnull @nsim_fib_rt_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body19, label %do.body12.err_rhashtable_nexthop_destroy_crit_edge

do.body12.err_rhashtable_nexthop_destroy_crit_edge: ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rhashtable_nexthop_destroy

do.body19:                                        ; preds = %do.body12
  %fib_event_work = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %fib_event_work, i32 noundef 0) #12
  %17 = ptrtoint ptr %fib_event_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %fib_event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @nsim_fib_create.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry24 = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry24, ptr %entry24, align 8
  %prev.i117 = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry24, ptr %prev.i117, align 4
  %func = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nsim_fib_event_work, ptr %func, align 8
  %fib_event_queue = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %fib_event_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %fib_event_queue, ptr %fib_event_queue, align 8
  %prev.i118 = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fib_event_queue, ptr %prev.i118, align 4
  %fib_event_queue_lock = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %fib_event_queue_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @nsim_fib_create.__key.5, i16 noundef signext 3) #12
  %rules8.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %ipv6.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 2
  %rules.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %ipv4.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #12
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %val.i, align 8, !annotation !131
  %call.i119 = call i32 @devlink_resource_size_get(ptr noundef %devlink, i64 noundef 2, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %do.body19.nsim_fib_set_max.exit.i_crit_edge, label %if.then.i120

do.body19.nsim_fib_set_max.exit.i_crit_edge:      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_set_max.exit.i

if.then.i120:                                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %val.i, align 8
  br label %nsim_fib_set_max.exit.i

nsim_fib_set_max.exit.i:                          ; preds = %if.then.i120, %do.body19.nsim_fib_set_max.exit.i_crit_edge
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %val.i, align 8
  %27 = ptrtoint ptr %ipv4.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %ipv4.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #12
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %val.i, align 8, !annotation !131
  %call.1.i = call i32 @devlink_resource_size_get(ptr noundef %devlink, i64 noundef 3, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %nsim_fib_set_max.exit.i.nsim_fib_set_max.exit.1.i_crit_edge, label %if.then.1.i

nsim_fib_set_max.exit.i.nsim_fib_set_max.exit.1.i_crit_edge: ; preds = %nsim_fib_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_set_max.exit.1.i

if.then.1.i:                                      ; preds = %nsim_fib_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %val.i, align 8
  br label %nsim_fib_set_max.exit.1.i

nsim_fib_set_max.exit.1.i:                        ; preds = %if.then.1.i, %nsim_fib_set_max.exit.i.nsim_fib_set_max.exit.1.i_crit_edge
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %val.i, align 8
  %32 = ptrtoint ptr %rules.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %rules.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #12
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -1, ptr %val.i, align 8, !annotation !131
  %call.2.i = call i32 @devlink_resource_size_get(ptr noundef %devlink, i64 noundef 5, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %nsim_fib_set_max.exit.1.i.nsim_fib_set_max.exit.2.i_crit_edge, label %if.then.2.i

nsim_fib_set_max.exit.1.i.nsim_fib_set_max.exit.2.i_crit_edge: ; preds = %nsim_fib_set_max.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_set_max.exit.2.i

if.then.2.i:                                      ; preds = %nsim_fib_set_max.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %val.i, align 8
  br label %nsim_fib_set_max.exit.2.i

nsim_fib_set_max.exit.2.i:                        ; preds = %if.then.2.i, %nsim_fib_set_max.exit.1.i.nsim_fib_set_max.exit.2.i_crit_edge
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %val.i, align 8
  %37 = ptrtoint ptr %ipv6.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %ipv6.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #12
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %val.i, align 8, !annotation !131
  %call.3.i = call i32 @devlink_resource_size_get(ptr noundef %devlink, i64 noundef 6, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %nsim_fib_set_max.exit.2.i.nsim_fib_set_max.exit.3.i_crit_edge, label %if.then.3.i

nsim_fib_set_max.exit.2.i.nsim_fib_set_max.exit.3.i_crit_edge: ; preds = %nsim_fib_set_max.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_set_max.exit.3.i

if.then.3.i:                                      ; preds = %nsim_fib_set_max.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %val.i, align 8
  br label %nsim_fib_set_max.exit.3.i

nsim_fib_set_max.exit.3.i:                        ; preds = %if.then.3.i, %nsim_fib_set_max.exit.2.i.nsim_fib_set_max.exit.3.i_crit_edge
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %val.i, align 8
  %42 = ptrtoint ptr %rules8.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rules8.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #12
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %val.i, align 8, !annotation !131
  %call.4.i = call i32 @devlink_resource_size_get(ptr noundef %devlink, i64 noundef 7, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %nsim_fib_set_max.exit.3.i.nsim_fib_set_max_all.exit_crit_edge, label %if.then.4.i

nsim_fib_set_max.exit.3.i.nsim_fib_set_max_all.exit_crit_edge: ; preds = %nsim_fib_set_max.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_set_max_all.exit

if.then.4.i:                                      ; preds = %nsim_fib_set_max.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %val.i, align 8
  br label %nsim_fib_set_max_all.exit

nsim_fib_set_max_all.exit:                        ; preds = %if.then.4.i, %nsim_fib_set_max.exit.3.i.nsim_fib_set_max_all.exit_crit_edge
  %nexthops.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %val.i, align 8
  %47 = ptrtoint ptr %nexthops.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %nexthops.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #12
  %nexthop_nb = getelementptr inbounds %struct.nsim_fib_data, ptr %call7.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %nexthop_nb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nsim_nexthop_event_nb, ptr %nexthop_nb, align 8
  %call32 = call ptr @devlink_net(ptr noundef %devlink) #12
  %call34 = call i32 @register_nexthop_notifier(ptr noundef %call32, ptr noundef %nexthop_nb, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %nsim_fib_set_max_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #16
  br label %err_rhashtable_fib_destroy

if.end41:                                         ; preds = %nsim_fib_set_max_all.exit
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @nsim_fib_event_nb, ptr %call7.i.i, align 8
  %call43 = call ptr @devlink_net(ptr noundef %devlink) #12
  %call45 = call i32 @register_fib_notifier(ptr noundef %call43, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nsim_fib_dump_inconsistent, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #16
  %call54 = call ptr @devlink_net(ptr noundef %devlink) #12
  %call56 = call i32 @unregister_nexthop_notifier(ptr noundef %call54, ptr noundef %nexthop_nb) #12
  br label %err_rhashtable_fib_destroy

if.end53:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  call void @devlink_resource_occ_get_register(ptr noundef %devlink, i64 noundef 2, ptr noundef nonnull @nsim_fib_ipv4_resource_occ_get, ptr noundef nonnull %call7.i.i) #12
  call void @devlink_resource_occ_get_register(ptr noundef %devlink, i64 noundef 3, ptr noundef nonnull @nsim_fib_ipv4_rules_res_occ_get, ptr noundef nonnull %call7.i.i) #12
  call void @devlink_resource_occ_get_register(ptr noundef %devlink, i64 noundef 5, ptr noundef nonnull @nsim_fib_ipv6_resource_occ_get, ptr noundef nonnull %call7.i.i) #12
  call void @devlink_resource_occ_get_register(ptr noundef %devlink, i64 noundef 6, ptr noundef nonnull @nsim_fib_ipv6_rules_res_occ_get, ptr noundef nonnull %call7.i.i) #12
  call void @devlink_resource_occ_get_register(ptr noundef %devlink, i64 noundef 7, ptr noundef nonnull @nsim_fib_nexthops_res_occ_get, ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

err_rhashtable_fib_destroy:                       ; preds = %do.end50, %do.end39
  %err.0 = phi i32 [ %call34, %do.end39 ], [ %call45, %do.end50 ]
  %call58 = call zeroext i1 @flush_work(ptr noundef %fib_event_work) #12
  call void @rhashtable_free_and_destroy(ptr noundef %fib_rt_ht, ptr noundef nonnull @nsim_fib_rt_free, ptr noundef nonnull %call7.i.i) #12
  br label %err_rhashtable_nexthop_destroy

err_rhashtable_nexthop_destroy:                   ; preds = %err_rhashtable_fib_destroy, %do.body12.err_rhashtable_nexthop_destroy_crit_edge
  %err.1 = phi i32 [ %call15, %do.body12.err_rhashtable_nexthop_destroy_crit_edge ], [ %err.0, %err_rhashtable_fib_destroy ]
  call void @rhashtable_free_and_destroy(ptr noundef %nexthop_ht, ptr noundef nonnull @nsim_nexthop_free, ptr noundef nonnull %call7.i.i) #12
  call void @mutex_destroy(ptr noundef %fib_lock) #12
  br label %err_debugfs_exit

err_debugfs_exit:                                 ; preds = %err_rhashtable_nexthop_destroy, %nsim_fib_debugfs_init.exit.thread.err_debugfs_exit_crit_edge
  %err.2 = phi i32 [ %call8, %nsim_fib_debugfs_init.exit.thread.err_debugfs_exit_crit_edge ], [ %err.1, %err_rhashtable_nexthop_destroy ]
  call void @mutex_destroy(ptr noundef %nh_lock) #12
  %50 = ptrtoint ptr %ddir1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ddir1.i, align 8
  call void @debugfs_remove(ptr noundef %51) #12
  br label %err_data_free

err_data_free:                                    ; preds = %err_debugfs_exit, %nsim_fib_debugfs_init.exit
  %err.3 = phi i32 [ %14, %nsim_fib_debugfs_init.exit ], [ %err.2, %err_debugfs_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %52 = inttoptr i32 %err.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_data_free, %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %err_data_free ], [ %call7.i.i, %if.end53 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_fib_event_work(ptr noundef %work) #0 align 64 {
entry:
  %key.i.i.i17.i.i = alloca %struct.nsim_fib_rt_key, align 4
  %key.i.i.i1.i15.i = alloca %struct.nsim_fib_rt_key, align 4
  %key.i.i.i.i16.i = alloca %struct.nsim_fib_rt_key, align 4
  %key.i.i.i1.i.i = alloca %struct.nsim_fib_rt_key, align 4
  %fri.i.i.i = alloca %struct.fib_rt_info, align 4
  %fri.i24.i.i.i.i = alloca %struct.fib_rt_info, align 4
  %fri.i.i32.i.i.i = alloca %struct.fib_rt_info, align 4
  %fri.i.i.i.i.i = alloca %struct.fib_rt_info, align 4
  %key.i.i.i.i.i = alloca %struct.nsim_fib_rt_key, align 4
  %fib_event_queue = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fib_event_queue) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %fib_event_queue, i32 0, i32 1
  %1 = ptrtoint ptr %fib_event_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fib_event_queue, ptr %fib_event_queue, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fib_event_queue, ptr %0, align 4
  %fib_event_queue_lock = getelementptr i8, ptr %work, i32 52
  call void @_raw_spin_lock_bh(ptr noundef %fib_event_queue_lock) #12
  %fib_event_queue1 = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %fib_event_queue1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %fib_event_queue1, align 4
  %cmp.i.not.i = icmp eq ptr %4, %fib_event_queue1
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %fib_event_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fib_event_queue, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fib_event_queue, ptr %prev3.i.i, align 4
  store ptr %4, ptr %fib_event_queue, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %fib_event_queue1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %fib_event_queue1, ptr %fib_event_queue1, align 4
  store ptr %fib_event_queue1, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %fib_event_queue_lock) #12
  %fib_lock = getelementptr i8, ptr %work, i32 -336
  call void @mutex_lock_nested(ptr noundef %fib_lock, i32 noundef 0) #12
  %13 = ptrtoint ptr %fib_event_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fib_event_queue, align 4
  %cmp.not36 = icmp eq ptr %14, %fib_event_queue
  br i1 %cmp.not36, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %15 = getelementptr inbounds i8, ptr %key.i.i.i17.i.i, i32 16
  %family3.i.i.i23.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i17.i.i, i32 0, i32 2
  %tb_id4.i.i.i24.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i17.i.i, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %key.i.i.i1.i15.i, i32 16
  %family3.i.i.i10.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i1.i15.i, i32 0, i32 2
  %tb_id4.i.i.i11.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i1.i15.i, i32 0, i32 3
  %17 = getelementptr inbounds i8, ptr %key.i.i.i.i16.i, i32 16
  %family3.i.i.i.i39.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i.i16.i, i32 0, i32 2
  %tb_id4.i.i.i.i40.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i.i16.i, i32 0, i32 3
  %18 = getelementptr inbounds i8, ptr %key.i.i.i1.i.i, i32 4
  %prefix_len2.i.i.i7.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i1.i.i, i32 0, i32 1
  %family3.i.i.i8.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i1.i.i, i32 0, i32 2
  %tb_id4.i.i.i9.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i1.i.i, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %key.i.i.i.i.i, i32 4
  %prefix_len2.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i.i.i, i32 0, i32 1
  %family3.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i.i.i, i32 0, i32 2
  %tb_id4.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %key.i.i.i.i.i, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %fri.i.i32.i.i.i, i32 16
  %tb_id6.i.i45.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i32.i.i.i, i32 0, i32 1
  %dst.i.i46.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i32.i.i.i, i32 0, i32 2
  %dst_len7.i.i47.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i32.i.i.i, i32 0, i32 3
  %type9.i.i50.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i32.i.i.i, i32 0, i32 5
  %21 = getelementptr inbounds i8, ptr %fri.i24.i.i.i.i, i32 16
  %tb_id6.i29.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i24.i.i.i.i, i32 0, i32 1
  %dst.i30.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i24.i.i.i.i, i32 0, i32 2
  %dst_len7.i31.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i24.i.i.i.i, i32 0, i32 3
  %type9.i35.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i24.i.i.i.i, i32 0, i32 5
  %22 = getelementptr inbounds i8, ptr %fri.i.i.i.i.i, i32 16
  %tb_id6.i.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i.i.i, i32 0, i32 1
  %dst.i.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i.i.i, i32 0, i32 2
  %dst_len7.i.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i.i.i, i32 0, i32 3
  %type9.i.i.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i.i.i, i32 0, i32 5
  %23 = getelementptr inbounds i8, ptr %fri.i.i.i, i32 16
  %tb_id2.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i, i32 0, i32 1
  %dst3.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i, i32 0, i32 2
  %dst_len4.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i, i32 0, i32 3
  %type6.i.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %fib_event.037 = phi ptr [ %14, %for.body.lr.ph ], [ %next_fib_event.0, %list_del.exit.for.body_crit_edge ]
  %24 = ptrtoint ptr %fib_event.037 to i32
  call void @__asan_load4_noabort(i32 %24)
  %next_fib_event.0 = load ptr, ptr %fib_event.037, align 4
  %family.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 4
  %25 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %26, label %for.body.nsim_fib_event.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

for.body.nsim_fib_event.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_event.exit

sw.bb.i:                                          ; preds = %for.body
  %data.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 2
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %event.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 3
  %30 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %event.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %31, label %sw.bb.i.nsim_fib4_event.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 3, label %sw.bb2.i.i
  ]

sw.bb.i.nsim_fib4_event.exit.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib4_event.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %fail_route_offload.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 15
  %33 = ptrtoint ptr %fail_route_offload.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fail_route_offload.i.i.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 1) #12
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 48) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %dst.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 1
  %dst_len.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %dst_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dst_len.i.i.i.i, align 4
  %tb_id.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 6
  %38 = ptrtoint ptr %tb_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tb_id.i.i.i.i, align 4
  %40 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %dst.i.i.i.i, align 1
  %42 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call7.i.i.i.i.i.i, align 8
  %conv.i.i.i.i.i = trunc i32 %37 to i8
  %prefix_len3.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prefix_len3.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i.i.i.i.i, ptr %prefix_len3.i.i.i.i.i, align 8
  %family5.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %family5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %family5.i.i.i.i.i, align 4
  %tb_id7.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %tb_id7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %39, ptr %tb_id7.i.i.i.i.i, align 8
  %list.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 2
  %fib_rt_list.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 5
  %46 = ptrtoint ptr %fib_rt_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fib_rt_list.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i.i.i, ptr noundef %fib_rt_list.i.i.i.i.i, ptr noundef %47) #12
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.i.i.i.nsim_fib_rt_init.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.nsim_fib_rt_init.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_rt_init.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %list.i.i.i.i.i, ptr %prev1.i.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %list.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fib_rt_list.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %fib_rt_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list.i.i.i.i.i, ptr %fib_rt_list.i.i.i.i.i, align 4
  br label %nsim_fib_rt_init.exit.i.i.i.i

nsim_fib_rt_init.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.i.i.i.nsim_fib_rt_init.exit.i.i.i.i_crit_edge
  %fi.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %fi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fi.i.i.i.i, align 4
  %fi1.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %fi1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %fi1.i.i.i.i, align 8
  %fib_clntref.i.i.i.i.i = getelementptr inbounds %struct.fib_info, ptr %53, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %fib_clntref.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i.i.i.i.i, ptr %fib_clntref.i.i.i.i.i, i32 1, ptr elementtype(i32) %fib_clntref.i.i.i.i.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i.i, label %nsim_fib_rt_init.exit.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i, !prof !134

nsim_fib_rt_init.exit.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %nsim_fib_rt_init.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i:                          ; preds = %nsim_fib_rt_init.exit.i.i.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  %56 = or i32 %add.i.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.i.if.end3.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.i.if.end3.i.i.i_crit_edge:  ; preds = %if.else.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i.i:              ; preds = %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge, %nsim_fib_rt_init.exit.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %nsim_fib_rt_init.exit.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %fib_clntref.i.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i.i) #12
  br label %if.end3.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end15.sink.split.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.i.if.end3.i.i.i_crit_edge
  %tos.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 4
  %57 = ptrtoint ptr %tos.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tos.i.i.i.i, align 4
  %tos3.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %tos3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %tos3.i.i.i.i, align 4
  %type.i.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 5
  %60 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %type.i.i.i.i, align 1
  %type4.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %type4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %type4.i.i.i.i, align 1
  %fib_rt_ht.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 4
  %63 = ptrtoint ptr %dst_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dst_len.i.i.i.i, align 4
  %65 = ptrtoint ptr %tb_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tb_id.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key.i.i.i.i.i) #12
  %67 = call ptr @memset(ptr %19, i32 0, i32 16)
  %68 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %dst.i.i.i.i, align 1
  %70 = ptrtoint ptr %key.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %key.i.i.i.i.i, align 4
  %conv.i.i28.i.i.i = trunc i32 %64 to i8
  %71 = ptrtoint ptr %prefix_len2.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i.i28.i.i.i, ptr %prefix_len2.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %family3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %family3.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %tb_id4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %66, ptr %tb_id4.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %fib_rt_ht.i.i.i, ptr noundef nonnull %key.i.i.i.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key.i.i.i.i.i) #12
  %tobool5.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  %devlink.i.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 9
  %74 = ptrtoint ptr %devlink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devlink.i.i.i.i, align 8
  %call.i.i.i.i = call ptr @devlink_net(ptr noundef %75) #12
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  %ht_node.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %call1.i.i.i.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %fib_rt_ht.i.i.i, ptr noundef %ht_node.i.i.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i29.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i29.i.i.i, label %if.end.i31.i.i.i, label %err_fib_dismiss.i.i.i.i

if.end.i31.i.i.i:                                 ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 1) #12
  %76 = ptrtoint ptr %prefix_len3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %prefix_len3.i.i.i.i.i, align 8
  %conv.i.i30.i.i.i = zext i8 %77 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i.i.i.i.i) #12
  %78 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -40961, ptr %22, align 4
  %79 = ptrtoint ptr %fi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fi1.i.i.i.i, align 8
  %81 = ptrtoint ptr %fri.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %fri.i.i.i.i.i, align 4
  %82 = ptrtoint ptr %tb_id7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tb_id7.i.i.i.i.i, align 8
  %84 = ptrtoint ptr %tb_id6.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %tb_id6.i.i.i.i.i, align 4
  %85 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call7.i.i.i.i.i.i, align 8
  %87 = ptrtoint ptr %dst.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dst.i.i.i.i.i, align 4
  %88 = ptrtoint ptr %dst_len7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i.i30.i.i.i, ptr %dst_len7.i.i.i.i.i, align 4
  %89 = ptrtoint ptr %tos3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tos3.i.i.i.i, align 4
  store i8 %90, ptr %22, align 4
  %91 = ptrtoint ptr %type4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %type4.i.i.i.i, align 1
  %93 = ptrtoint ptr %type9.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %type9.i.i.i.i.i, align 1
  call void @fib_alias_hw_flags_set(ptr noundef %call.i.i.i.i, ptr noundef nonnull %fri.i.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i.i.i.i.i) #12
  br label %nsim_fib4_event.exit.i

err_fib_dismiss.i.i.i.i:                          ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %num.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 1, i32 0, i32 1
  %call.i.i8.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i.i.i.i, i32 noundef 8) #12
  %call.i.i.i.i.i.i = call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i.i.i.i) #12
  br label %if.then11.i.i.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i.i
  %num.i.i35.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 1, i32 0, i32 1
  %call.i.i8.i.i36.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i35.i.i.i, i32 noundef 8) #12
  %call.i.i.i37.i.i.i = call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i35.i.i.i) #12
  %ht_node.i39.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call.i.i.i.i.i, i32 0, i32 1
  %ht_node3.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %call4.i.i.i.i = call fastcc i32 @rhashtable_replace_fast(ptr noundef %fib_rt_ht.i.i.i, ptr noundef %ht_node.i39.i.i.i, ptr noundef %ht_node3.i.i.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end7.i.i.i.i, label %if.else.i.i.i.if.then11.i.i.i_crit_edge

if.else.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 1) #12
  %94 = ptrtoint ptr %prefix_len3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %prefix_len3.i.i.i.i.i, align 8
  %conv.i.i42.i.i.i = zext i8 %95 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i.i32.i.i.i) #12
  %96 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -40961, ptr %20, align 4
  %97 = ptrtoint ptr %fi1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fi1.i.i.i.i, align 8
  %99 = ptrtoint ptr %fri.i.i32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %fri.i.i32.i.i.i, align 4
  %100 = ptrtoint ptr %tb_id7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tb_id7.i.i.i.i.i, align 8
  %102 = ptrtoint ptr %tb_id6.i.i45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %tb_id6.i.i45.i.i.i, align 4
  %103 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call7.i.i.i.i.i.i, align 8
  %105 = ptrtoint ptr %dst.i.i46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %dst.i.i46.i.i.i, align 4
  %106 = ptrtoint ptr %dst_len7.i.i47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv.i.i42.i.i.i, ptr %dst_len7.i.i47.i.i.i, align 4
  %107 = ptrtoint ptr %tos3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tos3.i.i.i.i, align 4
  store i8 %108, ptr %20, align 4
  %109 = ptrtoint ptr %type4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %type4.i.i.i.i, align 1
  %111 = ptrtoint ptr %type9.i.i50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %type9.i.i50.i.i.i, align 1
  call void @fib_alias_hw_flags_set(ptr noundef %call.i.i.i.i, ptr noundef nonnull %fri.i.i32.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i.i32.i.i.i) #12
  %prefix_len.i25.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call.i.i.i.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %prefix_len.i25.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %prefix_len.i25.i.i.i.i, align 4
  %conv.i26.i.i.i.i = zext i8 %113 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i24.i.i.i.i) #12
  %114 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -57345, ptr %21, align 4
  %fi.i27.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call.i.i.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %fi.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fi.i27.i.i.i.i, align 4
  %117 = ptrtoint ptr %fri.i24.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %fri.i24.i.i.i.i, align 4
  %tb_id.i28.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call.i.i.i.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %tb_id.i28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tb_id.i28.i.i.i.i, align 4
  %120 = ptrtoint ptr %tb_id6.i29.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %tb_id6.i29.i.i.i.i, align 4
  %121 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %dst.i30.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %dst.i30.i.i.i.i, align 4
  %124 = ptrtoint ptr %dst_len7.i31.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv.i26.i.i.i.i, ptr %dst_len7.i31.i.i.i.i, align 4
  %tos.i32.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call.i.i.i.i.i, i32 0, i32 2
  %125 = ptrtoint ptr %tos.i32.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tos.i32.i.i.i.i, align 4
  store i8 %126, ptr %21, align 4
  %type.i34.i.i.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %call.i.i.i.i.i, i32 0, i32 3
  %127 = ptrtoint ptr %type.i34.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %type.i34.i.i.i.i, align 1
  %129 = ptrtoint ptr %type9.i35.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %type9.i35.i.i.i.i, align 1
  call void @fib_alias_hw_flags_set(ptr noundef %call.i.i.i.i, ptr noundef nonnull %fri.i24.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i24.i.i.i.i) #12
  call fastcc void @nsim_fib4_rt_destroy(ptr noundef nonnull %call.i.i.i.i.i) #12
  br label %nsim_fib4_event.exit.i

if.then11.i.i.i:                                  ; preds = %if.else.i.i.i.if.then11.i.i.i_crit_edge, %err_fib_dismiss.i.i.i.i
  call fastcc void @nsim_fib4_rt_destroy(ptr noundef nonnull %call7.i.i.i.i.i.i) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then11.i.i.i, %if.end.i.i.i.if.then.i.i_crit_edge, %if.then.i.i.i
  %devlink.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 9
  %130 = ptrtoint ptr %devlink.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %devlink.i.i, align 8
  %call1.i.i = call ptr @devlink_net(ptr noundef %131) #12
  %dst.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i.i.i) #12
  %132 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -49153, ptr %23, align 4
  %fi.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 3
  %133 = ptrtoint ptr %fi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fi.i.i.i, align 4
  %135 = ptrtoint ptr %fri.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %fri.i.i.i, align 4
  %tb_id.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 6
  %136 = ptrtoint ptr %tb_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tb_id.i.i.i, align 4
  %138 = ptrtoint ptr %tb_id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %tb_id2.i.i.i, align 4
  %139 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dst.i.i.i, align 4
  %141 = ptrtoint ptr %dst3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %dst3.i.i.i, align 4
  %dst_len.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 2
  %142 = ptrtoint ptr %dst_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dst_len.i.i.i, align 4
  %144 = ptrtoint ptr %dst_len4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %dst_len4.i.i.i, align 4
  %tos.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 4
  %145 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tos.i.i.i, align 4
  store i8 %146, ptr %23, align 4
  %type.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 5
  %147 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %type.i.i.i, align 1
  %149 = ptrtoint ptr %type6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %type6.i.i.i, align 1
  call void @fib_alias_hw_flags_set(ptr noundef %call1.i.i, ptr noundef nonnull %fri.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i.i.i) #12
  br label %nsim_fib4_event.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  %fib_rt_ht.i2.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %29, i32 0, i32 4
  %dst.i.i3.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 1
  %dst_len.i.i4.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 2
  %150 = ptrtoint ptr %dst_len.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dst_len.i.i4.i.i, align 4
  %tb_id.i.i5.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 6
  %152 = ptrtoint ptr %tb_id.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tb_id.i.i5.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key.i.i.i1.i.i) #12
  %154 = call ptr @memset(ptr %18, i32 0, i32 16)
  %155 = ptrtoint ptr %dst.i.i3.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %dst.i.i3.i.i, align 1
  %157 = ptrtoint ptr %key.i.i.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %key.i.i.i1.i.i, align 4
  %conv.i.i.i6.i.i = trunc i32 %151 to i8
  %158 = ptrtoint ptr %prefix_len2.i.i.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv.i.i.i6.i.i, ptr %prefix_len2.i.i.i7.i.i, align 4
  %159 = ptrtoint ptr %family3.i.i.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %family3.i.i.i8.i.i, align 4
  %160 = ptrtoint ptr %tb_id4.i.i.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %153, ptr %tb_id4.i.i.i9.i.i, align 4
  %call.i.i.i10.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %fib_rt_ht.i2.i.i, ptr noundef nonnull %key.i.i.i1.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key.i.i.i1.i.i) #12
  %tobool.not.i11.i.i = icmp eq ptr %call.i.i.i10.i.i, null
  br i1 %tobool.not.i11.i.i, label %sw.bb2.i.i.nsim_fib4_event.exit.i_crit_edge, label %if.end.i12.i.i

sw.bb2.i.i.nsim_fib4_event.exit.i_crit_edge:      ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib4_event.exit.i

if.end.i12.i.i:                                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ht_node.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call.i.i.i10.i.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %fib_rt_ht.i2.i.i, ptr noundef %ht_node.i.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call fastcc void @nsim_fib4_rt_destroy(ptr noundef nonnull %call.i.i.i10.i.i) #12
  br label %nsim_fib4_event.exit.i

nsim_fib4_event.exit.i:                           ; preds = %if.end.i12.i.i, %sw.bb2.i.i.nsim_fib4_event.exit.i_crit_edge, %if.then.i.i, %if.end7.i.i.i.i, %if.end.i31.i.i.i, %sw.bb.i.nsim_fib4_event.exit.i_crit_edge
  %fi.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 3
  %161 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %fi.i, align 4
  %fib_clntref.i.i = getelementptr inbounds %struct.fib_info, ptr %162, i32 0, i32 5
  %call.i.i.i.i.i.i13.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  call void @llvm.prefetch.p0(ptr %fib_clntref.i.i, i32 1, i32 3, i32 1) #12
  %163 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i.i, ptr %fib_clntref.i.i, i32 1, ptr elementtype(i32) %fib_clntref.i.i) #12, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i14.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %nsim_fib4_event.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nsim_fib_event.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.nsim_fib_event.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_event.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %fib_clntref.i.i, i32 noundef 3) #12
  br label %nsim_fib_event.exit

if.then.i14.i:                                    ; preds = %nsim_fib4_event.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  call void @free_fib_info(ptr noundef %162) #12
  br label %nsim_fib_event.exit

sw.bb1.i:                                         ; preds = %for.body
  %data2.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 2
  %164 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data2.i, align 4
  %166 = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %plen.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 10, i32 1
  %171 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %plen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb1.i.nsim_fib6_event.exit.i_crit_edge

sw.bb1.i.nsim_fib6_event.exit.i_crit_edge:        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

if.end.i.i:                                       ; preds = %sw.bb1.i
  %event3.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 3
  %173 = ptrtoint ptr %event3.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %event3.i, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %174, label %if.end.i.i.nsim_fib6_event.exit.i_crit_edge [
    i32 0, label %sw.bb.i19.i
    i32 1, label %sw.bb4.i.i
    i32 3, label %sw.bb9.i.i
  ]

if.end.i.i.nsim_fib6_event.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

sw.bb.i19.i:                                      ; preds = %if.end.i.i
  %fail_route_offload.i.i17.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 15
  %176 = ptrtoint ptr %fail_route_offload.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %fail_route_offload.i.i17.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i18.i = icmp eq i8 %177, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i23.i, label %if.then.i.i20.i

if.then.i.i20.i:                                  ; preds = %sw.bb.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 1) #12
  br label %err_rt_offload_failed_flag_set.i.i

if.end.i.i23.i:                                   ; preds = %sw.bb.i19.i
  %nrt6.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 0, i32 1
  %178 = ptrtoint ptr %nrt6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %nrt6.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %180 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i21.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %180, i32 noundef 3520, i32 noundef 52) #15
  %tobool.not.i.i.i22.i = icmp eq ptr %call7.i.i.i.i.i21.i, null
  br i1 %tobool.not.i.i.i22.i, label %if.end.i.i23.i.err_rt_offload_failed_flag_set.i.i_crit_edge, label %if.end.i.i.i31.i

if.end.i.i23.i.err_rt_offload_failed_flag_set.i.i_crit_edge: ; preds = %if.end.i.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rt_offload_failed_flag_set.i.i

if.end.i.i.i31.i:                                 ; preds = %if.end.i.i23.i
  %fib6_dst.i.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8
  %plen.i.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8, i32 1
  %181 = ptrtoint ptr %plen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %plen.i.i.i.i, align 4
  %183 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %170, align 4
  %tb6_id.i.i.i.i = getelementptr inbounds %struct.fib6_table, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %tb6_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tb6_id.i.i.i.i, align 4
  %187 = call ptr @memcpy(ptr %call7.i.i.i.i.i21.i, ptr %fib6_dst.i.i.i.i, i32 16)
  %conv.i.i.i.i24.i = trunc i32 %182 to i8
  %prefix_len3.i.i.i.i25.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i21.i, i32 0, i32 1
  %188 = ptrtoint ptr %prefix_len3.i.i.i.i25.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv.i.i.i.i24.i, ptr %prefix_len3.i.i.i.i25.i, align 8
  %family5.i.i.i.i26.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i21.i, i32 0, i32 2
  %189 = ptrtoint ptr %family5.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 10, ptr %family5.i.i.i.i26.i, align 4
  %tb_id7.i.i.i.i27.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %call7.i.i.i.i.i21.i, i32 0, i32 3
  %190 = ptrtoint ptr %tb_id7.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %186, ptr %tb_id7.i.i.i.i27.i, align 8
  %list.i.i.i.i28.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 2
  %fib_rt_list.i.i.i.i29.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 5
  %191 = ptrtoint ptr %fib_rt_list.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %fib_rt_list.i.i.i.i29.i, align 4
  %call.i.i.i.i.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i.i.i28.i, ptr noundef %fib_rt_list.i.i.i.i29.i, ptr noundef %192) #12
  br i1 %call.i.i.i.i.i.i30.i, label %if.end.i.i.i.i.i.i34.i, label %if.end.i.i.i31.i.nsim_fib_rt_init.exit.i.i.i35.i_crit_edge

if.end.i.i.i31.i.nsim_fib_rt_init.exit.i.i.i35.i_crit_edge: ; preds = %if.end.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_rt_init.exit.i.i.i35.i

if.end.i.i.i.i.i.i34.i:                           ; preds = %if.end.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i.i32.i = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i.i.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %list.i.i.i.i28.i, ptr %prev1.i.i.i.i.i.i32.i, align 4
  %194 = ptrtoint ptr %list.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %192, ptr %list.i.i.i.i28.i, align 8
  %prev3.i.i.i.i.i.i33.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 2, i32 1
  %195 = ptrtoint ptr %prev3.i.i.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %fib_rt_list.i.i.i.i29.i, ptr %prev3.i.i.i.i.i.i33.i, align 4
  %196 = ptrtoint ptr %fib_rt_list.i.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %list.i.i.i.i28.i, ptr %fib_rt_list.i.i.i.i29.i, align 4
  br label %nsim_fib_rt_init.exit.i.i.i35.i

nsim_fib_rt_init.exit.i.i.i35.i:                  ; preds = %if.end.i.i.i.i.i.i34.i, %if.end.i.i.i31.i.nsim_fib_rt_init.exit.i.i.i35.i_crit_edge
  %nh_list.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 1
  %197 = ptrtoint ptr %nh_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %nh_list.i.i.i.i, ptr %nh_list.i.i.i.i, align 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 1, i32 1
  %198 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %nh_list.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp42.not.i.i.i.i = icmp eq i32 %179, 0
  br i1 %cmp42.not.i.i.i.i, label %nsim_fib_rt_init.exit.i.i.i35.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge, label %nsim_fib_rt_init.exit.i.i.i35.i.for.body.i.i.i.i_crit_edge

nsim_fib_rt_init.exit.i.i.i35.i.for.body.i.i.i.i_crit_edge: ; preds = %nsim_fib_rt_init.exit.i.i.i35.i
  br label %for.body.i.i.i.i

nsim_fib_rt_init.exit.i.i.i35.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge: ; preds = %nsim_fib_rt_init.exit.i.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_create.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %nsim_fib_rt_init.exit.i.i.i35.i.for.body.i.i.i.i_crit_edge
  %i.043.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %nsim_fib_rt_init.exit.i.i.i35.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx3.i.i.i.i = getelementptr ptr, ptr %168, i32 %i.043.i.i.i.i
  %199 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx3.i.i.i.i, align 4
  %call4.i.i.i36.i = call fastcc i32 @nsim_fib6_rt_nh_add(ptr noundef nonnull %call7.i.i.i.i.i21.i, ptr noundef %200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i36.i)
  %tobool5.not.i.i.i37.i = icmp eq i32 %call4.i.i.i36.i, 0
  br i1 %tobool5.not.i.i.i37.i, label %for.inc.i.i.i.i, label %for.cond8.preheader.i.i.i.i

for.cond8.preheader.i.i.i.i:                      ; preds = %for.body.i.i.i.i
  %i.144.i.i.i.i = add i32 %i.043.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.144.i.i.i.i)
  %cmp945.i.i.i.i = icmp sgt i32 %i.144.i.i.i.i, -1
  br i1 %cmp945.i.i.i.i, label %for.cond8.preheader.i.i.i.i.for.body10.i.i.i.i_crit_edge, label %for.cond8.preheader.i.i.i.i.for.end14.i.i.i.i_crit_edge

for.cond8.preheader.i.i.i.i.for.end14.i.i.i.i_crit_edge: ; preds = %for.cond8.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end14.i.i.i.i

for.cond8.preheader.i.i.i.i.for.body10.i.i.i.i_crit_edge: ; preds = %for.cond8.preheader.i.i.i.i
  br label %for.body10.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.043.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %179
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_create.exit.i.i.i

for.body10.i.i.i.i:                               ; preds = %for.body10.i.i.i.i.for.body10.i.i.i.i_crit_edge, %for.cond8.preheader.i.i.i.i.for.body10.i.i.i.i_crit_edge
  %i.146.i.i.i.i = phi i32 [ %i.1.i.i.i.i, %for.body10.i.i.i.i.for.body10.i.i.i.i_crit_edge ], [ %i.144.i.i.i.i, %for.cond8.preheader.i.i.i.i.for.body10.i.i.i.i_crit_edge ]
  %arrayidx11.i.i.i.i = getelementptr ptr, ptr %168, i32 %i.146.i.i.i.i
  %201 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx11.i.i.i.i, align 4
  call fastcc void @nsim_fib6_rt_nh_del(ptr noundef nonnull %call7.i.i.i.i.i21.i, ptr noundef %202) #12
  %i.1.i.i.i.i = add nsw i32 %i.146.i.i.i.i, -1
  %cmp9.i.not.i.i.i = icmp eq i32 %i.146.i.i.i.i, 0
  br i1 %cmp9.i.not.i.i.i, label %for.body10.i.i.i.i.for.end14.i.i.i.i_crit_edge, label %for.body10.i.i.i.i.for.body10.i.i.i.i_crit_edge

for.body10.i.i.i.i.for.body10.i.i.i.i_crit_edge:  ; preds = %for.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i.i.i.i

for.body10.i.i.i.i.for.end14.i.i.i.i_crit_edge:   ; preds = %for.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end14.i.i.i.i

for.end14.i.i.i.i:                                ; preds = %for.body10.i.i.i.i.for.end14.i.i.i.i_crit_edge, %for.cond8.preheader.i.i.i.i.for.end14.i.i.i.i_crit_edge
  %call.i.i.i39.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i.i28.i) #12
  br i1 %call.i.i.i39.i.i.i.i, label %if.end.i.i.i40.i.i.i.i, label %for.end14.i.i.i.i.nsim_fib_rt_fini.exit.i.i.i.i_crit_edge

for.end14.i.i.i.i.nsim_fib_rt_fini.exit.i.i.i.i_crit_edge: ; preds = %for.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_rt_fini.exit.i.i.i.i

if.end.i.i.i40.i.i.i.i:                           ; preds = %for.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 2, i32 1
  %203 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %205 = ptrtoint ptr %list.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %list.i.i.i.i28.i, align 8
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %204, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %206, ptr %204, align 4
  br label %nsim_fib_rt_fini.exit.i.i.i.i

nsim_fib_rt_fini.exit.i.i.i.i:                    ; preds = %if.end.i.i.i40.i.i.i.i, %for.end14.i.i.i.i.nsim_fib_rt_fini.exit.i.i.i.i_crit_edge
  %209 = ptrtoint ptr %list.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i.i.i.i28.i, align 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call7.i.i.i.i.i21.i, i32 0, i32 2, i32 1
  %210 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i21.i) #12
  %211 = inttoptr i32 %call4.i.i.i36.i to ptr
  br label %nsim_fib6_rt_create.exit.i.i.i

nsim_fib6_rt_create.exit.i.i.i:                   ; preds = %nsim_fib_rt_fini.exit.i.i.i.i, %for.inc.i.i.i.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge, %nsim_fib_rt_init.exit.i.i.i35.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %211, %nsim_fib_rt_fini.exit.i.i.i.i ], [ %call7.i.i.i.i.i21.i, %nsim_fib_rt_init.exit.i.i.i35.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge ], [ %call7.i.i.i.i.i21.i, %for.inc.i.i.i.i.nsim_fib6_rt_create.exit.i.i.i_crit_edge ]
  %cmp.i.i.i.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %nsim_fib6_rt_create.exit.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, label %if.end5.i.i.i

nsim_fib6_rt_create.exit.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge: ; preds = %nsim_fib6_rt_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rt_offload_failed_flag_set.i.i

if.end5.i.i.i:                                    ; preds = %nsim_fib6_rt_create.exit.i.i.i
  %fib_rt_ht.i.i38.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 4
  %212 = ptrtoint ptr %plen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %plen.i.i.i.i, align 4
  %214 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %170, align 4
  %tb6_id.i32.i.i.i = getelementptr inbounds %struct.fib6_table, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %tb6_id.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tb6_id.i32.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key.i.i.i.i16.i) #12
  %218 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %17, align 4
  %219 = call ptr @memcpy(ptr %key.i.i.i.i16.i, ptr %fib6_dst.i.i.i.i, i32 16)
  %conv.i.i33.i.i.i = trunc i32 %213 to i8
  store i8 %conv.i.i33.i.i.i, ptr %17, align 4
  %220 = ptrtoint ptr %family3.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 10, ptr %family3.i.i.i.i39.i, align 4
  %221 = ptrtoint ptr %tb_id4.i.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %217, ptr %tb_id4.i.i.i.i40.i, align 4
  %call.i.i.i.i41.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %fib_rt_ht.i.i38.i, ptr noundef nonnull %key.i.i.i.i16.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key.i.i.i.i16.i) #12
  %tobool7.not.i.i.i = icmp eq ptr %call.i.i.i.i41.i, null
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.else.i.i48.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  %ht_node.i.i.i42.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %call.i.i.i43.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %fib_rt_ht.i.i38.i, ptr noundef %ht_node.i.i.i42.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43.i)
  %tobool.not.i34.i.i.i = icmp eq i32 %call.i.i.i43.i, 0
  br i1 %tobool.not.i34.i.i.i, label %if.end.i36.i.i.i, label %err_fib_dismiss.i.i.i47.i

if.end.i36.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @msleep(i32 noundef 1) #12
  %devlink.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 9
  %222 = ptrtoint ptr %devlink.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %devlink.i.i.i.i.i, align 8
  %call.i.i35.i.i.i = call ptr @devlink_net(ptr noundef %223) #12
  %nh_list.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %nh_list.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %fib6_rt_nh.010.i.i.i.i.i = load ptr, ptr %nh_list.i.i.i.i.i, align 4
  %cmp.not11.i.i.i.i.i = icmp eq ptr %fib6_rt_nh.010.i.i.i.i.i, %nh_list.i.i.i.i.i
  br i1 %cmp.not11.i.i.i.i.i, label %if.end.i36.i.i.i.nsim_fib6_event.exit.i_crit_edge, label %if.end.i36.i.i.i.for.body.i.i.i.i.i_crit_edge

if.end.i36.i.i.i.for.body.i.i.i.i.i_crit_edge:    ; preds = %if.end.i36.i.i.i
  br label %for.body.i.i.i.i.i

if.end.i36.i.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %if.end.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end.i36.i.i.i.for.body.i.i.i.i.i_crit_edge
  %fib6_rt_nh.012.i.i.i.i.i = phi ptr [ %fib6_rt_nh.0.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %fib6_rt_nh.010.i.i.i.i.i, %if.end.i36.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %rt.i.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.012.i.i.i.i.i, i32 0, i32 1
  %225 = ptrtoint ptr %rt.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rt.i.i.i.i.i, align 4
  call void @fib6_info_hw_flags_set(ptr noundef %call.i.i35.i.i.i, ptr noundef %226, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %227 = ptrtoint ptr %fib6_rt_nh.012.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %fib6_rt_nh.0.i.i.i.i.i = load ptr, ptr %fib6_rt_nh.012.i.i.i.i.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %fib6_rt_nh.0.i.i.i.i.i, %nh_list.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %for.body.i.i.i.i.i.nsim_fib6_event.exit.i_crit_edge, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

err_fib_dismiss.i.i.i47.i:                        ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %num.i.i.i.i44.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 2, i32 0, i32 1
  %call.i.i8.i.i.i.i45.i = call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i.i.i44.i, i32 noundef 8) #12
  %call.i.i.i.i.i46.i = call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i.i.i44.i) #12
  br label %if.then13.i.i.i

if.else.i.i48.i:                                  ; preds = %if.end5.i.i.i
  %num.i.i38.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 2, i32 0, i32 1
  %call.i.i8.i.i39.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i38.i.i.i, i32 noundef 8) #12
  %call.i.i.i40.i.i.i = call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i38.i.i.i) #12
  %ht_node.i42.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call.i.i.i.i41.i, i32 0, i32 1
  %ht_node2.i.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %call3.i.i.i.i = call fastcc i32 @rhashtable_replace_fast(ptr noundef %fib_rt_ht.i.i38.i, ptr noundef %ht_node.i42.i.i.i, ptr noundef %ht_node2.i.i.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end6.i.i.i.i, label %if.else.i.i48.i.if.then13.i.i.i_crit_edge

if.else.i.i48.i.if.then13.i.i.i_crit_edge:        ; preds = %if.else.i.i48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.else.i.i48.i
  call void @msleep(i32 noundef 1) #12
  %devlink.i.i44.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 9
  %228 = ptrtoint ptr %devlink.i.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %devlink.i.i44.i.i.i, align 8
  %call.i.i45.i.i.i = call ptr @devlink_net(ptr noundef %229) #12
  %nh_list.i.i46.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %230 = ptrtoint ptr %nh_list.i.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %fib6_rt_nh.010.i.i47.i.i.i = load ptr, ptr %nh_list.i.i46.i.i.i, align 4
  %cmp.not11.i.i48.i.i.i = icmp eq ptr %fib6_rt_nh.010.i.i47.i.i.i, %nh_list.i.i46.i.i.i
  br i1 %cmp.not11.i.i48.i.i.i, label %if.end6.i.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge, label %if.end6.i.i.i.i.for.body.i.i53.i.i.i_crit_edge

if.end6.i.i.i.i.for.body.i.i53.i.i.i_crit_edge:   ; preds = %if.end6.i.i.i.i
  br label %for.body.i.i53.i.i.i

if.end6.i.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i

for.body.i.i53.i.i.i:                             ; preds = %for.body.i.i53.i.i.i.for.body.i.i53.i.i.i_crit_edge, %if.end6.i.i.i.i.for.body.i.i53.i.i.i_crit_edge
  %fib6_rt_nh.012.i.i49.i.i.i = phi ptr [ %fib6_rt_nh.0.i.i51.i.i.i, %for.body.i.i53.i.i.i.for.body.i.i53.i.i.i_crit_edge ], [ %fib6_rt_nh.010.i.i47.i.i.i, %if.end6.i.i.i.i.for.body.i.i53.i.i.i_crit_edge ]
  %rt.i.i50.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.012.i.i49.i.i.i, i32 0, i32 1
  %231 = ptrtoint ptr %rt.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rt.i.i50.i.i.i, align 4
  call void @fib6_info_hw_flags_set(ptr noundef %call.i.i45.i.i.i, ptr noundef %232, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %233 = ptrtoint ptr %fib6_rt_nh.012.i.i49.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %fib6_rt_nh.0.i.i51.i.i.i = load ptr, ptr %fib6_rt_nh.012.i.i49.i.i.i, align 4
  %cmp.not.i.i52.i.i.i = icmp eq ptr %fib6_rt_nh.0.i.i51.i.i.i, %nh_list.i.i46.i.i.i
  br i1 %cmp.not.i.i52.i.i.i, label %for.body.i.i53.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge, label %for.body.i.i53.i.i.i.for.body.i.i53.i.i.i_crit_edge

for.body.i.i53.i.i.i.for.body.i.i53.i.i.i_crit_edge: ; preds = %for.body.i.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i53.i.i.i

for.body.i.i53.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i

nsim_fib6_rt_hw_flags_set.exit.i.i.i.i:           ; preds = %for.body.i.i53.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge, %if.end6.i.i.i.i.nsim_fib6_rt_hw_flags_set.exit.i.i.i.i_crit_edge
  %234 = ptrtoint ptr %devlink.i.i44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %devlink.i.i44.i.i.i, align 8
  %call.i23.i.i.i.i = call ptr @devlink_net(ptr noundef %235) #12
  %nh_list.i24.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %call.i.i.i.i41.i, i32 0, i32 1
  %236 = ptrtoint ptr %nh_list.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %fib6_rt_nh.010.i25.i.i.i.i = load ptr, ptr %nh_list.i24.i.i.i.i, align 4
  %cmp.not11.i26.i.i.i.i = icmp eq ptr %fib6_rt_nh.010.i25.i.i.i.i, %nh_list.i24.i.i.i.i
  br i1 %cmp.not11.i26.i.i.i.i, label %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.cleanup.sink.split.i.i_crit_edge, label %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.for.body.i31.i.i.i.i_crit_edge

nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.for.body.i31.i.i.i.i_crit_edge: ; preds = %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i
  br label %for.body.i31.i.i.i.i

nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

for.body.i31.i.i.i.i:                             ; preds = %for.body.i31.i.i.i.i.for.body.i31.i.i.i.i_crit_edge, %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.for.body.i31.i.i.i.i_crit_edge
  %fib6_rt_nh.012.i27.i.i.i.i = phi ptr [ %fib6_rt_nh.0.i29.i.i.i.i, %for.body.i31.i.i.i.i.for.body.i31.i.i.i.i_crit_edge ], [ %fib6_rt_nh.010.i25.i.i.i.i, %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.for.body.i31.i.i.i.i_crit_edge ]
  %rt.i28.i.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.012.i27.i.i.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %rt.i28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rt.i28.i.i.i.i, align 4
  call void @fib6_info_hw_flags_set(ptr noundef %call.i23.i.i.i.i, ptr noundef %238, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %239 = ptrtoint ptr %fib6_rt_nh.012.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %fib6_rt_nh.0.i29.i.i.i.i = load ptr, ptr %fib6_rt_nh.012.i27.i.i.i.i, align 4
  %cmp.not.i30.i.i.i.i = icmp eq ptr %fib6_rt_nh.0.i29.i.i.i.i, %nh_list.i24.i.i.i.i
  br i1 %cmp.not.i30.i.i.i.i, label %for.body.i31.i.i.i.i.cleanup.sink.split.i.i_crit_edge, label %for.body.i31.i.i.i.i.for.body.i31.i.i.i.i_crit_edge

for.body.i31.i.i.i.i.for.body.i31.i.i.i.i_crit_edge: ; preds = %for.body.i31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i31.i.i.i.i

for.body.i31.i.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %for.body.i31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.then13.i.i.i:                                  ; preds = %if.else.i.i48.i.if.then13.i.i.i_crit_edge, %err_fib_dismiss.i.i.i47.i
  call fastcc void @nsim_fib6_rt_destroy(ptr noundef %retval.0.i.i.i.i) #12
  br label %err_rt_offload_failed_flag_set.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  %fail_route_offload.i2.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 15
  %240 = ptrtoint ptr %fail_route_offload.i2.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %fail_route_offload.i2.i.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i3.i.i = icmp eq i8 %241, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i13.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @msleep(i32 noundef 1) #12
  br label %err_rt_offload_failed_flag_set.i.i

if.end.i13.i.i:                                   ; preds = %sw.bb4.i.i
  %fib_rt_ht.i5.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 4
  %fib6_dst.i.i6.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8
  %plen.i.i7.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8, i32 1
  %242 = ptrtoint ptr %plen.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %plen.i.i7.i.i, align 4
  %244 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %170, align 4
  %tb6_id.i.i8.i.i = getelementptr inbounds %struct.fib6_table, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %tb6_id.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %tb6_id.i.i8.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key.i.i.i1.i15.i) #12
  %248 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %16, align 4
  %249 = call ptr @memcpy(ptr %key.i.i.i1.i15.i, ptr %fib6_dst.i.i6.i.i, i32 16)
  %conv.i.i.i9.i.i = trunc i32 %243 to i8
  store i8 %conv.i.i.i9.i.i, ptr %16, align 4
  %250 = ptrtoint ptr %family3.i.i.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 10, ptr %family3.i.i.i10.i.i, align 4
  %251 = ptrtoint ptr %tb_id4.i.i.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %247, ptr %tb_id4.i.i.i11.i.i, align 4
  %call.i.i.i12.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %fib_rt_ht.i5.i.i, ptr noundef nonnull %key.i.i.i1.i15.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key.i.i.i1.i15.i) #12
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i.i12.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.end.i13.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i13.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge: ; preds = %if.end.i13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rt_offload_failed_flag_set.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i13.i.i
  %nrt6.i14.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 0, i32 1
  %252 = ptrtoint ptr %nrt6.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %nrt6.i14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp60.not.i.i.i = icmp eq i32 %253, 0
  br i1 %cmp60.not.i.i.i, label %for.cond.preheader.i.i.i.nsim_fib6_event.exit.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

for.body.i.i.i:                                   ; preds = %do.body11.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.061.i.i.i = phi i32 [ %inc.i.i.i, %do.body11.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %254 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %166, align 4
  %arrayidx5.i.i.i = getelementptr ptr, ptr %255, i32 %i.061.i.i.i
  %256 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx5.i.i.i, align 4
  %call6.i.i.i = call fastcc i32 @nsim_fib6_rt_nh_add(ptr noundef nonnull %call.i.i.i12.i.i, ptr noundef %257) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i15.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i15.i.i, label %do.body11.i.i.i, label %for.cond18.preheader.i.i.i

for.cond18.preheader.i.i.i:                       ; preds = %for.body.i.i.i
  %i.162.i.i.i = add i32 %i.061.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.162.i.i.i)
  %cmp1963.i.i.i = icmp sgt i32 %i.162.i.i.i, -1
  br i1 %cmp1963.i.i.i, label %for.cond18.preheader.i.i.i.do.body25.i.i.i_crit_edge, label %for.cond18.preheader.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge

for.cond18.preheader.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rt_offload_failed_flag_set.i.i

for.cond18.preheader.i.i.i.do.body25.i.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i.i
  br label %do.body25.i.i.i

do.body11.i.i.i:                                  ; preds = %for.body.i.i.i
  %258 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %166, align 4
  %arrayidx13.i.i.i = getelementptr ptr, ptr %259, i32 %i.061.i.i.i
  %260 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx13.i.i.i, align 4
  %trap.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %261, i32 0, i32 16
  %262 = ptrtoint ptr %trap.i.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store volatile i8 1, ptr %trap.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %i.061.i.i.i, 1
  %263 = ptrtoint ptr %nrt6.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %nrt6.i14.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %264
  br i1 %cmp.i.i.i, label %do.body11.i.i.i.for.body.i.i.i_crit_edge, label %do.body11.i.i.i.nsim_fib6_event.exit.i_crit_edge

do.body11.i.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

do.body11.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.body25.i.i.i:                                  ; preds = %do.body25.i.i.i.do.body25.i.i.i_crit_edge, %for.cond18.preheader.i.i.i.do.body25.i.i.i_crit_edge
  %i.164.i.i.i = phi i32 [ %i.1.i.i.i, %do.body25.i.i.i.do.body25.i.i.i_crit_edge ], [ %i.162.i.i.i, %for.cond18.preheader.i.i.i.do.body25.i.i.i_crit_edge ]
  %265 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %166, align 4
  %arrayidx27.i.i.i = getelementptr ptr, ptr %266, i32 %i.164.i.i.i
  %267 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx27.i.i.i, align 4
  %trap28.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %268, i32 0, i32 16
  %269 = ptrtoint ptr %trap28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store volatile i8 0, ptr %trap28.i.i.i, align 1
  %270 = load ptr, ptr %166, align 4
  %arrayidx34.i.i.i = getelementptr ptr, ptr %270, i32 %i.164.i.i.i
  %271 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx34.i.i.i, align 4
  call fastcc void @nsim_fib6_rt_nh_del(ptr noundef nonnull %call.i.i.i12.i.i, ptr noundef %272) #12
  %i.1.i.i.i = add nsw i32 %i.164.i.i.i, -1
  %cmp19.i.not.i.i = icmp eq i32 %i.164.i.i.i, 0
  br i1 %cmp19.i.not.i.i, label %do.body25.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, label %do.body25.i.i.i.do.body25.i.i.i_crit_edge

do.body25.i.i.i.do.body25.i.i.i_crit_edge:        ; preds = %do.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25.i.i.i

do.body25.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge: ; preds = %do.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rt_offload_failed_flag_set.i.i

sw.bb9.i.i:                                       ; preds = %if.end.i.i
  %fib_rt_ht.i18.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 4
  %fib6_dst.i.i19.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8
  %plen.i.i20.i.i = getelementptr inbounds %struct.fib6_info, ptr %170, i32 0, i32 8, i32 1
  %273 = ptrtoint ptr %plen.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %plen.i.i20.i.i, align 4
  %275 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %170, align 4
  %tb6_id.i.i21.i.i = getelementptr inbounds %struct.fib6_table, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %tb6_id.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %tb6_id.i.i21.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %key.i.i.i17.i.i) #12
  %279 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %15, align 4
  %280 = call ptr @memcpy(ptr %key.i.i.i17.i.i, ptr %fib6_dst.i.i19.i.i, i32 16)
  %conv.i.i.i22.i.i = trunc i32 %274 to i8
  store i8 %conv.i.i.i22.i.i, ptr %15, align 4
  %281 = ptrtoint ptr %family3.i.i.i23.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 10, ptr %family3.i.i.i23.i.i, align 4
  %282 = ptrtoint ptr %tb_id4.i.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %278, ptr %tb_id4.i.i.i24.i.i, align 4
  %call.i.i.i25.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %fib_rt_ht.i18.i.i, ptr noundef nonnull %key.i.i.i17.i.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %key.i.i.i17.i.i) #12
  %tobool.not.i26.i.i = icmp eq ptr %call.i.i.i25.i.i, null
  br i1 %tobool.not.i26.i.i, label %sw.bb9.i.i.nsim_fib6_event.exit.i_crit_edge, label %if.end.i28.i.i

sw.bb9.i.i.nsim_fib6_event.exit.i_crit_edge:      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

if.end.i28.i.i:                                   ; preds = %sw.bb9.i.i
  %nrt6.i27.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 0, i32 1
  %283 = ptrtoint ptr %nrt6.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %nrt6.i27.i.i, align 4
  %nhs.i.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %call.i.i.i25.i.i, i32 0, i32 2
  %285 = ptrtoint ptr %nhs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %nhs.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp.not.i.i.i = icmp eq i32 %284, %286
  br i1 %cmp.not.i.i.i, label %if.end6.i.i.i, label %for.cond.preheader.i29.i.i

for.cond.preheader.i29.i.i:                       ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp327.not.i.i.i = icmp eq i32 %284, 0
  br i1 %cmp327.not.i.i.i, label %for.cond.preheader.i29.i.i.nsim_fib6_event.exit.i_crit_edge, label %for.cond.preheader.i29.i.i.for.body.i32.i.i_crit_edge

for.cond.preheader.i29.i.i.for.body.i32.i.i_crit_edge: ; preds = %for.cond.preheader.i29.i.i
  br label %for.body.i32.i.i

for.cond.preheader.i29.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %for.cond.preheader.i29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

for.body.i32.i.i:                                 ; preds = %for.body.i32.i.i.for.body.i32.i.i_crit_edge, %for.cond.preheader.i29.i.i.for.body.i32.i.i_crit_edge
  %i.028.i.i.i = phi i32 [ %inc.i31.i.i, %for.body.i32.i.i.for.body.i32.i.i_crit_edge ], [ 0, %for.cond.preheader.i29.i.i.for.body.i32.i.i_crit_edge ]
  %287 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %166, align 4
  %arrayidx5.i30.i.i = getelementptr ptr, ptr %288, i32 %i.028.i.i.i
  %289 = ptrtoint ptr %arrayidx5.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx5.i30.i.i, align 4
  call fastcc void @nsim_fib6_rt_nh_del(ptr noundef nonnull %call.i.i.i25.i.i, ptr noundef %290) #12
  %inc.i31.i.i = add nuw i32 %i.028.i.i.i, 1
  %291 = ptrtoint ptr %nrt6.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %nrt6.i27.i.i, align 4
  %cmp3.i.i.i = icmp ult i32 %inc.i31.i.i, %292
  br i1 %cmp3.i.i.i, label %for.body.i32.i.i.for.body.i32.i.i_crit_edge, label %for.body.i32.i.i.nsim_fib6_event.exit.i_crit_edge

for.body.i32.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %for.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

for.body.i32.i.i.for.body.i32.i.i_crit_edge:      ; preds = %for.body.i32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i32.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ht_node.i.i49.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %call.i.i.i25.i.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %fib_rt_ht.i18.i.i, ptr noundef %ht_node.i.i49.i, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  br label %cleanup.sink.split.i.i

err_rt_offload_failed_flag_set.i.i:               ; preds = %do.body25.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, %for.cond18.preheader.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, %if.end.i13.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, %if.then.i4.i.i, %if.then13.i.i.i, %nsim_fib6_rt_create.exit.i.i.i.err_rt_offload_failed_flag_set.i.i_crit_edge, %if.end.i.i23.i.err_rt_offload_failed_flag_set.i.i_crit_edge, %if.then.i.i20.i
  %293 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %166, align 4
  %nrt6.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %fib_event.037, i32 0, i32 1, i32 0, i32 0, i32 1
  %295 = ptrtoint ptr %nrt6.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %nrt6.i.i, align 4
  %devlink.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %165, i32 0, i32 9
  %297 = ptrtoint ptr %devlink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %devlink.i.i.i, align 8
  %call.i.i.i = call ptr @devlink_net(ptr noundef %298) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp3.not.i.i.i = icmp eq i32 %296, 0
  br i1 %cmp3.not.i.i.i, label %err_rt_offload_failed_flag_set.i.i.nsim_fib6_event.exit.i_crit_edge, label %err_rt_offload_failed_flag_set.i.i.for.body.i34.i.i_crit_edge

err_rt_offload_failed_flag_set.i.i.for.body.i34.i.i_crit_edge: ; preds = %err_rt_offload_failed_flag_set.i.i
  br label %for.body.i34.i.i

err_rt_offload_failed_flag_set.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %err_rt_offload_failed_flag_set.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

for.body.i34.i.i:                                 ; preds = %for.body.i34.i.i.for.body.i34.i.i_crit_edge, %err_rt_offload_failed_flag_set.i.i.for.body.i34.i.i_crit_edge
  %i.04.i.i.i = phi i32 [ %inc.i33.i.i, %for.body.i34.i.i.for.body.i34.i.i_crit_edge ], [ 0, %err_rt_offload_failed_flag_set.i.i.for.body.i34.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %294, i32 %i.04.i.i.i
  %299 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @fib6_info_hw_flags_set(ptr noundef %call.i.i.i, ptr noundef %300, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %inc.i33.i.i = add nuw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i33.i.i, %296
  br i1 %exitcond.not.i.i.i, label %for.body.i34.i.i.nsim_fib6_event.exit.i_crit_edge, label %for.body.i34.i.i.for.body.i34.i.i_crit_edge

for.body.i34.i.i.for.body.i34.i.i_crit_edge:      ; preds = %for.body.i34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i34.i.i

for.body.i34.i.i.nsim_fib6_event.exit.i_crit_edge: ; preds = %for.body.i34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_event.exit.i

cleanup.sink.split.i.i:                           ; preds = %if.end6.i.i.i, %for.body.i31.i.i.i.i.cleanup.sink.split.i.i_crit_edge, %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.cleanup.sink.split.i.i_crit_edge
  %call.i.i.i.sink.i.i = phi ptr [ %call.i.i.i25.i.i, %if.end6.i.i.i ], [ %call.i.i.i.i41.i, %nsim_fib6_rt_hw_flags_set.exit.i.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call.i.i.i.i41.i, %for.body.i31.i.i.i.i.cleanup.sink.split.i.i_crit_edge ]
  call fastcc void @nsim_fib6_rt_destroy(ptr noundef nonnull %call.i.i.i.sink.i.i) #12
  br label %nsim_fib6_event.exit.i

nsim_fib6_event.exit.i:                           ; preds = %cleanup.sink.split.i.i, %for.body.i34.i.i.nsim_fib6_event.exit.i_crit_edge, %err_rt_offload_failed_flag_set.i.i.nsim_fib6_event.exit.i_crit_edge, %for.body.i32.i.i.nsim_fib6_event.exit.i_crit_edge, %for.cond.preheader.i29.i.i.nsim_fib6_event.exit.i_crit_edge, %sw.bb9.i.i.nsim_fib6_event.exit.i_crit_edge, %do.body11.i.i.i.nsim_fib6_event.exit.i_crit_edge, %for.cond.preheader.i.i.i.nsim_fib6_event.exit.i_crit_edge, %for.body.i.i.i.i.i.nsim_fib6_event.exit.i_crit_edge, %if.end.i36.i.i.i.nsim_fib6_event.exit.i_crit_edge, %if.end.i.i.nsim_fib6_event.exit.i_crit_edge, %sw.bb1.i.nsim_fib6_event.exit.i_crit_edge
  call fastcc void @nsim_fib6_event_fini(ptr noundef %166) #12
  br label %nsim_fib_event.exit

nsim_fib_event.exit:                              ; preds = %nsim_fib6_event.exit.i, %if.then.i14.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nsim_fib_event.exit_crit_edge, %for.body.nsim_fib_event.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %fib_event.037) #12
  br i1 %call.i.i, label %if.end.i.i29, label %nsim_fib_event.exit.list_del.exit_crit_edge

nsim_fib_event.exit.list_del.exit_crit_edge:      ; preds = %nsim_fib_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i29:                                     ; preds = %nsim_fib_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fib_event.037, i32 0, i32 1
  %301 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %prev.i.i, align 4
  %303 = ptrtoint ptr %fib_event.037 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %fib_event.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %302, ptr %prev1.i.i.i, align 4
  %306 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %306)
  store volatile ptr %304, ptr %302, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i29, %nsim_fib_event.exit.list_del.exit_crit_edge
  %307 = ptrtoint ptr %fib_event.037 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr inttoptr (i32 256 to ptr), ptr %fib_event.037, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fib_event.037, i32 0, i32 1
  %308 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %fib_event.037) #12
  call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 1480, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  %cmp.not = icmp eq ptr %next_fib_event.0, %fib_event_queue
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %fib_lock) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fib_event_queue) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_nexthop_event_nb(ptr noundef %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh_lock = getelementptr i8, ptr %nb, i32 340
  tail call void @mutex_lock_nested(ptr noundef %nh_lock, i32 noundef 0) #12
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.if.then.i_crit_edge, label %if.end.i.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i.i:                                       ; preds = %sw.bb
  %id.i.i = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  %id2.i.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call7.i.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id2.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 3
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %6, label %do.body.i.i [
    i32 0, label %if.end.i.i.nsim_nexthop_create.exit.i_crit_edge
    i32 1, label %for.cond.preheader.i.i
    i32 2, label %sw.bb6.i.i
  ]

if.end.i.i.nsim_nexthop_create.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_create.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %8 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %conv.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp1.not.i.i = icmp eq i16 %12, 0
  br i1 %cmp1.not.i.i, label %for.cond.preheader.i.i.nsim_nexthop_create.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.nsim_nexthop_create.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_create.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %occ.02.i.i = phi i64 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nh_notifier_grp_info, ptr %10, i32 0, i32 2, i32 %i.03.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 4
  %conv5.i.i = zext i8 %14 to i64
  %add.i.i = add i64 %occ.02.i.i, %conv5.i.i
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.nsim_nexthop_create.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.nsim_nexthop_create.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_create.exit.i

sw.bb6.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %conv7.i.i = zext i16 %19 to i64
  %is_resilient.i.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call7.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %is_resilient.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_resilient.i.i, align 4
  br label %nsim_nexthop_create.exit.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %extack.i.i = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 1
  %21 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extack.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_create.__msg) #12
  %tobool8.not.i.i = icmp eq ptr %22, null
  br i1 %tobool8.not.i.i, label %do.body.i.i.if.end10.i.i_crit_edge, label %if.then9.i.i

do.body.i.i.if.end10.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nsim_nexthop_create.__msg, ptr %22, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %do.body.i.i.if.end10.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %if.then.i

nsim_nexthop_create.exit.i:                       ; preds = %sw.bb6.i.i, %for.body.i.i.nsim_nexthop_create.exit.i_crit_edge, %for.cond.preheader.i.i.nsim_nexthop_create.exit.i_crit_edge, %if.end.i.i.nsim_nexthop_create.exit.i_crit_edge
  %occ.1.i.i = phi i64 [ %conv7.i.i, %sw.bb6.i.i ], [ 1, %if.end.i.i.nsim_nexthop_create.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.nsim_nexthop_create.exit.i_crit_edge ], [ %add.i.i, %for.body.i.i.nsim_nexthop_create.exit.i_crit_edge ]
  %occ12.i.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call7.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %occ.1.i.i, ptr %occ12.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %nsim_nexthop_create.exit.i.if.then.i_crit_edge, label %if.end.i

nsim_nexthop_create.exit.i.if.then.i_crit_edge:   ; preds = %nsim_nexthop_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %nsim_nexthop_create.exit.i.if.then.i_crit_edge, %if.end10.i.i, %sw.bb.if.then.i_crit_edge
  %retval.0.i78.i = phi ptr [ %call7.i.i.i.i, %nsim_nexthop_create.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %sw.bb.if.then.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end10.i.i ]
  %25 = ptrtoint ptr %retval.0.i78.i to i32
  br label %sw.epilog

if.end.i:                                         ; preds = %nsim_nexthop_create.exit.i
  %nexthop_ht.i = getelementptr i8, ptr %nb, i32 12
  %call3.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %nexthop_ht.i, ptr noundef %id.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i = icmp eq ptr %call3.i, null
  %extack.i = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 1
  %26 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %extack.i, align 4
  %devlink.i.i = getelementptr i8, ptr %nb, i32 240
  %28 = ptrtoint ptr %devlink.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devlink.i.i, align 8
  %call.i.i = tail call ptr @devlink_net(ptr noundef %29) #12
  %30 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %occ12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp61.not.i.i.i = icmp eq i64 %31, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %cmp61.not.i.i.i, label %if.then4.i.if.end.i32.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then4.i.if.end.i32.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i32.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then4.i
  %nexthops.i.i.i = getelementptr i8, ptr %nb, i32 -344
  %num.i.i.i = getelementptr i8, ptr %nb, i32 -336
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %indvars.i.i.i = trunc i64 %conv63.i.i.i to i32
  %inc.i.i.i = add i32 %indvars.i.i.i, 1
  %conv.i.i.i = sext i32 %inc.i.i.i to i64
  %cmp.i.i.i = icmp ugt i64 %31, %conv.i.i.i
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.i.i.i.if.end.i32.i_crit_edge

for.cond.i.i.i.if.end.i32.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i32.i

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %conv63.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %conv.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %32 = ptrtoint ptr %nexthops.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %nexthops.i.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i.i, i32 noundef 8) #12
  %call.i1.i.i.i.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i.i.i, i64 noundef 1, i64 noundef %33) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i.i.i, i64 %33)
  %cmp.i.i.not.i.i.i = icmp eq i64 %call.i1.i.i.i.i, %33
  br i1 %cmp.i.i.not.i.i.i, label %if.then3.i.i.i, label %for.cond.i.i.i

if.then3.i.i.i:                                   ; preds = %for.body.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_account.__msg) #12
  %tobool4.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i.i.i, label %if.then3.i.i.i.nsim_nexthop_account.exit.i.i_crit_edge, label %if.then5.i.i.i

if.then3.i.i.i.nsim_nexthop_account.exit.i.i_crit_edge: ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_account.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nsim_nexthop_account.__msg, ptr %27, align 4
  br label %nsim_nexthop_account.exit.i.i

nsim_nexthop_account.exit.i.i:                    ; preds = %if.then5.i.i.i, %if.then3.i.i.i.nsim_nexthop_account.exit.i.i_crit_edge
  %call.i.i57.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %conv63.i.i.i, ptr noundef %num.i.i.i) #12
  br label %if.then10.i

if.end.i32.i:                                     ; preds = %for.cond.i.i.i.if.end.i32.i_crit_edge, %if.then4.i.if.end.i32.i_crit_edge
  %call2.i.i = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %nexthop_ht.i, ptr noundef nonnull %call7.i.i.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end8.i.i, label %do.body.i33.i

do.body.i33.i:                                    ; preds = %if.end.i32.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_add.__msg) #12
  %tobool5.not.i.i = icmp eq ptr %27, null
  br i1 %tobool5.not.i.i, label %do.body.i33.i.if.end7.i.i_crit_edge, label %if.then6.i.i

do.body.i33.i.if.end7.i.i_crit_edge:              ; preds = %do.body.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %do.body.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @nsim_nexthop_add.__msg, ptr %27, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %do.body.i33.i.if.end7.i.i_crit_edge
  %36 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %occ12.i.i, align 8
  %num8.i.i.i = getelementptr i8, ptr %nb, i32 -336
  %call.i.i58.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num8.i.i.i, i32 noundef 8) #12
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num8.i.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i.i, i64 %37)
  %cmp10.i.i.i = icmp ult i64 %call.i.i.i.i, %37
  br i1 %cmp10.i.i.i, label %do.end23.i.i.i, label %if.end38.i.i.i, !prof !134

do.end23.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %if.then10.i

if.end38.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i59.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num8.i.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %37, ptr noundef %num8.i.i.i) #12
  br label %if.then10.i

if.end8.i.i:                                      ; preds = %if.end.i32.i
  %38 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id2.i.i, align 8
  tail call void @nexthop_set_hw_flags(ptr noundef %call.i.i, i32 noundef %39, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %is_resilient.i.i.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call7.i.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %is_resilient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_resilient.i.i.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i.i.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i.i.i, label %if.end8.i.i.sw.epilog_crit_edge, label %for.cond.preheader.i.i.i

if.end8.i.i.sw.epilog_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.cond.preheader.i.i.i:                         ; preds = %if.end8.i.i
  %42 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %occ12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp13.not.i.i.i = icmp eq i64 %43, 0
  br i1 %cmp13.not.i.i.i, label %for.cond.preheader.i.i.i.sw.epilog_crit_edge, label %for.cond.preheader.i.i.i.for.body.i35.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i35.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i35.i.i

for.cond.preheader.i.i.i.sw.epilog_crit_edge:     ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i35.i.i:                                 ; preds = %for.body.i35.i.i.for.body.i35.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i35.i.i_crit_edge
  %i.014.i.i.i = phi i32 [ %inc.i32.i.i, %for.body.i35.i.i.for.body.i35.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i35.i.i_crit_edge ]
  %44 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id2.i.i, align 8
  %conv4.i.i.i = trunc i32 %i.014.i.i.i to i16
  tail call void @nexthop_bucket_set_hw_flags(ptr noundef %call.i.i, i32 noundef %45, i16 noundef zeroext %conv4.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %inc.i32.i.i = add i32 %i.014.i.i.i, 1
  %conv.i33.i.i = sext i32 %inc.i32.i.i to i64
  %46 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %occ12.i.i, align 8
  %cmp.i34.i.i = icmp ugt i64 %47, %conv.i33.i.i
  br i1 %cmp.i34.i.i, label %for.body.i35.i.i.for.body.i35.i.i_crit_edge, label %for.body.i35.i.i.sw.epilog_crit_edge

for.body.i35.i.i.sw.epilog_crit_edge:             ; preds = %for.body.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.i35.i.i.for.body.i35.i.i_crit_edge:      ; preds = %for.body.i35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35.i.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp61.not.i.i.i, label %if.else.i.if.end.i58.i_crit_edge, label %for.body.lr.ph.i.i41.i

if.else.i.if.end.i58.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i58.i

for.body.lr.ph.i.i41.i:                           ; preds = %if.else.i
  %nexthops.i.i39.i = getelementptr i8, ptr %nb, i32 -344
  %num.i.i40.i = getelementptr i8, ptr %nb, i32 -336
  br label %for.body.i.i51.i

for.cond.i.i46.i:                                 ; preds = %for.body.i.i51.i
  %indvars.i.i42.i = trunc i64 %conv63.i.i47.i to i32
  %inc.i.i43.i = add i32 %indvars.i.i42.i, 1
  %conv.i.i44.i = sext i32 %inc.i.i43.i to i64
  %cmp.i.i45.i = icmp ugt i64 %31, %conv.i.i44.i
  br i1 %cmp.i.i45.i, label %for.cond.i.i46.i.for.body.i.i51.i_crit_edge, label %for.cond.i.i46.i.if.end.i58.i_crit_edge

for.cond.i.i46.i.if.end.i58.i_crit_edge:          ; preds = %for.cond.i.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i58.i

for.cond.i.i46.i.for.body.i.i51.i_crit_edge:      ; preds = %for.cond.i.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i51.i

for.body.i.i51.i:                                 ; preds = %for.cond.i.i46.i.for.body.i.i51.i_crit_edge, %for.body.lr.ph.i.i41.i
  %conv63.i.i47.i = phi i64 [ 0, %for.body.lr.ph.i.i41.i ], [ %conv.i.i44.i, %for.cond.i.i46.i.for.body.i.i51.i_crit_edge ]
  %48 = ptrtoint ptr %nexthops.i.i39.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %nexthops.i.i39.i, align 8
  %call.i.i.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i40.i, i32 noundef 8) #12
  %call.i1.i.i.i49.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i.i40.i, i64 noundef 1, i64 noundef %49) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i.i49.i, i64 %49)
  %cmp.i.i.not.i.i50.i = icmp eq i64 %call.i1.i.i.i49.i, %49
  br i1 %cmp.i.i.not.i.i50.i, label %if.then3.i.i53.i, label %for.cond.i.i46.i

if.then3.i.i53.i:                                 ; preds = %for.body.i.i51.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_account.__msg) #12
  %tobool4.not.i.i52.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i.i52.i, label %if.then3.i.i53.i.nsim_nexthop_account.exit.i56.i_crit_edge, label %if.then5.i.i54.i

if.then3.i.i53.i.nsim_nexthop_account.exit.i56.i_crit_edge: ; preds = %if.then3.i.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_account.exit.i56.i

if.then5.i.i54.i:                                 ; preds = %if.then3.i.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @nsim_nexthop_account.__msg, ptr %27, align 4
  br label %nsim_nexthop_account.exit.i56.i

nsim_nexthop_account.exit.i56.i:                  ; preds = %if.then5.i.i54.i, %if.then3.i.i53.i.nsim_nexthop_account.exit.i56.i_crit_edge
  %call.i.i57.i.i55.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i40.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %conv63.i.i47.i, ptr noundef %num.i.i40.i) #12
  br label %if.then10.i

if.end.i58.i:                                     ; preds = %for.cond.i.i46.i.if.end.i58.i_crit_edge, %if.else.i.if.end.i58.i_crit_edge
  %call3.i.i = tail call fastcc i32 @rhashtable_replace_fast(ptr noundef %nexthop_ht.i, ptr noundef nonnull %call3.i, ptr noundef nonnull %call7.i.i.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9.i.i, label %do.body.i59.i

do.body.i59.i:                                    ; preds = %if.end.i58.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_replace.__msg) #12
  %tobool6.not.i.i = icmp eq ptr %27, null
  br i1 %tobool6.not.i.i, label %do.body.i59.i.if.end8.i64.i_crit_edge, label %if.then7.i.i

do.body.i59.i.if.end8.i64.i_crit_edge:            ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i64.i

if.then7.i.i:                                     ; preds = %do.body.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @nsim_nexthop_replace.__msg, ptr %27, align 4
  br label %if.end8.i64.i

if.end8.i64.i:                                    ; preds = %if.then7.i.i, %do.body.i59.i.if.end8.i64.i_crit_edge
  %52 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %occ12.i.i, align 8
  %num8.i.i60.i = getelementptr i8, ptr %nb, i32 -336
  %call.i.i58.i.i61.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num8.i.i60.i, i32 noundef 8) #12
  %call.i.i.i62.i = tail call i64 @generic_atomic64_read(ptr noundef %num8.i.i60.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i62.i, i64 %53)
  %cmp10.i.i63.i = icmp ult i64 %call.i.i.i62.i, %53
  br i1 %cmp10.i.i63.i, label %do.end23.i.i65.i, label %if.end38.i.i67.i, !prof !134

do.end23.i.i65.i:                                 ; preds = %if.end8.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %if.then10.i

if.end38.i.i67.i:                                 ; preds = %if.end8.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i59.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num8.i.i60.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %53, ptr noundef %num8.i.i60.i) #12
  br label %if.then10.i

if.end9.i.i:                                      ; preds = %if.end.i58.i
  %54 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id2.i.i, align 8
  tail call void @nexthop_set_hw_flags(ptr noundef %call.i.i, i32 noundef %55, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %is_resilient.i.i69.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call7.i.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %is_resilient.i.i69.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_resilient.i.i69.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i.i70.i = icmp eq i8 %57, 0
  br i1 %tobool1.not.i.i70.i, label %if.end9.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge, label %for.cond.preheader.i.i72.i

if.end9.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit.i.i

for.cond.preheader.i.i72.i:                       ; preds = %if.end9.i.i
  %58 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %occ12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %cmp13.not.i.i71.i = icmp eq i64 %59, 0
  br i1 %cmp13.not.i.i71.i, label %for.cond.preheader.i.i72.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge, label %for.cond.preheader.i.i72.i.for.body.i42.i.i_crit_edge

for.cond.preheader.i.i72.i.for.body.i42.i.i_crit_edge: ; preds = %for.cond.preheader.i.i72.i
  br label %for.body.i42.i.i

for.cond.preheader.i.i72.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit.i.i

for.body.i42.i.i:                                 ; preds = %for.body.i42.i.i.for.body.i42.i.i_crit_edge, %for.cond.preheader.i.i72.i.for.body.i42.i.i_crit_edge
  %i.014.i.i73.i = phi i32 [ %inc.i39.i.i, %for.body.i42.i.i.for.body.i42.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i72.i.for.body.i42.i.i_crit_edge ]
  %60 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id2.i.i, align 8
  %conv4.i.i74.i = trunc i32 %i.014.i.i73.i to i16
  tail call void @nexthop_bucket_set_hw_flags(ptr noundef %call.i.i, i32 noundef %61, i16 noundef zeroext %conv4.i.i74.i, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %inc.i39.i.i = add i32 %i.014.i.i73.i, 1
  %conv.i40.i.i = sext i32 %inc.i39.i.i to i64
  %62 = ptrtoint ptr %occ12.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %occ12.i.i, align 8
  %cmp.i41.i.i = icmp ugt i64 %63, %conv.i40.i.i
  br i1 %cmp.i41.i.i, label %for.body.i42.i.i.for.body.i42.i.i_crit_edge, label %for.body.i42.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge

for.body.i42.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge: ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit.i.i

for.body.i42.i.i.for.body.i42.i.i_crit_edge:      ; preds = %for.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i42.i.i

nsim_nexthop_hw_flags_set.exit.i.i:               ; preds = %for.body.i42.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge, %for.cond.preheader.i.i72.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge, %if.end9.i.i.nsim_nexthop_hw_flags_set.exit.i.i_crit_edge
  %occ10.i.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call3.i, i32 0, i32 1
  %64 = ptrtoint ptr %occ10.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %occ10.i.i, align 8
  %num8.i43.i.i = getelementptr i8, ptr %nb, i32 -336
  %call.i.i58.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num8.i43.i.i, i32 noundef 8) #12
  %call.i.i45.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num8.i43.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i45.i.i, i64 %65)
  %cmp10.i46.i.i = icmp ult i64 %call.i.i45.i.i, %65
  br i1 %cmp10.i46.i.i, label %do.end23.i47.i.i, label %if.end38.i49.i.i, !prof !134

do.end23.i47.i.i:                                 ; preds = %nsim_nexthop_hw_flags_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %nsim_nexthop_account.exit51.i.i

if.end38.i49.i.i:                                 ; preds = %nsim_nexthop_hw_flags_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i59.i48.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num8.i43.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %65, ptr noundef %num8.i43.i.i) #12
  br label %nsim_nexthop_account.exit51.i.i

nsim_nexthop_account.exit51.i.i:                  ; preds = %if.end38.i49.i.i, %do.end23.i47.i.i
  tail call void @kfree(ptr noundef nonnull %call3.i) #12
  br label %sw.epilog

if.then10.i:                                      ; preds = %if.end38.i.i67.i, %do.end23.i.i65.i, %nsim_nexthop_account.exit.i56.i, %if.end38.i.i.i, %do.end23.i.i.i, %nsim_nexthop_account.exit.i.i
  %err.0.ph.i = phi i32 [ %call3.i.i, %if.end38.i.i67.i ], [ %call3.i.i, %do.end23.i.i65.i ], [ -28, %nsim_nexthop_account.exit.i56.i ], [ %call2.i.i, %if.end38.i.i.i ], [ %call2.i.i, %do.end23.i.i.i ], [ -28, %nsim_nexthop_account.exit.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %nexthop_ht.i16 = getelementptr i8, ptr %nb, i32 12
  %id.i = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 2
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %nexthop_ht.i16, ptr noundef %id.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i17 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i17, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i18

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i18:                                       ; preds = %sw.bb1
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %nexthop_ht.i16, ptr noundef nonnull %call.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %occ.i = getelementptr inbounds %struct.nsim_nexthop, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %occ.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %occ.i, align 8
  %num8.i.i = getelementptr i8, ptr %nb, i32 -336
  %call.i.i58.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num8.i.i, i32 noundef 8) #12
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num8.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %67)
  %cmp10.i.i = icmp ult i64 %call.i.i.i, %67
  br i1 %cmp10.i.i, label %do.end23.i.i, label %if.end38.i.i, !prof !134

do.end23.i.i:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %nsim_nexthop_account.exit.i

if.end38.i.i:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i59.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num8.i.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %67, ptr noundef %num8.i.i) #12
  br label %nsim_nexthop_account.exit.i

nsim_nexthop_account.exit.i:                      ; preds = %if.end38.i.i, %do.end23.i.i
  tail call void @kfree(ptr noundef nonnull %call.i) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %fail_res_nexthop_group_replace.i = getelementptr i8, ptr %nb, i32 437
  %68 = ptrtoint ptr %fail_res_nexthop_group_replace.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fail_res_nexthop_group_replace.i, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i19 = icmp eq i8 %69, 0
  br i1 %tobool.not.i19, label %sw.bb2.sw.epilog_crit_edge, label %do.body.i

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb2
  %extack.i20 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 1
  %70 = ptrtoint ptr %extack.i20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extack.i20, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_res_table_pre_replace.__msg) #12
  %tobool1.not.i = icmp eq ptr %71, null
  br i1 %tobool1.not.i, label %do.body.i.sw.epilog_crit_edge, label %if.then2.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @nsim_nexthop_res_table_pre_replace.__msg, ptr %71, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %fail_nexthop_bucket_replace.i = getelementptr i8, ptr %nb, i32 438
  %73 = ptrtoint ptr %fail_nexthop_bucket_replace.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %fail_nexthop_bucket_replace.i, align 2, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i22 = icmp eq i8 %74, 0
  br i1 %tobool.not.i22, label %if.end3.i, label %do.body.i25

do.body.i25:                                      ; preds = %sw.bb4
  %extack.i23 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 1
  %75 = ptrtoint ptr %extack.i23 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %extack.i23, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_nexthop_bucket_replace.__msg) #12
  %tobool1.not.i24 = icmp eq ptr %76, null
  br i1 %tobool1.not.i24, label %do.body.i25.sw.epilog_crit_edge, label %if.then2.i26

do.body.i25.sw.epilog_crit_edge:                  ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then2.i26:                                     ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @nsim_nexthop_bucket_replace.__msg, ptr %76, align 4
  br label %sw.epilog

if.end3.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptr, align 4
  %id.i27 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 2
  %80 = ptrtoint ptr %id.i27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id.i27, align 4
  %82 = getelementptr inbounds %struct.nh_notifier_info, ptr %ptr, i32 0, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %84, align 4
  tail call void @nexthop_bucket_set_hw_flags(ptr noundef %79, i32 noundef %81, i16 noundef zeroext %86, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3.i, %if.then2.i26, %do.body.i25.sw.epilog_crit_edge, %if.then2.i, %do.body.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %nsim_nexthop_account.exit.i, %sw.bb1.sw.epilog_crit_edge, %if.then10.i, %nsim_nexthop_account.exit51.i.i, %for.body.i35.i.i.sw.epilog_crit_edge, %for.cond.preheader.i.i.i.sw.epilog_crit_edge, %if.end8.i.i.sw.epilog_crit_edge, %if.then.i, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %25, %if.then.i ], [ %err.0.ph.i, %if.then10.i ], [ 0, %if.end8.i.i.sw.epilog_crit_edge ], [ 0, %for.cond.preheader.i.i.i.sw.epilog_crit_edge ], [ 0, %nsim_nexthop_account.exit51.i.i ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %nsim_nexthop_account.exit.i ], [ -22, %if.then2.i ], [ -22, %do.body.i.sw.epilog_crit_edge ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.end3.i ], [ -22, %if.then2.i26 ], [ -22, %do.body.i25.sw.epilog_crit_edge ], [ 0, %for.body.i35.i.i.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nh_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i29 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  %spec.select = select i1 %tobool.not.i29, i32 1, i32 %or.i
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_nexthop_notifier(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_fib_event_nb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge21
    i32 0, label %entry.sw.bb2_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge22
    i32 3, label %entry.sw.bb2_crit_edge23
  ]

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp = icmp eq i32 %event, 4
  %extack1.i = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %1 = ptrtoint ptr %extack1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %extack1.i, align 4
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ptr, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %num.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1, i32 1, i32 1
  br i1 %cmp, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rules.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %rules.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rules.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i, i32 noundef 8) #12
  %call.i1.i.i.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i.i, i64 noundef 1, i64 noundef %7) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i.i, i64 %7)
  %cmp.i.i.not.i.i = icmp eq i64 %call.i1.i.i.i, %7
  br i1 %cmp.i.i.not.i.i, label %if.then2.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.then.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_fib_rule_account.__msg) #12
  %tobool3.not.i.i = icmp eq ptr %2, null
  br i1 %tobool3.not.i.i, label %if.then2.i.i.cleanup_crit_edge, label %if.then4.i.i

if.then2.i.i.cleanup_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nsim_fib_rule_account.__msg, ptr %2, align 4
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i, i32 noundef 8) #12
  %call.i.i.i = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i) #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb
  %num.i10.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2, i32 1, i32 1
  br i1 %cmp, label %if.then.i14.i, label %if.else.i20.i

if.then.i14.i:                                    ; preds = %sw.bb2.i
  %rules3.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %rules3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rules3.i, align 8
  %call.i.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i10.i, i32 noundef 8) #12
  %call.i1.i.i12.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i10.i, i64 noundef 1, i64 noundef %10) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i12.i, i64 %10)
  %cmp.i.i.not.i13.i = icmp eq i64 %call.i1.i.i12.i, %10
  br i1 %cmp.i.i.not.i13.i, label %if.then2.i16.i, label %if.then.i14.i.cleanup_crit_edge

if.then.i14.i.cleanup_crit_edge:                  ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i16.i:                                   ; preds = %if.then.i14.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_fib_rule_account.__msg) #12
  %tobool3.not.i15.i = icmp eq ptr %2, null
  br i1 %tobool3.not.i15.i, label %if.then2.i16.i.cleanup_crit_edge, label %if.then4.i17.i

if.then2.i16.i.cleanup_crit_edge:                 ; preds = %if.then2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i17.i:                                   ; preds = %if.then2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nsim_fib_rule_account.__msg, ptr %2, align 4
  br label %cleanup

if.else.i20.i:                                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i12.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i10.i, i32 noundef 8) #12
  %call.i.i19.i = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i10.i) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge22, %entry.sw.bb2_crit_edge23
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %13, label %sw.bb2.cleanup_crit_edge [
    i32 2, label %sw.bb2.if.end.i_crit_edge
    i32 10, label %sw.bb2.if.end.i_crit_edge24
  ]

sw.bb2.if.end.i_crit_edge24:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2.if.end.i_crit_edge, %sw.bb2.if.end.i_crit_edge24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 48) #15
  %tobool.not.i10 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i10, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %data5.i = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %nb, ptr %data5.i, align 4
  %event6.i = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %event6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %event, ptr %event6.i, align 8
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptr, align 4
  %family8.i = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %family8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %family8.i, align 4
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %19, label %if.end4.i.err_fib_prepare_event.i_crit_edge [
    i32 2, label %sw.bb.i11
    i32 10, label %sw.bb11.i
  ]

if.end4.i.err_fib_prepare_event.i_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_prepare_event.i

sw.bb.i11:                                        ; preds = %if.end4.i
  %22 = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %22, ptr %ptr, i32 28)
  %extack2.i.i = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %24 = ptrtoint ptr %extack2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extack2.i.i, align 4
  %26 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %event, label %sw.bb.i11.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 3, label %sw.bb6.i.i
  ]

sw.bb.i11.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %sw.bb.i11
  %ipv4.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1
  %num.i.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %ipv4.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ipv4.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i.i, i32 noundef 8) #12
  %call.i1.i.i.i.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i.i.i, i64 noundef 1, i64 noundef %28) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i.i.i, i64 %28)
  %cmp.i.i.not.i.not.i.i = icmp eq i64 %call.i1.i.i.i.i, %28
  br i1 %cmp.i.i.not.i.not.i.i, label %do.body.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

do.body.i.i:                                      ; preds = %sw.bb.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_fib4_prepare_event.__msg) #12
  %tobool3.not.i.i12 = icmp eq ptr %25, null
  br i1 %tobool3.not.i.i12, label %do.body.i.i.err_fib_prepare_event.i_crit_edge, label %if.then4.i.i13

do.body.i.i.err_fib_prepare_event.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_prepare_event.i

if.then4.i.i13:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nsim_fib4_prepare_event.__msg, ptr %25, align 4
  br label %err_fib_prepare_event.i

sw.bb6.i.i:                                       ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #14
  %num.i19.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1, i32 0, i32 1
  %call.i.i8.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i19.i.i, i32 noundef 8) #12
  %call.i.i.i.i14 = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i19.i.i) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb6.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i11.sw.epilog.i.i_crit_edge
  %fi.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fi.i.i, align 8
  %fib_clntref.i.i.i = getelementptr inbounds %struct.fib_info, ptr %31, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i.i.i, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i.i.i, ptr %fib_clntref.i.i.i, i32 1, ptr elementtype(i32) %fib_clntref.i.i.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %sw.epilog.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !134

sw.epilog.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %sw.epilog.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end15.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end15.i_crit_edge:         ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %sw.epilog.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %sw.epilog.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %if.end15.i

sw.bb11.i:                                        ; preds = %if.end4.i
  %34 = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 1
  %rt1.i.i.i = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %ptr, i32 0, i32 1
  %35 = ptrtoint ptr %rt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rt1.i.i.i, align 4
  %nsiblings.i.i.i = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %ptr, i32 0, i32 2
  %37 = ptrtoint ptr %nsiblings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nsiblings.i.i.i, align 4
  %add.i.i.i = add i32 %38, 1
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i.i, i32 4) #12
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %sw.bb11.i.err_fib_prepare_event.i_crit_edge, label %if.end7.i.i.i.i.i, !prof !134

sw.bb11.i.err_fib_prepare_event.i_crit_edge:      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_prepare_event.i

if.end7.i.i.i.i.i:                                ; preds = %sw.bb11.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call8.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 2848) #17
  %tobool.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end7.i.i.i.i.i.err_fib_prepare_event.i_crit_edge, label %if.end.i.i.i

if.end7.i.i.i.i.i.err_fib_prepare_event.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_fib_prepare_event.i

if.end.i.i.i:                                     ; preds = %if.end7.i.i.i.i.i
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i.i.i.i, ptr %34, align 8
  %nrt63.i.i.i = getelementptr inbounds %struct.nsim_fib_event, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %nrt63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i.i.i, ptr %nrt63.i.i.i, align 4
  %44 = ptrtoint ptr %call8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %36, ptr %call8.i.i.i.i.i, align 128
  %fib6_ref.i.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %36, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i.i.i.i, i32 1, i32 3, i32 1) #12
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i.i.i, ptr %fib6_ref.i.i.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i.i.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !134

if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.fib6_info_hold.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.fib6_info_hold.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib6_info_hold.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %fib6_info_hold.exit.i.i.i

fib6_info_hold.exit.i.i.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.fib6_info_hold.exit.i.i.i_crit_edge
  %47 = ptrtoint ptr %nsiblings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nsiblings.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool5.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool5.not.i.i.i, label %fib6_info_hold.exit.i.i.i.if.end.i.i_crit_edge, label %if.end7.i.i.i

fib6_info_hold.exit.i.i.i.if.end.i.i_crit_edge:   ; preds = %fib6_info_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end7.i.i.i:                                    ; preds = %fib6_info_hold.exit.i.i.i
  %49 = getelementptr inbounds %struct.fib6_info, ptr %36, i32 0, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn100.i.i.i = load ptr, ptr %49, align 4
  %cmp.not102.i.i.i = icmp eq ptr %.pn100.i.i.i, %49
  br i1 %cmp.not102.i.i.i, label %if.end7.i.i.i.for.end.i.i.i_crit_edge, label %if.end7.i.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  br label %for.body.i.i.i

if.end7.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %fib6_info_hold.exit93.i.i.i.for.body.i.i.i_crit_edge, %if.end7.i.i.i.for.body.i.i.i_crit_edge
  %.pn104.i.i.i = phi ptr [ %.pn.i.i.i, %fib6_info_hold.exit93.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn100.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ]
  %i.0103.i.i.i = phi i32 [ %add12.i.i.i, %fib6_info_hold.exit93.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %nsiblings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nsiblings.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0103.i.i.i, i32 %52)
  %cmp9.i.i.i = icmp eq i32 %i.0103.i.i.i, %52
  br i1 %cmp9.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %if.end11.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

if.end11.i.i.i:                                   ; preds = %for.body.i.i.i
  %iter.0105.i.i.i = getelementptr i8, ptr %.pn104.i.i.i, i32 -12
  %add12.i.i.i = add i32 %i.0103.i.i.i, 1
  %arrayidx13.i.i.i = getelementptr ptr, ptr %call8.i.i.i.i.i, i32 %add12.i.i.i
  %53 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %iter.0105.i.i.i, ptr %arrayidx13.i.i.i, align 4
  %fib6_ref.i84.i.i.i = getelementptr i8, ptr %.pn104.i.i.i, i32 12
  %call.i.i.i.i.i.i85.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i84.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i84.i.i.i, i32 1, i32 3, i32 1) #12
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i84.i.i.i, ptr %fib6_ref.i84.i.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i84.i.i.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i86.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i86.i.i.i)
  %tobool1.not.i.i.i.i87.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i86.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i87.i.i.i, label %if.end11.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge, label %if.else.i.i.i.i90.i.i.i, !prof !134

if.end11.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i92.i.i.i

if.else.i.i.i.i90.i.i.i:                          ; preds = %if.end11.i.i.i
  %add.i.i.i.i88.i.i.i = add i32 %asmresult.i.i.i.i.i.i86.i.i.i, 1
  %55 = or i32 %add.i.i.i.i88.i.i.i, %asmresult.i.i.i.i.i.i86.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %.not.i.i.i.i89.i.i.i = icmp sgt i32 %55, -1
  br i1 %.not.i.i.i.i89.i.i.i, label %if.else.i.i.i.i90.i.i.i.fib6_info_hold.exit93.i.i.i_crit_edge, label %if.else.i.i.i.i90.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i90.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i92.i.i.i

if.else.i.i.i.i90.i.i.i.fib6_info_hold.exit93.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib6_info_hold.exit93.i.i.i

if.end15.sink.split.i.i.i.i92.i.i.i:              ; preds = %if.else.i.i.i.i90.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge, %if.end11.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge
  %.sink.i.i.i.i91.i.i.i = phi i32 [ 2, %if.end11.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i90.i.i.i.if.end15.sink.split.i.i.i.i92.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i84.i.i.i, i32 noundef %.sink.i.i.i.i91.i.i.i) #12
  br label %fib6_info_hold.exit93.i.i.i

fib6_info_hold.exit93.i.i.i:                      ; preds = %if.end15.sink.split.i.i.i.i92.i.i.i, %if.else.i.i.i.i90.i.i.i.fib6_info_hold.exit93.i.i.i_crit_edge
  %56 = ptrtoint ptr %.pn104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i.i.i = load ptr, ptr %.pn104.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %49
  br i1 %cmp.not.i.i.i, label %fib6_info_hold.exit93.i.i.i.for.end.i.i.i_crit_edge, label %fib6_info_hold.exit93.i.i.i.for.body.i.i.i_crit_edge

fib6_info_hold.exit93.i.i.i.for.body.i.i.i_crit_edge: ; preds = %fib6_info_hold.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

fib6_info_hold.exit93.i.i.i.for.end.i.i.i_crit_edge: ; preds = %fib6_info_hold.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %fib6_info_hold.exit93.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end7.i.i.i.for.end.i.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 0, %if.end7.i.i.i.for.end.i.i.i_crit_edge ], [ %add12.i.i.i, %fib6_info_hold.exit93.i.i.i.for.end.i.i.i_crit_edge ], [ %i.0103.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %nsiblings.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nsiblings.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i, i32 %58)
  %cmp19.not.i.i.i = icmp eq i32 %i.0.lcssa.i.i.i, %58
  br i1 %cmp19.not.i.i.i, label %for.end.i.i.i.if.end.i.i_crit_edge, label %land.rhs.i.i.i

for.end.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.rhs.i.i.i:                                   ; preds = %for.end.i.i.i
  %.b83.i.i.i = load i1, ptr @nsim_fib6_event_init.__already_done, align 1
  br i1 %.b83.i.i.i, label %land.rhs.i.i.i.if.end.i.i_crit_edge, label %if.then28.i.i.i, !prof !135

land.rhs.i.i.i.if.end.i.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then28.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nsim_fib6_event_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 828, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then28.i.i.i, %land.rhs.i.i.i.if.end.i.i_crit_edge, %for.end.i.i.i.if.end.i.i_crit_edge, %fib6_info_hold.exit.i.i.i.if.end.i.i_crit_edge
  %extack2.i38.i = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %59 = ptrtoint ptr %extack2.i38.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %extack2.i38.i, align 4
  %61 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %event, label %if.end.i.i.if.end15.i_crit_edge [
    i32 0, label %sw.bb.i43.i
    i32 3, label %sw.bb10.i.i
  ]

if.end.i.i.if.end15.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

sw.bb.i43.i:                                      ; preds = %if.end.i.i
  %ipv6.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2
  %num.i.i39.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2, i32 0, i32 1
  %62 = ptrtoint ptr %ipv6.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ipv6.i.i, align 8
  %call.i.i.i.i40.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i39.i, i32 noundef 8) #12
  %call.i1.i.i.i41.i = tail call i64 @generic_atomic64_fetch_add_unless(ptr noundef %num.i.i39.i, i64 noundef 1, i64 noundef %63) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i1.i.i.i41.i, i64 %63)
  %cmp.i.i.not.i.not.i42.i = icmp eq i64 %call.i1.i.i.i41.i, %63
  br i1 %cmp.i.i.not.i.not.i42.i, label %do.body.i44.i, label %sw.bb.i43.i.if.end15.i_crit_edge

sw.bb.i43.i.if.end15.i_crit_edge:                 ; preds = %sw.bb.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

do.body.i44.i:                                    ; preds = %sw.bb.i43.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_fib6_prepare_event.__msg) #12
  %tobool6.not.i.i = icmp eq ptr %60, null
  br i1 %tobool6.not.i.i, label %do.body.i44.i.if.end8.i.i_crit_edge, label %if.then7.i.i

do.body.i44.i.if.end8.i.i_crit_edge:              ; preds = %do.body.i44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %do.body.i44.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @nsim_fib6_prepare_event.__msg, ptr %60, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %do.body.i44.i.if.end8.i.i_crit_edge
  tail call fastcc void @nsim_fib6_event_fini(ptr noundef %34) #12
  br label %err_fib_prepare_event.i

sw.bb10.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %num.i25.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2, i32 0, i32 1
  %call.i.i8.i.i45.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i25.i.i, i32 noundef 8) #12
  %call.i.i.i46.i = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i25.i.i) #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %sw.bb10.i.i, %sw.bb.i43.i.if.end15.i_crit_edge, %if.end.i.i.if.end15.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end15.i_crit_edge
  %fib_event_queue_lock.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %fib_event_queue_lock.i) #12
  %fib_event_queue.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 11
  %prev.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 11, i32 1
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %66, ptr noundef %fib_event_queue.i) #12
  br i1 %call.i.i.i15, label %if.end.i.i48.i, label %if.end15.i.list_add_tail.exit.i_crit_edge

if.end15.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i48.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %fib_event_queue.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i.i, ptr %66, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i48.i, %if.end15.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fib_event_queue_lock.i) #12
  %fib_event_work.i = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %71 = load ptr, ptr @system_wq, align 4
  %call.i.i49.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %fib_event_work.i) #12
  br label %cleanup

err_fib_prepare_event.i:                          ; preds = %if.end8.i.i, %if.end7.i.i.i.i.i.err_fib_prepare_event.i_crit_edge, %sw.bb11.i.err_fib_prepare_event.i_crit_edge, %if.then4.i.i13, %do.body.i.i.err_fib_prepare_event.i_crit_edge, %if.end4.i.err_fib_prepare_event.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_fib_prepare_event.i, %list_add_tail.exit.i, %if.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.else.i20.i, %if.then4.i17.i, %if.then2.i16.i.cleanup_crit_edge, %if.then.i14.i.cleanup_crit_edge, %if.else.i.i, %if.then4.i.i, %if.then2.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.then.i.i.cleanup_crit_edge ], [ 1, %if.else.i.i ], [ 1, %if.then.i14.i.cleanup_crit_edge ], [ 1, %if.else.i20.i ], [ 32770, %err_fib_prepare_event.i ], [ 0, %list_add_tail.exit.i ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 32770, %if.end.i.cleanup_crit_edge ], [ 32797, %if.then2.i.i.cleanup_crit_edge ], [ 32797, %if.then4.i.i ], [ 32797, %if.then2.i16.i.cleanup_crit_edge ], [ 32797, %if.then4.i17.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_fib_notifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_fib_dump_inconsistent(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_event_work = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 10
  %call = tail call zeroext i1 @flush_work(ptr noundef %fib_event_work) #12
  %fib_rt_list = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 5
  %0 = ptrtoint ptr %fib_rt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib_rt_list, align 4
  %cmp.not36 = icmp eq ptr %1, %fib_rt_list
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fib_rt_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn.in37 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %fib_rt.0 = getelementptr i8, ptr %.pn.in37, i32 -32
  %2 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in37, align 4
  %ht_node = getelementptr i8, ptr %.pn.in37, i32 -4
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %fib_rt_ht, ptr noundef %ht_node, [7 x i32] [i32 28, i32 28, i32 0, i32 256, i32 0, i32 0, i32 0])
  tail call void @nsim_fib_rt_free(ptr noundef %fib_rt.0, ptr noundef %nb)
  %cmp.not = icmp eq ptr %.pn, %fib_rt_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 1, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %num, i64 noundef 0) #12
  %num17 = getelementptr inbounds %struct.nsim_fib_data, ptr %nb, i32 0, i32 2, i32 1, i32 1
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num17, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %num17, i64 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nsim_fib_ipv4_resource_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num.i = getelementptr inbounds %struct.nsim_fib_data, ptr %priv, i32 0, i32 1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num.i) #12
  ret i64 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nsim_fib_ipv4_rules_res_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num.i = getelementptr inbounds %struct.nsim_fib_data, ptr %priv, i32 0, i32 1, i32 1, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num.i) #12
  ret i64 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nsim_fib_ipv6_resource_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num.i = getelementptr inbounds %struct.nsim_fib_data, ptr %priv, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num.i) #12
  ret i64 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nsim_fib_ipv6_rules_res_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num.i = getelementptr inbounds %struct.nsim_fib_data, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num.i) #12
  ret i64 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nsim_fib_nexthops_res_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num.i = getelementptr inbounds %struct.nsim_fib_data, ptr %priv, i32 0, i32 3, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num.i) #12
  ret i64 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nexthop_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_fib_rt_free(ptr noundef %ptr, ptr noundef %arg) #0 align 64 {
entry:
  %fri.i.i = alloca %struct.fib_rt_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %land.end [
    i32 2, label %sw.bb
    i32 10, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %devlink1.i = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 9
  %3 = ptrtoint ptr %devlink1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devlink1.i, align 8
  %call.i = tail call ptr @devlink_net(ptr noundef %4) #12
  %prefix_len.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %prefix_len.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prefix_len.i.i, align 4
  %conv.i.i = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i.i) #12
  %7 = getelementptr inbounds i8, ptr %fri.i.i, i32 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -57345, ptr %7, align 4
  %fi.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %ptr, i32 0, i32 1
  %9 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fi.i.i, align 4
  %11 = ptrtoint ptr %fri.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %fri.i.i, align 4
  %tb_id.i.i = getelementptr inbounds %struct.nsim_fib_rt_key, ptr %ptr, i32 0, i32 3
  %12 = ptrtoint ptr %tb_id.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tb_id.i.i, align 4
  %tb_id6.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %tb_id6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tb_id6.i.i, align 4
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptr, align 4
  %dst.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dst.i.i, align 4
  %dst_len7.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %dst_len7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i.i, ptr %dst_len7.i.i, align 4
  %tos.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %ptr, i32 0, i32 2
  %19 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos.i.i, align 4
  store i8 %20, ptr %7, align 4
  %type.i.i = getelementptr inbounds %struct.nsim_fib4_rt, ptr %ptr, i32 0, i32 3
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i.i, align 1
  %type9.i.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %type9.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %type9.i.i, align 1
  call void @fib_alias_hw_flags_set(ptr noundef %call.i, ptr noundef nonnull %fri.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i.i) #12
  %num.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 1, i32 0, i32 1
  %call.i.i8.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i, i32 noundef 8) #12
  %call.i.i.i = call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i) #12
  call fastcc void @nsim_fib4_rt_destroy(ptr noundef %ptr) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %devlink.i.i = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 9
  %24 = ptrtoint ptr %devlink.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devlink.i.i, align 8
  %call.i.i = tail call ptr @devlink_net(ptr noundef %25) #12
  %nh_list.i.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %ptr, i32 0, i32 1
  %26 = ptrtoint ptr %nh_list.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %fib6_rt_nh.010.i.i = load ptr, ptr %nh_list.i.i, align 4
  %cmp.not11.i.i = icmp eq ptr %fib6_rt_nh.010.i.i, %nh_list.i.i
  br i1 %cmp.not11.i.i, label %sw.bb1.nsim_fib6_rt_free.exit_crit_edge, label %sw.bb1.for.body.i.i_crit_edge

sw.bb1.for.body.i.i_crit_edge:                    ; preds = %sw.bb1
  br label %for.body.i.i

sw.bb1.nsim_fib6_rt_free.exit_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_free.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb1.for.body.i.i_crit_edge
  %fib6_rt_nh.012.i.i = phi ptr [ %fib6_rt_nh.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %fib6_rt_nh.010.i.i, %sw.bb1.for.body.i.i_crit_edge ]
  %rt.i.i = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.012.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rt.i.i, align 4
  tail call void @fib6_info_hw_flags_set(ptr noundef %call.i.i, ptr noundef %28, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %29 = ptrtoint ptr %fib6_rt_nh.012.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %fib6_rt_nh.0.i.i = load ptr, ptr %fib6_rt_nh.012.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %fib6_rt_nh.0.i.i, %nh_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.nsim_fib6_rt_free.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.nsim_fib6_rt_free.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib6_rt_free.exit

nsim_fib6_rt_free.exit:                           ; preds = %for.body.i.i.nsim_fib6_rt_free.exit_crit_edge, %sw.bb1.nsim_fib6_rt_free.exit_crit_edge
  %num.i.i40 = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 2, i32 0, i32 1
  %call.i.i8.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num.i.i40, i32 noundef 8) #12
  %call.i.i.i42 = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %num.i.i40) #12
  tail call fastcc void @nsim_fib6_rt_destroy(ptr noundef %ptr) #12
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @nsim_fib_rt_free.__already_done, align 1
  br i1 %.b39, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !135

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nsim_fib_rt_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1070, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %nsim_fib6_rt_free.exit, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsim_nexthop_free(ptr noundef %ptr, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 8
  %call = tail call ptr @devlink_net(ptr noundef %1) #12
  %id.i = getelementptr inbounds %struct.nsim_nexthop, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 8
  tail call void @nexthop_set_hw_flags(ptr noundef %call, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %is_resilient.i = getelementptr inbounds %struct.nsim_nexthop, ptr %ptr, i32 0, i32 3
  %4 = ptrtoint ptr %is_resilient.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_resilient.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %entry.nsim_nexthop_hw_flags_set.exit_crit_edge, label %for.cond.preheader.i

entry.nsim_nexthop_hw_flags_set.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit

for.cond.preheader.i:                             ; preds = %entry
  %occ.i = getelementptr inbounds %struct.nsim_nexthop, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %occ.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %occ.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp13.not.i = icmp eq i64 %7, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.nsim_nexthop_hw_flags_set.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nsim_nexthop_hw_flags_set.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  %conv4.i = trunc i32 %i.014.i to i16
  tail call void @nexthop_bucket_set_hw_flags(ptr noundef %call, i32 noundef %9, i16 noundef zeroext %conv4.i, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %inc.i = add i32 %i.014.i, 1
  %conv.i = sext i32 %inc.i to i64
  %10 = ptrtoint ptr %occ.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %occ.i, align 8
  %cmp.i = icmp ugt i64 %11, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nsim_nexthop_hw_flags_set.exit_crit_edge

for.body.i.nsim_nexthop_hw_flags_set.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_nexthop_hw_flags_set.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

nsim_nexthop_hw_flags_set.exit:                   ; preds = %for.body.i.nsim_nexthop_hw_flags_set.exit_crit_edge, %for.cond.preheader.i.nsim_nexthop_hw_flags_set.exit_crit_edge, %entry.nsim_nexthop_hw_flags_set.exit_crit_edge
  %occ = getelementptr inbounds %struct.nsim_nexthop, ptr %ptr, i32 0, i32 1
  %12 = ptrtoint ptr %occ to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %occ, align 8
  %num8.i = getelementptr inbounds %struct.nsim_fib_data, ptr %arg, i32 0, i32 3, i32 1
  %call.i.i58.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num8.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %num8.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %13)
  %cmp10.i = icmp ult i64 %call.i.i, %13
  br i1 %cmp10.i, label %do.end23.i, label %if.end38.i, !prof !134

do.end23.i:                                       ; preds = %nsim_nexthop_hw_flags_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %nsim_nexthop_account.exit

if.end38.i:                                       ; preds = %nsim_nexthop_hw_flags_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num8.i, i32 noundef 8) #12
  tail call void @generic_atomic64_sub(i64 noundef %13, ptr noundef %num8.i) #12
  br label %nsim_nexthop_account.exit

nsim_nexthop_account.exit:                        ; preds = %if.end38.i, %do.end23.i
  tail call void @kfree(ptr noundef %ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_fib_destroy(ptr noundef %devlink, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %devlink, i64 noundef 7) #12
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %devlink, i64 noundef 6) #12
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %devlink, i64 noundef 5) #12
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %devlink, i64 noundef 3) #12
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %devlink, i64 noundef 2) #12
  %call = tail call ptr @devlink_net(ptr noundef %devlink) #12
  %call1 = tail call i32 @unregister_fib_notifier(ptr noundef %call, ptr noundef %data) #12
  %call2 = tail call ptr @devlink_net(ptr noundef %devlink) #12
  %nexthop_nb = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 7
  %call3 = tail call i32 @unregister_nexthop_notifier(ptr noundef %call2, ptr noundef %nexthop_nb) #12
  %fib_event_work = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 10
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %fib_event_work) #12
  %fib_rt_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 4
  tail call void @rhashtable_free_and_destroy(ptr noundef %fib_rt_ht, ptr noundef nonnull @nsim_fib_rt_free, ptr noundef %data) #12
  %nexthop_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %nexthop_ht, ptr noundef nonnull @nsim_nexthop_free, ptr noundef %data) #12
  %fib_event_queue = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %fib_event_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fib_event_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %fib_event_queue
  br i1 %cmp.i.not, label %entry.if.end34_crit_edge, label %land.rhs

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %.b123 = load i1, ptr @nsim_fib_destroy.__already_done, align 1
  br i1 %.b123, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !135

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nsim_fib_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1623, i32 noundef 9, ptr noundef null) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %entry.if.end34_crit_edge
  %fib_rt_list = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %fib_rt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %fib_rt_list, align 4
  %cmp.i124.not = icmp eq ptr %3, %fib_rt_list
  br i1 %cmp.i124.not, label %if.end34.if.end91_crit_edge, label %land.rhs53

if.end34.if.end91_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

land.rhs53:                                       ; preds = %if.end34
  %.b121122 = load i1, ptr @nsim_fib_destroy.__already_done.13, align 1
  br i1 %.b121122, label %land.rhs53.if.end91_crit_edge, label %if.then64, !prof !135

land.rhs53.if.end91_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then64:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nsim_fib_destroy.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1624, i32 noundef 9, ptr noundef null) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then64, %land.rhs53.if.end91_crit_edge, %if.end34.if.end91_crit_edge
  %fib_lock = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %fib_lock) #12
  %nh_lock = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %nh_lock) #12
  %ddir.i = getelementptr inbounds %struct.nsim_fib_data, ptr %data, i32 0, i32 14
  %4 = ptrtoint ptr %ddir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddir.i, align 8
  tail call void @debugfs_remove(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_fib_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_nexthop_bucket_activity_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %size, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %bucket_index = alloca i16, align 2
  %buf = alloca [128 x i8], align 1
  %nhid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %devlink = getelementptr inbounds %struct.nsim_fib_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink, align 8
  %call = tail call ptr @devlink_net(ptr noundef %3) #12
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bucket_index) #12
  %6 = ptrtoint ptr %bucket_index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %bucket_index, align 2, !annotation !131
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #12
  %7 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nhid) #12
  %8 = ptrtoint ptr %nhid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %nhid, align 4, !annotation !131
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp ne i64 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp1 = icmp ugt i32 %size, 128
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %size, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %size, i32 -1226833920) #18, !srcloc !139
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !135

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %size) #12
  %10 = call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !140
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !142
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %size) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !142
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %size, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %size, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.then11.i.i, !prof !135

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %nhid, ptr noundef nonnull %bucket_index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 2
  br i1 %cmp9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @rtnl_lock() #12
  %nexthop_ht = getelementptr inbounds %struct.nsim_fib_data, ptr %1, i32 0, i32 8
  %call12 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %nexthop_ht, ptr noundef nonnull %nhid, [7 x i32] [i32 4, i32 1048576, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.out.thread_crit_edge, label %lor.lhs.false

if.end11.out.thread_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.end11
  %is_resilient = getelementptr inbounds %struct.nsim_nexthop, ptr %call12, i32 0, i32 3
  %14 = ptrtoint ptr %is_resilient to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_resilient, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %lor.lhs.false.out.thread_crit_edge, label %lor.lhs.false15

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %bucket_index to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bucket_index, align 2
  %conv = zext i16 %17 to i64
  %occ = getelementptr inbounds %struct.nsim_nexthop, ptr %call12, i32 0, i32 1
  %18 = ptrtoint ptr %occ to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %occ, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv)
  %cmp16.not = icmp ugt i64 %19, %conv
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false15.out.thread_crit_edge

lor.lhs.false15.out.thread_crit_edge:             ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end19:                                         ; preds = %lor.lhs.false15
  %conv21 = trunc i64 %19 to i32
  %call22 = call ptr @bitmap_zalloc(i32 noundef %conv21, i32 noundef 3264) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end19.out.thread_crit_edge, label %21

if.end19.out.thread_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

out.thread:                                       ; preds = %if.end19.out.thread_crit_edge, %lor.lhs.false15.out.thread_crit_edge, %lor.lhs.false.out.thread_crit_edge, %if.end11.out.thread_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end19.out.thread_crit_edge ], [ -22, %if.end11.out.thread_crit_edge ], [ -22, %lor.lhs.false.out.thread_crit_edge ], [ -22, %lor.lhs.false15.out.thread_crit_edge ]
  call void @rtnl_unlock() #12
  %conv2962 = zext i32 %size to i64
  %20 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv2962, ptr %ppos, align 8
  br label %cleanup

21:                                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %bucket_index to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bucket_index, align 2
  %conv26 = zext i16 %23 to i32
  %rem.i.i = and i32 %conv26, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv26, 5
  %add.ptr.i.i57 = getelementptr i32, ptr %call22, i32 %div2.i.i
  %24 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i57, align 4
  %or.i.i = or i32 %shl.i.i, %25
  store i32 %or.i.i, ptr %add.ptr.i.i57, align 4
  %26 = ptrtoint ptr %nhid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nhid, align 4
  %28 = ptrtoint ptr %occ to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %occ, align 8
  %conv28 = trunc i64 %29 to i16
  call void @nexthop_res_grp_activity_update(ptr noundef %call, i32 noundef %27, i16 noundef zeroext %conv28, ptr noundef nonnull %call22) #12
  call void @bitmap_free(ptr noundef nonnull %call22) #12
  call void @rtnl_unlock() #12
  %conv29 = zext i32 %size to i64
  %30 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv29, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %21, %out.thread, %if.end6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %size, %21 ], [ %err.0.ph, %out.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhid) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bucket_index) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #7 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 594, ptr noundef nonnull @.str.26) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !135

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 369, ptr noundef nonnull @.str.26) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.27, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.27, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 614, ptr noundef nonnull @.str.26) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !135

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %43 = call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_res_grp_activity_update(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_fib6_event_fini(ptr nocapture noundef readonly %fib6_event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nrt6 = getelementptr inbounds %struct.nsim_fib6_event, ptr %fib6_event, i32 0, i32 1
  %0 = ptrtoint ptr %nrt6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nrt6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %nsim_rt6_release.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %nsim_rt6_release.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %fib6_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib6_event, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.nsim_rt6_release.exit_crit_edge, label %land.lhs.true.i.i

for.body.nsim_rt6_release.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_rt6_release.exit

land.lhs.true.i.i:                                ; preds = %for.body
  %fib6_ref.i.i = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i, ptr %fib6_ref.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i) #12, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_rt6_release.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i, i32 noundef 3) #12
  br label %nsim_rt6_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  %rcu.i.i = getelementptr inbounds %struct.fib6_info, ptr %5, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fib6_info_destroy_rcu) #12
  br label %nsim_rt6_release.exit

nsim_rt6_release.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge, %for.body.nsim_rt6_release.exit_crit_edge
  %inc = add nuw i32 %i.07, 1
  %7 = ptrtoint ptr %nrt6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nrt6, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %nsim_rt6_release.exit.for.body_crit_edge, label %nsim_rt6_release.exit.for.end_crit_edge

nsim_rt6_release.exit.for.end_crit_edge:          ; preds = %nsim_rt6_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

nsim_rt6_release.exit.for.body_crit_edge:         ; preds = %nsim_rt6_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %nsim_rt6_release.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %fib6_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fib6_event, align 4
  tail call void @kfree(ptr noundef %10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_fib4_rt_destroy(ptr noundef %fib4_rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.nsim_fib4_rt, ptr %fib4_rt, i32 0, i32 1
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #12, !srcloc !137
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fib_info_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.fib_info_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #12
  br label %fib_info_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call void @free_fib_info(ptr noundef %1) #12
  br label %fib_info_put.exit

fib_info_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fib_info_put.exit_crit_edge
  %list.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib4_rt, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %fib_info_put.exit.nsim_fib_rt_fini.exit_crit_edge

fib_info_put.exit.nsim_fib_rt_fini.exit_crit_edge: ; preds = %fib_info_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_rt_fini.exit

if.end.i.i.i:                                     ; preds = %fib_info_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib4_rt, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %nsim_fib_rt_fini.exit

nsim_fib_rt_fini.exit:                            ; preds = %if.end.i.i.i, %fib_info_put.exit.nsim_fib_rt_fini.exit_crit_edge
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib4_rt, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %fib4_rt) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 715, ptr noundef nonnull @.str.26) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !134

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !135

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !135

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %25 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #12
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 377, ptr noundef nonnull @.str.30) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.31, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 732, ptr noundef nonnull @.str.30) #12
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !135

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !134

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 377, ptr noundef nonnull @.str.30) #12
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !147
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #12
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #12
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %60 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !148
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !149

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !150
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !151
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !135

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !152
  %7 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !154
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !155
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !134

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !156
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !158
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !159
  %3 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !160
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %2 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_alias_hw_flags_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_add_unless(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_dec_if_positive(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_replace_fast(ptr noundef %ht, ptr noundef %obj_old, ptr noundef %obj_new, [7 x i32] %params.coerce) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @rhashtable_replace_fast.__warned, align 1
  br i1 %.b41, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1210, ptr noundef nonnull @.str.26) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %7 = getelementptr i8, ptr %obj_new, i32 %params.sroa.3.4.extract.shift.i.i
  br label %while.cond

while.cond:                                       ; preds = %do.end32.while.cond_crit_edge, %do.end10
  %tbl.0 = phi ptr [ %5, %do.end10 ], [ %55, %do.end32.while.cond_crit_edge ]
  %8 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %9 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj_old, i32 %idx.neg.i.i.i
  br i1 %tobool.not.i.i, label %if.then.i.i.i188.i, label %cond.true.i.i, !prof !134

cond.true.i.i:                                    ; preds = %while.cond
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.true.i170.i_crit_edge

cond.true.i.i.cond.true.i170.i_crit_edge:         ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i170.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %11 to i32
  br label %cond.true.i170.i

cond.true.i170.i:                                 ; preds = %cond.false.i.i, %cond.true.i.i.cond.true.i170.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.true.i170.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %12 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %13) #12
  %14 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i313.i = add i32 %15, -1
  %and.i3.i.i314.i = and i32 %sub.i.i.i313.i, %call8.i.i
  %16 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i164315.i = zext i16 %17 to i32
  %idx.neg.i.i165316.i = sub nsw i32 0, %conv.i.i164315.i
  %add.ptr.i.i166319.i = getelementptr i8, ptr %obj_new, i32 %idx.neg.i.i165316.i
  br i1 %tobool4.not.i.i, label %cond.false.i173.i, label %cond.true.i170.i.cond.end.i177.i_crit_edge

cond.true.i170.i.cond.end.i177.i_crit_edge:       ; preds = %cond.true.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i177.i

cond.false.i173.i:                                ; preds = %cond.true.i170.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i172.i = zext i16 %19 to i32
  br label %cond.end.i177.i

cond.end.i177.i:                                  ; preds = %cond.false.i173.i, %cond.true.i170.i.cond.end.i177.i_crit_edge
  %cond.i174.i = phi i32 [ %conv7.i172.i, %cond.false.i173.i ], [ %conv.i.i, %cond.true.i170.i.cond.end.i177.i_crit_edge ]
  %20 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i176.i = tail call i32 %6(ptr noundef %add.ptr.i.i166319.i, i32 noundef %cond.i174.i, i32 noundef %21) #12
  br label %rht_head_hashfn.exit294.i

if.then.i.i.i188.i:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 2
  %22 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_rnd.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %24 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %26 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %25(ptr noundef %add.ptr.i.i, i32 noundef %27, i32 noundef %23) #12
  %28 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i.i62 = add i32 %29, -1
  %and.i3.i.i.i63 = and i32 %sub.i.i.i.i62, %call.i.i.i.i
  %30 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %conv.i.i164305.pn.in.i64 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i164305.pn.i65 = zext i16 %conv.i.i164305.pn.in.i64 to i32
  %31 = sub nsw i32 0, %conv.i.i164305.pn.i65
  %add.ptr.i181.i66 = getelementptr i8, ptr %7, i32 %31
  %32 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_rnd.i.i.i, align 8
  %34 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %36 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i187.i = tail call i32 %35(ptr noundef %add.ptr.i181.i66, i32 noundef %37, i32 noundef %33) #12
  br label %rht_head_hashfn.exit294.i

rht_head_hashfn.exit294.i:                        ; preds = %if.then.i.i.i188.i, %cond.end.i177.i
  %and.i3.i.i308.i = phi i32 [ %and.i3.i.i314.i, %cond.end.i177.i ], [ %and.i3.i.i.i63, %if.then.i.i.i188.i ]
  %hash.2.i.i.sink.i291.i = phi i32 [ %call8.i176.i, %cond.end.i177.i ], [ %call.i.i.i187.i, %if.then.i.i.i188.i ]
  %38 = ptrtoint ptr %tbl.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tbl.0, align 128
  %sub.i.i.i292.i = add i32 %39, -1
  %and.i3.i.i293.i = and i32 %sub.i.i.i292.i, %hash.2.i.i.sink.i291.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i3.i.i308.i, i32 %and.i3.i.i293.i)
  %cmp.not.i = icmp eq i32 %and.i3.i.i308.i, %and.i3.i.i293.i
  br i1 %cmp.not.i, label %if.end.i, label %rht_head_hashfn.exit294.i.land.rhs_crit_edge

rht_head_hashfn.exit294.i.land.rhs_crit_edge:     ; preds = %rht_head_hashfn.exit294.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end.i:                                         ; preds = %rht_head_hashfn.exit294.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 1
  %40 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i295.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i295.i, label %cond.false.i297.i, label %cond.true.i296.i, !prof !135

cond.true.i296.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #12
  br label %rht_bucket_var.exit.i

cond.false.i297.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0, i32 0, i32 8, i32 %and.i3.i.i308.i
  br label %rht_bucket_var.exit.i

rht_bucket_var.exit.i:                            ; preds = %cond.false.i297.i, %cond.true.i296.i
  %cond.i298.i = phi ptr [ %call.i.i, %cond.true.i296.i ], [ %arrayidx.i.i, %cond.false.i297.i ]
  %tobool.not.i42 = icmp eq ptr %cond.i298.i, null
  br i1 %tobool.not.i42, label %rht_bucket_var.exit.i.land.rhs_crit_edge, label %if.end4.i

rht_bucket_var.exit.i.land.rhs_crit_edge:         ; preds = %rht_bucket_var.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end4.i:                                        ; preds = %rht_bucket_var.exit.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #12
  %call.i300.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300.i)
  %tobool.not.i301.i = icmp eq i32 %call.i300.i, 0
  br i1 %tobool.not.i301.i, label %land.lhs.true.i.i, label %if.end4.i.rht_ptr.exit.i_crit_edge

if.end4.i.rht_ptr.exit.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rht_ptr.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 377, ptr noundef nonnull @.str.30) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr.exit.i_crit_edge, %if.end4.i.rht_ptr.exit.i_crit_edge
  %42 = ptrtoint ptr %cond.i298.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cond.i298.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i.i = and i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %45 = ptrtoint ptr %cond.i298.i to i32
  %or.i.i.i = or i32 %45, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i321.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321.i)
  %tobool.i.not322.i = icmp eq i32 %and.i321.i, 0
  br i1 %tobool.i.not322.i, label %for.body.preheader.i, label %rht_ptr.exit.i.for.end.i_crit_edge

rht_ptr.exit.i.for.end.i_crit_edge:               ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %46 = inttoptr i32 %cond.i.i.i to ptr
  %cmp7.not.i75 = icmp eq ptr %46, %obj_old
  br i1 %cmp7.not.i75, label %for.body.preheader.i.do.body.i_crit_edge, label %for.body.preheader.i.if.then8.i_crit_edge

for.body.preheader.i.if.then8.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %if.then8.i

for.body.preheader.i.do.body.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.body.i:                                       ; preds = %do.end100.i
  %cmp7.not.i = icmp eq ptr %52, %obj_old
  br i1 %cmp7.not.i, label %for.body.i.do.body.i_crit_edge, label %for.body.i.if.then8.i_crit_edge

for.body.i.if.then8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then8.i:                                       ; preds = %for.body.i.if.then8.i_crit_edge, %for.body.preheader.i.if.then8.i_crit_edge
  %he.0323.i76 = phi ptr [ %52, %for.body.i.if.then8.i_crit_edge ], [ %46, %for.body.preheader.i.if.then8.i_crit_edge ]
  %call90.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0, i32 noundef %and.i3.i.i308.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true92.i, label %if.then8.i.do.end100.i_crit_edge

if.then8.i.do.end100.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i

do.body.i:                                        ; preds = %for.body.i.do.body.i_crit_edge, %for.body.preheader.i.do.body.i_crit_edge
  %pprev.0324.i.lcssa = phi ptr [ %he.0323.i76, %for.body.i.do.body.i_crit_edge ], [ null, %for.body.preheader.i.do.body.i_crit_edge ]
  %47 = ptrtoint ptr %obj_old to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %obj_old, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !162
  %49 = ptrtoint ptr %obj_new to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %obj_new, align 4
  %tobool46.not.i = icmp eq ptr %pprev.0324.i.lcssa, null
  br i1 %tobool46.not.i, label %if.else87.i, label %do.body48.i

do.body48.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !163
  %50 = ptrtoint ptr %pprev.0324.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %obj_new, ptr %pprev.0324.i.lcssa, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #12
  br label %while.end

if.else87.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i, ptr noundef %obj_new) #12
  br label %while.end

land.lhs.true92.i:                                ; preds = %if.then8.i
  %call93.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true92.i.do.end100.i_crit_edge, label %land.lhs.true95.i

land.lhs.true92.i.do.end100.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i

land.lhs.true95.i:                                ; preds = %land.lhs.true92.i
  %.b160.i = load i1, ptr @__rhashtable_replace_fast.__warned, align 1
  br i1 %.b160.i, label %land.lhs.true95.i.do.end100.i_crit_edge, label %if.then97.i

land.lhs.true95.i.do.end100.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100.i

if.then97.i:                                      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_replace_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1163, ptr noundef nonnull @.str.30) #12
  br label %do.end100.i

do.end100.i:                                      ; preds = %if.then97.i, %land.lhs.true95.i.do.end100.i_crit_edge, %land.lhs.true92.i.do.end100.i_crit_edge, %if.then8.i.do.end100.i_crit_edge
  %51 = ptrtoint ptr %he.0323.i76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %he.0323.i76, align 4
  %53 = ptrtoint ptr %52 to i32
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i, label %do.end100.i.for.end.i_crit_edge

do.end100.i.for.end.i_crit_edge:                  ; preds = %do.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %do.end100.i.for.end.i_crit_edge, %rht_ptr.exit.i.for.end.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0, ptr noundef nonnull %cond.i298.i) #12
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.i, %rht_bucket_var.exit.i.land.rhs_crit_edge, %rht_head_hashfn.exit294.i.land.rhs_crit_edge
  %retval.0.i.ph = phi i32 [ -2, %for.end.i ], [ -2, %rht_bucket_var.exit.i.land.rhs_crit_edge ], [ -22, %rht_head_hashfn.exit294.i.land.rhs_crit_edge ]
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %tbl.0, i32 0, i32 5
  %54 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %future_tbl, align 4
  %call19 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %land.rhs.do.end32_crit_edge

land.rhs.do.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

lor.lhs.false21:                                  ; preds = %land.rhs
  %call22 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %lor.lhs.false21.do.end32_crit_edge

lor.lhs.false21.do.end32_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

land.lhs.true24:                                  ; preds = %lor.lhs.false21
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b3940 = load i1, ptr @rhashtable_replace_fast.__warned.32, align 1
  br i1 %.b3940, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rhashtable_replace_fast.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1219, ptr noundef nonnull @.str.26) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %lor.lhs.false21.do.end32_crit_edge, %land.rhs.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %55, null
  br i1 %tobool34.not, label %do.end32.while.end_crit_edge, label %do.end32.while.cond_crit_edge

do.end32.while.cond_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end32.while.end_crit_edge, %if.else87.i, %do.body48.i
  %retval.0.i72 = phi i32 [ 0, %if.else87.i ], [ 0, %do.body48.i ], [ %retval.0.i.ph, %do.end32.while.end_crit_edge ]
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i43, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %while.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %56 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i50 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1076, ptr noundef nonnull @.str.26) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !134

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !135

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 377, ptr noundef nonnull @.str.30) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.35, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1032, ptr noundef nonnull @.str.30) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !164
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.37, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1004, ptr noundef nonnull @.str.30) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !165
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !134

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.33, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1085, ptr noundef nonnull @.str.26) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.28) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %46 = tail call i32 @llvm.read_register.i32(metadata !121) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fib_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_fib6_rt_destroy(ptr noundef %fib6_rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh_list = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 1
  %0 = ptrtoint ptr %nh_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh_list, align 4
  %cmp.not63 = icmp eq ptr %1, %nh_list
  br i1 %cmp.not63, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.064 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %iter.064 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %iter.064, align 4
  %rt = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %iter.064, i32 0, i32 1
  %3 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rt, align 4
  tail call fastcc void @nsim_fib6_rt_nh_del(ptr noundef %fib6_rt, ptr noundef %4)
  %cmp.not = icmp eq ptr %tmp.0, %nh_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %5 = ptrtoint ptr %nh_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %nh_list, align 4
  %cmp.i.not = icmp eq ptr %6, %nh_list
  br i1 %cmp.i.not, label %for.end.if.end44_crit_edge, label %land.rhs

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.rhs:                                         ; preds = %for.end
  %.b62 = load i1, ptr @nsim_fib6_rt_destroy.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end44_crit_edge, label %if.then, !prof !135

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nsim_fib6_rt_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 581, i32 noundef 9, ptr noundef null) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then, %land.rhs.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %list.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib6_rt, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end44.nsim_fib_rt_fini.exit_crit_edge

if.end44.nsim_fib_rt_fini.exit_crit_edge:         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_fib_rt_fini.exit

if.end.i.i.i:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib6_rt, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %nsim_fib_rt_fini.exit

nsim_fib_rt_fini.exit:                            ; preds = %if.end.i.i.i, %if.end44.nsim_fib_rt_fini.exit_crit_edge
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nsim_fib_rt, ptr %fib6_rt, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %fib6_rt) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_fib6_rt_nh_add(ptr noundef %fib6_rt, ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %rt, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #12, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !134

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fib6_info_hold.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib6_info_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef %.sink.i.i.i.i) #12
  br label %fib6_info_hold.exit

fib6_info_hold.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fib6_info_hold.exit_crit_edge
  %rt1 = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rt1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rt, ptr %rt1, align 8
  %nh_list = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef %nh_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %fib6_info_hold.exit.list_add_tail.exit_crit_edge

fib6_info_hold.exit.list_add_tail.exit_crit_edge: ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %fib6_info_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nh_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %fib6_info_hold.exit.list_add_tail.exit_crit_edge
  %nhs = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 2
  %10 = ptrtoint ptr %nhs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nhs, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nhs, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nsim_fib6_rt_nh_del(ptr noundef %fib6_rt, ptr noundef readnone %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh_list.i = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fib6_rt_nh.0.in.i = phi ptr [ %nh_list.i, %entry ], [ %fib6_rt_nh.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %fib6_rt_nh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fib6_rt_nh.0.i = load ptr, ptr %fib6_rt_nh.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fib6_rt_nh.0.i, %nh_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %rt2.i = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %rt2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt2.i, align 4
  %cmp3.i = icmp eq ptr %2, %rt
  br i1 %cmp3.i, label %nsim_fib6_rt_nh_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

nsim_fib6_rt_nh_find.exit:                        ; preds = %for.body.i
  %rt2.i.le = getelementptr inbounds %struct.nsim_fib6_rt_nh, ptr %fib6_rt_nh.0.i, i32 0, i32 1
  %tobool.not = icmp eq ptr %fib6_rt_nh.0.i, null
  br i1 %tobool.not, label %nsim_fib6_rt_nh_find.exit.cleanup_crit_edge, label %if.end

nsim_fib6_rt_nh_find.exit.cleanup_crit_edge:      ; preds = %nsim_fib6_rt_nh_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nsim_fib6_rt_nh_find.exit
  %nhs = getelementptr inbounds %struct.nsim_fib6_rt, ptr %fib6_rt, i32 0, i32 2
  %3 = ptrtoint ptr %nhs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nhs, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %nhs, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %fib6_rt_nh.0.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fib6_rt_nh.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %fib6_rt_nh.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fib6_rt_nh.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %fib6_rt_nh.0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fib6_rt_nh.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fib6_rt_nh.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %rt2.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rt2.i.le, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %list_del.exit.nsim_rt6_release.exit_crit_edge, label %land.lhs.true.i.i

list_del.exit.nsim_rt6_release.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_rt6_release.exit

land.lhs.true.i.i:                                ; preds = %list_del.exit
  %fib6_ref.i.i = getelementptr inbounds %struct.fib6_info, ptr %14, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %fib6_ref.i.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i.i, ptr %fib6_ref.i.i, i32 1, ptr elementtype(i32) %fib6_ref.i.i) #12, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nsim_rt6_release.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref.i.i, i32 noundef 3) #12
  br label %nsim_rt6_release.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  %rcu.i.i = getelementptr inbounds %struct.fib6_info, ptr %14, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @fib6_info_destroy_rcu) #12
  br label %nsim_rt6_release.exit

nsim_rt6_release.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nsim_rt6_release.exit_crit_edge, %list_del.exit.nsim_rt6_release.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %fib6_rt_nh.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %nsim_rt6_release.exit, %nsim_fib6_rt_nh_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_hw_flags_set(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_size_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_set_hw_flags(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_bucket_set_hw_flags(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @nsim_fib_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/fib.c", i32 1531, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nsim_fib_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/netdevsim/fib.c", i32 1536, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nsim_fib_create.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/fib.c", i32 1542, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nsim_fib_create.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/netdevsim/fib.c", i32 1544, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/fib.c", i32 1552, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nsim_fib_create._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @nsim_fib_create._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/fib.c", i32 1560, i32 3}
!20 = !{ptr @nsim_fib_create._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nsim_fib_create._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/fib.c", i32 1623, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/netdevsim/fib.c", i32 1624, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/fib.c", i32 1488, i32 34}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/netdevsim/fib.c", i32 1493, i32 22}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/netdevsim/fib.c", i32 1497, i32 22}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/fib.c", i32 1501, i32 22}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/netdevsim/fib.c", i32 1504, i32 22}
!36 = !{ptr @nsim_nexthop_bucket_activity_fops, !37, !"nsim_nexthop_bucket_activity_fops", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/fib.c", i32 1399, i32 37}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/fib.c", i32 1369, i32 18}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nsim_nexthop_ht_params, !63, !"nsim_nexthop_ht_params", i1 false, i1 false}
!63 = !{!"../drivers/net/netdevsim/fib.c", i32 126, i32 39}
!64 = !{ptr @nsim_fib_rt_ht_params, !65, !"nsim_fib_rt_ht_params", i1 false, i1 false}
!65 = !{!"../drivers/net/netdevsim/fib.c", i32 112, i32 39}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rhashtable.h", i32 1210, i32 8}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rhashtable.h", i32 1219, i32 16}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rhashtable.h", i32 1163, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/net/netdevsim/fib.c", i32 581, i32 2}
!97 = distinct !{null, !98, !"res_ids", i1 false, i1 false}
!98 = !{!"../drivers/net/netdevsim/fib.c", i32 1444, i32 37}
!99 = !{ptr @nsim_nexthop_create.__msg, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../drivers/net/netdevsim/fib.c", i32 1127, i32 3}
!101 = !{ptr @nsim_nexthop_add.__msg, !102, !"__msg", i1 false, i1 false}
!102 = !{!"../drivers/net/netdevsim/fib.c", i32 1197, i32 3}
!103 = !{ptr @nsim_nexthop_account.__msg, !104, !"__msg", i1 false, i1 false}
!104 = !{!"../drivers/net/netdevsim/fib.c", i32 1151, i32 5}
!105 = !{ptr @nsim_nexthop_replace.__msg, !106, !"__msg", i1 false, i1 false}
!106 = !{!"../drivers/net/netdevsim/fib.c", i32 1226, i32 3}
!107 = !{ptr @nsim_nexthop_res_table_pre_replace.__msg, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../drivers/net/netdevsim/fib.c", i32 1285, i32 3}
!109 = !{ptr @nsim_nexthop_bucket_replace.__msg, !110, !"__msg", i1 false, i1 false}
!110 = !{!"../drivers/net/netdevsim/fib.c", i32 1296, i32 3}
!111 = !{ptr @nsim_fib_rule_account.__msg, !112, !"__msg", i1 false, i1 false}
!112 = !{!"../drivers/net/netdevsim/fib.c", i32 197, i32 4}
!113 = !{ptr @nsim_fib4_prepare_event.__msg, !114, !"__msg", i1 false, i1 false}
!114 = !{!"../drivers/net/netdevsim/fib.c", i32 911, i32 4}
!115 = !{ptr @nsim_fib6_prepare_event.__msg, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../drivers/net/netdevsim/fib.c", i32 949, i32 4}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/net/netdevsim/fib.c", i32 828, i32 2}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/netdevsim/fib.c", i32 1070, i32 3}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i8 0, i8 2}
!133 = !{i64 2148223870, i64 2148223902, i64 2148223931, i64 2148223965, i64 2148223996, i64 2148224019}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2148311871}
!137 = !{i64 2148226335, i64 2148226367, i64 2148226396, i64 2148226430, i64 2148226461, i64 2148226484}
!138 = !{i64 2149940477}
!139 = !{i64 2152902773, i64 2152902798}
!140 = !{i64 5400486}
!141 = !{i64 5400683}
!142 = !{i64 2152885916}
!143 = !{i64 2149457483}
!144 = !{i64 2149697129}
!145 = !{i64 2149700563}
!146 = !{i64 2149457749}
!147 = !{i64 2148222340, i64 2148222366, i64 2148222395, i64 2148222429, i64 2148222460, i64 2148222483}
!148 = !{i64 2149648308}
!149 = !{!"branch_weights", i32 2146410443, i32 1073205}
!150 = !{i64 2148231198, i64 2148231230, i64 2148231259, i64 2148231293, i64 2148231324, i64 2148231347}
!151 = !{i64 2148320279}
!152 = !{i64 2149648468}
!153 = !{i64 2149648745}
!154 = !{i64 2149648587}
!155 = !{i64 2149648950}
!156 = !{i64 2149650013, i64 2149650505, i64 2149650050, i64 2149650106, i64 2149650140, i64 2149650164, i64 2149650205, i64 2149650226, i64 2149650254, i64 2149650288}
!157 = !{i64 2148319166}
!158 = !{i64 2148229585, i64 2148229617, i64 2148229646, i64 2148229680, i64 2148229711, i64 2148229734}
!159 = !{i64 2149651408}
!160 = !{i64 2149690202}
!161 = !{i64 2149692501}
!162 = !{i64 2149782051}
!163 = !{i64 2149789218}
!164 = !{i64 2149764505}
!165 = !{i64 2148224805, i64 2148224831, i64 2148224860, i64 2148224894, i64 2148224925, i64 2148224948}
