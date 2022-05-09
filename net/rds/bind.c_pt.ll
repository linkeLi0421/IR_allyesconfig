; ModuleID = '/llk/IR_all_yes/net/rds/bind.c_pt.bc'
source_filename = "../net/rds/bind.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.rhash_head = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@bind_hash_table = internal global { %struct.rhashtable, [60 x i8] } zeroinitializer, align 32
@ht_parms = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 768, i16 22, i16 980, i16 976, i32 16384, i16 1024, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rds_find_bound.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_find_bound\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/bind.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): returning rs %p for %pI6c:%u\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_remove_bound.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_remove_bound\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): rs %p unbinding from %pI6c:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@rds_bind._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rds_bind = private unnamed_addr constant [9 x i8] c"rds_bind\00", align 1
@rds_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rds_bind, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016RDS: %s could not find a transport for %pI6c, load rds_tcp or rds_rdma?\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_bind._entry_ptr = internal global ptr @rds_bind._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rds_add_bound.___done = internal global i8 0, section ".data.once", align 1
@rds_add_bound.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@rds_add_bound.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_add_bound\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): rs %p binding to %pI6c:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"bind_hash_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 42, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"ht_parms\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 44, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 87, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 154, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 258, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 594, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1019, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 124, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [18 x i8] c"../net/rds/bind.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 134, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @rds_bind._entry, ptr @rds_bind._entry_ptr, ptr @bind_hash_table, ptr @ht_parms, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rds_bind._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @rds_add_bound.___once_key, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bind_hash_table to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_parms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_bind._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_add_bound.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_find_bound(ptr noundef %addr, i16 noundef zeroext %port, i32 noundef %scope_id) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %key = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %key) #10
  %0 = getelementptr inbounds [22 x i8], ptr %key, i32 0, i32 16
  %1 = getelementptr inbounds [22 x i8], ptr %key, i32 0, i32 18
  %2 = call ptr @memcpy(ptr %key, ptr %addr, i32 16)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %port, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %scope_id, ptr %1, align 1
  %5 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call fastcc ptr @rhashtable_lookup(ptr noundef nonnull %key, [7 x i32] [i32 50331670, i32 64226256, i32 16384, i32 67108864, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %9 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %12 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false
  %14 = phi i32 [ %13, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i24 = add i32 %14, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %17, i32 %add.i.i.i24, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !78

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !78

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #10
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.not = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.then_crit_edge, label %refcount_inc_not_zero.exit.if.end_crit_edge

refcount_inc_not_zero.exit.if.end_crit_edge:      ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

refcount_inc_not_zero.exit.if.then_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %refcount_inc_not_zero.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %refcount_inc_not_zero.exit.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %rs.0 = phi ptr [ null, %if.then ], [ %call, %refcount_inc_not_zero.exit.if.end_crit_edge ], [ null, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i25 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.end
  %call1.i26 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %24 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i32 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_find_bound.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_find_bound, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !80

if.then10:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %port to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_find_bound.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %rs.0, ptr noundef %addr, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %key) #10
  ret ptr %rs.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #10
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bind_hash_table, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = load volatile ptr, ptr @bind_hash_table, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @bind_hash_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 594, ptr noundef nonnull @.str.11) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %4, %do.end12.i ], [ %32, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_rnd.i.i, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 7), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 1), align 4
  %call.i.i.i = call i32 %7(ptr noundef %key, i32 noundef %8, i32 noundef %6) #10
  %9 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %10, -1
  %and.i1.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !78

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i1.i.i) #10
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i1.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %13 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %13, 1
  %14 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %15 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i3.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 369, ptr noundef nonnull @.str.11) #10
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i.i5.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.not.i.i6.i = icmp eq i32 %and.i.i5.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i6.i, i32 %or.i.i.i, i32 %and.i.i5.i
  %18 = inttoptr i32 %cond.i.i.i to ptr
  %and.i15.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.i.not16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.i.not16.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.017.i = phi ptr [ %29, %for.inc.i.for.body.i_crit_edge ], [ %18, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %19 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 3), align 2
  %conv.i7.i = zext i16 %19 to i32
  %idx.neg.i8.i = sub nsw i32 0, %conv.i7.i
  %add.ptr.i9.i = getelementptr i8, ptr %he.017.i, i32 %idx.neg.i8.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %20 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %key_offset.i.i, align 4
  %conv.i10.i = zext i16 %23 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %add.ptr.i9.i, i32 %conv.i10.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %21, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %27 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i11.i, ptr %25, i32 %conv3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %he.017.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %he.017.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i = and i32 %30, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %18, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %29, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %14
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %31 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @bind_hash_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b901.i = load i1, ptr @__rhashtable_lookup.__warned.12, align 1
  br i1 %.b901.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 614, ptr noundef nonnull @.str.11) #10
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %32, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !78

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #10
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #10
  %tobool.not = icmp eq ptr %he.017.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 3), align 2
  %conv.i = zext i16 %33 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.017.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_remove_bound(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_remove_bound.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_remove_bound, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !80

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sin6_port, align 2
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_remove_bound.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %rs, ptr noundef %sin6_addr, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %rs_bound_node = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 3
  %10 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %do.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %do.end.rcu_read_lock.exit.i.i_crit_edge
  %14 = load volatile ptr, ptr @bind_hash_table, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @bind_hash_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1076, ptr noundef nonnull @.str.11) #10
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %rs_bound_node, i32 980
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %14, %do.end10.i.i ], [ %41, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %15 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i.i = zext i16 %15 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %call14.i.i.i.i.i.i = tail call fastcc i32 @jhash(ptr noundef %add.ptr.i.i.i.i, i32 noundef 22, i32 noundef %17) #10
  %18 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %19, -1
  %and.i1.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %call14.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i3.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !78

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i1.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 377, ptr noundef nonnull @.str.15) #10
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %22 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cond.i6.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i.i.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %25 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %25, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %26 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %rs_bound_node, %26
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %31, %rs_bound_node
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1032, ptr noundef nonnull @.str.15) #10
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %27 = ptrtoint ptr %rs_bound_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rs_bound_node, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  %29 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %28) #10
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %31, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %26, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1004, ptr noundef nonnull @.str.15) #10
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %30 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %he.022.i21.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8)) #10, !srcloc !84
  %34 = load i8, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 6), align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool161.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), align 4
  %36 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %37, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %35, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %38 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 5), align 4
  %conv.i11.i.i.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %37, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !86

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 5)) #10
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @bind_hash_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.14, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1085, ptr noundef nonnull @.str.11) #10
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %41, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %42 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i11.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @rds_sock_put(ptr noundef %rs) #10
  %46 = call ptr @memcpy(ptr %sin6_addr, ptr @in6addr_any, i32 16)
  br label %return

