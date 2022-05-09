; ModuleID = '/llk/IR_all_yes/net/rds/ib_rdma.c_pt.bc'
source_filename = "../net/rds/ib_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rds_ib_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%union.anon.126 = type { i32 }
%struct.rds_ib_ipaddr = type { %struct.list_head, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.180, i32 }
%union.anon.180 = type { ptr }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rds_ib_mr_pool = type { i32, %struct.mutex, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.llist_head, %struct.llist_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i32, i32, i32, i32 }
%struct.llist_head = type { ptr }
%struct.rds_info_rdma_connection = type { i32, i32, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.rds6_info_rdma_connection = type { %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.rds_ib_mr = type { %struct.delayed_work, ptr, ptr, ptr, %struct.llist_node, %struct.list_head, i32, ptr, i32, i32, i8, %union.anon.182 }
%struct.llist_node = type { ptr }
%union.anon.182 = type { %struct.rds_ib_frmr }
%struct.rds_ib_frmr = type { ptr, i32, i8, %struct.wait_queue_head, i8, %struct.wait_queue_head, %struct.ib_send_wr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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

@ib_nodev_conns_lock = external dso_local global %struct.spinlock, align 4
@ib_nodev_conns = external dso_local global %struct.list_head, align 4
@rds_ib_stats = external dso_local global %struct.rds_ib_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/ib_rdma.c\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_free_mr.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_ib_free_mr\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): RDS/IB: free_mr nents %u\0A\00", [32 x i8] zeroinitializer }, align 32
@rds_ib_free_mr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&ibmr->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@rds_ib_free_mr.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&ibmr->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@rds_ib_mr_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_ib_devices_lock = external dso_local global %struct.rw_semaphore, align 4
@rds_ib_devices = external dso_local global %struct.list_head, align 4
@rds_ib_get_mr.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_ib_get_mr\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): rds_ib_get_user_mr returned %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rds_ib_get_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014RDS/IB: rds_ib_get_mr failed (errno=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_ib_get_mr._entry_ptr = internal global ptr @rds_ib_get_mr._entry, section ".printk_index", align 4
@rds_ib_create_mr_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pool->clean_lock\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_create_mr_pool.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pool->flush_lock\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_create_mr_pool.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pool->flush_wait\00", [46 x i8] zeroinitializer }, align 32
@rds_ib_create_mr_pool.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&pool->flush_worker)->work)\00", [48 x i8] zeroinitializer }, align 32
@rds_ib_create_mr_pool.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&pool->flush_worker)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_mr_flushd\00", [18 x i8] zeroinitializer }, align 32
@rds_ib_get_device.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rds_ib_get_device.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rds_ib_remove_ipaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 258, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 490, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 497, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"rds_ib_mr_wq\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 42, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 584, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 622, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 656, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 657, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 658, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 659, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 679, i32 33 }
@___asan_gen_.99 = private constant [21 x i8] c"../net/rds/ib_rdma.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 56, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 695, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 723, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 717, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @rds_ib_get_mr._entry, ptr @rds_ib_get_mr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rds_ib_free_mr.__key, ptr @.str.4, ptr @rds_ib_free_mr.__key.5, ptr @.str.6, ptr @rds_ib_mr_wq, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rds_ib_create_mr_pool.__key, ptr @.str.10, ptr @rds_ib_create_mr_pool.__key.11, ptr @.str.12, ptr @rds_ib_create_mr_pool.__key.13, ptr @.str.14, ptr @rds_ib_create_mr_pool.__key.15, ptr @.str.16, ptr @rds_ib_create_mr_pool.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_free_mr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_free_mr.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_mr_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_get_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_create_mr_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_create_mr_pool.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_create_mr_pool.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_create_mr_pool.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_create_mr_pool.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_update_ipaddr(ptr noundef %rds_ibdev, ptr nocapture noundef readonly %ipaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr %ipaddr, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call fastcc ptr @rds_ib_get_device(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 20) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %ipaddr1.i = getelementptr inbounds %struct.rds_ib_ipaddr, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %ipaddr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %ipaddr1.i, align 8
  %spinlock.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %spinlock.i) #10
  %ipaddr_list.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %7, ptr noundef %ipaddr_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail_rcu.exit.i_crit_edge

if.end.i.list_add_tail_rcu.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ipaddr_list.i, ptr %call7.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %7, align 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i.i, %if.end.i.list_add_tail_rcu.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %spinlock.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %call, %rds_ibdev
  br i1 %cmp.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %spinlock.i20 = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %spinlock.i20) #10
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i, label %if.then4.do.end.i_crit_edge

if.then4.do.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b46.i = load i1, ptr @rds_ib_remove_ipaddr.__warned, align 1
  br i1 %.b46.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rds_ib_remove_ipaddr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @.str.20) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then4.do.end.i_crit_edge
  %ipaddr_list.i22 = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %i_ipaddr.0.in.i = phi ptr [ %ipaddr_list.i22, %do.end.i ], [ %i_ipaddr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %i_ipaddr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %i_ipaddr.0.i = load volatile ptr, ptr %i_ipaddr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %i_ipaddr.0.i, %ipaddr_list.i22
  br i1 %cmp.not.i, label %for.end.thread.i, label %for.body.i

for.end.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %spinlock.i20) #10
  br label %rds_ib_remove_ipaddr.exit

for.body.i:                                       ; preds = %for.cond.i
  %ipaddr10.i = getelementptr inbounds %struct.rds_ib_ipaddr, ptr %i_ipaddr.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %ipaddr10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ipaddr10.i, align 4
  %cmp11.i = icmp eq i32 %16, %13
  br i1 %cmp11.i, label %if.then12.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then12.i:                                      ; preds = %for.body.i
  %call.i.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_ipaddr.0.i) #10
  br i1 %call.i.i.i23, label %if.end.i.i.i24, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.i.i24:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i_ipaddr.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %i_ipaddr.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_ipaddr.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.i.i24, %if.then12.i.for.end.i_crit_edge
  %prev.i.i25 = getelementptr inbounds %struct.list_head, ptr %i_ipaddr.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i25, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %spinlock.i20) #10
  %tobool25.not.i = icmp eq ptr %i_ipaddr.0.i, null
  br i1 %tobool25.not.i, label %for.end.i.rds_ib_remove_ipaddr.exit_crit_edge, label %do.end32.i

for.end.i.rds_ib_remove_ipaddr.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rds_ib_remove_ipaddr.exit

do.end32.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcu.i = getelementptr inbounds %struct.rds_ib_ipaddr, ptr %i_ipaddr.0.i, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 12 to ptr)) #10
  br label %rds_ib_remove_ipaddr.exit

rds_ib_remove_ipaddr.exit:                        ; preds = %do.end32.i, %for.end.i.rds_ib_remove_ipaddr.exit_crit_edge, %for.end.thread.i
  tail call void @rds_ib_dev_put(ptr noundef nonnull %call) #10
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 20) #13
  %tobool.not.i27 = icmp eq ptr %call7.i.i26, null
  br i1 %tobool.not.i27, label %rds_ib_remove_ipaddr.exit.cleanup_crit_edge, label %if.end.i33

rds_ib_remove_ipaddr.exit.cleanup_crit_edge:      ; preds = %rds_ib_remove_ipaddr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i33:                                       ; preds = %rds_ib_remove_ipaddr.exit
  %ipaddr1.i28 = getelementptr inbounds %struct.rds_ib_ipaddr, ptr %call7.i.i26, i32 0, i32 1
  %27 = ptrtoint ptr %ipaddr1.i28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %ipaddr1.i28, align 8
  %spinlock.i29 = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %spinlock.i29) #10
  %ipaddr_list.i30 = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 1
  %prev.i.i31 = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i31, align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i26, ptr noundef %29, ptr noundef %ipaddr_list.i30) #10
  br i1 %call.i.i.i32, label %if.end.i.i.i35, label %if.end.i33.list_add_tail_rcu.exit.i36_crit_edge

if.end.i33.list_add_tail_rcu.exit.i36_crit_edge:  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit.i36

