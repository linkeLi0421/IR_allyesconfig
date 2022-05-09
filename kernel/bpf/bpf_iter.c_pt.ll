; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_iter.c_pt.bc'
source_filename = "../kernel/bpf/bpf_iter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_link_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.171, %union.anon.173, ptr, ptr }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { i32, i32, i32, i32, i32 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%union.anon.135 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.bpf_iter_target_info = type { %struct.list_head, ptr, i32 }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.137 = type { %struct.callback_head }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.139 = type { ptr }
%struct.bpf_iter_link = type { %struct.bpf_link, %struct.bpf_iter_aux_info, ptr }
%struct.bpf_link = type { %struct.atomic64_t, i32, i32, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bpf_iter_aux_info = type { ptr }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.anon.99, [0 x %struct.sock_filter] }
%struct.anon.99 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.96 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.96 = type { %struct.work_struct }
%struct.bpf_link_primer = type { ptr, ptr, i32, i32 }
%union.bpf_iter_link_info = type { %struct.anon.161 }
%struct.anon.161 = type { i32 }
%struct.anon.86 = type { i32, %union.anon.87, i32, i32, %union.anon.88 }
%union.anon.87 = type { i32 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_iter_priv_data = type { ptr, ptr, ptr, i64, i64, i8, [7 x i8], [0 x i8] }
%struct.bpf_iter_meta = type { %union.anon.176, i64, i64 }
%union.anon.176 = type { i64 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.bpf_link_info = type { i32, i32, i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i64, i32 }

@bpf_iter_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @bpf_seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @iter_open, ptr null, ptr @iter_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@targets_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @targets_mutex, i64 52), ptr getelementptr (i8, ptr @targets_mutex, i64 52) }, ptr @targets_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@targets = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @targets, ptr @targets }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/bpf/bpf_iter.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bpf_iter_\00", [22 x i8] zeroinitializer }, align 32
@bpf_iter_link_lops = internal constant { %struct.bpf_link_ops, [40 x i8] } { %struct.bpf_link_ops { ptr @bpf_iter_link_release, ptr @bpf_iter_link_dealloc, ptr null, ptr @bpf_iter_link_replace, ptr @bpf_iter_link_show_fdinfo, ptr @bpf_iter_link_fill_link_info }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpf_iter\00", [23 x i8] zeroinitializer }, align 32
@bpf_for_each_map_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_for_each_map_elem, i8 0, i8 0, i32 0, %union.anon.171 { %struct.anon.172 { i32 1, i32 21, i32 278, i32 10, i32 0 } }, %union.anon.173 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_loop_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_loop, i8 0, i8 0, i32 0, %union.anon.171 { %struct.anon.172 { i32 10, i32 21, i32 278, i32 10, i32 0 } }, %union.anon.173 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_seq_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.bpf_seq_read = private unnamed_addr constant [13 x i8] c"bpf_seq_read\00", align 1
@bpf_seq_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.bpf_seq_read, ptr @.str, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016buggy seq_file .next function %ps did not updated position index\0A\00", [60 x i8] zeroinitializer }, align 32
@bpf_seq_read._entry_ptr = internal global ptr @bpf_seq_read._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"targets_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"targets_mutex\00", [18 x i8] zeroinitializer }, align 32
@link_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @link_mutex, i64 52), ptr getelementptr (i8, ptr @link_mutex, i64 52) }, ptr @link_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"target_name:\09%s\0A\00", [47 x i8] zeroinitializer }, align 32
@session_id = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"bpf_iter_fops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 274, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"targets_mutex\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 31, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 320, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 333, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"bpf_iter_link_lops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 485, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 639, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"bpf_for_each_map_elem_proto\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 708, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"bpf_loop_proto\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 743, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 156, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 230, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 214, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 174, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 32, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"link_mutex\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 35, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 437, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@___asan_gen_.85 = private constant [25 x i8] c"../kernel/bpf/bpf_iter.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 38, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 613, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 271, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 723, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @bpf_seq_read._entry, ptr @bpf_seq_read._entry_ptr, ptr @bpf_iter_fops, ptr @targets_mutex, ptr @targets, ptr @.str, ptr @.str.1, ptr @bpf_iter_link_lops, ptr @.str.2, ptr @bpf_for_each_map_elem_proto, ptr @bpf_loop_proto, ptr @bpf_seq_read._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @link_mutex, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @session_id, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_iter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @targets_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @targets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_iter_link_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_for_each_map_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_loop_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_seq_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_seq_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_id to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_seq_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %size2 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32768, ptr %size2, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 32768, i32 noundef 3264, i32 noundef -1) #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %1, align 8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.then.cleanup145_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.cleanup145_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %count = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end19, label %if.then10

if.then10:                                        ; preds = %if.end8
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %size)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %from = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %from, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then10
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup145_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.cleanup145_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup145

if.then.i.i.i:                                    ; preds = %if.then10
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %8, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %8, i32 -1226833920) #18, !srcloc !65
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %8) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %8) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool14.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %copy_to_user.exit.cleanup145_crit_edge

copy_to_user.exit.cleanup145_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end16:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %sub = sub i32 %15, %8
  store i32 %sub, ptr %count, align 4
  %16 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %from, align 8
  %add = add i32 %17, %8
  store i32 %add, ptr %from, align 8
  br label %done

if.end19:                                         ; preds = %if.end8
  %from20 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %from20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %from20, align 8
  %op = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %index = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 5
  %call21 = tail call ptr %22(ptr noundef %1, ptr noundef %index) #14
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.stop109thread-pre-split_crit_edge, label %if.end24

if.end19.stop109thread-pre-split_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop109thread-pre-split

if.end24:                                         ; preds = %if.end19
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %call21 to i32
  %24 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op, align 4
  %stop = getelementptr inbounds %struct.seq_operations, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop, align 4
  tail call void %27(ptr noundef %1, ptr noundef nonnull %call21) #14
  %28 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count, align 4
  br label %cleanup145