return:                                           ; preds = %rhashtable_remove_fast.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_sock_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_bind(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len) local_unnamed_addr #0 align 64 {
entry:
  %v6addr = alloca %struct.in6_addr, align 4
  %port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v6addr) #10
  %2 = getelementptr inbounds [4 x i32], ptr %v6addr, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %v6addr, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %v6addr, i32 0, i32 3
  %5 = call ptr @memset(ptr %v6addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.cleanup119_crit_edge, label %if.end

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.end.cleanup119_crit_edge [
    i16 2, label %if.then4
    i16 10, label %if.then27
  ]

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp5 = icmp ult i32 %addr_len, 16
  br i1 %cmp5, label %if.then4.cleanup119_crit_edge, label %lor.lhs.false

if.then4.cleanup119_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

lor.lhs.false:                                    ; preds = %if.then4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %9 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sin_addr, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %10, label %lor.lhs.false14 [
    i32 0, label %lor.lhs.false.cleanup119_crit_edge
    i32 -1, label %lor.lhs.false.cleanup119_crit_edge196
  ]

lor.lhs.false.cleanup119_crit_edge196:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

lor.lhs.false.cleanup119_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %and.i = and i32 %10, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %lor.lhs.false14.cleanup119_crit_edge, label %cleanup

lor.lhs.false14.cleanup119_crit_edge:             ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

cleanup:                                          ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %v6addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %v6addr, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65535, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %4, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  br label %if.end69

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %addr_len)
  %cmp28 = icmp ult i32 %addr_len, 28
  br i1 %cmp28, label %if.then27.cleanup119_crit_edge, label %if.end31