if.end.i.i.i35:                                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call7.i.i26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ipaddr_list.i30, ptr %call7.i.i26, align 8
  %prev2.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %call7.i.i26, i32 0, i32 1
  %31 = ptrtoint ptr %prev2.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev2.i.i.i34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i26, ptr %29, align 4
  %33 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i26, ptr %prev.i.i31, align 4
  br label %list_add_tail_rcu.exit.i36

list_add_tail_rcu.exit.i36:                       ; preds = %if.end.i.i.i35, %if.end.i33.list_add_tail_rcu.exit.i36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %spinlock.i29) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rds_ib_dev_put(ptr noundef nonnull %rds_ibdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %list_add_tail_rcu.exit.i36, %rds_ib_remove_ipaddr.exit.cleanup_crit_edge, %list_add_tail_rcu.exit.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %list_add_tail_rcu.exit.i ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %list_add_tail_rcu.exit.i36 ], [ -12, %rds_ib_remove_ipaddr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_ib_get_device(i32 noundef %ipaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b67 = load i1, ptr @rds_ib_get_device.__warned, align 1
  br i1 %.b67, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rds_ib_get_device.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.20) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_devices to i32))
  %rds_ibdev.090 = load volatile ptr, ptr @rds_ib_devices, align 4
  %cmp.not91 = icmp eq ptr %rds_ibdev.090, @rds_ib_devices
  br i1 %cmp.not91, label %do.end.for.end56_crit_edge, label %do.end.do.body9_crit_edge

do.end.do.body9_crit_edge:                        ; preds = %do.end
  br label %do.body9

do.end.for.end56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end56

for.cond.loopexit:                                ; preds = %for.cond28
  %4 = ptrtoint ptr %rds_ibdev.092 to i32
  call void @__asan_load4_noabort(i32 %4)
  %rds_ibdev.0 = load volatile ptr, ptr %rds_ibdev.092, align 4
  %cmp.not = icmp eq ptr %rds_ibdev.0, @rds_ib_devices
  br i1 %cmp.not, label %for.cond.loopexit.for.end56_crit_edge, label %for.cond.loopexit.do.body9_crit_edge

for.cond.loopexit.do.body9_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

for.cond.loopexit.for.end56_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end56

do.body9:                                         ; preds = %for.cond.loopexit.do.body9_crit_edge, %do.end.do.body9_crit_edge
  %rds_ibdev.092 = phi ptr [ %rds_ibdev.0, %for.cond.loopexit.do.body9_crit_edge ], [ %rds_ibdev.090, %do.end.do.body9_crit_edge ]
  %call10 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %do.body9.do.end20_crit_edge

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

land.lhs.true12:                                  ; preds = %do.body9
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true12.do.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %.b6566 = load i1, ptr @rds_ib_get_device.__warned.21, align 1
  br i1 %.b6566, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rds_ib_get_device.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.20) #10
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true12.do.end20_crit_edge, %do.body9.do.end20_crit_edge
  %ipaddr_list = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev.092, i32 0, i32 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.body32.for.cond28_crit_edge, %do.end20
  %i_ipaddr.0.in = phi ptr [ %ipaddr_list, %do.end20 ], [ %i_ipaddr.0, %for.body32.for.cond28_crit_edge ]
  %5 = ptrtoint ptr %i_ipaddr.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %i_ipaddr.0 = load volatile ptr, ptr %i_ipaddr.0.in, align 4
  %cmp31.not = icmp eq ptr %i_ipaddr.0, %ipaddr_list
  br i1 %cmp31.not, label %for.cond.loopexit, label %for.body32

for.body32:                                       ; preds = %for.cond28
  %ipaddr33 = getelementptr inbounds %struct.rds_ib_ipaddr, ptr %i_ipaddr.0, i32 0, i32 1
  %6 = ptrtoint ptr %ipaddr33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipaddr33, align 4
  %cmp34 = icmp eq i32 %7, %ipaddr
  br i1 %cmp34, label %if.then35, label %for.body32.for.cond28_crit_edge

for.body32.for.cond28_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond28

if.then35:                                        ; preds = %for.body32
  %refcount = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev.092, i32 0, i32 16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then35.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !67

if.then35.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then35
  %add.i.i.i68 = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i68, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then35.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then35.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i69, label %refcount_inc.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i72

refcount_inc.exit.rcu_read_unlock.exit_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i72:                                ; preds = %refcount_inc.exit
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, %refcount_inc.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  br label %cleanup

for.end56:                                        ; preds = %for.cond.loopexit.for.end56_crit_edge, %do.end.for.end56_crit_edge
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i78, label %for.end56.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true.i81

for.end56.rcu_read_unlock.exit88_crit_edge:       ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit88

land.lhs.true.i81:                                ; preds = %for.end56
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit88

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit88

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_unlock.exit88

rcu_read_unlock.exit88:                           ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, %for.end56.rcu_read_unlock.exit88_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit88, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %rds_ibdev.092, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit88 ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i85 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i87 = add i32 %13, -1
  store volatile i32 %sub.i.i.i87, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_add_conn(ptr noundef %rds_ibdev, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ib_nodev_conns_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ib_nodev_conns to i32))
  %4 = load volatile ptr, ptr @ib_nodev_conns, align 4
  %cmp.i.not = icmp eq ptr %4, @ib_nodev_conns
  br i1 %cmp.i.not, label %do.body3, label %do.body9, !prof !67

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #10, !srcloc !70
  unreachable

do.body9:                                         ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %3, align 4
  %cmp.i39.not = icmp eq ptr %6, %3
  br i1 %cmp.i39.not, label %do.body19, label %do.end27, !prof !67

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end27:                                         ; preds = %do.body9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end27.list_del.exit_crit_edge

do.end27.list_del.exit_crit_edge:                 ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end27.list_del.exit_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %spinlock = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #10
  %conn_list = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 2
  %prev.i41 = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i41, align 4
  %call.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %16, ptr noundef %conn_list) #10
  br i1 %call.i.i42, label %if.end.i.i43, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i43:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %prev.i41, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %conn_list, ptr %3, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %3, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i43, %list_del.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @ib_nodev_conns_lock) #10
  %rds_ibdev31 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %rds_ibdev31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rds_ibdev, ptr %rds_ibdev31, align 8
  %refcount = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !66
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !67

list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %list_add_tail.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_remove_conn(ptr noundef %rds_ibdev, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ib_nodev_conns_lock) #10
  %spinlock = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %spinlock) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %5, %3
  br i1 %cmp.i.not, label %do.body3, label %do.end8, !prof !67

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #10, !srcloc !72
  unreachable

do.end8:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end8.list_del.exit_crit_edge

do.end8.list_del.exit_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end8.list_del.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %spinlock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1), align 4
  %call.i.i18 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %14, ptr noundef nonnull @ib_nodev_conns) #10
  br i1 %call.i.i18, label %if.end.i.i19, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i19:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1) to i32))
  store ptr %3, ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ib_nodev_conns, ptr %3, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i19, %list_del.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ib_nodev_conns_lock) #10
  %rds_ibdev12 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %rds_ibdev12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rds_ibdev12, align 8
  tail call void @rds_ib_dev_put(ptr noundef %rds_ibdev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_destroy_nodev_conns() local_unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @ib_nodev_conns_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ib_nodev_conns to i32))
  %3 = load volatile ptr, ptr @ib_nodev_conns, align 4
  %cmp.i.not.i = icmp eq ptr %3, @ib_nodev_conns
  br i1 %cmp.i.not.i, label %entry.list_splice.exit_crit_edge, label %if.then.i

entry.list_splice.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmp_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  store ptr %3, ptr %tmp_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %entry.list_splice.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @ib_nodev_conns_lock) #10
  %10 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmp_list, align 4
  %cmp.not15 = icmp eq ptr %11, %tmp_list
  br i1 %cmp.not15, label %list_splice.exit.for.end_crit_edge, label %list_splice.exit.for.body_crit_edge

list_splice.exit.for.body_crit_edge:              ; preds = %list_splice.exit
  br label %for.body