if.end30:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %op, align 4
  %show = getelementptr inbounds %struct.seq_operations, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %show, align 4
  %call32 = tail call i32 %32(ptr noundef %1, ptr noundef nonnull %call21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %private.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i, align 8
  %seq_num.i = getelementptr i8, ptr %34, i32 -16
  %35 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %seq_num.i, align 8
  %dec.i = add i64 %36, -1
  store i64 %dec.i, ptr %seq_num.i, align 8
  %37 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %count, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp36 = icmp slt i32 %call32, 0
  br i1 %cmp36, label %if.else.if.then38_crit_edge, label %lor.lhs.false

if.else.if.then38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.else
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 4
  %size.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i279 = icmp eq i32 %39, %41
  br i1 %cmp.i279, label %lor.lhs.false.if.then38_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.else.if.then38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool39.not = icmp eq i32 %call32, 0
  %spec.select = select i1 %tobool39.not, i32 -7, i32 %call32
  %42 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %op, align 4
  %stop43 = getelementptr inbounds %struct.seq_operations, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %stop43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stop43, align 4
  tail call void %45(ptr noundef %1, ptr noundef nonnull %call21) #14
  %46 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %count, align 4
  br label %cleanup145

if.end46:                                         ; preds = %lor.lhs.false.if.end46_crit_edge, %if.then34
  %private.i280 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %private.i280 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i280, align 8
  %add.ptr.i = getelementptr i8, ptr %48, i32 -40
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %reg_info.i = getelementptr inbounds %struct.bpf_iter_target_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %reg_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_info.i, align 4
  %feature.i = getelementptr inbounds %struct.bpf_iter_reg, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %feature.i, align 4
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %size.i288 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end46
  %num_objs.0 = phi i32 [ 0, %if.end46 ], [ %inc, %while.cond.backedge ]
  %p.0 = phi ptr [ %call21, %if.end46 ], [ %call52, %while.cond.backedge ]
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %index, align 8
  %inc = add nuw nsw i32 %num_objs.0, 1
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  %59 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %op, align 4
  %next = getelementptr inbounds %struct.seq_operations, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %next, align 4
  %call52 = tail call ptr %62(ptr noundef %1, ptr noundef nonnull %p.0, ptr noundef %index) #14
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %64)
  %cmp54 = icmp eq i64 %56, %64
  br i1 %cmp54, label %if.then55, label %while.cond.if.end66_crit_edge

while.cond.if.end66_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then55:                                        ; preds = %while.cond
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @bpf_seq_read._rs, ptr noundef nonnull @__func__.bpf_seq_read) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end63_crit_edge, label %do.end

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %op, align 4
  %next61 = getelementptr inbounds %struct.seq_operations, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %next61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %68) #19
  br label %if.end63

if.end63:                                         ; preds = %do.end, %if.then55.if.end63_crit_edge
  %69 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %index, align 8
  %inc65 = add i64 %70, 1
  store i64 %inc65, ptr %index, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %while.cond.if.end66_crit_edge
  %tobool.not.i = icmp eq ptr %call52, null
  %cmp.i281 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i281
  br i1 %spec.select.i, label %if.end66.stop109thread-pre-split_crit_edge, label %if.end69

if.end66.stop109thread-pre-split_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop109thread-pre-split

if.end69:                                         ; preds = %if.end66
  %71 = ptrtoint ptr %private.i280 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private.i280, align 8
  %seq_num.i283 = getelementptr i8, ptr %72, i32 -16
  %73 = ptrtoint ptr %seq_num.i283 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %seq_num.i283, align 8
  %inc.i = add i64 %74, 1
  store i64 %inc.i, ptr %seq_num.i283, align 8
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %size)
  %cmp71.not = icmp ult i32 %76, %size
  br i1 %cmp71.not, label %if.end73, label %if.end69.stop109_crit_edge

if.end69.stop109_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop109

if.end73:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %num_objs.0)
  %exitcond = icmp eq i32 %num_objs.0, 999999
  br i1 %exitcond, label %if.then75, label %if.end81

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp76 = icmp eq i32 %58, 0
  br i1 %cmp76, label %if.then77, label %if.then75.stop109thread-pre-split_crit_edge

if.then75.stop109thread-pre-split_crit_edge:      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop109thread-pre-split

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %op, align 4
  %stop79 = getelementptr inbounds %struct.seq_operations, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %stop79 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stop79, align 4
  tail call void %80(ptr noundef %1, ptr noundef nonnull %call52) #14
  br label %cleanup145

if.end81:                                         ; preds = %if.end73
  %81 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %op, align 4
  %show83 = getelementptr inbounds %struct.seq_operations, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %show83 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %show83, align 4
  %call84 = tail call i32 %84(ptr noundef %1, ptr noundef nonnull %call52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp sgt i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %private.i280 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %private.i280, align 8
  %seq_num.i285 = getelementptr i8, ptr %86, i32 -16
  %87 = ptrtoint ptr %seq_num.i285 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %seq_num.i285, align 8
  %dec.i286 = add i64 %88, -1
  store i64 %dec.i286, ptr %seq_num.i285, align 8
  %89 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %58, ptr %count, align 4
  br label %if.end103

if.else88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp89 = icmp slt i32 %call84, 0
  br i1 %cmp89, label %if.else88.if.then92_crit_edge, label %lor.lhs.false90

if.else88.if.then92_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

lor.lhs.false90:                                  ; preds = %if.else88
  %90 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count, align 4
  %92 = ptrtoint ptr %size.i288 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size.i288, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.i289 = icmp eq i32 %91, %93
  br i1 %cmp.i289, label %lor.lhs.false90.if.then92_crit_edge, label %lor.lhs.false90.if.end103_crit_edge

lor.lhs.false90.if.end103_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

lor.lhs.false90.if.then92_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false90.if.then92_crit_edge, %if.else88.if.then92_crit_edge
  %94 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %58, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp94 = icmp eq i32 %58, 0
  br i1 %cmp94, label %if.then95, label %if.then92.stop109_crit_edge

if.then92.stop109_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  br label %stop109

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool96.not = icmp eq i32 %call84, 0
  %spec.select254 = select i1 %tobool96.not, i32 -7, i32 %call84
  %95 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %op, align 4
  %stop100 = getelementptr inbounds %struct.seq_operations, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %stop100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %stop100, align 4
  tail call void %98(ptr noundef %1, ptr noundef nonnull %call52) #14
  br label %cleanup145

if.end103:                                        ; preds = %lor.lhs.false90.if.end103_crit_edge, %if.then86
  br i1 %tobool.i.not, label %if.end103.while.cond.backedge_crit_edge, label %if.then105

if.end103.while.cond.backedge_crit_edge:          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then105, %if.end103.while.cond.backedge_crit_edge
  br label %while.cond

if.then105:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 0) #14
  %call.i290 = tail call i32 @__cond_resched() #14
  br label %while.cond.backedge