if.then27.cleanup119_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end31:                                         ; preds = %if.then27
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then33, label %if.end31.if.end52_crit_edge

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then33:                                        ; preds = %if.end31
  %and34 = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then33.cleanup119_crit_edge, label %if.end37

if.then33.cleanup119_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end37:                                         ; preds = %if.then33
  %arrayidx = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %17, label %lor.lhs.false44 [
    i32 0, label %if.end37.cleanup119_crit_edge
    i32 -1, label %if.end37.cleanup119_crit_edge197
  ]

if.end37.cleanup119_crit_edge197:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end37.cleanup119_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

lor.lhs.false44:                                  ; preds = %if.end37
  %and.i180 = and i32 %17, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i180)
  %cmp.i181 = icmp eq i32 %and.i180, -536870912
  br i1 %cmp.i181, label %lor.lhs.false44.cleanup119_crit_edge, label %lor.lhs.false44.if.end52_crit_edge

lor.lhs.false44.if.end52_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

lor.lhs.false44.cleanup119_crit_edge:             ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

if.end52:                                         ; preds = %lor.lhs.false44.if.end52_crit_edge, %if.end31.if.end52_crit_edge
  %and53 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.cleanup63_crit_edge, label %if.then55

if.end52.cleanup63_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.then55:                                        ; preds = %if.end52
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %19 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp56 = icmp eq i32 %20, 0
  br i1 %cmp56, label %if.then55.cleanup119_crit_edge, label %if.then55.cleanup63_crit_edge

if.then55.cleanup63_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup63

if.then55.cleanup119_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup119

cleanup63:                                        ; preds = %if.then55.cleanup63_crit_edge, %if.end52.cleanup63_crit_edge
  %scope_id.0 = phi i32 [ 0, %if.end52.cleanup63_crit_edge ], [ %20, %if.then55.cleanup63_crit_edge ]
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  br label %if.end69

if.end69:                                         ; preds = %cleanup63, %cleanup
  %storemerge.in = phi ptr [ %sin6_port, %cleanup63 ], [ %sin_port, %cleanup ]
  %binding_addr.2 = phi ptr [ %sin6_addr, %cleanup63 ], [ %v6addr, %cleanup ]
  %scope_id.2 = phi i32 [ %scope_id.0, %cleanup63 ], [ 0, %cleanup ]
  %21 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load2_noabort(i32 %21)
  %storemerge = load i16, ptr %storemerge.in, align 2
  %22 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %storemerge, ptr %port, align 2
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #10
  %sin6_addr70 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %sin6_addr70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sin6_addr70, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %26, %24
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %28
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i182 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i182, label %if.end73, label %if.end69.out_crit_edge

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end73:                                         ; preds = %if.end69
  %rs_conn_addr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %rs_conn_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rs_conn_addr, align 4
  %arrayidx2.i183 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx2.i183 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i183, align 4
  %or.i184 = or i32 %34, %32
  %arrayidx4.i185 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx4.i185 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i185, align 4
  %or5.i186 = or i32 %or.i184, %36
  %arrayidx7.i187 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx7.i187 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.i187, align 4
  %or8.i188 = or i32 %or5.i186, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i188)
  %cmp.i189 = icmp eq i32 %or8.i188, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope_id.2)
  %tobool75.not = icmp eq i32 %scope_id.2, 0
  %or.cond = select i1 %cmp.i189, i1 true, i1 %tobool75.not
  br i1 %or.cond, label %if.end73.if.end86_crit_edge, label %land.lhs.true76

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true76:                                  ; preds = %if.end73
  %sin6_scope_id78 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %39 = ptrtoint ptr %sin6_scope_id78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sin6_scope_id78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool79.not = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %scope_id.2, i32 %40)
  %cmp83.not = icmp eq i32 %scope_id.2, %40
  %or.cond178 = select i1 %tobool79.not, i1 true, i1 %cmp83.not
  br i1 %or.cond178, label %land.lhs.true76.if.end86_crit_edge, label %land.lhs.true76.out_crit_edge