list_splice.exit.for.end_crit_edge:               ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice.exit.for.body_crit_edge
  %ic.016 = phi ptr [ %_ic.0, %for.body.for.body_crit_edge ], [ %11, %list_splice.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %ic.016 to i32
  call void @__asan_load4_noabort(i32 %12)
  %_ic.0 = load ptr, ptr %ic.016, align 8
  %conn = getelementptr inbounds %struct.rds_ib_connection, ptr %ic.016, i32 0, i32 2
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 4
  call void @rds_conn_destroy(ptr noundef %14) #10
  %cmp.not = icmp eq ptr %_ic.0, %tmp_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rds_ib_get_mr_info(ptr nocapture noundef readonly %rds_ibdev, ptr nocapture noundef writeonly %iinfo) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_1m_pool = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 7
  %0 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_1m_pool, align 4
  %max_items = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_items, align 4
  %rdma_mr_max = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %iinfo, i32 0, i32 7
  %4 = ptrtoint ptr %rdma_mr_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rdma_mr_max, align 4
  %max_pages = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_pages, align 4
  %rdma_mr_size = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %iinfo, i32 0, i32 8
  %7 = ptrtoint ptr %rdma_mr_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rdma_mr_size, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rds6_ib_get_mr_info(ptr nocapture noundef readonly %rds_ibdev, ptr nocapture noundef writeonly %iinfo6) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_1m_pool = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 7
  %0 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_1m_pool, align 4
  %max_items = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_items, align 4
  %rdma_mr_max = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %iinfo6, i32 0, i32 7
  %4 = ptrtoint ptr %rdma_mr_max to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rdma_mr_max, align 4
  %max_pages = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_pages, align 4
  %rdma_mr_size = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %iinfo6, i32 0, i32 8
  %7 = ptrtoint ptr %rdma_mr_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rdma_mr_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_reuse_mr(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clean_lock = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %clean_lock) #10
  %clean_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 7
  %call5 = tail call ptr @llist_del_first(ptr noundef %clean_list) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %clean_lock, i32 noundef %call2) #10
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %if.then

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call5, i32 -112
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !54) #10
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
  %add = add i32 %11, ptrtoint (ptr @rds_ib_stats to i32)
  %12 = inttoptr i32 %add to ptr
  br i1 %cmp8, label %do.body12, label %do.body28

do.body12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_8k_reused = getelementptr inbounds %struct.rds_ib_statistics, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %s_ib_rdma_mr_8k_reused to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %s_ib_rdma_mr_8k_reused, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %s_ib_rdma_mr_8k_reused, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  br label %if.end49.sink.split

do.body28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_1m_reused = getelementptr inbounds %struct.rds_ib_statistics, ptr %12, i32 0, i32 36
  %15 = ptrtoint ptr %s_ib_rdma_mr_1m_reused to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_ib_rdma_mr_1m_reused, align 8
  %inc43 = add i64 %16, 1
  store i64 %inc43, ptr %s_ib_rdma_mr_1m_reused, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %do.body28, %do.body12
  %17 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i59 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i59 to ptr
  %preempt_count.i.i60 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i60, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i60, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry.if.end49_crit_edge
  %ibmr.0 = phi ptr [ null, %entry.if.end49_crit_edge ], [ %add.ptr, %if.end49.sink.split ]
  ret ptr %ibmr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_del_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_sync_mr(ptr nocapture noundef readonly %trans_private, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %odp = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 10
  %2 = ptrtoint ptr %odp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %odp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %sg_dma_len = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 9
  %6 = ptrtoint ptr %sg_dma_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_dma_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %sw.bb.cleanup_crit_edge, label %for.body.i.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.preheader:                             ; preds = %sw.bb
  %sg = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 7
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %sg.02.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %9, %for.body.i.preheader ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length.i, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %15, i32 noundef %11, i32 noundef %13, i32 noundef 0) #10
  %inc.i = add nuw i32 %i.03.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.02.i) #10
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %dev2 = getelementptr inbounds %struct.rds_ib_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %sg_dma_len4 = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 9
  %18 = ptrtoint ptr %sg_dma_len4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_dma_len4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i12 = icmp eq i32 %19, 0
  br i1 %cmp1.not.i12, label %sw.bb1.cleanup_crit_edge, label %for.body.i20.preheader

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i20.preheader:                           ; preds = %sw.bb1
  %sg3 = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 7
  %20 = ptrtoint ptr %sg3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg3, align 8
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20.for.body.i20_crit_edge, %for.body.i20.preheader
  %i.03.i13 = phi i32 [ %inc.i17, %for.body.i20.for.body.i20_crit_edge ], [ 0, %for.body.i20.preheader ]
  %sg.02.i14 = phi ptr [ %call.i18, %for.body.i20.for.body.i20_crit_edge ], [ %21, %for.body.i20.preheader ]
  %dma_address.i15 = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i14, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address.i15, align 4
  %dma_length.i16 = getelementptr inbounds %struct.scatterlist, ptr %sg.02.i14, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length.i16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %27, i32 noundef %23, i32 noundef %25, i32 noundef 0) #10
  %inc.i17 = add nuw i32 %i.03.i13, 1
  %call.i18 = tail call ptr @sg_next(ptr noundef %sg.02.i14) #10
  %exitcond.not.i19 = icmp eq i32 %inc.i17, %19
  br i1 %exitcond.not.i19, label %for.body.i20.cleanup_crit_edge, label %for.body.i20.for.body.i20_crit_edge

for.body.i20.for.body.i20_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20

for.body.i20.cleanup_crit_edge:                   ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i20.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rds_ib_teardown_mr(ptr nocapture noundef %ibmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_dma_len = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 9
  %0 = ptrtoint ptr %sg_dma_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_dma_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 7
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 8
  %sg_len = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 8
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %7, i32 noundef %9, i32 noundef 0, i32 noundef 0) #10
  %12 = ptrtoint ptr %sg_dma_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sg_dma_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sg_len2 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 8
  %13 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.end.if.end48_crit_edge, label %for.cond.preheader

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.cond.preheader:                               ; preds = %if.end
  %15 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp66.not = icmp eq i32 %16, 0
  br i1 %cmp66.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sg6 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %sg6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg6, align 8
  %arrayidx = getelementptr %struct.scatterlist, ptr %18, i32 %i.067
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !68

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %20, -4
  %21 = inttoptr i32 %and.i to ptr
  %mapping = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping, align 4
  %tobool7.not = icmp eq ptr %23, null
  br i1 %tobool7.not, label %land.rhs, label %sg_page.exit.if.end36_crit_edge

sg_page.exit.if.end36_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.rhs:                                         ; preds = %sg_page.exit
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %and.i64 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool18.not = icmp eq i32 %and.i64, 0
  br i1 %tobool18.not, label %land.rhs.if.end36_crit_edge, label %do.end30, !prof !68

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end30:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %land.rhs.if.end36_crit_edge, %sg_page.exit.if.end36_crit_edge
  %call44 = tail call zeroext i1 @set_page_dirty(ptr noundef %21) #10
  %25 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i65 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i, label %if.end36._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !68

if.end36._compound_head.exit.i_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %27, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end36._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %21, %if.end36._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !67

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.25) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__rds_ib_teardown_mr, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !81

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %.pre-phi) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.067, 1
  %31 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sg_len2, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sg45 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 7
  %33 = ptrtoint ptr %sg45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg45, align 8
  tail call void @kfree(ptr noundef %34) #10
  %35 = ptrtoint ptr %sg45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sg45, align 8
  %36 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %sg_len2, align 4
  br label %if.end48