stop109thread-pre-split:                          ; preds = %if.then75.stop109thread-pre-split_crit_edge, %if.end66.stop109thread-pre-split_crit_edge, %if.end19.stop109thread-pre-split_crit_edge
  %p.1.ph = phi ptr [ %call52, %if.then75.stop109thread-pre-split_crit_edge ], [ null, %if.end19.stop109thread-pre-split_crit_edge ], [ %call52, %if.end66.stop109thread-pre-split_crit_edge ]
  %99 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load i32, ptr %count, align 4
  br label %stop109

stop109:                                          ; preds = %stop109thread-pre-split, %if.then92.stop109_crit_edge, %if.end69.stop109_crit_edge
  %100 = phi i32 [ %.pr, %stop109thread-pre-split ], [ %58, %if.then92.stop109_crit_edge ], [ %76, %if.end69.stop109_crit_edge ]
  %p.1 = phi ptr [ %p.1.ph, %stop109thread-pre-split ], [ %call52, %if.then92.stop109_crit_edge ], [ %call52, %if.end69.stop109_crit_edge ]
  %101 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %op, align 4
  %stop112 = getelementptr inbounds %struct.seq_operations, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %stop112 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %stop112, align 4
  tail call void %104(ptr noundef %1, ptr noundef %p.1) #14
  %tobool113.not = icmp eq ptr %p.1, null
  br i1 %tobool113.not, label %if.then114, label %stop109.if.end123_crit_edge

stop109.if.end123_crit_edge:                      ; preds = %stop109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then114:                                       ; preds = %stop109
  %105 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count, align 4
  %size.i292 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 1
  %107 = ptrtoint ptr %size.i292 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size.i292, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp.i293 = icmp eq i32 %106, %108
  br i1 %cmp.i293, label %if.else117, label %if.then116

if.then116:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  %private.i294 = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %109 = ptrtoint ptr %private.i294 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private.i294, align 8
  %done_stop.i = getelementptr i8, ptr %110, i32 -8
  %111 = ptrtoint ptr %done_stop.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %done_stop.i, align 8
  br label %if.end123

if.else117:                                       ; preds = %if.then114
  %112 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %100, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp119 = icmp eq i32 %100, 0
  br i1 %cmp119, label %if.else117.cleanup145_crit_edge, label %if.else117.if.end123_crit_edge

if.else117.if.end123_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.else117.cleanup145_crit_edge:                  ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end123:                                        ; preds = %if.else117.if.end123_crit_edge, %if.then116, %stop109.if.end123_crit_edge
  %113 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count, align 4
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 %size)
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp9.i.i262 = icmp slt i32 %115, 0
  br i1 %cmp9.i.i262, label %land.rhs16.i.i265, label %if.then.i.i.i268

land.rhs16.i.i265:                                ; preds = %if.end123
  %.b71.i.i264 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i264, label %land.rhs16.i.i265.cleanup145_crit_edge, label %if.then27.i.i266, !prof !64

land.rhs16.i.i265.cleanup145_crit_edge:           ; preds = %land.rhs16.i.i265
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.then27.i.i266:                                 ; preds = %land.rhs16.i.i265
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup145

if.then.i.i.i268:                                 ; preds = %if.end123
  tail call void @__check_object_size(ptr noundef %117, i32 noundef %115, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #14
  %call.i.i269 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i269, label %if.then.i.i.i268.copy_to_user.exit278_crit_edge, label %if.end.i.i273

if.then.i.i.i268.copy_to_user.exit278_crit_edge:  ; preds = %if.then.i.i.i268
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit278

if.end.i.i273:                                    ; preds = %if.then.i.i.i268
  %118 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %115, i32 -1226833920) #18, !srcloc !65
  %asmresult.i.i271 = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i271)
  %cmp.i6.i272 = icmp eq i32 %asmresult.i.i271, 0
  br i1 %cmp.i6.i272, label %if.then2.i.i276, label %if.end.i.i273.copy_to_user.exit278_crit_edge

if.end.i.i273.copy_to_user.exit278_crit_edge:     ; preds = %if.end.i.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit278

if.then2.i.i276:                                  ; preds = %if.end.i.i273
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i274 = tail call zeroext i1 @__kasan_check_read(ptr noundef %117, i32 noundef %115) #14
  %call.i12.i.i275 = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %117, i32 noundef %115) #14
  br label %copy_to_user.exit278

copy_to_user.exit278:                             ; preds = %if.then2.i.i276, %if.end.i.i273.copy_to_user.exit278_crit_edge, %if.then.i.i.i268.copy_to_user.exit278_crit_edge
  %n.addr.0.i277 = phi i32 [ %115, %if.then.i.i.i268.copy_to_user.exit278_crit_edge ], [ %call.i12.i.i275, %if.then2.i.i276 ], [ %115, %if.end.i.i273.copy_to_user.exit278_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i277)
  %tobool133.not = icmp eq i32 %n.addr.0.i277, 0
  br i1 %tobool133.not, label %if.end135, label %copy_to_user.exit278.cleanup145_crit_edge

copy_to_user.exit278.cleanup145_crit_edge:        ; preds = %copy_to_user.exit278
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.end135:                                        ; preds = %copy_to_user.exit278
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count, align 4
  %sub137 = sub i32 %120, %115
  store i32 %sub137, ptr %count, align 4
  %121 = ptrtoint ptr %from20 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %115, ptr %from20, align 8
  br label %done