land.lhs.true76.out_crit_edge:                    ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true76.if.end86_crit_edge, %if.end73.if.end86_crit_edge
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rs_transport, align 4
  %tobool87.not = icmp eq ptr %42, null
  br i1 %tobool87.not, label %if.else100, label %if.then88

if.then88:                                        ; preds = %if.end86
  %laddr_check = getelementptr inbounds %struct.rds_transport, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %laddr_check to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %laddr_check, align 4
  %tobool90.not = icmp eq ptr %44, null
  br i1 %tobool90.not, label %if.then88.out_crit_edge, label %lor.lhs.false91

if.then88.out_crit_edge:                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false91:                                  ; preds = %if.then88
  %45 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %skc_net.i, align 4
  %call95 = call i32 %44(ptr noundef %48, ptr noundef %binding_addr.2, i32 noundef %scope_id.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96.not = icmp eq i32 %call95, 0
  br i1 %cmp96.not, label %lor.lhs.false91.if.end113_crit_edge, label %lor.lhs.false91.out_crit_edge

lor.lhs.false91.out_crit_edge:                    ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false91.if.end113_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.else100:                                       ; preds = %if.end86
  %49 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk1, align 16
  %skc_net.i190 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %skc_net.i190 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skc_net.i190, align 4
  %call103 = call ptr @rds_trans_get_preferred(ptr noundef %52, ptr noundef %binding_addr.2, i32 noundef %scope_id.2) #10
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.then105, label %if.end111

if.then105:                                       ; preds = %if.else100
  %call106 = call i32 @___ratelimit(ptr noundef nonnull @rds_bind._rs, ptr noundef nonnull @__func__.rds_bind) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then105.out_crit_edge, label %do.end

if.then105.out_crit_edge:                         ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rds_bind, ptr noundef %binding_addr.2) #14
  br label %out