if.end48:                                         ; preds = %for.end, %if.end.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_teardown_mr(ptr nocapture noundef %ibmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_len = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 8
  %0 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_len, align 4
  tail call void @__rds_ib_teardown_mr(ptr noundef %ibmr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pool1 = getelementptr inbounds %struct.rds_ib_mr, ptr %ibmr, i32 0, i32 2
  %2 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool1, align 8
  %free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %3, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_pinned, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_pinned, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_pinned, ptr %free_pinned, i32 %1, ptr elementtype(i32) %free_pinned) #10, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_flush_mr_pool(ptr noundef %pool, i32 noundef %free_all, ptr noundef writeonly %ibmr_ret) local_unnamed_addr #0 align 64 {
entry:
  %clean_nodes = alloca ptr, align 4
  %unmap_list = alloca %struct.list_head, align 4
  %unpinned = alloca i32, align 4
  %nfreed = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clean_nodes)
  %0 = ptrtoint ptr %clean_nodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clean_nodes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unmap_list) #10
  %1 = getelementptr inbounds %struct.list_head, ptr %unmap_list, i32 0, i32 1
  %2 = ptrtoint ptr %unmap_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %unmap_list, ptr %unmap_list, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %unmap_list, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unpinned) #10
  %4 = ptrtoint ptr %unpinned to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %unpinned, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nfreed) #10
  %5 = ptrtoint ptr %nfreed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nfreed, align 4
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %8 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10
  %12 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, ptrtoint (ptr @rds_ib_stats to i32)
  %18 = inttoptr i32 %add to ptr
  br i1 %cmp, label %do.body1, label %do.body13

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_8k_pool_flush = getelementptr inbounds %struct.rds_ib_statistics, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %s_ib_rdma_mr_8k_pool_flush to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %s_ib_rdma_mr_8k_pool_flush, align 8
  %inc = add i64 %20, 1
  store i64 %inc, ptr %s_ib_rdma_mr_8k_pool_flush, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  br label %if.end

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_1m_pool_flush = getelementptr inbounds %struct.rds_ib_statistics, ptr %18, i32 0, i32 32
  %21 = ptrtoint ptr %s_ib_rdma_mr_1m_pool_flush to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %s_ib_rdma_mr_1m_pool_flush, align 8
  %inc28 = add i64 %22, 1
  store i64 %inc28, ptr %s_ib_rdma_mr_1m_pool_flush, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %do.body13, %do.body1
  %23 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i180 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i180 to ptr
  %preempt_count.i.i181 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i181 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i181, align 4
  %sub.i182 = add i32 %26, -1
  store volatile i32 %sub.i182, ptr %preempt_count.i.i181, align 4
  %tobool.not = icmp eq ptr %ibmr_ret, null
  br i1 %tobool.not, label %if.end59.thread, label %if.then34

if.then34:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %30 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %wait, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i186 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i186 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %27, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @autoremove_wake_function, ptr %28, align 4
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %29, ptr %29, align 4
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %29, ptr %30, align 4
  %flush_lock = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 1
  %flush_wait47 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 8
  %clean_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %if.end50.while.cond_crit_edge, %if.then34
  %call41 = call i32 @mutex_trylock(ptr noundef %flush_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %while.body, label %if.then61

while.body:                                       ; preds = %while.cond
  %call43 = call ptr @rds_ib_reuse_mr(ptr noundef %pool)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end46, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end46:                                         ; preds = %while.body
  call void @prepare_to_wait(ptr noundef %flush_wait47, ptr noundef nonnull %wait, i32 noundef 2) #10
  %40 = ptrtoint ptr %clean_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %clean_list, align 4
  %cmp.i = icmp eq ptr %41, null
  br i1 %cmp.i, label %if.then49, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %call51 = call ptr @rds_ib_reuse_mr(ptr noundef %pool)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end50.while.cond_crit_edge, label %if.end50.cleanup.thread_crit_edge

if.end50.cleanup.thread_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end50.while.cond_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.thread:                                   ; preds = %if.end50.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %call43.lcssa.sink = phi ptr [ %call43, %while.body.cleanup.thread_crit_edge ], [ %call51, %if.end50.cleanup.thread_crit_edge ]
  %42 = ptrtoint ptr %ibmr_ret to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call43.lcssa.sink, ptr %ibmr_ret, align 4
  call void @finish_wait(ptr noundef %flush_wait47, ptr noundef nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  br label %cleanup129

if.end59.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flush_lock58 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %flush_lock58, i32 noundef 0) #10
  br label %if.end66

if.then61:                                        ; preds = %while.cond
  call void @finish_wait(ptr noundef %flush_wait47, ptr noundef nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  %call62 = call ptr @rds_ib_reuse_mr(ptr noundef %pool)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then61.if.end66_crit_edge, label %if.then64

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ibmr_ret to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call62, ptr %ibmr_ret, align 4
  br label %out

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end59.thread
  %drop_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %drop_list, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @llvm.prefetch.p0(ptr %drop_list, i32 1, i32 3, i32 1) #10
  %44 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %drop_list) #10, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not6.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not6.i, label %if.end66.llist_append_to_list.exit_crit_edge, label %while.body.lr.ph.i

if.end66.llist_append_to_list.exit_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit

while.body.lr.ph.i:                               ; preds = %if.end66
  %45 = inttoptr i32 %asmresult.i.i.i to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.08.i = phi ptr [ %45, %while.body.lr.ph.i ], [ %47, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %count.07.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %46 = ptrtoint ptr %node.08.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node.08.i, align 4
  %unmap_list.i = getelementptr i8, ptr %node.08.i, i32 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i5.i = call zeroext i1 @__list_add_valid(ptr noundef %unmap_list.i, ptr noundef %49, ptr noundef nonnull %unmap_list) #10
  br i1 %call.i.i5.i, label %if.end.i.i.i, label %while.body.i.list_add_tail.exit.i_crit_edge

while.body.i.list_add_tail.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %unmap_list.i, ptr %1, align 4
  %51 = ptrtoint ptr %unmap_list.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %unmap_list, ptr %unmap_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %node.08.i, i32 8
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %unmap_list.i, ptr %49, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add i32 %count.07.i, 1
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %list_add_tail.exit.i.llist_append_to_list.exit_crit_edge, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_add_tail.exit.i.llist_append_to_list.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit

llist_append_to_list.exit:                        ; preds = %list_add_tail.exit.i.llist_append_to_list.exit_crit_edge, %if.end66.llist_append_to_list.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end66.llist_append_to_list.exit_crit_edge ], [ %inc.i, %list_add_tail.exit.i.llist_append_to_list.exit_crit_edge ]
  %free_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 6
  %call.i.i.i187 = call zeroext i1 @__kasan_check_write(ptr noundef %free_list, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @llvm.prefetch.p0(ptr %free_list, i32 1, i32 3, i32 1) #10
  %54 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %free_list) #10, !srcloc !86
  %asmresult.i.i.i188 = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i188)
  %tobool.not6.i189 = icmp eq i32 %asmresult.i.i.i188, 0
  br i1 %tobool.not6.i189, label %llist_append_to_list.exit.llist_append_to_list.exit203_crit_edge, label %while.body.lr.ph.i191

llist_append_to_list.exit.llist_append_to_list.exit203_crit_edge: ; preds = %llist_append_to_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit203

while.body.lr.ph.i191:                            ; preds = %llist_append_to_list.exit
  %55 = inttoptr i32 %asmresult.i.i.i188 to ptr
  br label %while.body.i196

while.body.i196:                                  ; preds = %list_add_tail.exit.i201.while.body.i196_crit_edge, %while.body.lr.ph.i191
  %node.08.i192 = phi ptr [ %55, %while.body.lr.ph.i191 ], [ %57, %list_add_tail.exit.i201.while.body.i196_crit_edge ]
  %count.07.i193 = phi i32 [ 0, %while.body.lr.ph.i191 ], [ %inc.i199, %list_add_tail.exit.i201.while.body.i196_crit_edge ]
  %56 = ptrtoint ptr %node.08.i192 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %node.08.i192, align 4
  %unmap_list.i194 = getelementptr i8, ptr %node.08.i192, i32 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i5.i195 = call zeroext i1 @__list_add_valid(ptr noundef %unmap_list.i194, ptr noundef %59, ptr noundef nonnull %unmap_list) #10
  br i1 %call.i.i5.i195, label %if.end.i.i.i198, label %while.body.i196.list_add_tail.exit.i201_crit_edge