done:                                             ; preds = %if.end135, %if.end16
  %copied.0 = phi i32 [ %8, %if.end16 ], [ %115, %if.end135 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool139.not = icmp eq i32 %copied.0, 0
  br i1 %tobool139.not, label %done.cleanup145_crit_edge, label %if.else141

done.cleanup145_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup145

if.else141:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %copied.0 to i64
  %122 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %ppos, align 8
  %add142 = add i64 %123, %conv
  store i64 %add142, ptr %ppos, align 8
  br label %cleanup145

cleanup145:                                       ; preds = %if.else141, %done.cleanup145_crit_edge, %copy_to_user.exit278.cleanup145_crit_edge, %if.then27.i.i266, %land.rhs16.i.i265.cleanup145_crit_edge, %if.else117.cleanup145_crit_edge, %if.then95, %if.then77, %if.then38, %if.then26, %copy_to_user.exit.cleanup145_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup145_crit_edge, %if.then.cleanup145_crit_edge
  %copied.1 = phi i32 [ %copied.0, %if.else141 ], [ 0, %done.cleanup145_crit_edge ], [ -14, %copy_to_user.exit278.cleanup145_crit_edge ], [ -7, %if.else117.cleanup145_crit_edge ], [ -14, %copy_to_user.exit.cleanup145_crit_edge ], [ -12, %if.then.cleanup145_crit_edge ], [ %spec.select, %if.then38 ], [ %23, %if.then26 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup145_crit_edge ], [ %spec.select254, %if.then95 ], [ -11, %if.then77 ], [ -14, %if.then27.i.i266 ], [ -14, %land.rhs16.i.i265.cleanup145_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %copied.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iter_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %aux.i = getelementptr inbounds %struct.bpf_iter_link, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %iter_seq_info.i = getelementptr inbounds %struct.bpf_map_ops, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %iter_seq_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iter_seq_info.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.__get_seq_info.exit_crit_edge

if.then.i.__get_seq_info.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_seq_info.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %tinfo.i = getelementptr inbounds %struct.bpf_iter_link, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tinfo.i, align 4
  %reg_info.i = getelementptr inbounds %struct.bpf_iter_target_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %reg_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_info.i, align 4
  %seq_info6.i = getelementptr inbounds %struct.bpf_iter_reg, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %seq_info6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %seq_info6.i, align 4
  br label %__get_seq_info.exit

__get_seq_info.exit:                              ; preds = %if.end5.i, %if.then.i.__get_seq_info.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end5.i ], [ %7, %if.then.i.__get_seq_info.exit_crit_edge ]
  %call1 = tail call fastcc i32 @prepare_seq_file(ptr noundef %file, ptr noundef %1, ptr noundef %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iter_release(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -40
  %seq_info = getelementptr i8, ptr %3, i32 -36
  %4 = ptrtoint ptr %seq_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq_info, align 4
  %fini_seq_private = getelementptr inbounds %struct.bpf_iter_seq_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fini_seq_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini_seq_private, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %7(ptr noundef %3) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %prog = getelementptr i8, ptr %3, i32 -32
  %8 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prog, align 8
  tail call void @bpf_prog_put(ptr noundef %9) #14
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %private, align 8
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_iter_reg_target(ptr noundef %reg_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_info1 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg_info1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reg_info, ptr %reg_info1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @targets_mutex, i32 noundef 0) #14
  %4 = load ptr, ptr @targets, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @targets, ptr noundef %4) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @targets, ptr %prev.i, align 4
  store volatile ptr %call7.i.i, ptr @targets, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_iter_unreg_target(ptr noundef readnone %reg_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @targets_mutex, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tinfo.0.in = phi ptr [ @targets, %entry ], [ %tinfo.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tinfo.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tinfo.0 = load ptr, ptr %tinfo.0.in, align 4
  %cmp.not = icmp eq ptr %tinfo.0, @targets
  br i1 %cmp.not, label %do.end.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %reg_info1 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 1
  %1 = ptrtoint ptr %reg_info1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_info1, align 4
  %cmp2 = icmp eq ptr %2, %reg_info
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tinfo.0) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tinfo.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tinfo.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tinfo.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %tinfo.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %tinfo.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tinfo.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tinfo.0) #14
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  br label %if.end25

do.end.critedge:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #14
  br label %if.end25

if.end25:                                         ; preds = %do.end.critedge, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_iter_prog_supported(ptr nocapture noundef readonly %prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %attach_func_name = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %attach_func_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach_func_name, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attach_btf_id, align 4
  %call2 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @targets_mutex, i32 noundef 0) #14
  %add.ptr8 = getelementptr i8, ptr %3, i32 9
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %if.end
  %tinfo.0.in = phi ptr [ @targets, %if.end ], [ %tinfo.0, %if.end7.for.cond_crit_edge ]
  %6 = ptrtoint ptr %tinfo.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %tinfo.0 = load ptr, ptr %tinfo.0.in, align 4
  %cmp.not = icmp eq ptr %tinfo.0, @targets
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %btf_id = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 2
  %7 = ptrtoint ptr %btf_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %btf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp5 = icmp eq i32 %8, %5
  %or.cond = select i1 %tobool3.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %for.body.if.then18_crit_edge, label %if.end7

for.body.if.then18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.end7:                                          ; preds = %for.body
  %reg_info = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 1
  %9 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_info, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %add.ptr8, ptr noundef %12) #21
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %btf_id.le = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 2
  %13 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aux, align 4
  %attach_btf_id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %attach_btf_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attach_btf_id.i, align 4
  %17 = ptrtoint ptr %btf_id.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %btf_id.le, align 4
  br label %if.then18

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  br label %cleanup

if.then18:                                        ; preds = %if.then11, %for.body.if.then18_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  %reg_info19 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 1
  %18 = ptrtoint ptr %reg_info19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_info19, align 4
  %ctx_arg_info_size = getelementptr inbounds %struct.bpf_iter_reg, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ctx_arg_info_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctx_arg_info_size, align 4
  %22 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aux, align 4
  %ctx_arg_info_size21 = getelementptr inbounds %struct.bpf_prog_aux, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %ctx_arg_info_size21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %ctx_arg_info_size21, align 8
  %25 = load ptr, ptr %reg_info19, align 4
  %ctx_arg_info = getelementptr inbounds %struct.bpf_iter_reg, ptr %25, i32 0, i32 8
  %26 = load ptr, ptr %aux, align 4
  %ctx_arg_info24 = getelementptr inbounds %struct.bpf_prog_aux, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %ctx_arg_info24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctx_arg_info, ptr %ctx_arg_info24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then18 ], [ false, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_iter_get_func_proto(i32 noundef %func_id, ptr noundef %prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @targets_mutex, i32 noundef 0) #14
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tinfo.0.in = phi ptr [ @targets, %entry ], [ %tinfo.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tinfo.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tinfo.0 = load ptr, ptr %tinfo.0.in, align 4
  %cmp.not = icmp eq ptr %tinfo.0, @targets
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %btf_id = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 2
  %1 = ptrtoint ptr %btf_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %btf_id, align 4
  %3 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attach_btf_id, align 4
  %cmp1 = icmp eq i32 %2, %6
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %reg_info2 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 1
  %7 = ptrtoint ptr %reg_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_info2, align 4
  %get_func_proto = getelementptr inbounds %struct.bpf_iter_reg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %get_func_proto to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_func_proto, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then.for.end_crit_edge, label %if.then3

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr %10(i32 noundef %func_id, ptr noundef %prog) #14
  br label %for.end

for.end:                                          ; preds = %if.then3, %if.then.for.end_crit_edge, %for.cond.for.end_crit_edge
  %fn.1 = phi ptr [ %call, %if.then3 ], [ null, %if.then.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  ret ptr %fn.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_link_is_iter(ptr nocapture noundef readonly %link) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %cmp = icmp eq ptr %1, @bpf_iter_link_lops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_iter_link_attach(ptr nocapture noundef readonly %attr, [2 x i32] %uattr.coerce, ptr noundef %prog) local_unnamed_addr #1 align 64 {
entry:
  %link_primer = alloca %struct.bpf_link_primer, align 4
  %linfo = alloca %union.bpf_iter_link_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %uattr.coerce.fca.1.extract = extractvalue [2 x i32] %uattr.coerce, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %link_primer) #14
  %0 = call ptr @memset(ptr %link_primer, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %linfo) #14
  %1 = getelementptr inbounds %struct.anon.86, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.anon.86, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %linfo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %linfo, align 4
  %7 = getelementptr inbounds %struct.anon.86, ptr %attr, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %conv.i = trunc i64 %9 to i32
  %10 = and i32 %uattr.coerce.fca.1.extract, -2147483648
  %iter_info_len = getelementptr inbounds %struct.anon.86, ptr %attr, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %iter_info_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iter_info_len, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %conv.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %retval.0.i = icmp eq i32 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  %xor115 = xor i1 %retval.0.i, %tobool2.not
  br i1 %xor115, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %retval.0.i, label %if.end5.if.end18_crit_edge, label %if.then7

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @bpf_check_uarg_tail_zero([2 x i32] %.fca.1.insert, i32 noundef 4, i32 noundef %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4)
  %call14 = call fastcc i32 @copy_from_bpfptr(ptr noundef nonnull %linfo, [2 x i32] %.fca.1.insert, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %if.end11.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %14 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attach_btf_id, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @targets_mutex, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end18
  %tinfo.0.in = phi ptr [ @targets, %if.end18 ], [ %tinfo.0, %for.body.for.cond_crit_edge ]
  %18 = ptrtoint ptr %tinfo.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %tinfo.0 = load ptr, ptr %tinfo.0.in, align 4
  %cmp20.not = icmp eq ptr %tinfo.0, @targets
  br i1 %cmp20.not, label %if.then33.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %btf_id = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 2
  %19 = ptrtoint ptr %btf_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %btf_id, align 4
  %cmp24 = icmp eq i32 %20, %17
  br i1 %cmp24, label %if.end34.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then33.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  br label %cleanup

if.end34.critedge:                                ; preds = %for.body
  call void @mutex_unlock(ptr noundef nonnull @targets_mutex) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 1060288, i32 noundef 80) #20
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.end34.critedge.cleanup_crit_edge, label %if.end38

if.end34.critedge.cleanup_crit_edge:              ; preds = %if.end34.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end34.critedge
  call void @bpf_link_init(ptr noundef nonnull %call7.i.i, i32 noundef 4, ptr noundef nonnull @bpf_iter_link_lops, ptr noundef %prog) #14
  %tinfo40 = getelementptr inbounds %struct.bpf_iter_link, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %tinfo40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tinfo.0, ptr %tinfo40, align 4
  %call42 = call i32 @bpf_link_prime(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %link_primer) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %reg_info = getelementptr inbounds %struct.bpf_iter_target_info, ptr %tinfo.0, i32 0, i32 1
  %23 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_info, align 4
  %attach_target = getelementptr inbounds %struct.bpf_iter_reg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %attach_target to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attach_target, align 4
  %tobool46.not = icmp eq ptr %26, null
  br i1 %tobool46.not, label %if.end45.if.end55_crit_edge, label %if.then47

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then47:                                        ; preds = %if.end45
  %aux50 = getelementptr inbounds %struct.bpf_iter_link, ptr %call7.i.i, i32 0, i32 1
  %call51 = call i32 %26(ptr noundef %prog, ptr noundef nonnull %linfo, ptr noundef %aux50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end55_crit_edge, label %if.then53

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  call void @bpf_link_cleanup(ptr noundef nonnull %link_primer) #14
  br label %cleanup

if.end55:                                         ; preds = %if.then47.if.end55_crit_edge, %if.end45.if.end55_crit_edge
  %call56 = call i32 @bpf_link_settle(ptr noundef nonnull %link_primer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53, %if.then44, %if.end34.critedge.cleanup_crit_edge, %if.then33.critedge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then44 ], [ %call51, %if.then53 ], [ %call56, %if.end55 ], [ -2, %if.then33.critedge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ -12, %if.end34.critedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %linfo) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %link_primer) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_check_uarg_tail_zero([2 x i32], i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_bpfptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp9.i.i.i.i = icmp slt i32 %size, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge, label %if.then27.i.i.i.i, !prof !64

land.rhs16.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_from_bpfptr_offset.exit

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %copy_from_bpfptr_offset.exit

if.then.i.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #14
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #18, !srcloc !66
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !64

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #11, !srcloc !67
  %and.i.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !69
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !69
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %size, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge, label %if.then11.i.i.i.i, !prof !64

if.end.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_from_bpfptr_offset.exit

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i = sub i32 %size, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %copy_from_bpfptr_offset.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_bpfptr_offset.exit

copy_from_bpfptr_offset.exit:                     ; preds = %if.end.i.i, %if.then11.i.i.i.i, %if.end.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ 0, %if.end.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge ], [ %res.0.i.i.i.i, %if.then11.i.i.i.i ], [ %size, %if.then27.i.i.i.i ], [ %size, %land.rhs16.i.i.i.i.copy_from_bpfptr_offset.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_link_prime(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_link_settle(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_iter_new_fd(ptr noundef %link) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %cmp.not = icmp eq ptr %1, @bpf_iter_link_lops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.2, ptr noundef nonnull @bpf_iter_fops, ptr noundef null, i32 noundef 524288) #14
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call4 to i32
  br label %free_fd

if.end8:                                          ; preds = %if.end3
  %aux.i = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 1
  %3 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end8.if.end5.i_crit_edge, label %if.then.i

if.end8.if.end5.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %iter_seq_info.i = getelementptr inbounds %struct.bpf_map_ops, ptr %6, i32 0, i32 40
  %7 = ptrtoint ptr %iter_seq_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iter_seq_info.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.__get_seq_info.exit_crit_edge

if.then.i.__get_seq_info.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__get_seq_info.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end8.if.end5.i_crit_edge
  %tinfo.i = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 2
  %9 = ptrtoint ptr %tinfo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tinfo.i, align 4
  %reg_info.i = getelementptr inbounds %struct.bpf_iter_target_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %reg_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_info.i, align 4
  %seq_info6.i = getelementptr inbounds %struct.bpf_iter_reg, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %seq_info6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seq_info6.i, align 4
  br label %__get_seq_info.exit

__get_seq_info.exit:                              ; preds = %if.end5.i, %if.then.i.__get_seq_info.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end5.i ], [ %8, %if.then.i.__get_seq_info.exit_crit_edge ]
  %call10 = tail call fastcc i32 @prepare_seq_file(ptr noundef %call4, ptr noundef %link, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %free_file

if.end12:                                         ; preds = %__get_seq_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fd_install(i32 noundef %call, ptr noundef %call4) #14
  br label %cleanup

free_file:                                        ; preds = %__get_seq_info.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fput(ptr noundef %call4) #14
  br label %free_fd

free_fd:                                          ; preds = %free_file, %if.then6
  %err.0 = phi i32 [ %2, %if.then6 ], [ %call10, %free_file ]
  tail call void @put_unused_fd(i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %free_fd, %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_fd ], [ %call, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_seq_file(ptr noundef %file, ptr noundef %link, ptr noundef %seq_info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @link_mutex, i32 noundef 0) #14
  %prog2 = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %0 = ptrtoint ptr %prog2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog2, align 4
  tail call void @bpf_prog_inc(ptr noundef %1) #14
  tail call void @mutex_unlock(ptr noundef nonnull @link_mutex) #14
  %tinfo3 = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 2
  %2 = ptrtoint ptr %tinfo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tinfo3, align 4
  %seq_priv_size = getelementptr inbounds %struct.bpf_iter_seq_info, ptr %seq_info, i32 0, i32 3
  %4 = ptrtoint ptr %seq_priv_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_priv_size, align 4
  %add = add i32 %5, 40
  %6 = ptrtoint ptr %seq_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seq_info, align 4
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef %7, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.release_prog_crit_edge, label %if.end

entry.release_prog_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_prog

if.end:                                           ; preds = %entry
  %init_seq_private = getelementptr inbounds %struct.bpf_iter_seq_info, ptr %seq_info, i32 0, i32 1
  %8 = ptrtoint ptr %init_seq_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_seq_private, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %target_private = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 7
  %aux = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 1
  %call7 = tail call i32 %9(ptr noundef %target_private, ptr noundef %aux) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %release_seq_file

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %call, align 8
  %seq_info2.i = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %seq_info2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %seq_info, ptr %seq_info2.i, align 4
  %prog3.i = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %prog3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prog3.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @session_id, i32 noundef 8) #14
  %call.i1.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @session_id) #14
  %session_id.i = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %session_id.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i1.i.i, ptr %session_id.i, align 8
  %seq_num.i = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %seq_num.i, align 8
  %done_stop.i = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %done_stop.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %done_stop.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %target_private12 = getelementptr inbounds %struct.bpf_iter_priv_data, ptr %call, i32 0, i32 7
  %private = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %target_private12, ptr %private, align 8
  br label %cleanup

release_seq_file:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %f_inode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode, align 8
  %call14 = tail call i32 @seq_release_private(ptr noundef %20, ptr noundef %file) #14
  %private_data15 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %21 = ptrtoint ptr %private_data15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %private_data15, align 4
  br label %release_prog

release_prog:                                     ; preds = %release_seq_file, %entry.release_prog_crit_edge
  %err.0 = phi i32 [ %call7, %release_seq_file ], [ -12, %entry.release_prog_crit_edge ]
  tail call void @bpf_prog_put(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %release_prog, %if.end11
  %retval.0 = phi i32 [ %err.0, %release_prog ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bpf_iter_get_info(ptr nocapture noundef %meta, i1 noundef zeroext %in_stop) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta, align 8
  %file = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %5, @bpf_iter_fops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  br i1 %in_stop, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %done_stop = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %done_stop to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %done_stop, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %session_id = getelementptr i8, ptr %7, i32 -24
  %10 = ptrtoint ptr %session_id to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %session_id, align 8
  %session_id4 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 1
  %12 = ptrtoint ptr %session_id4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %session_id4, align 8
  %seq_num = getelementptr i8, ptr %7, i32 -16
  %13 = ptrtoint ptr %seq_num to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seq_num, align 8
  %seq_num5 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 2
  %15 = ptrtoint ptr %seq_num5 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %seq_num5, align 8
  %prog = getelementptr i8, ptr %7, i32 -32
  %16 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prog, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_iter_run_prog(ptr noundef %prog, ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @migrate_disable() #14
  tail call void @__cant_migrate(ptr noundef nonnull @.str.15, i32 noundef 613) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_iter_run_prog, %if.then.i.i)) #14
          to label %if.else.i.i [label %if.then.i.i], !srcloc !72

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  %call3.i.i = tail call i64 @sched_clock() #14
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %4 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %5(ptr noundef %ctx, ptr noundef %insnsi.i.i) #14
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %6 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats9.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !73
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %22 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i1 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, ptrtoint (ptr @lockdep_recursion to i32)
  %28 = inttoptr i32 %add.i.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i7.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i9.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !76
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %46, ptrtoint (ptr @hardirqs_enabled to i32)
  %47 = inttoptr i32 %add47.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !77
  %50 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i12.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !64

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %54 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !78
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #14
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %57) #14
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %15, align 8
  %inc.i.i.i = add i64 %59, 1
  store i64 %inc.i.i.i, ptr %15, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #14
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %60 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i2 = add i64 %conv.i.i.i, %61
  store i64 %add.i.i.i2, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %57) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !79
  %62 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !80
  %and.i.i.i4.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !81

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #14, !srcloc !82
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %65 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %66(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #14
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  tail call void @migrate_enable() #14
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3, label %bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge: ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %bpf_prog_run.exit
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %bpf_prog_run.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !83
  %67 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i.i.i10 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp = icmp eq i32 %ret.0.i.i, 0
  %cond = select i1 %cmp, i32 0, i32 -11
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_for_each_map_elem(i64 noundef %map, i64 noundef %callback_fn, i64 noundef %callback_ctx, i64 noundef %flags, i64 %__ur_1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %callback_fn to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %callback_ctx to i32
  %2 = inttoptr i32 %conv2 to ptr
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 128
  %map_for_each_callback.i = getelementptr inbounds %struct.bpf_map_ops, ptr %4, i32 0, i32 37
  %5 = ptrtoint ptr %map_for_each_callback.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_for_each_callback.i, align 4
  %call.i = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %flags) #14
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_loop(i64 noundef %nr_loops, i64 noundef %callback_fn, i64 noundef %callback_ctx, i64 noundef %flags, i64 %__ur_1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %nr_loops to i32
  %conv1 = trunc i64 %callback_fn to i32
  %0 = inttoptr i32 %conv1 to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool.not.i = icmp eq i64 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_loop.exit_crit_edge

entry.____bpf_loop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_loop.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %conv)
  %cmp.i = icmp ugt i32 %conv, 8388608
  br i1 %cmp.i, label %if.end.i.____bpf_loop.exit_crit_edge, label %for.cond.preheader.i

if.end.i.____bpf_loop.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_loop.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp318.not.i = icmp eq i32 %conv, 0
  br i1 %cmp318.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %1 = shl i64 %callback_ctx, 32
  %conv4.i = ashr exact i64 %1, 32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = zext i32 %i.019.i to i64
  %call.i = tail call i64 %0(i64 noundef %conv.i, i64 noundef %conv4.i, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool5.not.i = icmp eq i64 %call.i, 0
  %inc.i = add nuw i32 %i.019.i, 1
  br i1 %tobool5.not.i, label %for.inc.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i = zext i32 %inc.i to i64
  br label %____bpf_loop.exit

for.inc.i:                                        ; preds = %for.body.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %conv9.i = and i64 %nr_loops, 4294967295
  br label %____bpf_loop.exit

____bpf_loop.exit:                                ; preds = %for.end.i, %if.then6.i, %if.end.i.____bpf_loop.exit_crit_edge, %entry.____bpf_loop.exit_crit_edge
  %retval.0.i = phi i64 [ %conv7.i, %if.then6.i ], [ %conv9.i, %for.end.i ], [ -22, %entry.____bpf_loop.exit_crit_edge ], [ -7, %if.end.i.____bpf_loop.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_link_release(ptr noundef %link) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tinfo = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %tinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tinfo, align 4
  %reg_info = getelementptr inbounds %struct.bpf_iter_target_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_info, align 4
  %detach_target = getelementptr inbounds %struct.bpf_iter_reg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %detach_target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detach_target, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %aux = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 1
  tail call void %5(ptr noundef %aux) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_link_dealloc(ptr noundef %link) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %link) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_link_replace(ptr noundef %link, ptr noundef %new_prog, ptr noundef readnone %old_prog) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @link_mutex, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %old_prog, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %prog = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 4
  %cmp.not = icmp eq ptr %1, %old_prog
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %prog1 = getelementptr inbounds %struct.bpf_link, ptr %link, i32 0, i32 4
  %2 = ptrtoint ptr %prog1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog1, align 4
  %type = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type2 = getelementptr inbounds %struct.bpf_prog, ptr %new_prog, i32 0, i32 2
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %expected_attach_type, align 4
  %expected_attach_type5 = getelementptr inbounds %struct.bpf_prog, ptr %new_prog, i32 0, i32 3
  %10 = ptrtoint ptr %expected_attach_type5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %expected_attach_type5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6.not = icmp eq i32 %9, %11
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aux, align 4
  %attach_btf_id = getelementptr inbounds %struct.bpf_prog_aux, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %attach_btf_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attach_btf_id, align 4
  %aux9 = getelementptr inbounds %struct.bpf_prog, ptr %new_prog, i32 0, i32 10
  %16 = ptrtoint ptr %aux9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aux9, align 4
  %attach_btf_id10 = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %attach_btf_id10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attach_btf_id10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp11.not = icmp eq i32 %15, %19
  br i1 %cmp11.not, label %if.end13, label %lor.lhs.false7.out_unlock_crit_edge

lor.lhs.false7.out_unlock_crit_edge:              ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end13:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prog1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !84
  %20 = ptrtoint ptr %new_prog to i32
  tail call void @llvm.prefetch.p0(ptr %prog1, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %20, ptr %prog1) #14, !srcloc !85
  %asmresult.i = extractvalue { i32, i32 } %21, 0
  %22 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  tail call void @bpf_prog_put(ptr noundef %22) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end13, %lor.lhs.false7.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end13 ], [ -1, %land.lhs.true.out_unlock_crit_edge ], [ -22, %lor.lhs.false7.out_unlock_crit_edge ], [ -22, %lor.lhs.false.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @link_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_link_show_fdinfo(ptr noundef %link, ptr noundef %seq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tinfo = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %tinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tinfo, align 4
  %reg_info = getelementptr inbounds %struct.bpf_iter_target_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef %5) #14
  %6 = ptrtoint ptr %tinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tinfo, align 4
  %reg_info2 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reg_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_info2, align 4
  %show_fdinfo3 = getelementptr inbounds %struct.bpf_iter_reg, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %show_fdinfo3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %show_fdinfo3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %aux = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 1
  tail call void %11(ptr noundef %aux, ptr noundef %seq) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_link_fill_link_info(ptr noundef %link, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %conv3 = trunc i64 %2 to i32
  %3 = inttoptr i32 %conv3 to ptr
  %target_name_len = getelementptr inbounds %struct.bpf_link_info, ptr %info, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %target_name_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_name_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool5.not = icmp eq i32 %conv3, 0
  %xor67 = xor i1 %tobool.not, %tobool5.not
  br i1 %xor67, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.end:                                           ; preds = %entry
  %tinfo = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 2
  %6 = ptrtoint ptr %tinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tinfo, align 4
  %reg_info = getelementptr inbounds %struct.bpf_iter_target_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_info, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call = tail call i32 @strlen(ptr noundef %11) #21
  %add = add i32 %call, 1
  %12 = ptrtoint ptr %target_name_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %target_name_len, align 8
  br i1 %tobool5.not, label %if.end.if.end34_crit_edge, label %if.then11

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp13.not = icmp ult i32 %5, %add
  br i1 %cmp13.not, label %if.else, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup42_crit_edge, label %if.then27.i.i, !prof !64

land.rhs16.i.i.cleanup42_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup42

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %11, i32 noundef %add, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %3, i32 %add, i32 -1226833920) #18, !srcloc !65
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %11, i32 noundef %add) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %add) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %copy_to_user.exit.if.end34_crit_edge, label %copy_to_user.exit.cleanup42_crit_edge

copy_to_user.exit.cleanup42_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

copy_to_user.exit.if.end34_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.else:                                          ; preds = %if.then11
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.i.i74 = icmp slt i32 %sub, 0
  br i1 %cmp9.i.i74, label %land.rhs16.i.i77, label %if.then.i.i.i80

land.rhs16.i.i77:                                 ; preds = %if.else
  %.b71.i.i76 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i76, label %land.rhs16.i.i77.cleanup42_crit_edge, label %if.then27.i.i78, !prof !64

land.rhs16.i.i77.cleanup42_crit_edge:             ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.then27.i.i78:                                  ; preds = %land.rhs16.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup42

if.then.i.i.i80:                                  ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %11, i32 noundef %sub, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #14
  %call.i.i81 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i81, label %if.then.i.i.i80.copy_to_user.exit90_crit_edge, label %if.end.i.i85

if.then.i.i.i80.copy_to_user.exit90_crit_edge:    ; preds = %if.then.i.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit90

if.end.i.i85:                                     ; preds = %if.then.i.i.i80
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %3, i32 %sub, i32 -1226833920) #18, !srcloc !65
  %asmresult.i.i83 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83)
  %cmp.i6.i84 = icmp eq i32 %asmresult.i.i83, 0
  br i1 %cmp.i6.i84, label %if.then2.i.i88, label %if.end.i.i85.copy_to_user.exit90_crit_edge