if.end111:                                        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %rs_transport to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call103, ptr %rs_transport, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.end111, %lor.lhs.false91.if.end113_crit_edge
  %54 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %or.i.i = or i32 %56, 8388608
  store i32 %or.i.i, ptr %54, align 4
  %call114 = call fastcc i32 @rds_add_bound(ptr noundef %1, ptr noundef %binding_addr.2, ptr noundef nonnull %port, i32 noundef %scope_id.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.out_crit_edge, label %if.then116

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %rs_transport to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rs_transport, align 4
  br label %out

out:                                              ; preds = %if.then116, %if.end113.out_crit_edge, %do.end, %if.then105.out_crit_edge, %lor.lhs.false91.out_crit_edge, %if.then88.out_crit_edge, %land.lhs.true76.out_crit_edge, %if.end69.out_crit_edge
  %ret.0 = phi i32 [ %call114, %if.then116 ], [ 0, %if.end113.out_crit_edge ], [ -99, %do.end ], [ -99, %if.then105.out_crit_edge ], [ -22, %if.end69.out_crit_edge ], [ -22, %land.lhs.true76.out_crit_edge ], [ -92, %lor.lhs.false91.out_crit_edge ], [ -92, %if.then88.out_crit_edge ]
  call void @release_sock(ptr noundef %1) #10
  br label %cleanup119

cleanup119:                                       ; preds = %out, %if.then55.cleanup119_crit_edge, %lor.lhs.false44.cleanup119_crit_edge, %if.end37.cleanup119_crit_edge, %if.end37.cleanup119_crit_edge197, %if.then33.cleanup119_crit_edge, %if.then27.cleanup119_crit_edge, %lor.lhs.false14.cleanup119_crit_edge, %lor.lhs.false.cleanup119_crit_edge, %lor.lhs.false.cleanup119_crit_edge196, %if.then4.cleanup119_crit_edge, %if.end.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.4 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup119_crit_edge ], [ -22, %if.end.cleanup119_crit_edge ], [ -22, %lor.lhs.false.cleanup119_crit_edge ], [ -22, %lor.lhs.false.cleanup119_crit_edge196 ], [ -22, %lor.lhs.false14.cleanup119_crit_edge ], [ -22, %if.then4.cleanup119_crit_edge ], [ -22, %if.then27.cleanup119_crit_edge ], [ -22, %lor.lhs.false44.cleanup119_crit_edge ], [ -22, %if.end37.cleanup119_crit_edge ], [ -22, %if.end37.cleanup119_crit_edge197 ], [ -22, %if.then33.cleanup119_crit_edge ], [ -22, %if.then55.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v6addr) #10
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_trans_get_preferred(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_add_bound(ptr noundef %rs, ptr noundef %addr, ptr nocapture noundef %port, i32 noundef %scope_id) unnamed_addr #0 align 64 {
entry:
  %key = alloca [22 x i8], align 1
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %key) #10
  %0 = getelementptr inbounds [22 x i8], ptr %key, i32 0, i32 16
  %1 = getelementptr inbounds [22 x i8], ptr %key, i32 0, i32 18
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %3, label %entry.if.end16_crit_edge [
    i16 0, label %if.else
    i16 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @prandom_u32() #10
  %conv7 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv7)
  %cmp9 = icmp ugt i32 %conv7, 2
  %phi.cast = trunc i32 %call to i16
  %cond = select i1 %cmp9, i16 %phi.cast, i16 2
  %sub = add i16 %cond, -1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %entry.if.end16_crit_edge
  %last.0 = phi i16 [ %sub, %if.else ], [ %3, %entry.if.end16_crit_edge ]
  %rover.0 = phi i16 [ %cond, %if.else ], [ %3, %entry.if.end16_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.cond81.do.body_crit_edge, %if.end16
  %rover.1 = phi i16 [ %rover.0, %if.end16 ], [ %inc82, %do.cond81.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rover.1)
  %cmp18 = icmp eq i16 %rover.1, 0
  %spec.select = select i1 %cmp18, i16 1, i16 %rover.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %spec.select)
  %cmp23 = icmp eq i16 %spec.select, 1
  br i1 %cmp23, label %do.body.do.cond81_crit_edge, label %if.end26

do.body.do.cond81_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond81

if.end26:                                         ; preds = %do.body
  %5 = call ptr @memcpy(ptr %key, ptr %addr, i32 16)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %spec.select, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %scope_id, ptr %1, align 1
  %8 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end26.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end26.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end26
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end26.rcu_read_lock.exit.i_crit_edge
  %call.i = call fastcc ptr @rhashtable_lookup(ptr noundef nonnull %key, [7 x i32] [i32 50331670, i32 64226256, i32 16384, i32 67108864, i32 0, i32 0, i32 0]) #10
  %call.i1.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i4.i.rhashtable_lookup_fast.exit_crit_edge, %rcu_read_lock.exit.i.rhashtable_lookup_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %12 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i8.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end30, label %rhashtable_lookup_fast.exit.do.cond81_crit_edge

rhashtable_lookup_fast.exit.do.cond81_crit_edge:  ; preds = %rhashtable_lookup_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond81