while.body.i196.list_add_tail.exit.i201_crit_edge: ; preds = %while.body.i196
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i201

if.end.i.i.i198:                                  ; preds = %while.body.i196
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %unmap_list.i194, ptr %1, align 4
  %61 = ptrtoint ptr %unmap_list.i194 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %unmap_list, ptr %unmap_list.i194, align 4
  %prev3.i.i.i197 = getelementptr i8, ptr %node.08.i192, i32 8
  %62 = ptrtoint ptr %prev3.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i197, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %unmap_list.i194, ptr %59, align 4
  br label %list_add_tail.exit.i201

list_add_tail.exit.i201:                          ; preds = %if.end.i.i.i198, %while.body.i196.list_add_tail.exit.i201_crit_edge
  %inc.i199 = add i32 %count.07.i193, 1
  %tobool.not.i200 = icmp eq ptr %57, null
  br i1 %tobool.not.i200, label %list_add_tail.exit.i201.llist_append_to_list.exit203_crit_edge, label %list_add_tail.exit.i201.while.body.i196_crit_edge

list_add_tail.exit.i201.while.body.i196_crit_edge: ; preds = %list_add_tail.exit.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i196

list_add_tail.exit.i201.llist_append_to_list.exit203_crit_edge: ; preds = %list_add_tail.exit.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit203

llist_append_to_list.exit203:                     ; preds = %list_add_tail.exit.i201.llist_append_to_list.exit203_crit_edge, %llist_append_to_list.exit.llist_append_to_list.exit203_crit_edge
  %count.0.lcssa.i202 = phi i32 [ 0, %llist_append_to_list.exit.llist_append_to_list.exit203_crit_edge ], [ %inc.i199, %list_add_tail.exit.i201.llist_append_to_list.exit203_crit_edge ]
  %add69 = add i32 %count.0.lcssa.i202, %count.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_all)
  %tobool70.not = icmp eq i32 %free_all, 0
  br i1 %tobool70.not, label %llist_append_to_list.exit203.if.end86_crit_edge, label %if.then71

llist_append_to_list.exit203.if.end86_crit_edge:  ; preds = %llist_append_to_list.exit203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then71:                                        ; preds = %llist_append_to_list.exit203
  %clean_lock = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 9
  %call78 = call i32 @_raw_spin_lock_irqsave(ptr noundef %clean_lock) #10
  %clean_list83 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 7
  %call.i.i.i204 = call zeroext i1 @__kasan_check_write(ptr noundef %clean_list83, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @llvm.prefetch.p0(ptr %clean_list83, i32 1, i32 3, i32 1) #10
  %64 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %clean_list83) #10, !srcloc !86
  %asmresult.i.i.i205 = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i205)
  %tobool.not6.i206 = icmp eq i32 %asmresult.i.i.i205, 0
  br i1 %tobool.not6.i206, label %if.then71.llist_append_to_list.exit220_crit_edge, label %while.body.lr.ph.i208

if.then71.llist_append_to_list.exit220_crit_edge: ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit220

while.body.lr.ph.i208:                            ; preds = %if.then71
  %65 = inttoptr i32 %asmresult.i.i.i205 to ptr
  br label %while.body.i213

while.body.i213:                                  ; preds = %list_add_tail.exit.i218.while.body.i213_crit_edge, %while.body.lr.ph.i208
  %node.08.i209 = phi ptr [ %65, %while.body.lr.ph.i208 ], [ %67, %list_add_tail.exit.i218.while.body.i213_crit_edge ]
  %66 = ptrtoint ptr %node.08.i209 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %node.08.i209, align 4
  %unmap_list.i211 = getelementptr i8, ptr %node.08.i209, i32 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i.i5.i212 = call zeroext i1 @__list_add_valid(ptr noundef %unmap_list.i211, ptr noundef %69, ptr noundef nonnull %unmap_list) #10
  br i1 %call.i.i5.i212, label %if.end.i.i.i215, label %while.body.i213.list_add_tail.exit.i218_crit_edge

while.body.i213.list_add_tail.exit.i218_crit_edge: ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i218

if.end.i.i.i215:                                  ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %unmap_list.i211, ptr %1, align 4
  %71 = ptrtoint ptr %unmap_list.i211 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %unmap_list, ptr %unmap_list.i211, align 4
  %prev3.i.i.i214 = getelementptr i8, ptr %node.08.i209, i32 8
  %72 = ptrtoint ptr %prev3.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i214, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %unmap_list.i211, ptr %69, align 4
  br label %list_add_tail.exit.i218

list_add_tail.exit.i218:                          ; preds = %if.end.i.i.i215, %while.body.i213.list_add_tail.exit.i218_crit_edge
  %tobool.not.i217 = icmp eq ptr %67, null
  br i1 %tobool.not.i217, label %list_add_tail.exit.i218.llist_append_to_list.exit220_crit_edge, label %list_add_tail.exit.i218.while.body.i213_crit_edge

list_add_tail.exit.i218.while.body.i213_crit_edge: ; preds = %list_add_tail.exit.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i213

list_add_tail.exit.i218.llist_append_to_list.exit220_crit_edge: ; preds = %list_add_tail.exit.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %llist_append_to_list.exit220

llist_append_to_list.exit220:                     ; preds = %list_add_tail.exit.i218.llist_append_to_list.exit220_crit_edge, %if.then71.llist_append_to_list.exit220_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %clean_lock, i32 noundef %call78) #10
  br label %if.end86

if.end86:                                         ; preds = %llist_append_to_list.exit220, %llist_append_to_list.exit203.if.end86_crit_edge
  %item_count1.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 3
  %call.i.i.i221 = call zeroext i1 @__kasan_check_read(ptr noundef %item_count1.i, i32 noundef 4) #10
  %74 = ptrtoint ptr %item_count1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %item_count1.i, align 4
  %76 = ptrtoint ptr %unmap_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %unmap_list, align 4
  %cmp.i223.not = icmp eq ptr %77, %unmap_list
  br i1 %cmp.i223.not, label %if.end86.out_crit_edge, label %if.end91

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end91:                                         ; preds = %if.end86
  %.call.i = select i1 %tobool70.not, i32 0, i32 %75
  call void @rds_ib_unreg_frmr(ptr noundef nonnull %unmap_list, ptr noundef nonnull %nfreed, ptr noundef nonnull %unpinned, i32 noundef %.call.i) #10
  %78 = ptrtoint ptr %unmap_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %unmap_list, align 4
  %cmp.i224 = icmp eq ptr %79, %unmap_list
  br i1 %cmp.i224, label %if.end91.if.end121_crit_edge, label %if.end91.for.body.i_crit_edge

if.end91.for.body.i_crit_edge:                    ; preds = %if.end91
  br label %for.body.i

if.end91.if.end121_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end91.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %79, %if.end91.for.body.i_crit_edge ]
  %next.016.i = phi ptr [ %llnode.i, %for.body.i.for.body.i_crit_edge ], [ %clean_nodes, %if.end91.for.body.i_crit_edge ]
  %llnode.i = getelementptr i8, ptr %.pn17.i, i32 -4
  %80 = ptrtoint ptr %next.016.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %llnode.i, ptr %next.016.i, align 4
  %81 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %unmap_list
  br i1 %cmp.not.i, label %list_to_llist_nodes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_to_llist_nodes.exit:                         ; preds = %for.body.i
  %82 = ptrtoint ptr %llnode.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %llnode.i, align 4
  %83 = ptrtoint ptr %clean_nodes to i32
  call void @__asan_load4_noabort(i32 %83)
  %clean_nodes.0.clean_nodes.0.226.pr = load ptr, ptr %clean_nodes, align 4
  br i1 %tobool.not, label %list_to_llist_nodes.exit.if.end100_crit_edge, label %if.then97