if.end.i.i85.copy_to_user.exit90_crit_edge:       ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit90

if.then2.i.i88:                                   ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %11, i32 noundef %sub) #14
  %call.i12.i.i87 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %3, ptr noundef %11, i32 noundef %sub) #14
  br label %copy_to_user.exit90

copy_to_user.exit90:                              ; preds = %if.then2.i.i88, %if.end.i.i85.copy_to_user.exit90_crit_edge, %if.then.i.i.i80.copy_to_user.exit90_crit_edge
  %n.addr.0.i89 = phi i32 [ %sub, %if.then.i.i.i80.copy_to_user.exit90_crit_edge ], [ %call.i12.i.i87, %if.then2.i.i88 ], [ %sub, %if.end.i.i85.copy_to_user.exit90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i89)
  %tobool22.not = icmp eq i32 %n.addr.0.i89, 0
  br i1 %tobool22.not, label %if.end24, label %copy_to_user.exit90.cleanup42_crit_edge

copy_to_user.exit90.cleanup42_crit_edge:          ; preds = %copy_to_user.exit90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.end24:                                         ; preds = %copy_to_user.exit90
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr25 = getelementptr i8, ptr %3, i32 %5
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 -1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 472) #14
  %15 = tail call i32 @llvm.read_register.i32(metadata !54) #14
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !67
  %and.i = and i32 %17, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !69
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr26, i8 0, i32 -1226833921) #14, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  %. = select i1 %tobool30.not, i32 -28, i32 -14
  br label %cleanup42