if.end30:                                         ; preds = %rhashtable_lookup_fast.exit
  %rs_bound_key = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %rs_bound_key, ptr %key, i32 22)
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %17 = call ptr @memcpy(ptr %sin6_addr, ptr %addr, i32 16)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @rds_add_bound.___once_key, ptr blockaddress(@rds_add_bound, %if.then38)) #10
          to label %if.end50 [label %if.then38], !srcloc !87

if.then38:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #10
  %18 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %___flags, align 4, !annotation !88
  %call39 = call zeroext i1 @__do_once_start(ptr noundef nonnull @rds_add_bound.___done, ptr noundef nonnull %___flags) #10
  br i1 %call39, label %if.then48, label %if.then38.if.end49_crit_edge, !prof !86

if.then38.if.end49_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then48:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %rs_hash_initval = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 28
  call void @get_random_bytes(ptr noundef %rs_hash_initval, i32 noundef 4) #10
  call void @__do_once_done(ptr noundef nonnull @rds_add_bound.___done, ptr noundef nonnull @rds_add_bound.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then38.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #10
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end30
  %sin6_port = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %spec.select, ptr %sin6_port, align 2
  %rs_bound_node = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 3
  %20 = ptrtoint ptr %rs_bound_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rs_bound_node, align 8
  call void @rds_sock_addref(ptr noundef %rs) #10
  %21 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.end50.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end50.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end50
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end50.rcu_read_lock.exit.i.i_crit_edge
  %25 = load volatile ptr, ptr @bind_hash_table, align 4
  %call.i.i133 = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @bind_hash_table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %call.i.i133, 0
  br i1 %tobool.not.i.i134, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i135, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i135:                             ; preds = %lor.lhs.false.i.i
  %call7.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i135.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i135.do.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i135
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i136

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i136:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 715, ptr noundef nonnull @.str.11) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i136, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i135.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %26 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i = zext i16 %26 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rs_bound_node, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 980
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call14.i.i.i.i.i = call fastcc i32 @jhash(ptr noundef %add.ptr.i.i.i, i32 noundef 22, i32 noundef %28) #10
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 128
  %sub.i.i.i.i.i = add i32 %30, -1
  %and.i1.i.i.i.i = and i32 %sub.i.i.i.i.i, %call14.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i4.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !78

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5.i.i = call ptr @rht_bucket_nested_insert(ptr noundef nonnull @bind_hash_table, ptr noundef %25, i32 noundef %and.i1.i.i.i.i) #10
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %25, i32 0, i32 8, i32 %and.i1.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %25, ptr noundef nonnull %cond.i8.i.i) #10
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %25, i32 0, i32 5
  %33 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %34, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !78

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %25, ptr noundef nonnull %cond.i8.i.i) #10
  %call.i10.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %35 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i17.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef nonnull @bind_hash_table, ptr noundef null, ptr noundef %rs_bound_node) #10
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %25, i32 noundef %and.i1.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 377, ptr noundef nonnull @.str.15) #10
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %39 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cond.i8.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %and.i.i.i.i = and i32 %41, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %42 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %42, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i60.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60.i.i)
  %tobool.i.not61.i.i = icmp eq i32 %and.i60.i.i, 0
  br i1 %tobool.i.not61.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %43 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.063.i.i = phi ptr [ %45, %do.end147.i.i.for.body.i.i_crit_edge ], [ %43, %for.body.preheader.i.i ]
  %elasticity.062.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.062.i.i, -1
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %25, i32 noundef %and.i1.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.23, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 732, ptr noundef nonnull @.str.15) #10
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %44 = ptrtoint ptr %head.063.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.063.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i.i.i = and i32 %46, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %call.i.i.i25.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), align 4
  %48 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %48)
  %cmp.i.not.i.i = icmp ult i32 %47, %48
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !78

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i26.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), align 4
  %50 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %25, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i27.i.i = icmp ugt i32 %49, %51
  br i1 %cmp.i27.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %52 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i28.i.i = icmp eq i32 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %52)
  %cmp4.i.i.i = icmp ult i32 %51, %52
  %spec.select.i.i.i = select i1 %tobool.not.i28.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !86

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i29.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %25, i32 noundef %and.i1.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %land.lhs.true.i33.i.i, label %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge

if.end171.i.i.rht_ptr.exit41.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit41.i.i

land.lhs.true.i33.i.i:                            ; preds = %if.end171.i.i
  %call1.i31.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i.i)
  %tobool2.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool2.not.i32.i.i, label %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, label %land.lhs.true3.i35.i.i

land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit41.i.i

land.lhs.true3.i35.i.i:                           ; preds = %land.lhs.true.i33.i.i
  %.b7.i34.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i34.i.i, label %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit41.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 377, ptr noundef nonnull @.str.15) #10
  br label %rht_ptr.exit41.i.i

rht_ptr.exit41.i.i:                               ; preds = %if.then.i36.i.i, %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge
  %53 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond.i8.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %and.i.i37.i.i = and i32 %55, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i.i)
  %tobool.not.i.i38.i.i = icmp eq i32 %and.i.i37.i.i, 0
  %cond.i.i40.i.i = select i1 %tobool.not.i.i38.i.i, i32 %or.i.i.i.i, i32 %and.i.i37.i.i
  %56 = inttoptr i32 %cond.i.i40.i.i to ptr
  %57 = ptrtoint ptr %rs_bound_node to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %rs_bound_node, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 1, i32 3, i32 1) #10
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8)) #10, !srcloc !89
  call fastcc void @rht_assign_unlock(ptr noundef %25, ptr noundef nonnull %cond.i8.i.i, ptr noundef %rs_bound_node) #10
  %call.i.i.i42.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), i32 noundef 4) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 8), align 4
  %60 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %25, align 128
  %div1.i.i.i = lshr i32 %61, 2
  %mul.i.i.i = mul nuw i32 %div1.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %mul.i.i.i)
  %cmp.i43.i.i = icmp ugt i32 %59, %mul.i.i.i
  br i1 %cmp.i43.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit41.i.i.out.i.i_crit_edge

rht_ptr.exit41.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit41.i.i
  %62 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i44.i.i = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %62)
  %cmp4.i45.i.i = icmp ult i32 %61, %62
  %spec.select.i46.i.i = select i1 %tobool.not.i44.i.i, i1 true, i1 %cmp4.i45.i.i
  br i1 %spec.select.i46.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %63 = load ptr, ptr @system_wq, align 4
  %call.i.i48.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @bind_hash_table, i32 0, i32 5)) #10
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit41.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit41.i.i.out.i.i_crit_edge ]
  %call.i49.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i49.i.i, label %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true.i52.i.i

out.i.i.rcu_read_unlock.exit59.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true.i52.i.i:                            ; preds = %out.i.i
  %call1.i50.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59.i.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit59.i.i

rcu_read_unlock.exit59.i.i:                       ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %64 = call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i.i56.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i58.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i58.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rht_unlock(ptr noundef %25, ptr noundef nonnull %cond.i8.i.i) #10
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit59.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit59.i.i ]
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.i, label %if.then59, label %if.else78

if.then59:                                        ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sin6_port, align 2
  %70 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %port, align 2
  %sin6_scope_id = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 4
  %71 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %scope_id, ptr %sin6_scope_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_add_bound.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_add_bound, %if.then75)) #10
          to label %cleanup [label %if.then75], !srcloc !80

if.then75:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %port, align 2
  %conv76 = zext i16 %73 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_add_bound.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %rs, ptr noundef %addr, i32 noundef %conv76) #10
  br label %cleanup

if.else78:                                        ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = call ptr @memcpy(ptr %sin6_addr, ptr @in6addr_any, i32 16)
  call void @rds_sock_put(ptr noundef %rs) #10
  br label %cleanup