list_to_llist_nodes.exit.if.end100_crit_edge:     ; preds = %list_to_llist_nodes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then97:                                        ; preds = %list_to_llist_nodes.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %clean_nodes.0.clean_nodes.0.226.pr, i32 -112
  %84 = ptrtoint ptr %ibmr_ret to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr, ptr %ibmr_ret, align 4
  %85 = ptrtoint ptr %clean_nodes.0.clean_nodes.0.226.pr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clean_nodes.0.clean_nodes.0.226.pr, align 4
  %87 = ptrtoint ptr %clean_nodes to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %clean_nodes, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %list_to_llist_nodes.exit.if.end100_crit_edge
  %clean_nodes.0.226 = phi ptr [ %86, %if.then97 ], [ %clean_nodes.0.clean_nodes.0.226.pr, %list_to_llist_nodes.exit.if.end100_crit_edge ]
  %tobool101.not = icmp eq ptr %clean_nodes.0.226, null
  br i1 %tobool101.not, label %if.end100.if.end121_crit_edge, label %do.body104

if.end100.if.end121_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

do.body104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %clean_lock110 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 9
  %call112 = call i32 @_raw_spin_lock_irqsave(ptr noundef %clean_lock110) #10
  %clean_list117 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 7
  %call118 = call zeroext i1 @llist_add_batch(ptr noundef nonnull %clean_nodes.0.226, ptr noundef %llnode.i, ptr noundef %clean_list117) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %clean_lock110, i32 noundef %call112) #10
  br label %if.end121

if.end121:                                        ; preds = %do.body104, %if.end100.if.end121_crit_edge, %if.end91.if.end121_crit_edge
  %88 = ptrtoint ptr %unpinned to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %unpinned, align 4
  %free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %free_pinned, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %free_pinned, i32 1, i32 3, i32 1) #10
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_pinned, ptr %free_pinned, i32 %89, ptr elementtype(i32) %free_pinned) #10, !srcloc !82
  %dirty_count = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 4
  %call.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_count, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %dirty_count, i32 1, i32 3, i32 1) #10
  %91 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_count, ptr %dirty_count, i32 %add69, ptr elementtype(i32) %dirty_count) #10, !srcloc !82
  %92 = ptrtoint ptr %nfreed to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nfreed, align 4
  %call.i.i184 = call zeroext i1 @__kasan_check_write(ptr noundef %item_count1.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %item_count1.i, i32 1, i32 3, i32 1) #10
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %item_count1.i, ptr %item_count1.i, i32 %93, ptr elementtype(i32) %item_count1.i) #10, !srcloc !82
  br label %out

out:                                              ; preds = %if.end121, %if.end86.out_crit_edge, %if.then64
  %flush_lock122 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %flush_lock122) #10
  %head.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 8, i32 1
  %95 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %96, %head.i
  br i1 %cmp.i.i.not, label %out.cleanup129_crit_edge, label %if.then126

out.cleanup129_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.then126:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %flush_wait123 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 8
  call void @__wake_up(ptr noundef %flush_wait123, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup129

cleanup129:                                       ; preds = %if.then126, %out.cleanup129_crit_edge, %cleanup.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nfreed) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unpinned) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unmap_list) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clean_nodes)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_unreg_frmr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_try_reuse_ibmr(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  %ibmr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibmr) #10
  %0 = ptrtoint ptr %ibmr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ibmr, align 4
  %item_count = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 3
  %max_items = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end94.while.cond_crit_edge, %entry
  %iter.0 = phi i32 [ 0, %entry ], [ %inc, %if.end94.while.cond_crit_edge ]
  %call = call ptr @rds_ib_reuse_mr(ptr noundef %pool)
  %1 = ptrtoint ptr %ibmr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ibmr, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %item_count, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @llvm.prefetch.p0(ptr %item_count, i32 1, i32 3, i32 1) #10
  %2 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %item_count, ptr %item_count, i32 1, ptr elementtype(i32) %item_count) #10, !srcloc !89
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %3 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %4)
  %cmp.not = icmp ugt i32 %asmresult.i.i.i.i, %4
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %item_count, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %item_count, i32 1, i32 3, i32 1) #10
  %5 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %item_count, ptr %item_count, i32 1, ptr elementtype(i32) %item_count) #10, !srcloc !82
  %inc = add nuw nsw i32 %iter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iter.0)
  %exitcond = icmp eq i32 %iter.0, 2
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  %8 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10
  %12 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, ptrtoint (ptr @rds_ib_stats to i32)
  %18 = inttoptr i32 %add to ptr
  br i1 %exitcond, label %if.then6, label %if.end45

if.then6:                                         ; preds = %if.end3
  %19 = inttoptr i32 %add to ptr
  br i1 %cmp7, label %do.body9, label %do.body23

do.body9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_8k_pool_depleted = getelementptr inbounds %struct.rds_ib_statistics, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %s_ib_rdma_mr_8k_pool_depleted to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_ib_rdma_mr_8k_pool_depleted, align 8
  %inc16 = add i64 %21, 1
  store i64 %inc16, ptr %s_ib_rdma_mr_8k_pool_depleted, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  br label %cleanup.sink.split

do.body23:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_1m_pool_depleted = getelementptr inbounds %struct.rds_ib_statistics, ptr %19, i32 0, i32 34
  %22 = ptrtoint ptr %s_ib_rdma_mr_1m_pool_depleted to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_ib_rdma_mr_1m_pool_depleted, align 8
  %inc38 = add i64 %23, 1
  store i64 %inc38, ptr %s_ib_rdma_mr_1m_pool_depleted, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.end3
  br i1 %cmp7, label %do.body50, label %do.body73

do.body50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_8k_pool_wait = getelementptr inbounds %struct.rds_ib_statistics, ptr %18, i32 0, i32 27
  %24 = ptrtoint ptr %s_ib_rdma_mr_8k_pool_wait to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %s_ib_rdma_mr_8k_pool_wait, align 8
  %inc65 = add i64 %25, 1
  store i64 %inc65, ptr %s_ib_rdma_mr_8k_pool_wait, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  br label %if.end94

do.body73:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %s_ib_rdma_mr_1m_pool_wait = getelementptr inbounds %struct.rds_ib_statistics, ptr %18, i32 0, i32 33
  %26 = ptrtoint ptr %s_ib_rdma_mr_1m_pool_wait to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %s_ib_rdma_mr_1m_pool_wait, align 8
  %inc88 = add i64 %27, 1
  store i64 %inc88, ptr %s_ib_rdma_mr_1m_pool_wait, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  br label %if.end94

if.end94:                                         ; preds = %do.body73, %do.body50
  %28 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i124 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i124 to ptr
  %preempt_count.i.i125 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i125 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i125, align 4
  %sub.i126 = add i32 %31, -1
  store volatile i32 %sub.i126, ptr %preempt_count.i.i125, align 4
  %call95 = call i32 @rds_ib_flush_mr_pool(ptr noundef %pool, i32 noundef 0, ptr noundef nonnull %ibmr)
  %32 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ibmr, align 4
  %tobool96.not = icmp eq ptr %33, null
  br i1 %tobool96.not, label %if.end94.while.cond_crit_edge, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94.while.cond_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.sink.split:                               ; preds = %do.body23, %do.body9
  %34 = call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i107 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i107 to ptr
  %preempt_count.i.i108 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i108, align 4
  %sub.i114 = add i32 %37, -1
  store volatile i32 %sub.i114, ptr %preempt_count.i.i108, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end94.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %cleanup.sink.split ], [ null, %if.end.cleanup_crit_edge ], [ %33, %if.end94.cleanup_crit_edge ], [ %call, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibmr) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_free_mr(ptr noundef %trans_private, i32 noundef %invalidate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 2
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 8
  %device = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_free_mr.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_free_mr, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sg_len = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 8
  %4 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_free_mr.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %odp = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 10
  %6 = ptrtoint ptr %odp to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %odp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end28, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__init_work(ptr noundef %trans_private, i32 noundef 0) #10
  %7 = ptrtoint ptr %trans_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %trans_private, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %trans_private, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @rds_ib_free_mr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15 = getelementptr inbounds %struct.work_struct, ptr %trans_private, i32 0, i32 1
  %8 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %trans_private, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %trans_private, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rds_ib_odp_mr_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %trans_private, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @rds_ib_free_mr.__key.5) #10
  %11 = load ptr, ptr @rds_ib_mr_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %trans_private, i32 noundef 0) #10
  br label %cleanup