if.end34:                                         ; preds = %copy_to_user.exit.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %19 = ptrtoint ptr %tinfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tinfo, align 4
  %reg_info36 = getelementptr inbounds %struct.bpf_iter_target_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_info36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_info36, align 4
  %fill_link_info37 = getelementptr inbounds %struct.bpf_iter_reg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %fill_link_info37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fill_link_info37, align 4
  %tobool38.not = icmp eq ptr %24, null
  br i1 %tobool38.not, label %if.end34.cleanup42_crit_edge, label %if.then39

if.end34.cleanup42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %aux = getelementptr inbounds %struct.bpf_iter_link, ptr %link, i32 0, i32 1
  %call40 = tail call i32 %24(ptr noundef %aux, ptr noundef %info) #14
  br label %cleanup42

cleanup42:                                        ; preds = %if.then39, %if.end34.cleanup42_crit_edge, %if.end24, %copy_to_user.exit90.cleanup42_crit_edge, %if.then27.i.i78, %land.rhs16.i.i77.cleanup42_crit_edge, %copy_to_user.exit.cleanup42_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ %call40, %if.then39 ], [ -22, %entry.cleanup42_crit_edge ], [ -14, %copy_to_user.exit.cleanup42_crit_edge ], [ -14, %copy_to_user.exit90.cleanup42_crit_edge ], [ %., %if.end24 ], [ 0, %if.end34.cleanup42_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup42_crit_edge ], [ -14, %if.then27.i.i78 ], [ -14, %land.rhs16.i.i77.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_inc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @bpf_iter_fops, !1, !"bpf_iter_fops", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bpf_iter.c", i32 274, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/bpf/bpf_iter.c", i32 320, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_iter.c", i32 333, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_iter.c", i32 639, i32 28}
!8 = !{ptr @bpf_for_each_map_elem_proto, !9, !"bpf_for_each_map_elem_proto", i1 false, i1 false}
!9 = !{!"../kernel/bpf/bpf_iter.c", i32 708, i32 29}
!10 = !{ptr @bpf_loop_proto, !11, !"bpf_loop_proto", i1 false, i1 false}
!11 = !{!"../kernel/bpf/bpf_iter.c", i32 743, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/bpf/bpf_iter.c", i32 156, i32 4}
!14 = !{ptr @bpf_seq_read._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @__func__.bpf_seq_read, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bpf_seq_read._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @bpf_seq_read._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/bpf/bpf_iter.c", i32 32, i32 8}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @targets_mutex, !27, !"targets_mutex", i1 false, i1 false}
!30 = !{ptr @targets, !31, !"targets", i1 false, i1 false}
!31 = !{!"../kernel/bpf/bpf_iter.c", i32 31, i32 25}
!32 = !{ptr @bpf_iter_link_lops, !33, !"bpf_iter_link_lops", i1 false, i1 false}
!33 = !{!"../kernel/bpf/bpf_iter.c", i32 485, i32 34}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/bpf/bpf_iter.c", i32 35, i32 8}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @link_mutex, !35, !"link_mutex", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/bpf/bpf_iter.c", i32 437, i32 6}
!40 = !{ptr @session_id, !41, !"session_id", i1 false, i1 false}
!41 = !{!"../kernel/bpf/bpf_iter.c", i32 38, i32 19}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/filter.h", i32 613, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
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
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2152180638, i64 2152180663}
!66 = !{i64 2152179957, i64 2152179982}
!67 = !{i64 4675512}
!68 = !{i64 4675709}
!69 = !{i64 2152160942}
!70 = !{i8 0, i8 2}
!71 = !{i64 2149479924}
!72 = !{i64 2148492076, i64 2148492081, i64 2148492094, i64 2148492138, i64 2148492172, i64 2148492193}
!73 = !{i64 1072158, i64 1072219}
!74 = !{i64 2149988545}
!75 = !{i64 2149993479}
!76 = !{i64 2150015197}
!77 = !{i64 2150020091}
!78 = !{i64 2150096618}
!79 = !{i64 2150096943}
!80 = !{i64 1074890}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 1075175}
!83 = !{i64 2149480190}
!84 = !{i64 2157047029}
!85 = !{i64 1174246, i64 1174263, i64 1174287, i64 1174313, i64 1174331}
!86 = !{i64 2157047379}
!87 = !{i64 2157052008, i64 2157052288, i64 2157052622, i64 2157052956}