do.cond81:                                        ; preds = %rhashtable_lookup_fast.exit.do.cond81_crit_edge, %do.body.do.cond81_crit_edge
  %inc82 = add i16 %spec.select, 1
  %cmp85.not = icmp eq i16 %spec.select, %last.0
  br i1 %cmp85.not, label %do.cond81.cleanup_crit_edge, label %do.cond81.do.body_crit_edge

do.cond81.do.body_crit_edge:                      ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond81.cleanup_crit_edge:                      ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.cond81.cleanup_crit_edge, %if.else78, %if.then75, %if.then59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.else78 ], [ 0, %if.then75 ], [ 0, %if.then59 ], [ -98, %do.cond81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_bind_lock_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rhashtable_destroy(ptr noundef nonnull @bind_hash_table) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_bind_lock_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rhashtable_init(ptr noundef nonnull @bind_hash_table, ptr noundef nonnull @ht_parms) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #10
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #10
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #10
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #10
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #10
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #10
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #10
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #10
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #10
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #10
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #10
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #10
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #10
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !91

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !92
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !78

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %7 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !96
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !66) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !86

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !100
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %3 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %2 = tail call i32 @llvm.read_register.i32(metadata !66) #10
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
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_sock_addref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !62, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/bind.c", i32 87, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_find_bound.__UNIQUE_ID_ddebug544, !1, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/bind.c", i32 154, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_remove_bound.__UNIQUE_ID_ddebug548, !7, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/bind.c", i32 258, i32 4}
!12 = !{ptr @rds_bind._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.rds_bind, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_bind._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @rds_bind._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @bind_hash_table, !18, !"bind_hash_table", i1 false, i1 false}
!18 = !{!"../net/rds/bind.c", i32 42, i32 26}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!31 = !{ptr @ht_parms, !32, !"ht_parms", i1 false, i1 false}
!32 = !{!"../net/rds/bind.c", i32 44, i32 39}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!53 = !{ptr @rds_add_bound.___done, !54, !"___done", i1 false, i1 false}
!54 = !{!"../net/rds/bind.c", i32 124, i32 3}
!55 = !{ptr @rds_add_bound.___once_key, !54, !"___once_key", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/rds/bind.c", i32 134, i32 4}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rds_add_bound.__UNIQUE_ID_ddebug547, !57, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2149351837}
!77 = !{i64 699395, i64 699419, i64 699440, i64 699457, i64 699474}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2149352103}
!80 = !{i64 2148697474, i64 2148697479, i64 2148697492, i64 2148697536, i64 2148697570, i64 2148697591}
!81 = !{i64 2158073976}
!82 = !{i64 2158077410}
!83 = !{i64 2158141352}
!84 = !{i64 2148218124, i64 2148218150, i64 2148218179, i64 2148218213, i64 2148218244, i64 2148218267}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2148697877, i64 2148697882, i64 2148697903, i64 2148697947, i64 2148697981, i64 2148698002}
!88 = !{!"auto-init"}
!89 = !{i64 2148215659, i64 2148215685, i64 2148215714, i64 2148215748, i64 2148215779, i64 2148215802}
!90 = !{i64 2153390279}
!91 = !{!"branch_weights", i32 2146410443, i32 1073205}
!92 = !{i64 2148224517, i64 2148224549, i64 2148224578, i64 2148224612, i64 2148224643, i64 2148224666}
!93 = !{i64 2148313598}
!94 = !{i64 2153390439}
!95 = !{i64 2153390716}
!96 = !{i64 2153390558}
!97 = !{i64 2153390921}
!98 = !{i64 2153391984, i64 2153392476, i64 2153392021, i64 2153392077, i64 2153392111, i64 2153392135, i64 2153392176, i64 2153392197, i64 2153392225, i64 2153392259}
!99 = !{i64 2148312485}
!100 = !{i64 2148222904, i64 2148222936, i64 2148222965, i64 2148222999, i64 2148223030, i64 2148223053}
!101 = !{i64 2153393379}
!102 = !{i64 2158067049}
!103 = !{i64 2158069348}