if.end28:                                         ; preds = %do.end
  tail call void @rds_ib_free_frmr_list(ptr noundef %trans_private) #10
  %sg_len29 = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 8
  %12 = ptrtoint ptr %sg_len29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len29, align 4
  %free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_pinned, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %free_pinned, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_pinned, ptr %free_pinned, i32 %13, ptr elementtype(i32) %free_pinned) #10, !srcloc !95
  %dirty_count = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 4
  %call.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dirty_count, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_count, ptr %dirty_count, i32 1, ptr elementtype(i32) %dirty_count) #10, !srcloc !95
  %call.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_pinned, i32 noundef 4) #10
  %16 = ptrtoint ptr %free_pinned to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %free_pinned, align 4
  %max_free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %max_free_pinned to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_free_pinned, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not = icmp ult i32 %17, %19
  br i1 %cmp.not, label %lor.lhs.false, label %if.end28.if.then35_crit_edge

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end28
  %call.i.i85 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_count, i32 noundef 4) #10
  %20 = ptrtoint ptr %dirty_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dirty_count, align 4
  %max_items = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %max_items to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_items, align 4
  %div = udiv i32 %23, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div)
  %cmp34.not = icmp ult i32 %21, %div
  br i1 %cmp34.not, label %lor.lhs.false.if.end37_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end28.if.then35_crit_edge
  %24 = load ptr, ptr @rds_ib_mr_wq, align 4
  %flush_worker = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 2
  %call.i90 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %flush_worker, i32 noundef 10) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %lor.lhs.false.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invalidate)
  %tobool38.not = icmp eq i32 %invalidate, 0
  br i1 %tobool38.not, label %if.end37.if.end60_crit_edge, label %if.then39

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then39:                                        ; preds = %if.end37
  %25 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %28, 15728640
  %29 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i86 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i86 to ptr
  %preempt_count.i87 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i87, align 4
  %and42 = and i32 %32, 983040
  %or = or i32 %and42, %and
  %33 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i88 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i88 to ptr
  %preempt_count.i89 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i89, align 4
  %and44 = and i32 %36, 65280
  %or45 = or i32 %or, %and44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or45)
  %tobool46.not = icmp eq i32 %or45, 0
  br i1 %tobool46.not, label %if.then55, label %if.else, !prof !68

if.then55:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 @rds_ib_flush_mr_pool(ptr noundef %1, i32 noundef 0, ptr noundef null)
  br label %if.end60

if.else:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %37 = load ptr, ptr @rds_ib_mr_wq, align 4
  %flush_worker57 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %1, i32 0, i32 2
  %call.i91 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %flush_worker57, i32 noundef 10) #10
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then55, %if.end37.if.end60_crit_edge
  tail call void @rds_ib_dev_put(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.body7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_odp_mr_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.rds_ib_mr, ptr %work, i32 0, i32 11
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %1, ptr noundef null) #10
  tail call void @kfree(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_free_frmr_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_flush_mrs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @rds_ib_devices_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_devices to i32))
  %rds_ibdev.017 = load ptr, ptr @rds_ib_devices, align 4
  %cmp.not18 = icmp eq ptr %rds_ibdev.017, @rds_ib_devices
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rds_ibdev.019 = phi ptr [ %rds_ibdev.0, %for.inc.for.body_crit_edge ], [ %rds_ibdev.017, %entry.for.body_crit_edge ]
  %mr_8k_pool = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev.019, i32 0, i32 8
  %0 = ptrtoint ptr %mr_8k_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_8k_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @rds_ib_flush_mr_pool(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %mr_1m_pool = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev.019, i32 0, i32 7
  %2 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr_1m_pool, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @rds_ib_flush_mr_pool(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.end.for.inc_crit_edge
  %4 = ptrtoint ptr %rds_ibdev.019 to i32
  call void @__asan_load4_noabort(i32 %4)
  %rds_ibdev.0 = load ptr, ptr %rds_ibdev.019, align 4
  %cmp.not = icmp eq ptr %rds_ibdev.0, @rds_ib_devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @rds_ib_devices_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_ib_get_lkey(ptr nocapture noundef readonly %trans_private) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.rds_ib_mr, ptr %trans_private, i32 0, i32 11
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lkey, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_get_mr(ptr noundef %sg, i32 noundef %nents, ptr nocapture noundef readonly %rs, ptr noundef %key_ret, ptr noundef readonly %conn, i64 noundef %start, i64 noundef %length, i32 noundef %need_odp) local_unnamed_addr #0 align 64 {
entry:
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call fastcc ptr @rds_ib_get_device(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end58_crit_edge, label %if.end

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end:                                           ; preds = %entry
  %need_odp.off = add i32 %need_odp, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %need_odp.off)
  %switch = icmp ult i32 %need_odp.off, 2
  br i1 %switch, label %if.then2, label %if.end36

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %need_odp)
  %cmp = icmp eq i32 %need_odp, 1
  %spec.select = select i1 %cmp, i64 0, i64 %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #10
  %odp_capable = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %odp_capable to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %odp_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.then2.cleanup.thread_crit_edge, label %if.end6

if.then2.cleanup.thread_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end6:                                          ; preds = %if.then2
  %pd = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pd, align 4
  %call7 = tail call ptr @ib_reg_user_mr(ptr noundef %4, i64 noundef %start, i64 noundef %length, i64 noundef %spec.select, i32 noundef 79) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end18

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_get_mr.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_get_mr, %if.then14)) #10
          to label %do.end [label %if.then14], !srcloc !81

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_get_mr.__UNIQUE_ID_ddebug554, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end6
  %tobool19.not = icmp eq ptr %key_ret, null
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7, i32 0, i32 3
  %6 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rkey, align 4
  %8 = ptrtoint ptr %key_ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key_ret, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 312) #13
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %call7, ptr noundef null) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then24, %do.end, %if.then2.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -95, %if.then2.cleanup.thread_crit_edge ], [ -12, %if.then24 ], [ %5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #10
  br label %if.then57

cleanup:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %u = getelementptr inbounds %struct.rds_ib_mr, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %u, align 8
  %odp = getelementptr inbounds %struct.rds_ib_mr, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %odp to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load27 = load i8, ptr %odp, align 4
  %bf.set = or i8 %bf.load27, -128
  store i8 %bf.set, ptr %odp, align 4
  %12 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %spec.select, ptr %sge, align 8
  %conv28 = trunc i64 %length to i32
  %length29 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %13 = ptrtoint ptr %length29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv28, ptr %length29, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7, i32 0, i32 2
  %14 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lkey, align 8
  %lkey30 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %16 = ptrtoint ptr %lkey30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %lkey30, align 4
  %17 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd, align 4
  %call32 = call i32 @ib_advise_mr(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %sge, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #10
  br label %cleanup60

if.end36:                                         ; preds = %if.end
  %tobool37.not = icmp eq ptr %conn, null
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %19 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cp_transport_data, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %ic.0 = phi ptr [ %22, %if.then38 ], [ null, %if.end36.if.end40_crit_edge ]
  %mr_8k_pool = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 8
  %23 = ptrtoint ptr %mr_8k_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr_8k_pool, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %if.end40.if.then57_crit_edge, label %lor.lhs.false42

if.end40.if.then57_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false42:                                  ; preds = %if.end40
  %mr_1m_pool = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 7
  %25 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mr_1m_pool, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %lor.lhs.false42.if.then57_crit_edge, label %if.end45

lor.lhs.false42.if.then57_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end45:                                         ; preds = %lor.lhs.false42
  %call46 = tail call ptr @rds_ib_reg_frmr(ptr noundef nonnull %call, ptr noundef %ic.0, ptr noundef %sg, i32 noundef %nents, ptr noundef %key_ret) #10
  %cmp.i95 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then48, label %if.end45.cleanup60_crit_edge

if.end45.cleanup60_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup60

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call46 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %27) #14
  br label %if.then57

if.then57:                                        ; preds = %if.then48, %lor.lhs.false42.if.then57_crit_edge, %if.end40.if.then57_crit_edge, %cleanup.thread
  %ret.1.ph = phi i32 [ %ret.0.ph, %cleanup.thread ], [ -19, %if.end40.if.then57_crit_edge ], [ -19, %lor.lhs.false42.if.then57_crit_edge ], [ %27, %if.then48 ]
  tail call void @rds_ib_dev_put(ptr noundef nonnull %call) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %entry.if.end58_crit_edge
  %ret.1102 = phi i32 [ %ret.1.ph, %if.then57 ], [ -19, %entry.if.end58_crit_edge ]
  %28 = inttoptr i32 %ret.1102 to ptr
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %if.end45.cleanup60_crit_edge, %cleanup
  %retval.1 = phi ptr [ %28, %if.end58 ], [ %call7.i.i, %cleanup ], [ %call46, %if.end45.cleanup60_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_reg_user_mr(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_advise_mr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_ib_reg_frmr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_destroy_mr_pool(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_worker = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %flush_worker) #10
  %call1 = tail call i32 @rds_ib_flush_mr_pool(ptr noundef %pool, i32 noundef 1, ptr noundef null)
  %item_count = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %item_count, i32 noundef 4) #10
  %0 = ptrtoint ptr %item_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %item_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !68

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 638, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %pool, i32 0, i32 10
  %call.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_pinned, i32 noundef 4) #10
  %2 = ptrtoint ptr %free_pinned to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %free_pinned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not = icmp eq i32 %3, 0
  br i1 %tobool24.not, label %if.end.if.end46_crit_edge, label %do.end40, !prof !68

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 639, i32 noundef 9, ptr noundef null) #10
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end.if.end46_crit_edge
  tail call void @kfree(ptr noundef %pool) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_create_mr_pool(ptr nocapture noundef readonly %rds_ibdev, i32 noundef %pool_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pool_type, ptr %call7.i.i, align 8
  %free_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %free_list, align 8
  %drop_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %drop_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %drop_list, align 4
  %clean_list = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %clean_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clean_list, align 4
  %clean_lock = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %clean_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @rds_ib_create_mr_pool.__key, i16 noundef signext 3) #10
  %flush_lock = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %flush_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @rds_ib_create_mr_pool.__key.11) #10
  %flush_wait = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %flush_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @rds_ib_create_mr_pool.__key.13) #10
  %flush_worker = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %flush_worker, i32 noundef 0) #10
  %5 = ptrtoint ptr %flush_worker to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %flush_worker, align 8
  %lockdep_map = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @rds_ib_create_mr_pool.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry18 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry18, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rds_ib_mr_pool_flush_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @rds_ib_create_mr_pool.__key.17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pool_type)
  %cmp = icmp eq i32 %pool_type, 1
  %max_1m_mrs = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 10
  %max_8k_mrs = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 9
  %.sink64 = select i1 %cmp, i32 257, i32 3
  %.sink.in = select i1 %cmp, ptr %max_1m_mrs, ptr %max_8k_mrs
  %9 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.sink = load i32, ptr %.sink.in, align 4
  %10 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 14
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %mul = mul i32 %.sink64, %.sink
  %div62 = lshr i32 %mul, 2
  %max_free_pinned = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %max_free_pinned to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div62, ptr %max_free_pinned, align 4
  %max_mrs = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 6
  %15 = ptrtoint ptr %max_mrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_mrs, align 4
  %mul35 = mul i32 %16, 3
  %div3663 = lshr i32 %mul35, 2
  %max_items_soft = getelementptr inbounds %struct.rds_ib_mr_pool, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %max_items_soft to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div3663, ptr %max_items_soft, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_mr_pool_flush_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  %call = tail call i32 @rds_ib_flush_mr_pool(ptr noundef %add.ptr, i32 noundef 0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_mr_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 0) #10
  store ptr %call, ptr @rds_ib_mr_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_mr_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rds_ib_mr_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_rdma.c", i32 258, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/rds/ib_rdma.c", i32 490, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rds_ib_free_mr.__UNIQUE_ID_ddebug553, !3, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!7 = !{ptr @rds_ib_free_mr.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/rds/ib_rdma.c", i32 497, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rds_ib_free_mr.__key.5, !8, !"__key", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/ib_rdma.c", i32 584, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_ib_get_mr.__UNIQUE_ID_ddebug554, !13, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/ib_rdma.c", i32 622, i32 3}
!18 = !{ptr @rds_ib_get_mr._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rds_ib_get_mr._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @rds_ib_create_mr_pool.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/rds/ib_rdma.c", i32 656, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rds_ib_create_mr_pool.__key.11, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/rds/ib_rdma.c", i32 657, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rds_ib_create_mr_pool.__key.13, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/rds/ib_rdma.c", i32 658, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rds_ib_create_mr_pool.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/rds/ib_rdma.c", i32 659, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rds_ib_create_mr_pool.__key.17, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rds/ib_rdma.c", i32 679, i32 33}
!36 = !{ptr @rds_ib_mr_wq, !37, !"rds_ib_mr_wq", i1 false, i1 false}
!37 = !{!"../net/rds/ib_rdma.c", i32 42, i32 26}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/rds/ib_rdma.c", i32 56, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/rds/ib_rdma.c", i32 57, i32 3}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/rds/ib_rdma.c", i32 94, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/mm.h", i32 717, i32 2}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2151435782}
!65 = !{i64 2149933270}
!66 = !{i64 2148227137, i64 2148227169, i64 2148227198, i64 2148227232, i64 2148227263, i64 2148227286}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2149933536}
!70 = !{i64 2158678630, i64 2158679112, i64 2158678667, i64 2158678723, i64 2158678757, i64 2158678781, i64 2158678822, i64 2158678843, i64 2158678871, i64 2158678905}
!71 = !{i64 2158680228, i64 2158680710, i64 2158680265, i64 2158680321, i64 2158680355, i64 2158680379, i64 2158680420, i64 2158680441, i64 2158680469, i64 2158680503}
!72 = !{i64 2158681854, i64 2158682336, i64 2158681891, i64 2158681947, i64 2158681981, i64 2158682005, i64 2158682046, i64 2158682067, i64 2158682095, i64 2158682129}
!73 = !{i64 2158692165}
!74 = !{i64 2158694179}
!75 = !{i64 2154890294, i64 2154890786, i64 2154890331, i64 2154890387, i64 2154890421, i64 2154890445, i64 2154890486, i64 2154890507, i64 2154890535, i64 2154890569}
!76 = !{i64 620820}
!77 = !{i64 2154222559, i64 2154223042, i64 2154222596, i64 2154222652, i64 2154222686, i64 2154222710, i64 2154222751, i64 2154222772, i64 2154222800, i64 2154222834}
!78 = !{i64 2148314059}
!79 = !{i64 2148228792, i64 2148228824, i64 2148228853, i64 2148228887, i64 2148228918, i64 2148228941}
!80 = !{i64 2148314288}
!81 = !{i64 2148707422, i64 2148707427, i64 2148707440, i64 2148707484, i64 2148707518, i64 2148707539}
!82 = !{i64 2148228072, i64 2148228098, i64 2148228127, i64 2148228161, i64 2148228192, i64 2148228215}
!83 = !{i64 2158702567}
!84 = !{i64 2158704589}
!85 = !{i64 2149214409}
!86 = !{i64 732375, i64 732392, i64 732416, i64 732442, i64 732460}
!87 = !{i64 2149214762}
!88 = !{i64 2148311018}
!89 = !{i64 2148226327, i64 2148226359, i64 2148226388, i64 2148226422, i64 2148226453, i64 2148226476}
!90 = !{i64 2148311247}
!91 = !{i64 2158709172}
!92 = !{i64 2158711200}
!93 = !{i64 2158713220}
!94 = !{i64 2158715240}
!95 = !{i64 2148225607, i64 2148225633, i64 2148225662, i64 2148225696, i64 2148225727, i64 2148225750}
