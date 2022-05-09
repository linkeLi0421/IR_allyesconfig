; ModuleID = '/llk/IR_all_yes/kernel/bpf/hashtab.c_pt.bc'
source_filename = "../kernel/bpf/hashtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_htab = type { %struct.bpf_map, ptr, ptr, [120 x i8], %union.anon.166, ptr, %struct.atomic_t, i32, i32, i32, %struct.lock_class_key, [8 x ptr], [68 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { %struct.bpf_lru }
%struct.bpf_lru = type { %union.anon.167, ptr, ptr, i32, i32, i8, [111 x i8] }
%union.anon.167 = type { %struct.bpf_common_lru }
%struct.bpf_common_lru = type { %struct.bpf_lru_list, ptr, [124 x i8] }
%struct.bpf_lru_list = type { [3 x %struct.list_head], [2 x i32], ptr, [92 x i8], %struct.raw_spinlock, [84 x i8] }
%struct.atomic_t = type { i32 }
%struct.bucket = type { %struct.hlist_nulls_head, %union.anon.165 }
%struct.hlist_nulls_head = type { ptr }
%union.anon.165 = type { %struct.raw_spinlock }
%struct.htab_elem = type { %union.anon.162, %union.anon.168, i32, [0 x i8] }
%union.anon.162 = type { %struct.hlist_nulls_node }
%struct.hlist_nulls_node = type { ptr, ptr }
%union.anon.168 = type { %struct.bpf_lru_node }
%struct.bpf_lru_node = type { %struct.list_head, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.anon.1 = type { i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.anon.163 = type { ptr, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.bpf_iter_seq_hash_map_info = type { ptr, ptr, ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bpf_iter__bpf_map_elem = type { %union.anon.169, %union.anon.171, %union.anon.172, %union.anon.173 }
%union.anon.169 = type { i64 }
%union.anon.171 = type { i64 }
%union.anon.172 = type { i64 }
%union.anon.173 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.170, i64, i64 }
%union.anon.170 = type { i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpf_htab\00", [23 x i8] zeroinitializer }, align 32
@htab_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iter_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @bpf_hash_map_seq_ops, ptr @bpf_iter_init_hash_map, ptr @bpf_iter_fini_hash_map, i32 20 }, [16 x i8] zeroinitializer }, align 32
@htab_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @htab_map_alloc_check, ptr @htab_map_alloc, ptr null, ptr @htab_map_free, ptr @htab_map_get_next_key, ptr @htab_map_free_timers, ptr null, ptr @htab_map_lookup_batch, ptr @htab_map_lookup_and_delete_elem, ptr @htab_map_lookup_and_delete_batch, ptr @generic_map_update_batch, ptr @generic_map_delete_batch, ptr @htab_map_lookup_elem, ptr @htab_map_update_elem, ptr @htab_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htab_map_gen_lookup, ptr null, ptr @htab_map_seq_show_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_hash_elem, ptr @.str, ptr @htab_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@htab_lru_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@htab_lru_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @htab_map_alloc_check, ptr @htab_map_alloc, ptr null, ptr @htab_map_free, ptr @htab_map_get_next_key, ptr @htab_map_free_timers, ptr @htab_lru_map_lookup_elem_sys, ptr @htab_lru_map_lookup_batch, ptr @htab_lru_map_lookup_and_delete_elem, ptr @htab_lru_map_lookup_and_delete_batch, ptr @generic_map_update_batch, ptr @generic_map_delete_batch, ptr @htab_lru_map_lookup_elem, ptr @htab_lru_map_update_elem, ptr @htab_lru_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htab_lru_map_gen_lookup, ptr null, ptr @htab_map_seq_show_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_hash_elem, ptr @.str, ptr @htab_lru_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@htab_percpu_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@htab_percpu_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @htab_map_alloc_check, ptr @htab_map_alloc, ptr null, ptr @htab_map_free, ptr @htab_map_get_next_key, ptr null, ptr null, ptr @htab_percpu_map_lookup_batch, ptr @htab_percpu_map_lookup_and_delete_elem, ptr @htab_percpu_map_lookup_and_delete_batch, ptr @generic_map_update_batch, ptr @generic_map_delete_batch, ptr @htab_percpu_map_lookup_elem, ptr @htab_percpu_map_update_elem, ptr @htab_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htab_percpu_map_seq_show_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_hash_elem, ptr @.str, ptr @htab_percpu_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@htab_lru_percpu_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@htab_lru_percpu_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @htab_map_alloc_check, ptr @htab_map_alloc, ptr null, ptr @htab_map_free, ptr @htab_map_get_next_key, ptr null, ptr null, ptr @htab_lru_percpu_map_lookup_batch, ptr @htab_lru_percpu_map_lookup_and_delete_elem, ptr @htab_lru_percpu_map_lookup_and_delete_batch, ptr @generic_map_update_batch, ptr @generic_map_delete_batch, ptr @htab_lru_percpu_map_lookup_elem, ptr @htab_lru_percpu_map_update_elem, ptr @htab_lru_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htab_percpu_map_seq_show_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_hash_elem, ptr @.str, ptr @htab_lru_percpu_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@htab_of_maps_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@htab_of_maps_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @fd_htab_map_alloc_check, ptr @htab_of_map_alloc, ptr null, ptr @htab_of_map_free, ptr @htab_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @htab_of_map_lookup_elem, ptr null, ptr @htab_map_delete_elem, ptr null, ptr null, ptr null, ptr @bpf_map_fd_get_ptr, ptr @bpf_map_fd_put_ptr, ptr @htab_of_map_gen_lookup, ptr @bpf_map_fd_sys_lookup_elem, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr @htab_of_maps_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@htab_init_buckets.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&htab->buckets[i].raw_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&htab->lockdep_key\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/bpf/hashtab.c\00", [43 x i8] zeroinitializer }, align 32
@htab_map_get_next_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bpf_prog_active = external dso_local global i32, section ".data..percpu", align 4
@htab_map_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@htab_map_delete_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@bpf_hash_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bpf_hash_map_seq_start, ptr @bpf_hash_map_seq_stop, ptr @bpf_hash_map_seq_next, ptr @bpf_hash_map_seq_show }, [16 x i8] zeroinitializer }, align 32
@htab_lru_map_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@htab_lru_map_delete_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__htab_map_lookup_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__htab_lru_percpu_map_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__htab_percpu_map_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": {\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09cpu%d: \00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 10]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2125, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"htab_map_btf_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2108, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"iter_seq_info\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2045, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"htab_map_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2109, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"htab_lru_map_btf_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2130, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"htab_lru_map_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2131, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"htab_percpu_map_btf_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2255, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"htab_percpu_map_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2256, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"htab_lru_percpu_map_btf_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2275, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"htab_lru_percpu_map_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2276, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"htab_of_maps_map_btf_id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2415, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"htab_of_maps_map_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2416, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 147, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 148, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 155, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 2089, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 230, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 214, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 156, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1483, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1485, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"bpf_hash_map_seq_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2038, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 695, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 723, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2242, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2245, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [24 x i8] c"../kernel/bpf/hashtab.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 2250, i32 14 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @htab_map_btf_id, ptr @iter_seq_info, ptr @htab_map_ops, ptr @htab_lru_map_btf_id, ptr @htab_lru_map_ops, ptr @htab_percpu_map_btf_id, ptr @htab_percpu_map_ops, ptr @htab_lru_percpu_map_btf_id, ptr @htab_lru_percpu_map_ops, ptr @htab_of_maps_map_btf_id, ptr @htab_of_maps_map_ops, ptr @htab_init_buckets.__key, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bpf_hash_map_seq_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iter_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_lru_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_lru_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_percpu_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_percpu_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_lru_percpu_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_lru_percpu_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_of_maps_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_of_maps_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htab_init_buckets.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_hash_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_alloc_check(ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and12 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and16 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %4 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %.off95 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off95)
  %switch96 = icmp ult i32 %.off95, 2
  br i1 %switch96, label %land.lhs.true, label %bpf_map_attr_numa_node.exit.if.end_crit_edge

bpf_map_attr_numa_node.exit.if.end_crit_edge:     ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %bpf_map_attr_numa_node.exit
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #14
  br i1 %call.i, label %land.lhs.true.if.end_crit_edge, label %bpf_capable.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

bpf_capable.exit:                                 ; preds = %land.lhs.true
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %bpf_map_attr_numa_node.exit.if.end_crit_edge
  br i1 %tobool17.not, label %if.end.if.end28_crit_edge, label %land.lhs.true25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true25:                                  ; preds = %if.end
  %call26 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call26, label %land.lhs.true25.if.end28_crit_edge, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25.if.end28_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true25.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %6 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_flags, align 8
  %and30 = and i32 %7, -480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %and.i97 = and i32 %7, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i97)
  %cmp.i = icmp ne i32 %and.i97, 384
  %or.cond = and i1 %tobool31.not, %cmp.i
  %brmerge = select i1 %switch96, i1 true, i1 %tobool.not
  %or.cond98 = select i1 %or.cond, i1 %brmerge, i1 false
  br i1 %or.cond98, label %if.end40, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %switch93.not = xor i1 %switch96, true
  %brmerge94 = select i1 %switch93.not, i1 true, i1 %tobool13.not
  br i1 %brmerge94, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp46.not = icmp eq i32 %cond.i, -1
  br i1 %cmp46.not, label %if.end45.if.end52_crit_edge, label %land.lhs.true47

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

land.lhs.true47:                                  ; preds = %if.end45
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %lor.lhs.false49 [
    i32 10, label %land.lhs.true47.cleanup_crit_edge
    i32 5, label %land.lhs.true47.cleanup_crit_edge99
  ]

land.lhs.true47.cleanup_crit_edge99:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false49:                                  ; preds = %land.lhs.true47
  br i1 %tobool.not, label %lor.lhs.false49.if.end52_crit_edge, label %lor.lhs.false49.cleanup_crit_edge

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false49.if.end52_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.end52:                                         ; preds = %lor.lhs.false49.if.end52_crit_edge, %if.end45.if.end52_crit_edge
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp53 = icmp eq i32 %10, 0
  br i1 %cmp53, label %if.end52.cleanup_crit_edge, label %lor.lhs.false54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false54:                                  ; preds = %if.end52
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp55 = icmp eq i32 %12, 0
  br i1 %cmp55, label %lor.lhs.false54.cleanup_crit_edge, label %lor.lhs.false56

lor.lhs.false54.cleanup_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp57 = icmp eq i32 %14, 0
  br i1 %cmp57, label %lor.lhs.false56.cleanup_crit_edge, label %if.end59

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %12 to i64
  %conv62 = zext i32 %14 to i64
  %add = add nuw nsw i64 %conv62, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388583, i64 %add)
  %cmp63 = icmp ugt i64 %add, 8388583
  %. = select i1 %cmp63, i32 -7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false54.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge99, %if.end40.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %bpf_capable.exit.cleanup_crit_edge ], [ -1, %land.lhs.true25.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %land.lhs.true47.cleanup_crit_edge ], [ -22, %land.lhs.true47.cleanup_crit_edge99 ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %lor.lhs.false54.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ %., %if.end59 ], [ -524, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %and12 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 5246400, i32 noundef 1152) #17
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lockdep_key = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 10
  tail call void @lockdep_register_key(ptr noundef %lockdep_key) #14
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #14
  br i1 %tobool.not, label %if.end.if.end34_crit_edge, label %if.end.i.i

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %5) #14
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 4
  %sub = add i32 %call4.i.i, -1
  %add = add i32 %sub, %7
  %8 = urem i32 %add, %call4.i.i
  %mul = sub i32 %add, %8
  %max_entries21 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %max_entries21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %max_entries21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %7)
  %cmp25 = icmp ult i32 %mul, %7
  br i1 %cmp25, label %if.end.i.i318, label %if.end.i.i.if.end34_crit_edge

if.end.i.i.if.end34_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end.i.i318:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i317 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %10) #14
  %rem = urem i32 %7, %call4.i.i317
  %sub30 = sub i32 %7, %rem
  %11 = ptrtoint ptr %max_entries21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub30, ptr %max_entries21, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i318, %if.end.i.i.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %max_entries36 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %max_entries36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries36, align 8
  %sub.i321 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i321)
  %tobool.not.i.i.i = icmp eq i32 %sub.i321, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %sub.i321, i1 true) #14, !range !92
  %sub.i.i.i = sub nuw nsw i32 32, %14
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %n_buckets = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %n_buckets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.i, ptr %n_buckets, align 8
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_size, align 16
  %sub72 = add i32 %17, -1
  %or = or i32 %sub72, 7
  %add74 = add i32 %or, 25
  %elem_size = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 8
  %18 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %1, label %if.else [
    i32 10, label %if.end34.if.end85_crit_edge
    i32 5, label %if.end34.if.end85_crit_edge343
  ]

if.end34.if.end85_crit_edge343:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.end34.if.end85_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value_size, align 4
  %sub80 = add i32 %20, -1
  %or81 = or i32 %sub80, 7
  %add82 = add i32 %or81, 1
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.end34.if.end85_crit_edge, %if.end34.if.end85_crit_edge343
  %add82.pn = phi i32 [ %add82, %if.else ], [ 4, %if.end34.if.end85_crit_edge ], [ 4, %if.end34.if.end85_crit_edge343 ]
  %storemerge = add i32 %add82.pn, %add74
  %21 = ptrtoint ptr %elem_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %elem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 89478485, i32 %shl.i)
  %cmp90 = icmp ugt i32 %shl.i, 89478485
  br i1 %cmp90, label %if.end85.free_htab_crit_edge, label %if.end93

if.end85.free_htab_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_htab

if.end93:                                         ; preds = %if.end85
  %mul95 = mul nuw i32 %shl.i, 48
  %conv96 = zext i32 %mul95 to i64
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numa_node, align 8
  %call98 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv96, i32 noundef %23) #14
  %buckets = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %buckets to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call98, ptr %buckets, align 128
  %tobool100.not = icmp eq ptr %call98, null
  br i1 %tobool100.not, label %if.end93.free_htab_crit_edge, label %for.body.preheader

if.end93.free_htab_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_htab

for.body.preheader:                               ; preds = %if.end93
  %call106 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call106, ptr %arrayidx, align 4
  %tobool109.not = icmp eq ptr %call106, null
  br i1 %tobool109.not, label %for.body.preheader.free_map_locked_crit_edge, label %for.cond

for.body.preheader.free_map_locked_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond:                                         ; preds = %for.body.preheader
  %call106.1 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.1 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call106.1, ptr %arrayidx.1, align 8
  %tobool109.not.1 = icmp eq ptr %call106.1, null
  br i1 %tobool109.not.1, label %for.cond.free_map_locked_crit_edge, label %for.cond.1

for.cond.free_map_locked_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.1:                                       ; preds = %for.cond
  %call106.2 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.2 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call106.2, ptr %arrayidx.2, align 4
  %tobool109.not.2 = icmp eq ptr %call106.2, null
  br i1 %tobool109.not.2, label %for.cond.1.free_map_locked_crit_edge, label %for.cond.2

for.cond.1.free_map_locked_crit_edge:             ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.2:                                       ; preds = %for.cond.1
  %call106.3 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.3 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call106.3, ptr %arrayidx.3, align 8
  %tobool109.not.3 = icmp eq ptr %call106.3, null
  br i1 %tobool109.not.3, label %for.cond.2.free_map_locked_crit_edge, label %for.cond.3

for.cond.2.free_map_locked_crit_edge:             ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.3:                                       ; preds = %for.cond.2
  %call106.4 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.4 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call106.4, ptr %arrayidx.4, align 4
  %tobool109.not.4 = icmp eq ptr %call106.4, null
  br i1 %tobool109.not.4, label %for.cond.3.free_map_locked_crit_edge, label %for.cond.4

for.cond.3.free_map_locked_crit_edge:             ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.4:                                       ; preds = %for.cond.3
  %call106.5 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.5 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call106.5, ptr %arrayidx.5, align 8
  %tobool109.not.5 = icmp eq ptr %call106.5, null
  br i1 %tobool109.not.5, label %for.cond.4.free_map_locked_crit_edge, label %for.cond.5

for.cond.4.free_map_locked_crit_edge:             ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.5:                                       ; preds = %for.cond.4
  %call106.6 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.6 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call106.6, ptr %arrayidx.6, align 4
  %tobool109.not.6 = icmp eq ptr %call106.6, null
  br i1 %tobool109.not.6, label %for.cond.5.free_map_locked_crit_edge, label %for.cond.6

for.cond.5.free_map_locked_crit_edge:             ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.6:                                       ; preds = %for.cond.5
  %call106.7 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 1051840) #14
  %arrayidx.7 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call106.7, ptr %arrayidx.7, align 8
  %tobool109.not.7 = icmp eq ptr %call106.7, null
  br i1 %tobool109.not.7, label %for.cond.6.free_map_locked_crit_edge, label %for.cond.7

for.cond.6.free_map_locked_crit_edge:             ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

for.cond.7:                                       ; preds = %for.cond.6
  %map_flags113 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %map_flags113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map_flags113, align 8
  %and114 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.else117, label %for.cond.7.if.end120_crit_edge

for.cond.7.if.end120_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.else117:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @get_random_u32() #14
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %for.cond.7.if.end120_crit_edge
  %.sink = phi i32 [ %call.i, %if.else117 ], [ 0, %for.cond.7.if.end120_crit_edge ]
  %35 = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 16
  %37 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp53.not.i = icmp eq i32 %38, 0
  br i1 %cmp53.not.i, label %if.end120.htab_init_buckets.exit_crit_edge, label %if.end120.for.body.i_crit_edge

if.end120.for.body.i_crit_edge:                   ; preds = %if.end120
  br label %for.body.i

if.end120.htab_init_buckets.exit_crit_edge:       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_init_buckets.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end120.for.body.i_crit_edge
  %i.054.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end120.for.body.i_crit_edge ]
  %shl.i322 = shl i32 %i.054.i, 1
  %or.i = or i32 %shl.i322, 1
  %39 = inttoptr i32 %or.i to ptr
  %40 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buckets, align 128
  %arrayidx.i = getelementptr %struct.bucket, ptr %41, i32 %i.054.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %arrayidx.i, align 4
  %43 = load ptr, ptr %buckets, align 128
  %44 = getelementptr %struct.bucket, ptr %43, i32 %i.054.i, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef nonnull @htab_init_buckets.__key, i16 noundef signext 2) #14
  %45 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buckets, align 128
  %dep_map.i = getelementptr %struct.bucket, ptr %46, i32 %i.054.i, i32 1, i32 0, i32 4
  %wait_type_inner.i = getelementptr %struct.bucket, ptr %46, i32 %i.054.i, i32 1, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef %lockdep_key, i32 noundef 0, i8 noundef zeroext %48, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 155, i32 noundef 0) #14
  %call.i.i = tail call i32 @__cond_resched() #14
  %inc.i = add nuw i32 %i.054.i, 1
  %49 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_buckets, align 8
  %cmp.i = icmp ult i32 %inc.i, %50
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.htab_init_buckets.exit_crit_edge

for.body.i.htab_init_buckets.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_init_buckets.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

htab_init_buckets.exit:                           ; preds = %for.body.i.htab_init_buckets.exit_crit_edge, %if.end120.htab_init_buckets.exit_crit_edge
  br i1 %tobool13.not, label %if.then122, label %htab_init_buckets.exit.cleanup_crit_edge

htab_init_buckets.exit.cleanup_crit_edge:         ; preds = %htab_init_buckets.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then122:                                       ; preds = %htab_init_buckets.exit
  %51 = ptrtoint ptr %max_entries36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_entries36, align 8
  %map_type.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %map_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %map_type.i.i.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %54, label %htab_has_extra_elems.exit.i [
    i32 10, label %if.then122.if.end.i_crit_edge
    i32 5, label %if.then122.if.end.i_crit_edge344
  ]

if.then122.if.end.i_crit_edge344:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then122.if.end.i_crit_edge:                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

htab_has_extra_elems.exit.i:                      ; preds = %if.then122
  %56 = add i32 %54, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %56)
  %57 = icmp ult i32 %56, -2
  br i1 %57, label %if.end.i.i.i, label %htab_has_extra_elems.exit.i.if.end.i_crit_edge

htab_has_extra_elems.exit.i.if.end.i_crit_edge:   ; preds = %htab_has_extra_elems.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %htab_has_extra_elems.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %58) #14
  %add.i = add i32 %call4.i.i.i, %52
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %htab_has_extra_elems.exit.i.if.end.i_crit_edge, %if.then122.if.end.i_crit_edge, %if.then122.if.end.i_crit_edge344
  %num_entries.0.i = phi i32 [ %add.i, %if.end.i.i.i ], [ %52, %htab_has_extra_elems.exit.i.if.end.i_crit_edge ], [ %52, %if.then122.if.end.i_crit_edge ], [ %52, %if.then122.if.end.i_crit_edge344 ]
  %59 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %elem_size, align 4
  %conv.i = zext i32 %60 to i64
  %conv2.i = zext i32 %num_entries.0.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv2.i
  %61 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numa_node, align 8
  %call4.i = tail call ptr @bpf_map_area_alloc(i64 noundef %mul.i, i32 noundef %62) #14
  %elems.i = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %elems.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call4.i, ptr %elems.i, align 4
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.free_map_locked_crit_edge, label %if.end7.i

if.end.i.free_map_locked_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

if.end7.i:                                        ; preds = %if.end.i
  %64 = ptrtoint ptr %map_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %map_type.i.i.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %65, label %if.end7.i.skip_percpu_elems.i_crit_edge [
    i32 10, label %if.end7.i.for.cond.preheader.i_crit_edge
    i32 5, label %if.end7.i.for.cond.preheader.i_crit_edge345
  ]

if.end7.i.for.cond.preheader.i_crit_edge345:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

if.end7.i.for.cond.preheader.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

if.end7.i.skip_percpu_elems.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_percpu_elems.i

for.cond.preheader.i:                             ; preds = %if.end7.i.for.cond.preheader.i_crit_edge, %if.end7.i.for.cond.preheader.i_crit_edge345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries.0.i)
  %cmp82.not.i = icmp eq i32 %num_entries.0.i, 0
  br i1 %cmp82.not.i, label %for.cond.preheader.i.skip_percpu_elems.i_crit_edge, label %for.body.lr.ph.i327

for.cond.preheader.i.skip_percpu_elems.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_percpu_elems.i

for.body.lr.ph.i327:                              ; preds = %for.cond.preheader.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 5
  br label %for.body.i330

for.body.i330:                                    ; preds = %for.inc.i.for.body.i330_crit_edge, %for.body.lr.ph.i327
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i327 ], [ %inc.i332, %for.inc.i.for.body.i330_crit_edge ]
  %67 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value_size.i, align 4
  %sub.i328 = add i32 %68, -1
  %or.i329 = or i32 %sub.i328, 7
  %add13.i = add i32 %or.i329, 1
  %call15.i = tail call ptr @bpf_map_alloc_percpu(ptr noundef %call7.i.i, i32 noundef %add13.i, i32 noundef 8, i32 noundef 1060032) #14
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %for.body.i330.free_elems.i_crit_edge, label %for.inc.i

for.body.i330.free_elems.i_crit_edge:             ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_elems.i

for.inc.i:                                        ; preds = %for.body.i330
  %69 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %elems.i, align 4
  %71 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %elem_size, align 4
  %mul.i.i = mul i32 %72, %i.083.i
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %mul.i.i
  %73 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %key_size, align 16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %add.ptr.i.i, i32 0, i32 3
  %add.ptr.i75.i = getelementptr i8, ptr %key.i.i, i32 %74
  %75 = ptrtoint ptr %add.ptr.i75.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call15.i, ptr %add.ptr.i75.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 332, i32 noundef 0) #14
  %call.i.i331 = tail call i32 @__cond_resched() #14
  %inc.i332 = add nuw i32 %i.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i332, %num_entries.0.i
  br i1 %exitcond.not.i, label %for.inc.i.skip_percpu_elems.i_crit_edge, label %for.inc.i.for.body.i330_crit_edge

for.inc.i.for.body.i330_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i330

for.inc.i.skip_percpu_elems.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_percpu_elems.i

skip_percpu_elems.i:                              ; preds = %for.inc.i.skip_percpu_elems.i_crit_edge, %for.cond.preheader.i.skip_percpu_elems.i_crit_edge, %if.end7.i.skip_percpu_elems.i_crit_edge
  %76 = ptrtoint ptr %map_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %map_type.i.i.i, align 4
  %78 = add i32 %77, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %79 = icmp ult i32 %78, 2
  %80 = getelementptr inbounds %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 4
  br i1 %79, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %skip_percpu_elems.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %map_flags113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %map_flags113, align 8
  %and.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.i = icmp ne i32 %and.i, 0
  %call27.i = tail call i32 @bpf_lru_init(ptr noundef %80, i1 noundef zeroext %tobool26.i, i32 noundef 12, ptr noundef nonnull @htab_lru_map_delete_node, ptr noundef %call7.i.i) #14
  br label %if.end29.i

if.else.i:                                        ; preds = %skip_percpu_elems.i
  call void @__sanitizer_cov_trace_pc() #16
  %call28.i = tail call i32 @pcpu_freelist_init(ptr noundef %80) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then24.i
  %err.0.i = phi i32 [ %call27.i, %if.then24.i ], [ %call28.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool30.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end29.i.free_elems.i_crit_edge

if.end29.i.free_elems.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_elems.i

if.end32.i:                                       ; preds = %if.end29.i
  %83 = ptrtoint ptr %map_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %map_type.i.i.i, align 4
  %85 = add i32 %84, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %86 = icmp ult i32 %85, 2
  %87 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %elems.i, align 4
  br i1 %86, label %if.then34.i, label %if.else37.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %elem_size, align 4
  tail call void @bpf_lru_populate(ptr noundef %80, ptr noundef %88, i32 noundef 8, i32 noundef %90, i32 noundef %num_entries.0.i) #14
  br label %if.end126

if.else37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %88, i32 4
  %91 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %elem_size, align 4
  tail call void @pcpu_freelist_populate(ptr noundef %80, ptr noundef %add.ptr.i, i32 noundef %92, i32 noundef %num_entries.0.i) #14
  br label %if.end126

free_elems.i:                                     ; preds = %if.end29.i.free_elems.i_crit_edge, %for.body.i330.free_elems.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end29.i.free_elems.i_crit_edge ], [ -12, %for.body.i330.free_elems.i_crit_edge ]
  %93 = ptrtoint ptr %map_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %map_type.i.i.i, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %94, label %free_elems.i.prealloc_init.exit.thread339_crit_edge [
    i32 10, label %free_elems.i.for.cond.preheader.i.i_crit_edge
    i32 5, label %free_elems.i.for.cond.preheader.i.i_crit_edge346
  ]

free_elems.i.for.cond.preheader.i.i_crit_edge346: ; preds = %free_elems.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i.i

free_elems.i.for.cond.preheader.i.i_crit_edge:    ; preds = %free_elems.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i.i

free_elems.i.prealloc_init.exit.thread339_crit_edge: ; preds = %free_elems.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prealloc_init.exit.thread339

for.cond.preheader.i.i:                           ; preds = %free_elems.i.for.cond.preheader.i.i_crit_edge, %free_elems.i.for.cond.preheader.i.i_crit_edge346
  %96 = ptrtoint ptr %max_entries36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_entries36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp12.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp12.not.i.i, label %for.cond.preheader.i.i.prealloc_init.exit.thread339_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.prealloc_init.exit.thread339_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prealloc_init.exit.thread339

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %98 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %elems.i, align 4
  %100 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %elem_size, align 4
  %mul.i.i.i = mul i32 %101, %i.013.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %99, i32 %mul.i.i.i
  %102 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %key_size, align 16
  %key.i.i.i = getelementptr inbounds %struct.htab_elem, ptr %add.ptr.i.i.i, i32 0, i32 3
  %add.ptr.i11.i.i = getelementptr i8, ptr %key.i.i.i, i32 %103
  %104 = ptrtoint ptr %add.ptr.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i11.i.i, align 4
  tail call void @free_percpu(ptr noundef %105) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 270, i32 noundef 0) #14
  %call.i.i.i = tail call i32 @__cond_resched() #14
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %106 = ptrtoint ptr %max_entries36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %max_entries36, align 8
  %cmp.i79.i = icmp ult i32 %inc.i.i, %107
  br i1 %cmp.i79.i, label %for.body.i.i.for.body.i.i_crit_edge, label %prealloc_init.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

prealloc_init.exit.thread339:                     ; preds = %for.cond.preheader.i.i.prealloc_init.exit.thread339_crit_edge, %free_elems.i.prealloc_init.exit.thread339_crit_edge
  %108 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %elems.i, align 4
  tail call void @bpf_map_area_free(ptr noundef %109) #14
  br label %free_map_locked

prealloc_init.exit:                               ; preds = %for.body.i.i
  %110 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %elems.i, align 4
  tail call void @bpf_map_area_free(ptr noundef %111) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool124.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool124.not, label %prealloc_init.exit.if.end126_crit_edge, label %prealloc_init.exit.free_map_locked_crit_edge

prealloc_init.exit.free_map_locked_crit_edge:     ; preds = %prealloc_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_map_locked

prealloc_init.exit.if.end126_crit_edge:           ; preds = %prealloc_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

if.end126:                                        ; preds = %prealloc_init.exit.if.end126_crit_edge, %if.else37.i, %if.then34.i
  %112 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %land.lhs.true [
    i32 10, label %if.end126.cleanup_crit_edge
    i32 5, label %if.end126.cleanup_crit_edge347
  ]

if.end126.cleanup_crit_edge347:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end126
  %.off = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true.cleanup_crit_edge, label %if.then129

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then129:                                       ; preds = %land.lhs.true
  %call130 = tail call fastcc i32 @alloc_extra_elems(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then129.cleanup_crit_edge, label %free_prealloc

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

free_prealloc:                                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @prealloc_destroy(ptr noundef nonnull %call7.i.i)
  br label %free_map_locked

free_map_locked:                                  ; preds = %free_prealloc, %prealloc_init.exit.free_map_locked_crit_edge, %prealloc_init.exit.thread339, %if.end.i.free_map_locked_crit_edge, %for.cond.6.free_map_locked_crit_edge, %for.cond.5.free_map_locked_crit_edge, %for.cond.4.free_map_locked_crit_edge, %for.cond.3.free_map_locked_crit_edge, %for.cond.2.free_map_locked_crit_edge, %for.cond.1.free_map_locked_crit_edge, %for.cond.free_map_locked_crit_edge, %for.body.preheader.free_map_locked_crit_edge
  %err.0 = phi i32 [ %err.1.i, %prealloc_init.exit.free_map_locked_crit_edge ], [ %call130, %free_prealloc ], [ %err.1.i, %prealloc_init.exit.thread339 ], [ -12, %if.end.i.free_map_locked_crit_edge ], [ -12, %for.cond.6.free_map_locked_crit_edge ], [ -12, %for.cond.5.free_map_locked_crit_edge ], [ -12, %for.cond.4.free_map_locked_crit_edge ], [ -12, %for.cond.3.free_map_locked_crit_edge ], [ -12, %for.cond.2.free_map_locked_crit_edge ], [ -12, %for.cond.1.free_map_locked_crit_edge ], [ -12, %for.cond.free_map_locked_crit_edge ], [ -12, %for.body.preheader.free_map_locked_crit_edge ]
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx, align 4
  tail call void @free_percpu(ptr noundef %114) #14
  %arrayidx142.1 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 1
  %115 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx142.1, align 8
  tail call void @free_percpu(ptr noundef %116) #14
  %arrayidx142.2 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 2
  %117 = ptrtoint ptr %arrayidx142.2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx142.2, align 4
  tail call void @free_percpu(ptr noundef %118) #14
  %arrayidx142.3 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 3
  %119 = ptrtoint ptr %arrayidx142.3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx142.3, align 8
  tail call void @free_percpu(ptr noundef %120) #14
  %arrayidx142.4 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 4
  %121 = ptrtoint ptr %arrayidx142.4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx142.4, align 4
  tail call void @free_percpu(ptr noundef %122) #14
  %arrayidx142.5 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 5
  %123 = ptrtoint ptr %arrayidx142.5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx142.5, align 8
  tail call void @free_percpu(ptr noundef %124) #14
  %arrayidx142.6 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 6
  %125 = ptrtoint ptr %arrayidx142.6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx142.6, align 4
  tail call void @free_percpu(ptr noundef %126) #14
  %arrayidx142.7 = getelementptr %struct.bpf_htab, ptr %call7.i.i, i32 0, i32 11, i32 7
  %127 = ptrtoint ptr %arrayidx142.7 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx142.7, align 8
  tail call void @free_percpu(ptr noundef %128) #14
  %129 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buckets, align 128
  tail call void @bpf_map_area_free(ptr noundef %130) #14
  br label %free_htab

free_htab:                                        ; preds = %free_map_locked, %if.end93.free_htab_crit_edge, %if.end85.free_htab_crit_edge
  %err.1 = phi i32 [ -7, %if.end85.free_htab_crit_edge ], [ %err.0, %free_map_locked ], [ -12, %if.end93.free_htab_crit_edge ]
  tail call void @lockdep_unregister_key(ptr noundef %lockdep_key) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %131 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_htab, %if.then129.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %if.end126.cleanup_crit_edge347, %htab_init_buckets.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %131, %free_htab ], [ %call7.i.i, %land.lhs.true.cleanup_crit_edge ], [ %call7.i.i, %if.end126.cleanup_crit_edge ], [ %call7.i.i, %if.end126.cleanup_crit_edge347 ], [ %call7.i.i, %if.then129.cleanup_crit_edge ], [ %call7.i.i, %htab_init_buckets.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #14
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %2 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not.i = icmp eq i32 %3, 0
  br i1 %cmp27.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %buckets.i.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %timer_off.i.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi i32 [ %3, %for.body.lr.ph.i ], [ %29, %for.end.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buckets.i.i.i, align 128
  %sub.i.i.i = add i32 %4, -1
  %and.i.i.i = and i32 %sub.i.i.i, %i.028.i
  %arrayidx.i.i.i = getelementptr %struct.bucket, ptr %6, i32 %and.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i22.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not23.i = icmp eq i32 %and.i22.i, 0
  br i1 %tobool.not23.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %htab_elem_free.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %n.024.i = phi ptr [ %11, %htab_elem_free.exit.i.land.rhs.i_crit_edge ], [ %8, %for.body.i.land.rhs.i_crit_edge ]
  %10 = ptrtoint ptr %n.024.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %n.024.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.024.i, i32 0, i32 1
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %15 = ptrtoint ptr %11 to i32
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body13.i.i.i, label %land.rhs.i.hlist_nulls_del_rcu.exit.i_crit_edge

land.rhs.i.hlist_nulls_del_rcu.exit.i_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %hlist_nulls_del_rcu.exit.i

hlist_nulls_del_rcu.exit.i:                       ; preds = %do.body13.i.i.i, %land.rhs.i.hlist_nulls_del_rcu.exit.i_crit_edge
  %17 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %18 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 5
  br i1 %cmp.i.i, label %if.then.i.i, label %hlist_nulls_del_rcu.exit.i.if.end.i.i_crit_edge

hlist_nulls_del_rcu.exit.i.if.end.i.i_crit_edge:  ; preds = %hlist_nulls_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %hlist_nulls_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_size.i.i, align 16
  %key.i.i.i = getelementptr inbounds %struct.htab_elem, ptr %n.024.i, i32 0, i32 3
  %add.ptr.i.i.i = getelementptr i8, ptr %key.i.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i.i, align 4
  tail call void @free_percpu(ptr noundef %23) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %hlist_nulls_del_rcu.exit.i.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %timer_off.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timer_off.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end.i.i.htab_elem_free.exit.i_crit_edge, !prof !94

if.end.i.i.htab_elem_free.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_elem_free.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %key.i6.i.i = getelementptr inbounds %struct.htab_elem, ptr %n.024.i, i32 0, i32 3
  %26 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key_size.i.i, align 16
  %sub.i.i21.i = add i32 %27, -1
  %or.i.i.i = or i32 %sub.i.i21.i, 7
  %add.i.i.i = add i32 %or.i.i.i, 1
  %add.ptr.i7.i.i = getelementptr i8, ptr %key.i6.i.i, i32 %add.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 %25
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i.i) #14
  br label %htab_elem_free.exit.i

htab_elem_free.exit.i:                            ; preds = %if.then.i.i.i, %if.end.i.i.htab_elem_free.exit.i_crit_edge
  tail call void @kfree(ptr noundef %n.024.i) #14
  br i1 %tobool.not.i.i.i, label %htab_elem_free.exit.i.land.rhs.i_crit_edge, label %htab_elem_free.exit.i.for.end.i_crit_edge

htab_elem_free.exit.i.for.end.i_crit_edge:        ; preds = %htab_elem_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

htab_elem_free.exit.i.land.rhs.i_crit_edge:       ; preds = %htab_elem_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.end.i:                                        ; preds = %htab_elem_free.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc.i = add nuw i32 %i.028.i, 1
  %28 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_buckets.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @prealloc_destroy(ptr noundef %map)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %extra_elems = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 5
  %30 = ptrtoint ptr %extra_elems to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extra_elems, align 128
  tail call void @free_percpu(ptr noundef %31) #14
  %buckets = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %32 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buckets, align 128
  tail call void @bpf_map_area_free(ptr noundef %33) #14
  %arrayidx = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  tail call void @free_percpu(ptr noundef %35) #14
  %arrayidx.1 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.1, align 4
  tail call void @free_percpu(ptr noundef %37) #14
  %arrayidx.2 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.2, align 4
  tail call void @free_percpu(ptr noundef %39) #14
  %arrayidx.3 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.3, align 4
  tail call void @free_percpu(ptr noundef %41) #14
  %arrayidx.4 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 4
  %42 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.4, align 4
  tail call void @free_percpu(ptr noundef %43) #14
  %arrayidx.5 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 5
  %44 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.5, align 4
  tail call void @free_percpu(ptr noundef %45) #14
  %arrayidx.6 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 6
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.6, align 4
  tail call void @free_percpu(ptr noundef %47) #14
  %arrayidx.7 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 7
  %48 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.7, align 4
  tail call void @free_percpu(ptr noundef %49) #14
  %lockdep_key = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 10
  tail call void @lockdep_unregister_key(ptr noundef %lockdep_key) #14
  tail call void @kfree(ptr noundef %map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b120 = load i1, ptr @htab_map_get_next_key.__already_done, align 1
  br i1 %.b120, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !95

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @htab_map_get_next_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 778, i32 noundef 9, ptr noundef null) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %key_size38 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size38 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size38, align 16
  %tobool39.not = icmp eq ptr %key, null
  br i1 %tobool39.not, label %if.end30.find_first_elem_crit_edge, label %if.end41

if.end30.find_first_elem_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_first_elem

if.end41:                                         ; preds = %if.end30
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call42 = tail call fastcc i32 @htab_map_hash(ptr noundef nonnull %key, i32 noundef %1, i32 noundef %3)
  %buckets.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i.i, align 128
  %n_buckets.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i.i, align 8
  %sub.i.i = add i32 %7, -1
  %and.i.i = and i32 %sub.i.i, %call42
  %arrayidx.i.i = getelementptr %struct.bucket, ptr %5, i32 %and.i.i
  br label %again.i

again.i:                                          ; preds = %for.end.i.again.i_crit_edge, %if.end41
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !96
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.030.i = load volatile ptr, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %n.030.i to i32
  %and.i31.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not32.i, label %again.i.for.body.i_crit_edge, label %again.i.for.end.i_crit_edge

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

again.i.for.body.i_crit_edge:                     ; preds = %again.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %again.i.for.body.i_crit_edge
  %n.033.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.030.i, %again.i.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.033.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call42)
  %cmp.i = icmp eq i32 %11, %call42
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.033.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr nonnull %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %lookup_nulls_elem_raw.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %n.033.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i = load volatile ptr, ptr %n.033.i, align 4
  %13 = ptrtoint ptr %n.0.i to i32
  %and.i.i122 = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i.i122, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %n.0.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %again.i.for.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %9, %again.i.for.end.i_crit_edge ], [ %14, %for.end.i.loopexit ]
  %shr.i.i = lshr i32 %.pre-phi.i, 1
  %cmp15.not.i = icmp eq i32 %shr.i.i, %and.i.i
  br i1 %cmp15.not.i, label %for.end.i.find_first_elem_crit_edge, label %for.end.i.again.i_crit_edge, !prof !95

for.end.i.again.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.i

for.end.i.find_first_elem_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_first_elem

lookup_nulls_elem_raw.exit:                       ; preds = %land.lhs.true.i
  %tobool45.not = icmp eq ptr %n.033.i, null
  br i1 %tobool45.not, label %lookup_nulls_elem_raw.exit.find_first_elem_crit_edge, label %if.end47

lookup_nulls_elem_raw.exit.find_first_elem_crit_edge: ; preds = %lookup_nulls_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_first_elem

if.end47:                                         ; preds = %lookup_nulls_elem_raw.exit
  %15 = ptrtoint ptr %n.033.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %n.033.i, align 8
  %17 = ptrtoint ptr %16 to i32
  %and.i123 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool55.not = icmp ne i32 %and.i123, 0
  %tobool59.not133 = icmp eq ptr %16, null
  %tobool59.not = select i1 %tobool55.not, i1 true, i1 %tobool59.not133
  br i1 %tobool59.not, label %if.end62, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end62:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %n_buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_buckets.i.i, align 8
  %sub = add i32 %19, -1
  %and = and i32 %sub, %call42
  %inc = add i32 %and, 1
  br label %find_first_elem

find_first_elem:                                  ; preds = %if.end62, %lookup_nulls_elem_raw.exit.find_first_elem_crit_edge, %for.end.i.find_first_elem_crit_edge, %if.end30.find_first_elem_crit_edge
  %i.0 = phi i32 [ %inc, %if.end62 ], [ 0, %lookup_nulls_elem_raw.exit.find_first_elem_crit_edge ], [ 0, %if.end30.find_first_elem_crit_edge ], [ 0, %for.end.i.find_first_elem_crit_edge ]
  %n_buckets64 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %20 = ptrtoint ptr %n_buckets64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_buckets64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %21)
  %cmp136 = icmp ult i32 %i.0, %21
  br i1 %cmp136, label %for.body.lr.ph, label %find_first_elem.cleanup_crit_edge

find_first_elem.cleanup_crit_edge:                ; preds = %find_first_elem
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %find_first_elem
  %buckets.i.i124 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %22 = ptrtoint ptr %buckets.i.i124 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buckets.i.i124, align 128
  %sub.i.i126 = add i32 %21, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc87 = add i32 %i.1137, 1
  %exitcond.not = icmp eq i32 %inc87, %21
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.1137 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc87, %for.cond.for.body_crit_edge ]
  %and.i.i127 = and i32 %sub.i.i126, %i.1137
  %arrayidx.i.i128 = getelementptr %struct.bucket, ptr %23, i32 %and.i.i127
  %24 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx.i.i128, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i129 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool74.not = icmp ne i32 %and.i129, 0
  %tobool82.not132 = icmp eq ptr %25, null
  %tobool82.not = select i1 %tobool74.not, i1 true, i1 %tobool82.not132
  br i1 %tobool82.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %if.end47.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %16, %if.end47.cleanup.sink.split_crit_edge ], [ %25, %for.body.cleanup.sink.split_crit_edge ]
  %key84 = getelementptr inbounds %struct.htab_elem, ptr %.lcssa.sink, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %next_key, ptr %key84, i32 %1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %find_first_elem.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %find_first_elem.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_map_free_timers(ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %0 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_off.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %2 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @htab_free_malloced_timers(ptr noundef %map)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @htab_free_prealloced_timers(ptr noundef %map)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_lookup_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_lookup_and_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_lookup_and_delete_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_update_batch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_delete_batch(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %key1 = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 3
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 16
  %sub = add i32 %1, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add.ptr = getelementptr i8, ptr %key1, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %map_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp = icmp ugt i64 %and, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs14, label %land.rhs.if.end48_crit_edge

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.rhs14:                                       ; preds = %land.rhs
  %.b194 = load i1, ptr @htab_map_update_elem.__already_done, align 1
  br i1 %.b194, label %land.rhs14.if.end48_crit_edge, label %if.then25, !prof !95

land.rhs14.if.end48_crit_edge:                    ; preds = %land.rhs14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then25:                                        ; preds = %land.rhs14
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @htab_map_update_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1035, i32 noundef 9, ptr noundef null) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then25, %land.rhs14.if.end48_crit_edge, %land.rhs.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %key_size56 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size56, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call57 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call57
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %and60 = and i64 %map_flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61 = icmp ne i64 %and60, 0
  br i1 %tobool61, label %if.then68, label %if.end48.if.end90_crit_edge, !prof !94

if.end48.if.end90_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then68:                                        ; preds = %if.end48
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %8 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  br i1 %cmp.i, label %if.end79, label %if.then68.cleanup_crit_edge, !prof !95

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end79:                                         ; preds = %if.then68
  %call80 = tail call fastcc ptr @lookup_nulls_elem_raw(ptr noundef %arrayidx.i, i32 noundef %call57, ptr noundef %key, i32 noundef %1, i32 noundef %7)
  %tobool.not.i = icmp eq ptr %call80, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp.i199 = icmp ne i64 %and, 1
  %10 = or i1 %cmp.i199, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp4.i = icmp eq i64 %and, 2
  %or.cond1.i = and i1 %cmp4.i, %tobool.not.i
  %spec.select.i = select i1 %or.cond1.i, i32 -2, i32 0
  %retval.0.i = select i1 %10, i32 %spec.select.i, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool82.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool82.not, label %if.end84, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  br i1 %tobool.not.i, label %if.end84.if.end90_crit_edge, label %if.then86

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  %key87 = getelementptr inbounds %struct.htab_elem, ptr %call80, i32 0, i32 3
  %sub = add i32 %1, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add.ptr88 = getelementptr i8, ptr %key87, i32 %add
  tail call void @copy_map_value_locked(ptr noundef %map, ptr noundef %add.ptr88, ptr noundef %value, i1 noundef zeroext false) #14
  br label %cleanup

if.end90:                                         ; preds = %if.end84.if.end90_crit_edge, %if.end48.if.end90_crit_edge
  %and.i200 = and i32 %call57, 7
  tail call void @migrate_disable() #14
  %arrayidx.i201 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i200
  %11 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i201, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add8.i = add i32 %22, 1
  store i32 %add8.i, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %if.end94, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i201, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %29, %25
  %30 = inttoptr i32 %add30.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add31.i = add i32 %32, -1
  store i32 %add31.i, ptr %30, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  %33 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end94.for.body.i_crit_edge, label %if.end94.lookup_elem_raw.exit_crit_edge

if.end94.lookup_elem_raw.exit_crit_edge:          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

if.end94.for.body.i_crit_edge:                    ; preds = %if.end94
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end94.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end94.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %36 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %call57)
  %cmp.i203 = icmp eq i32 %37, %call57
  br i1 %cmp.i203, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.lookup_elem_raw.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %39 = ptrtoint ptr %n.0.i to i32
  %and.i.i204 = and i32 %39, 1
  %tobool.not.i205 = icmp eq i32 %and.i.i204, 0
  br i1 %tobool.not.i205, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lookup_elem_raw.exit_crit_edge

for.inc.i.lookup_elem_raw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %for.inc.i.lookup_elem_raw.exit_crit_edge, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, %if.end94.lookup_elem_raw.exit_crit_edge
  %retval.0.i206 = phi ptr [ null, %if.end94.lookup_elem_raw.exit_crit_edge ], [ %n.022.i, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge ], [ null, %for.inc.i.lookup_elem_raw.exit_crit_edge ]
  %tobool.not.i207 = icmp eq ptr %retval.0.i206, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp.i209 = icmp ne i64 %and, 1
  %40 = or i1 %cmp.i209, %tobool.not.i207
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp4.i210 = icmp eq i64 %and, 2
  %or.cond1.i211 = and i1 %cmp4.i210, %tobool.not.i207
  %spec.select.i212 = select i1 %or.cond1.i211, i32 -2, i32 0
  %retval.0.i213 = select i1 %40, i32 %spec.select.i212, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i213)
  %tobool97.not = icmp eq i32 %retval.0.i213, 0
  br i1 %tobool97.not, label %if.end99, label %lookup_elem_raw.exit.err_crit_edge

lookup_elem_raw.exit.err_crit_edge:               ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end99:                                         ; preds = %lookup_elem_raw.exit
  %not.tobool.not.i207 = xor i1 %tobool.not.i207, true
  %spec.select = and i1 %tobool61, %not.tobool.not.i207
  br i1 %spec.select, label %if.then111, label %if.end118, !prof !94

if.then111:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  %key112 = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i206, i32 0, i32 3
  %sub114 = add i32 %1, -1
  %or115 = or i32 %sub114, 7
  %add116 = add i32 %or115, 1
  %add.ptr117 = getelementptr i8, ptr %key112, i32 %add116
  tail call void @copy_map_value_locked(ptr noundef %map, ptr noundef %add.ptr117, ptr noundef %value, i1 noundef zeroext false) #14
  br label %err

if.end118:                                        ; preds = %if.end99
  %call119 = tail call fastcc ptr @alloc_htab_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i32 noundef %1, i32 noundef %call57, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %retval.0.i206)
  %cmp.i214 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %call119 to i32
  br label %err

if.end123:                                        ; preds = %if.end118
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %call119 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %call119, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %call119, i32 0, i32 1
  %45 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call119, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %43 to i32
  %and.i.i215 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.not.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.not.i216, label %do.body49.i, label %if.end123.hlist_nulls_add_head_rcu.exit_crit_edge

if.end123.hlist_nulls_add_head_rcu.exit_crit_edge: ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call119, ptr %pprev51.i, align 4
  br label %hlist_nulls_add_head_rcu.exit

hlist_nulls_add_head_rcu.exit:                    ; preds = %do.body49.i, %if.end123.hlist_nulls_add_head_rcu.exit_crit_edge
  br i1 %tobool.not.i207, label %hlist_nulls_add_head_rcu.exit.err_crit_edge, label %if.then125

hlist_nulls_add_head_rcu.exit.err_crit_edge:      ; preds = %hlist_nulls_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then125:                                       ; preds = %hlist_nulls_add_head_rcu.exit
  %49 = ptrtoint ptr %retval.0.i206 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %retval.0.i206, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %retval.0.i206, i32 0, i32 1
  %51 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pprev2.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %50, ptr %52, align 4
  %54 = ptrtoint ptr %50 to i32
  %and.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then125.hlist_nulls_del_rcu.exit_crit_edge

if.then125.hlist_nulls_del_rcu.exit_crit_edge:    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %52, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.then125.hlist_nulls_del_rcu.exit_crit_edge
  %56 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %57 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %map_flags.i, align 8
  %and.i217 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i218 = icmp eq i32 %and.i217, 0
  br i1 %tobool.not.i218, label %if.else, label %if.then127

if.then127:                                       ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_htab_elem(ptr noundef %map, ptr noundef nonnull %retval.0.i206)
  br label %err

if.else:                                          ; preds = %hlist_nulls_del_rcu.exit
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %59 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.i.i = icmp sgt i32 %60, -1
  br i1 %cmp.i.i, label %if.then.i221, label %if.else.err_crit_edge, !prof !94

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then.i221:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i206, i32 0, i32 3
  %61 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %key_size56, align 16
  %sub.i219 = add i32 %62, -1
  %or.i = or i32 %sub.i219, 7
  %add.i220 = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %add.i220
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %60
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i) #14
  br label %err

err:                                              ; preds = %if.then.i221, %if.else.err_crit_edge, %if.then127, %hlist_nulls_add_head_rcu.exit.err_crit_edge, %if.then121, %if.then111, %lookup_elem_raw.exit.err_crit_edge
  %ret.0 = phi i32 [ %retval.0.i213, %lookup_elem_raw.exit.err_crit_edge ], [ 0, %if.then111 ], [ %41, %if.then121 ], [ 0, %if.then127 ], [ 0, %hlist_nulls_add_head_rcu.exit.err_crit_edge ], [ 0, %if.else.err_crit_edge ], [ 0, %if.then.i221 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call41.i) #14
  %63 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i201, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i225 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i225 to ptr
  %cpu.i226 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu.i226 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i226, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx11.i, align 4
  %add.i227 = add i32 %71, %65
  %72 = inttoptr i32 %add.i227 to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add12.i = add i32 %74, -1
  store i32 %add12.i, ptr %72, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

cleanup:                                          ; preds = %err, %htab_lock_bucket.exit, %if.then86, %if.end79.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then86 ], [ %ret.0, %err ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then68.cleanup_crit_edge ], [ %retval.0.i, %if.end79.cleanup_crit_edge ], [ -16, %htab_lock_bucket.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs8, label %land.rhs.if.end36_crit_edge

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs8:                                        ; preds = %land.rhs
  %.b81 = load i1, ptr @htab_map_delete_elem.__already_done, align 1
  br i1 %.b81, label %land.rhs8.if.end36_crit_edge, label %if.then, !prof !95

land.rhs8.if.end36_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then:                                          ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @htab_map_delete_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1335, i32 noundef 9, ptr noundef null) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs8.if.end36_crit_edge, %land.rhs.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  %key_size44 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size44 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size44, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call45 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %and.i85 = and i32 %call45, 7
  tail call void @migrate_disable() #14
  %arrayidx.i86 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i85
  %8 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i86, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add8.i = add i32 %19, 1
  store i32 %add8.i, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end51, label %if.end36.cleanup_crit_edge, !prof !95

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call45
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %20 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end51.for.body.i_crit_edge, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end51.for.body.i_crit_edge:                    ; preds = %if.end51
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end51.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end51.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %23 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call45)
  %cmp.i = icmp eq i32 %24, %call45
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %lookup_elem_raw.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %26 = ptrtoint ptr %n.0.i to i32
  %and.i.i87 = and i32 %26, 1
  %tobool.not.i = icmp eq i32 %and.i.i87, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end55_crit_edge

for.inc.i.if.end55_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %land.lhs.true.i
  %tobool53.not = icmp eq ptr %n.022.i, null
  br i1 %tobool53.not, label %lookup_elem_raw.exit.if.end55_crit_edge, label %if.then54

lookup_elem_raw.exit.if.end55_crit_edge:          ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %lookup_elem_raw.exit
  %27 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %n.022.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.022.i, i32 0, i32 1
  %29 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev2.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %30, align 4
  %32 = ptrtoint ptr %28 to i32
  %and.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then54.hlist_nulls_del_rcu.exit_crit_edge

if.then54.hlist_nulls_del_rcu.exit_crit_edge:     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %30, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.then54.hlist_nulls_del_rcu.exit_crit_edge
  %34 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call fastcc void @free_htab_elem(ptr noundef %map, ptr noundef nonnull %n.022.i)
  br label %if.end55

if.end55:                                         ; preds = %hlist_nulls_del_rcu.exit, %lookup_elem_raw.exit.if.end55_crit_edge, %for.inc.i.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %ret.0 = phi i32 [ 0, %hlist_nulls_del_rcu.exit ], [ -2, %lookup_elem_raw.exit.if.end55_crit_edge ], [ -2, %if.end51.if.end55_crit_edge ], [ -2, %for.inc.i.if.end55_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call41.i) #14
  %35 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i91 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i91 to ptr
  %cpu.i92 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end36.cleanup_crit_edge
  %cpu.i.sink = phi ptr [ %cpu.i92, %if.end55 ], [ %cpu.i, %if.end36.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %ret.0, %if.end55 ], [ -16, %if.end36.cleanup_crit_edge ]
  %37 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.sink105.in = load ptr, ptr %arrayidx.i86, align 4
  %.sink105 = ptrtoint ptr %.sink105.in to i32
  %38 = ptrtoint ptr %cpu.i.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.sink, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %41, %.sink105
  %42 = inttoptr i32 %add30.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add31.i = add i32 %44, -1
  store i32 %add31.i, ptr %42, align 4
  tail call void @migrate_enable() #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htab_map_gen_lookup(ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %insn_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %0 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -123, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %3 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 sub (i32 ptrtoint (ptr @__htab_map_lookup_elem to i32), i32 ptrtoint (ptr @__bpf_call_base to i32)), ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %5 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %6 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %7 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size, align 16
  %sub = add i32 %9, -1
  %or = or i32 %sub, 7
  %add30 = add i32 %or, 25
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %incdec.ptr4, align 4
  %.compoundliteral18.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral18.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral18.sroa.2.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  %12 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %13 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add30, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_map_seq_show_elem(ptr nocapture noundef readonly %map, ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i11 = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key) #14
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %rcu_read_lock.exit.if.then_crit_edge, label %htab_map_lookup_elem.exit

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

htab_map_lookup_elem.exit:                        ; preds = %rcu_read_lock.exit
  %key1.i = getelementptr inbounds %struct.htab_elem, ptr %call.i11, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %4 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %5, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key1.i, i32 %add.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %htab_map_lookup_elem.exit.if.then_crit_edge, label %if.end

htab_map_lookup_elem.exit.if.then_crit_edge:      ; preds = %htab_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %htab_map_lookup_elem.exit.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i14, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.then
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %cleanup

if.end:                                           ; preds = %htab_map_lookup_elem.exit
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %6 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btf, align 8
  %btf_key_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 13
  %8 = ptrtoint ptr %btf_key_type_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %btf_key_type_id, align 4
  tail call void @btf_type_seq_show(ptr noundef %7, i32 noundef %9, ptr noundef %key, ptr noundef %m) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #14
  %10 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btf, align 8
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %12 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %btf_value_type_id, align 64
  tail call void @btf_type_seq_show(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %add.ptr.i, ptr noundef %m) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #14
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i23, label %if.end.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true.i26

if.end.rcu_read_unlock.exit33_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

land.lhs.true.i26:                                ; preds = %if.end
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit33

rcu_read_unlock.exit33:                           ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, %if.end.rcu_read_unlock.exit33_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit33, %rcu_read_unlock.exit
  %14 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i30 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i32 = add i32 %17, -1
  store volatile i32 %sub.i.i.i32, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_set_for_each_callback_args(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_for_each_hash_elem(ptr noundef %map, ptr nocapture noundef readonly %callback_fn, ptr noundef %callback_ctx, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %cmp.not = icmp eq i64 %flags, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type.i, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 16
  %sub = add i32 %3, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %if.end.if.end2_crit_edge [
    i32 10, label %if.end.if.then1_crit_edge
    i32 5, label %if.end.if.then1_crit_edge108
  ]

if.end.if.then1_crit_edge108:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then1

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then1:                                         ; preds = %if.end.if.then1_crit_edge, %if.end.if.then1_crit_edge108
  tail call void @migrate_disable() #14
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %n_buckets = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %5 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3100.not = icmp eq i32 %6, 0
  br i1 %cmp3100.not, label %if.end2.out_crit_edge, label %for.body.lr.ph

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %if.end2
  %buckets = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %map to i32
  %conv = sext i32 %7 to i64
  %8 = ptrtoint ptr %callback_ctx to i32
  %conv35 = sext i32 %8 to i64
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit97.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %rcu_read_unlock.exit97.for.body_crit_edge ]
  %num_elems.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %num_elems.1, %rcu_read_unlock.exit97.for.body_crit_edge ]
  %9 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buckets, align 128
  %arrayidx = getelementptr %struct.bucket, ptr %10, i32 %i.0102
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !101
  br label %for.cond7

for.cond7:                                        ; preds = %if.end32.for.cond7_crit_edge, %rcu_read_lock.exit
  %num_elems.1 = phi i32 [ %num_elems.0101, %rcu_read_lock.exit ], [ %inc, %if.end32.for.cond7_crit_edge ]
  %n.0.in = phi ptr [ %arrayidx, %rcu_read_lock.exit ], [ %n.0, %if.end32.for.cond7_crit_edge ]
  %15 = ptrtoint ptr %n.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %n.0 = load volatile ptr, ptr %n.0.in, align 4
  %16 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  br i1 %tobool9.not, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond7
  %key16 = getelementptr inbounds %struct.htab_elem, ptr %n.0, i32 0, i32 3
  %17 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %if.else [
    i32 10, label %for.body15.if.then18_crit_edge
    i32 5, label %for.body15.if.then18_crit_edge109
  ]

for.body15.if.then18_crit_edge109:                ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

for.body15.if.then18_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.then18:                                        ; preds = %for.body15.if.then18_crit_edge, %for.body15.if.then18_crit_edge109
  %18 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_size, align 16
  %add.ptr.i = getelementptr i8, ptr %key16, i32 %19
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i77 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i77 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %28, %22
  %29 = inttoptr i32 %add28 to ptr
  br label %if.end32

if.else:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr31 = getelementptr i8, ptr %key16, i32 %add
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then18
  %val.0 = phi ptr [ %29, %if.then18 ], [ %add.ptr31, %if.else ]
  %inc = add i32 %num_elems.1, 1
  %30 = ptrtoint ptr %key16 to i32
  %conv33 = sext i32 %30 to i64
  %31 = ptrtoint ptr %val.0 to i32
  %conv34 = sext i32 %31 to i64
  %call36 = tail call i64 %callback_fn(i64 noundef %conv, i64 noundef %conv33, i64 noundef %conv34, i64 noundef %conv35, i64 noundef 0) #14
  %tobool37.not = icmp eq i64 %call36, 0
  br i1 %tobool37.not, label %if.end32.for.cond7_crit_edge, label %if.then38

if.end32.for.cond7_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond7

if.then38:                                        ; preds = %if.end32
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i78, label %if.then38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

if.then38.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %if.then38
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %if.then38.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %32 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i85 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %out

for.end:                                          ; preds = %for.cond7
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i87, label %for.end.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true.i90

for.end.rcu_read_unlock.exit97_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit97

land.lhs.true.i90:                                ; preds = %for.end
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit97

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit97

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit97

rcu_read_unlock.exit97:                           ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, %for.end.rcu_read_unlock.exit97_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %36 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i94 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i96 = add i32 %39, -1
  store volatile i32 %sub.i.i.i96, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %inc46 = add nuw i32 %i.0102, 1
  %40 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_buckets, align 8
  %cmp3 = icmp ult i32 %inc46, %41
  br i1 %cmp3, label %rcu_read_unlock.exit97.for.body_crit_edge, label %rcu_read_unlock.exit97.out_crit_edge

rcu_read_unlock.exit97.out_crit_edge:             ; preds = %rcu_read_unlock.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

rcu_read_unlock.exit97.for.body_crit_edge:        ; preds = %rcu_read_unlock.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out:                                              ; preds = %rcu_read_unlock.exit97.out_crit_edge, %rcu_read_unlock.exit, %if.end2.out_crit_edge
  %num_elems.2 = phi i32 [ %inc, %rcu_read_unlock.exit ], [ 0, %if.end2.out_crit_edge ], [ %num_elems.1, %rcu_read_unlock.exit97.out_crit_edge ]
  %42 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %out.cleanup_crit_edge [
    i32 10, label %out.if.then49_crit_edge
    i32 5, label %out.if.then49_crit_edge110
  ]

out.if.then49_crit_edge110:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

out.if.then49_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then49:                                        ; preds = %out.if.then49_crit_edge, %out.if.then49_crit_edge110
  tail call void @migrate_enable() #14
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %num_elems.2, %if.then49 ], [ %num_elems.2, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_lru_map_lookup_elem_sys(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__htab_lru_map_lookup_elem.exit_crit_edge, label %if.then.i

entry.__htab_lru_map_lookup_elem.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__htab_lru_map_lookup_elem.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %key3.i = getelementptr inbounds %struct.htab_elem, ptr %call.i, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %1, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key3.i, i32 %add.i
  br label %__htab_lru_map_lookup_elem.exit

__htab_lru_map_lookup_elem.exit:                  ; preds = %if.then.i, %entry.__htab_lru_map_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %entry.__htab_lru_map_lookup_elem.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_map_lookup_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_map_lookup_and_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_map_lookup_and_delete_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_lru_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__htab_lru_map_lookup_elem.exit_crit_edge, label %if.then.i

entry.__htab_lru_map_lookup_elem.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__htab_lru_map_lookup_elem.exit

if.then.i:                                        ; preds = %entry
  %ref.i.i = getelementptr inbounds %struct.htab_elem, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ref.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ref.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge
  %key3.i = getelementptr inbounds %struct.htab_elem, ptr %call.i, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %3 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %4, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key3.i, i32 %add.i
  br label %__htab_lru_map_lookup_elem.exit

__htab_lru_map_lookup_elem.exit:                  ; preds = %if.end.i, %entry.__htab_lru_map_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %entry.__htab_lru_map_lookup_elem.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs14, label %land.rhs.if.end48_crit_edge

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.rhs14:                                       ; preds = %land.rhs
  %.b129 = load i1, ptr @htab_lru_map_update_elem.__already_done, align 1
  br i1 %.b129, label %land.rhs14.if.end48_crit_edge, label %if.then25, !prof !95

land.rhs14.if.end48_crit_edge:                    ; preds = %land.rhs14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then25:                                        ; preds = %land.rhs14
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @htab_lru_map_update_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1137, i32 noundef 9, ptr noundef null) #14
  br label %if.end48

if.end48:                                         ; preds = %if.then25, %land.rhs14.if.end48_crit_edge, %land.rhs.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %key_size56 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size56, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call57 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call57
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %8 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  %call.i = tail call ptr @bpf_lru_pop_free(ptr noundef %8, i32 noundef %call57) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end48.cleanup_crit_edge, label %if.then.i

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end48
  %9 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size56, align 16
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -8
  %key2.i = getelementptr i8, ptr %call.i, i32 16
  %11 = call ptr @memcpy(ptr %key2.i, ptr %key, i32 %10)
  %sub.i133 = add i32 %10, -1
  %or.i = or i32 %sub.i133, 7
  %add.i = add i32 %or.i, 1
  %add.ptr6.i = getelementptr i8, ptr %key2.i, i32 %add.i
  %spin_lock_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %12 = ptrtoint ptr %spin_lock_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spin_lock_off.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.i = icmp sgt i32 %13, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !94

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr6.i, i32 %13
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %15 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i16.i.i = icmp sgt i32 %16, -1
  br i1 %cmp.i16.i.i, label %if.then9.i.i, label %if.end.i.i.prealloc_lru_pop.exit_crit_edge, !prof !94

if.end.i.i.prealloc_lru_pop.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prealloc_lru_pop.exit

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr6.i, i32 %16
  %17 = call ptr @memset(ptr %add.ptr10.i.i, i32 0, i32 16)
  br label %prealloc_lru_pop.exit

prealloc_lru_pop.exit:                            ; preds = %if.then9.i.i, %if.end.i.i.prealloc_lru_pop.exit_crit_edge
  %tobool61.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool61.not, label %prealloc_lru_pop.exit.cleanup_crit_edge, label %if.end63

prealloc_lru_pop.exit.cleanup_crit_edge:          ; preds = %prealloc_lru_pop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end63:                                         ; preds = %prealloc_lru_pop.exit
  %18 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_size56, align 16
  %sub = add i32 %19, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add.ptr67 = getelementptr i8, ptr %key2.i, i32 %add
  %20 = ptrtoint ptr %spin_lock_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spin_lock_off.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, -1
  %22 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i69.i = icmp sgt i32 %23, -1
  br i1 %cmp.i.i, label %if.end.i, label %if.end.thread.i, !prof !94

if.end.i:                                         ; preds = %if.end63
  %24 = lshr i32 %23, 27
  %25 = and i32 %24, 16
  %26 = xor i32 %25, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %23, i32 0, !prof !94
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %spec.select97.i)
  %cmp.i.not = icmp ult i32 %21, %spec.select97.i
  br i1 %cmp.i.not, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.thread.i:                                  ; preds = %if.end63
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !94

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %26, %if.end.i.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %21, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %26, %if.end.i.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %23, %do.body.i ], [ %21, %if.end.i.if.end26.i_crit_edge ]
  %27 = call ptr @memcpy(ptr %add.ptr67, ptr %value, i32 %t_off.1.i)
  %add.ptr.i134 = getelementptr i8, ptr %add.ptr67, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i134, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %value, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %28 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %28
  %29 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %add.ptr67, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %value, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %30 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value_size.i, align 4
  %32 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %31, %32
  %33 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %copy_map_value.exit

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %value_size37.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %34 = ptrtoint ptr %value_size37.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value_size37.i, align 4
  %36 = call ptr @memcpy(ptr %add.ptr67, ptr %value, i32 %35)
  br label %copy_map_value.exit

copy_map_value.exit:                              ; preds = %if.else.i, %if.end26.i
  %and.i135 = and i32 %call57, 7
  tail call void @migrate_disable() #14
  %arrayidx.i136 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i135
  %37 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i136, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.i, align 4
  %add.i137 = add i32 %45, %39
  %46 = inttoptr i32 %add.i137 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add8.i = add i32 %48, 1
  store i32 %add8.i, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i, label %if.end71, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %copy_map_value.exit
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i136, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %55, %51
  %56 = inttoptr i32 %add30.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add31.i = add i32 %58, -1
  store i32 %add31.i, ptr %56, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end71:                                         ; preds = %copy_map_value.exit
  %59 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %61 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end71.for.body.i_crit_edge, label %if.end71.lookup_elem_raw.exit_crit_edge

if.end71.lookup_elem_raw.exit_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

if.end71.for.body.i_crit_edge:                    ; preds = %if.end71
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end71.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end71.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %62 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %call57)
  %cmp.i141 = icmp eq i32 %63, %call57
  br i1 %cmp.i141, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.lookup_elem_raw.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %64 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %65 = ptrtoint ptr %n.0.i to i32
  %and.i.i142 = and i32 %65, 1
  %tobool.not.i143 = icmp eq i32 %and.i.i142, 0
  br i1 %tobool.not.i143, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lookup_elem_raw.exit_crit_edge

for.inc.i.lookup_elem_raw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %for.inc.i.lookup_elem_raw.exit_crit_edge, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, %if.end71.lookup_elem_raw.exit_crit_edge
  %retval.0.i144 = phi ptr [ null, %if.end71.lookup_elem_raw.exit_crit_edge ], [ %n.022.i, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge ], [ null, %for.inc.i.lookup_elem_raw.exit_crit_edge ]
  %tobool.not.i145 = icmp eq ptr %retval.0.i144, null
  %and.i146 = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i146)
  %cmp.i147 = icmp ne i64 %and.i146, 1
  %66 = or i1 %cmp.i147, %tobool.not.i145
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i146)
  %cmp4.i = icmp eq i64 %and.i146, 2
  %or.cond1.i = and i1 %cmp4.i, %tobool.not.i145
  %spec.select.i = select i1 %or.cond1.i, i32 -2, i32 0
  %retval.0.i148 = select i1 %66, i32 %spec.select.i, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i148)
  %tobool74.not = icmp eq i32 %retval.0.i148, 0
  br i1 %tobool74.not, label %if.end76, label %lookup_elem_raw.exit.err_crit_edge

lookup_elem_raw.exit.err_crit_edge:               ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end76:                                         ; preds = %lookup_elem_raw.exit
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %n.019.i, ptr %add.ptr.i, align 4
  %pprev.i = getelementptr i8, ptr %call.i, i32 -4
  %68 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %add.ptr.i, ptr %arrayidx.i, align 4
  br i1 %tobool.not21.i, label %do.body49.i, label %if.end76.hlist_nulls_add_head_rcu.exit_crit_edge

if.end76.hlist_nulls_add_head_rcu.exit_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.019.i, i32 0, i32 1
  %70 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %add.ptr.i, ptr %pprev51.i, align 4
  br label %hlist_nulls_add_head_rcu.exit

hlist_nulls_add_head_rcu.exit:                    ; preds = %do.body49.i, %if.end76.hlist_nulls_add_head_rcu.exit_crit_edge
  br i1 %tobool.not.i145, label %hlist_nulls_add_head_rcu.exit.err_crit_edge, label %if.then78

hlist_nulls_add_head_rcu.exit.err_crit_edge:      ; preds = %hlist_nulls_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then78:                                        ; preds = %hlist_nulls_add_head_rcu.exit
  %ref.i = getelementptr inbounds %struct.bpf_lru_node, ptr %call.i, i32 0, i32 3
  %71 = ptrtoint ptr %ref.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ref.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i151 = icmp eq i8 %72, 0
  br i1 %tobool.not.i151, label %if.then.i152, label %if.then78.bpf_lru_node_set_ref.exit_crit_edge

if.then78.bpf_lru_node_set_ref.exit_crit_edge:    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_lru_node_set_ref.exit

if.then.i152:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %ref.i, align 1
  br label %bpf_lru_node_set_ref.exit

bpf_lru_node_set_ref.exit:                        ; preds = %if.then.i152, %if.then78.bpf_lru_node_set_ref.exit_crit_edge
  %74 = ptrtoint ptr %retval.0.i144 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %retval.0.i144, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %retval.0.i144, i32 0, i32 1
  %76 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pprev2.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %75, ptr %77, align 4
  %79 = ptrtoint ptr %75 to i32
  %and.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %bpf_lru_node_set_ref.exit.hlist_nulls_del_rcu.exit_crit_edge

bpf_lru_node_set_ref.exit.hlist_nulls_del_rcu.exit_crit_edge: ; preds = %bpf_lru_node_set_ref.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %bpf_lru_node_set_ref.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %77, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %bpf_lru_node_set_ref.exit.hlist_nulls_del_rcu.exit_crit_edge
  %81 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %err

err:                                              ; preds = %hlist_nulls_del_rcu.exit, %hlist_nulls_add_head_rcu.exit.err_crit_edge, %lookup_elem_raw.exit.err_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %call41.i) #14
  %82 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i136, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i156 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i156 to ptr
  %cpu.i157 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu.i157 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu.i157, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx11.i, align 4
  %add.i158 = add i32 %90, %84
  %91 = inttoptr i32 %add.i158 to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add12.i = add i32 %93, -1
  store i32 %add12.i, ptr %91, align 4
  tail call void @migrate_enable() #14
  br i1 %tobool74.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %err
  %94 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i.i.i160 = icmp sgt i32 %95, -1
  br i1 %cmp.i.i.i160, label %if.then.i.i162, label %if.then81.htab_lru_push_free.exit_crit_edge, !prof !94

if.then81.htab_lru_push_free.exit_crit_edge:      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_lru_push_free.exit

if.then.i.i162:                                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %key_size56, align 16
  %sub.i.i = add i32 %97, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add i32 %or.i.i, 1
  %add.ptr.i.i161 = getelementptr i8, ptr %key2.i, i32 %add.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i161, i32 %95
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i) #14
  br label %htab_lru_push_free.exit

htab_lru_push_free.exit:                          ; preds = %if.then.i.i162, %if.then81.htab_lru_push_free.exit_crit_edge
  tail call void @bpf_lru_push_free(ptr noundef %8, ptr noundef nonnull %call.i) #14
  br label %cleanup

if.else:                                          ; preds = %err
  br i1 %tobool.not.i145, label %if.else.cleanup_crit_edge, label %if.then83

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then83:                                        ; preds = %if.else
  %98 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.i.i.i164 = icmp sgt i32 %99, -1
  br i1 %cmp.i.i.i164, label %if.then.i.i172, label %if.then83.htab_lru_push_free.exit173_crit_edge, !prof !94

if.then83.htab_lru_push_free.exit173_crit_edge:   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_lru_push_free.exit173

if.then.i.i172:                                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i165 = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i144, i32 0, i32 3
  %100 = ptrtoint ptr %key_size56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %key_size56, align 16
  %sub.i.i167 = add i32 %101, -1
  %or.i.i168 = or i32 %sub.i.i167, 7
  %add.i.i169 = add i32 %or.i.i168, 1
  %add.ptr.i.i170 = getelementptr i8, ptr %key.i.i165, i32 %add.i.i169
  %add.ptr4.i.i171 = getelementptr i8, ptr %add.ptr.i.i170, i32 %99
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i171) #14
  br label %htab_lru_push_free.exit173

htab_lru_push_free.exit173:                       ; preds = %if.then.i.i172, %if.then83.htab_lru_push_free.exit173_crit_edge
  %102 = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i144, i32 0, i32 1
  tail call void @bpf_lru_push_free(ptr noundef %8, ptr noundef %102) #14
  br label %cleanup

cleanup:                                          ; preds = %htab_lru_push_free.exit173, %if.else.cleanup_crit_edge, %htab_lru_push_free.exit, %htab_lock_bucket.exit, %prealloc_lru_pop.exit.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %prealloc_lru_pop.exit.cleanup_crit_edge ], [ -16, %htab_lock_bucket.exit ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %htab_lru_push_free.exit173 ], [ %retval.0.i148, %htab_lru_push_free.exit ], [ -12, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs8, label %land.rhs.if.end36_crit_edge

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs8:                                        ; preds = %land.rhs
  %.b85 = load i1, ptr @htab_lru_map_delete_elem.__already_done, align 1
  br i1 %.b85, label %land.rhs8.if.end36_crit_edge, label %if.then, !prof !95

land.rhs8.if.end36_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then:                                          ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @htab_lru_map_delete_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1371, i32 noundef 9, ptr noundef null) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs8.if.end36_crit_edge, %land.rhs.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  %key_size44 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size44 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size44, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call45 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %and.i89 = and i32 %call45, 7
  tail call void @migrate_disable() #14
  %arrayidx.i90 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i89
  %8 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i90, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add8.i = add i32 %19, 1
  store i32 %add8.i, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end51, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i90, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %26, %22
  %27 = inttoptr i32 %add30.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add31.i = add i32 %29, -1
  store i32 %add31.i, ptr %27, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call45
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %30 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end51.for.body.i_crit_edge, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end51.for.body.i_crit_edge:                    ; preds = %if.end51
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end51.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end51.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %33 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call45)
  %cmp.i = icmp eq i32 %34, %call45
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %lookup_elem_raw.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %36 = ptrtoint ptr %n.0.i to i32
  %and.i.i91 = and i32 %36, 1
  %tobool.not.i = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end55_crit_edge

for.inc.i.if.end55_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %land.lhs.true.i
  %tobool53.not = icmp eq ptr %n.022.i, null
  br i1 %tobool53.not, label %lookup_elem_raw.exit.if.end55_crit_edge, label %if.then54

lookup_elem_raw.exit.if.end55_crit_edge:          ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %lookup_elem_raw.exit
  %37 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %n.022.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.022.i, i32 0, i32 1
  %39 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pprev2.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %38, ptr %40, align 4
  %42 = ptrtoint ptr %38 to i32
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then54.hlist_nulls_del_rcu.exit_crit_edge

if.then54.hlist_nulls_del_rcu.exit_crit_edge:     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.then54.hlist_nulls_del_rcu.exit_crit_edge
  %44 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %if.end55

if.end55:                                         ; preds = %hlist_nulls_del_rcu.exit, %lookup_elem_raw.exit.if.end55_crit_edge, %for.inc.i.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %tobool53.not105 = phi i1 [ false, %hlist_nulls_del_rcu.exit ], [ true, %lookup_elem_raw.exit.if.end55_crit_edge ], [ true, %if.end51.if.end55_crit_edge ], [ true, %for.inc.i.if.end55_crit_edge ]
  %retval.0.i92104 = phi ptr [ %n.022.i, %hlist_nulls_del_rcu.exit ], [ null, %lookup_elem_raw.exit.if.end55_crit_edge ], [ null, %if.end51.if.end55_crit_edge ], [ null, %for.inc.i.if.end55_crit_edge ]
  %ret.0 = phi i32 [ 0, %hlist_nulls_del_rcu.exit ], [ -2, %lookup_elem_raw.exit.if.end55_crit_edge ], [ -2, %if.end51.if.end55_crit_edge ], [ -2, %for.inc.i.if.end55_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call41.i) #14
  %45 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i90, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i95 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i95 to ptr
  %cpu.i96 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i96, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.i, align 4
  %add.i97 = add i32 %53, %47
  %54 = inttoptr i32 %add.i97 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add12.i = add i32 %56, -1
  store i32 %add12.i, ptr %54, align 4
  tail call void @migrate_enable() #14
  br i1 %tobool53.not105, label %if.end55.cleanup_crit_edge, label %if.then57

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then57:                                        ; preds = %if.end55
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %57 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.i.i = icmp sgt i32 %58, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then57.htab_lru_push_free.exit_crit_edge, !prof !94

if.then57.htab_lru_push_free.exit_crit_edge:      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_lru_push_free.exit

if.then.i.i:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i92104, i32 0, i32 3
  %59 = ptrtoint ptr %key_size44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %key_size44, align 16
  %sub.i.i = add i32 %60, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add i32 %or.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %add.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %58
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i) #14
  br label %htab_lru_push_free.exit

htab_lru_push_free.exit:                          ; preds = %if.then.i.i, %if.then57.htab_lru_push_free.exit_crit_edge
  %61 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  %62 = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i92104, i32 0, i32 1
  tail call void @bpf_lru_push_free(ptr noundef %61, ptr noundef %62) #14
  br label %cleanup

cleanup:                                          ; preds = %htab_lru_push_free.exit, %if.end55.cleanup_crit_edge, %htab_lock_bucket.exit
  %retval.0 = phi i32 [ -16, %htab_lock_bucket.exit ], [ %ret.0, %htab_lru_push_free.exit ], [ %ret.0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htab_lru_map_gen_lookup(ptr nocapture noundef readonly %map, ptr noundef writeonly %insn_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %0 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -123, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %3 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 sub (i32 ptrtoint (ptr @__htab_map_lookup_elem to i32), i32 ptrtoint (ptr @__bpf_call_base to i32)), ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %5 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %6 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %7 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %incdec.ptr17 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %8 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 113, ptr %incdec.ptr4, align 4
  %.compoundliteral18.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %9 = ptrtoint ptr %.compoundliteral18.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %.compoundliteral18.sroa.2.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  %10 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 19, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %11 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  %incdec.ptr30 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4
  %12 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 85, ptr %incdec.ptr17, align 4
  %.compoundliteral31.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 1
  %13 = ptrtoint ptr %.compoundliteral31.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %.compoundliteral31.sroa.2.0..sroa_idx, align 1
  %.compoundliteral31.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 2
  %14 = ptrtoint ptr %.compoundliteral31.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %.compoundliteral31.sroa.6.0..sroa_idx, align 2
  %.compoundliteral31.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 3
  %15 = ptrtoint ptr %.compoundliteral31.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %.compoundliteral31.sroa.7.0..sroa_idx, align 4
  %incdec.ptr43 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5
  %16 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 114, ptr %incdec.ptr30, align 4
  %.compoundliteral44.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 1
  %17 = ptrtoint ptr %.compoundliteral44.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral44.sroa.2.0..sroa_idx, align 1
  %.compoundliteral44.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 2
  %18 = ptrtoint ptr %.compoundliteral44.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 19, ptr %.compoundliteral44.sroa.6.0..sroa_idx, align 2
  %.compoundliteral44.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 3
  %19 = ptrtoint ptr %.compoundliteral44.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %.compoundliteral44.sroa.7.0..sroa_idx, align 4
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %20 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_size, align 16
  %sub = add i32 %21, -1
  %or = or i32 %sub, 7
  %add69 = add i32 %or, 25
  %22 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 7, ptr %incdec.ptr43, align 4
  %.compoundliteral57.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 1
  %23 = ptrtoint ptr %.compoundliteral57.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %.compoundliteral57.sroa.2.0..sroa_idx, align 1
  %.compoundliteral57.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 2
  %24 = ptrtoint ptr %.compoundliteral57.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %.compoundliteral57.sroa.6.0..sroa_idx, align 2
  %.compoundliteral57.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 3
  %25 = ptrtoint ptr %.compoundliteral57.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add69, ptr %.compoundliteral57.sroa.7.0..sroa_idx, align 4
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_hash_copy(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %sub = add i32 %1, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call223 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call223, i32 %6)
  %cmp24 = icmp ult i32 %call223, %6
  br i1 %cmp24, label %for.body.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 3
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %7 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_size, align 16
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %11 = ptrtoint ptr %10 to i32
  %div3.i = lshr exact i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call226 = phi i32 [ %call223, %for.body.lr.ph ], [ %call2, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call226
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add4 = add i32 %13, %11
  %14 = inttoptr i32 %add4 to ptr
  %add.ptr = getelementptr i8, ptr %value, i32 %off.025
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %14, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %15 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %17 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ldst.07.i, align 4
  %tobool.not.i13 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i13, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add5 = add i32 %off.025, %add
  %call2 = tail call i32 @cpumask_next(i32 noundef %call226, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %18
  br i1 %cmp, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.out_crit_edge

bpf_long_memcpy.exit.out_crit_edge:               ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out:                                              ; preds = %bpf_long_memcpy.exit.out_crit_edge, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0 = phi i32 [ -2, %rcu_read_lock.exit.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %bpf_long_memcpy.exit.out_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i14, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %out
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %19 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i21 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__htab_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs8, label %land.rhs.if.end36_crit_edge

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs8:                                        ; preds = %land.rhs
  %.b56 = load i1, ptr @__htab_map_lookup_elem.__already_done, align 1
  br i1 %.b56, label %land.rhs8.if.end36_crit_edge, label %if.then, !prof !95

land.rhs8.if.end36_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then:                                          ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__htab_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 630, i32 noundef 9, ptr noundef null) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then, %land.rhs8.if.end36_crit_edge, %land.rhs.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %entry.if.end36_crit_edge
  %key_size44 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size44 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size44, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call45 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i.i, align 128
  %n_buckets.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i.i, align 8
  %sub.i.i = add i32 %7, -1
  %and.i.i = and i32 %sub.i.i, %call45
  %arrayidx.i.i = getelementptr %struct.bucket, ptr %5, i32 %and.i.i
  br label %again.i

again.i:                                          ; preds = %for.end.i.again.i_crit_edge, %if.end36
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !96
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.030.i = load volatile ptr, ptr %arrayidx.i.i, align 4
  %9 = ptrtoint ptr %n.030.i to i32
  %and.i31.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not32.i, label %again.i.for.body.i_crit_edge, label %again.i.for.end.i_crit_edge

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

again.i.for.body.i_crit_edge:                     ; preds = %again.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %again.i.for.body.i_crit_edge
  %n.033.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.030.i, %again.i.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.033.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call45)
  %cmp.i = icmp eq i32 %11, %call45
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.033.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.lookup_nulls_elem_raw.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.lookup_nulls_elem_raw.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_nulls_elem_raw.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %n.033.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i = load volatile ptr, ptr %n.033.i, align 4
  %13 = ptrtoint ptr %n.0.i to i32
  %and.i.i60 = and i32 %13, 1
  %tobool.not.i = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %n.0.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %again.i.for.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %9, %again.i.for.end.i_crit_edge ], [ %14, %for.end.i.loopexit ]
  %shr.i.i = lshr i32 %.pre-phi.i, 1
  %cmp15.not.i = icmp eq i32 %shr.i.i, %and.i.i
  br i1 %cmp15.not.i, label %for.end.i.lookup_nulls_elem_raw.exit_crit_edge, label %for.end.i.again.i_crit_edge, !prof !95

for.end.i.again.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.i

for.end.i.lookup_nulls_elem_raw.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_nulls_elem_raw.exit

lookup_nulls_elem_raw.exit:                       ; preds = %for.end.i.lookup_nulls_elem_raw.exit_crit_edge, %land.lhs.true.i.lookup_nulls_elem_raw.exit_crit_edge
  %retval.0.i = phi ptr [ %n.033.i, %land.lhs.true.i.lookup_nulls_elem_raw.exit_crit_edge ], [ null, %for.end.i.lookup_nulls_elem_raw.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_hash_update(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_type.i, align 4
  %6 = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @__htab_lru_percpu_map_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %map_flags, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call fastcc i32 @__htab_percpu_map_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %map_flags, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i8, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %8 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i15 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__htab_lru_percpu_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags, i1 noundef zeroext %onallcpus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs15, label %land.rhs.if.end49_crit_edge

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.rhs15:                                       ; preds = %land.rhs
  %.b132 = load i1, ptr @__htab_lru_percpu_map_update_elem.__already_done, align 1
  br i1 %.b132, label %land.rhs15.if.end49_crit_edge, label %if.then26, !prof !95

land.rhs15.if.end49_crit_edge:                    ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then26:                                        ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__htab_lru_percpu_map_update_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1260, i32 noundef 9, ptr noundef null) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then26, %land.rhs15.if.end49_crit_edge, %land.rhs.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %key_size57 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size57 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size57, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call58 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call58
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp61.not = icmp eq i64 %map_flags, 2
  br i1 %cmp61.not, label %if.end49.if.end67_crit_edge, label %if.then62

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then62:                                        ; preds = %if.end49
  %8 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  %call.i = tail call ptr @bpf_lru_pop_free(ptr noundef %8, i32 noundef %call58) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then62.cleanup_crit_edge, label %if.then.i

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then62
  %9 = ptrtoint ptr %key_size57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size57, align 16
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -8
  %key2.i = getelementptr i8, ptr %call.i, i32 16
  %11 = call ptr @memcpy(ptr %key2.i, ptr %key, i32 %10)
  %sub.i136 = add i32 %10, -1
  %or.i = or i32 %sub.i136, 7
  %add.i = add i32 %or.i, 1
  %add.ptr6.i = getelementptr i8, ptr %key2.i, i32 %add.i
  %spin_lock_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %12 = ptrtoint ptr %spin_lock_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spin_lock_off.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.i = icmp sgt i32 %13, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !94

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr6.i, i32 %13
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %15 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i16.i.i = icmp sgt i32 %16, -1
  br i1 %cmp.i16.i.i, label %if.then9.i.i, label %if.end.i.i.prealloc_lru_pop.exit_crit_edge, !prof !94

if.end.i.i.prealloc_lru_pop.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prealloc_lru_pop.exit

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr6.i, i32 %16
  %17 = call ptr @memset(ptr %add.ptr10.i.i, i32 0, i32 16)
  br label %prealloc_lru_pop.exit

prealloc_lru_pop.exit:                            ; preds = %if.then9.i.i, %if.end.i.i.prealloc_lru_pop.exit_crit_edge
  %tobool64.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool64.not, label %prealloc_lru_pop.exit.cleanup_crit_edge, label %prealloc_lru_pop.exit.if.end67_crit_edge

prealloc_lru_pop.exit.if.end67_crit_edge:         ; preds = %prealloc_lru_pop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

prealloc_lru_pop.exit.cleanup_crit_edge:          ; preds = %prealloc_lru_pop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end67:                                         ; preds = %prealloc_lru_pop.exit.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  %l_new.0 = phi ptr [ %add.ptr.i, %prealloc_lru_pop.exit.if.end67_crit_edge ], [ null, %if.end49.if.end67_crit_edge ]
  %and.i137 = and i32 %call58, 7
  tail call void @migrate_disable() #14
  %arrayidx.i138 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i137
  %18 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i138, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7.i, align 4
  %add.i139 = add i32 %26, %20
  %27 = inttoptr i32 %add.i139 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add8.i = add i32 %29, 1
  store i32 %add8.i, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %if.end71, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i138, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %36, %32
  %37 = inttoptr i32 %add30.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add31.i = add i32 %39, -1
  store i32 %add31.i, ptr %37, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %40 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %42 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end71.for.body.i_crit_edge, label %if.end71.lookup_elem_raw.exit_crit_edge

if.end71.lookup_elem_raw.exit_crit_edge:          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

if.end71.for.body.i_crit_edge:                    ; preds = %if.end71
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end71.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end71.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %43 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call58)
  %cmp.i = icmp eq i32 %44, %call58
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.lookup_elem_raw.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %45 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %46 = ptrtoint ptr %n.0.i to i32
  %and.i.i142 = and i32 %46, 1
  %tobool.not.i143 = icmp eq i32 %and.i.i142, 0
  br i1 %tobool.not.i143, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lookup_elem_raw.exit_crit_edge

for.inc.i.lookup_elem_raw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %for.inc.i.lookup_elem_raw.exit_crit_edge, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, %if.end71.lookup_elem_raw.exit_crit_edge
  %retval.0.i144 = phi ptr [ null, %if.end71.lookup_elem_raw.exit_crit_edge ], [ %n.022.i, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge ], [ null, %for.inc.i.lookup_elem_raw.exit_crit_edge ]
  %tobool.not.i145 = icmp eq ptr %retval.0.i144, null
  %and.i146 = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i146)
  %cmp.i147 = icmp ne i64 %and.i146, 1
  %47 = or i1 %cmp.i147, %tobool.not.i145
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i146)
  %cmp4.i = icmp eq i64 %and.i146, 2
  %or.cond1.i = and i1 %cmp4.i, %tobool.not.i145
  %spec.select.i = select i1 %or.cond1.i, i32 -2, i32 0
  %retval.0.i148 = select i1 %47, i32 %spec.select.i, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i148)
  %tobool74.not = icmp eq i32 %retval.0.i148, 0
  br i1 %tobool74.not, label %if.end76, label %lookup_elem_raw.exit.err_crit_edge

lookup_elem_raw.exit.err_crit_edge:               ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end76:                                         ; preds = %lookup_elem_raw.exit
  br i1 %tobool.not.i145, label %if.else, label %if.then78

if.then78:                                        ; preds = %if.end76
  %ref.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i144, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %ref.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ref.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i149 = icmp eq i8 %49, 0
  br i1 %tobool.not.i149, label %if.then.i150, label %if.then78.bpf_lru_node_set_ref.exit_crit_edge

if.then78.bpf_lru_node_set_ref.exit_crit_edge:    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_lru_node_set_ref.exit

if.then.i150:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ref.i, align 1
  br label %bpf_lru_node_set_ref.exit

bpf_lru_node_set_ref.exit:                        ; preds = %if.then.i150, %if.then78.bpf_lru_node_set_ref.exit_crit_edge
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i144, i32 0, i32 3
  %add.ptr.i152 = getelementptr i8, ptr %key.i, i32 %1
  %51 = ptrtoint ptr %add.ptr.i152 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i152, align 4
  br i1 %onallcpus, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %bpf_lru_node_set_ref.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i153 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i153 to ptr
  %cpu.i154 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i154 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i154, align 4
  %arrayidx.i155 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i155, align 4
  %add.i156 = add i32 %59, %53
  %60 = inttoptr i32 %add.i156 to ptr
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %61 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value_size.i, align 4
  %63 = call ptr @memcpy(ptr %60, ptr %value, i32 %62)
  br label %err

if.else.i:                                        ; preds = %bpf_lru_node_set_ref.exit
  %value_size3.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %64 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %value_size3.i, align 4
  %sub.i157 = add i32 %65, -1
  %or.i158 = or i32 %sub.i157, 7
  %add4.i = add i32 %or.i158, 1
  %call623.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %66 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call623.i, i32 %66)
  %cmp24.i = icmp ult i32 %call623.i, %66
  br i1 %cmp24.i, label %do.body7.lr.ph.i, label %if.else.i.err_crit_edge

if.else.i.err_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body7.lr.ph.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not4.i.i = icmp eq i32 %add4.i, 0
  %67 = ptrtoint ptr %52 to i32
  %div3.i.i = lshr exact i32 %add4.i, 2
  br label %do.body7.i

do.body7.i:                                       ; preds = %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, %do.body7.lr.ph.i
  %call626.i = phi i32 [ %call623.i, %do.body7.lr.ph.i ], [ %call6.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  %off.025.i = phi i32 [ 0, %do.body7.lr.ph.i ], [ %add15.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  br i1 %tobool.not4.i.i, label %do.body7.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.preheader.i.i

do.body7.i.bpf_long_memcpy.exit.i_crit_edge:      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

while.body.preheader.i.i:                         ; preds = %do.body7.i
  %add.ptr.i159 = getelementptr i8, ptr %value, i32 %off.025.i
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call626.i
  %68 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %69, %67
  %70 = inttoptr i32 %add14.i to ptr
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %ldst.07.i.i = phi ptr [ %incdec.ptr1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %70, %while.body.preheader.i.i ]
  %lsrc.06.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i159, %while.body.preheader.i.i ]
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div3.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %size.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %lsrc.06.i.i, i32 1
  %71 = ptrtoint ptr %lsrc.06.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lsrc.06.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %ldst.07.i.i, i32 1
  %73 = ptrtoint ptr %ldst.07.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ldst.07.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.bpf_long_memcpy.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

bpf_long_memcpy.exit.i:                           ; preds = %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, %do.body7.i.bpf_long_memcpy.exit.i_crit_edge
  %add15.i = add i32 %off.025.i, %add4.i
  %call6.i = tail call i32 @cpumask_next(i32 noundef %call626.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i160 = icmp ult i32 %call6.i, %74
  br i1 %cmp.i160, label %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, label %bpf_long_memcpy.exit.i.err_crit_edge

bpf_long_memcpy.exit.i.err_crit_edge:             ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

bpf_long_memcpy.exit.i.do.body7.i_crit_edge:      ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i

if.else:                                          ; preds = %if.end76
  %key.i162 = getelementptr inbounds %struct.htab_elem, ptr %l_new.0, i32 0, i32 3
  %add.ptr.i163 = getelementptr i8, ptr %key.i162, i32 %1
  %75 = ptrtoint ptr %add.ptr.i163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i163, align 4
  tail call fastcc void @pcpu_init_value(ptr noundef %map, ptr noundef %76, ptr noundef %value, i1 noundef zeroext %onallcpus)
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %79 = ptrtoint ptr %l_new.0 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %l_new.0, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %l_new.0, i32 0, i32 1
  %80 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %l_new.0, ptr %arrayidx.i, align 4
  %82 = ptrtoint ptr %78 to i32
  %and.i.i164 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i164)
  %tobool.not.i165 = icmp eq i32 %and.i.i164, 0
  br i1 %tobool.not.i165, label %do.body49.i, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body49.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %l_new.0, ptr %pprev51.i, align 4
  br label %err

err:                                              ; preds = %do.body49.i, %if.else.err_crit_edge, %bpf_long_memcpy.exit.i.err_crit_edge, %if.else.i.err_crit_edge, %do.body.i, %lookup_elem_raw.exit.err_crit_edge
  %l_new.2 = phi ptr [ %l_new.0, %lookup_elem_raw.exit.err_crit_edge ], [ %l_new.0, %do.body.i ], [ %l_new.0, %if.else.i.err_crit_edge ], [ null, %if.else.err_crit_edge ], [ null, %do.body49.i ], [ %l_new.0, %bpf_long_memcpy.exit.i.err_crit_edge ]
  %ret.0 = phi i32 [ %retval.0.i148, %lookup_elem_raw.exit.err_crit_edge ], [ 0, %do.body.i ], [ 0, %if.else.i.err_crit_edge ], [ 0, %if.else.err_crit_edge ], [ 0, %do.body49.i ], [ 0, %bpf_long_memcpy.exit.i.err_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call41.i) #14
  %84 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i138, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i168 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i168 to ptr
  %cpu.i169 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %cpu.i169 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu.i169, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx11.i, align 4
  %add.i170 = add i32 %92, %86
  %93 = inttoptr i32 %add.i170 to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %add12.i = add i32 %95, -1
  store i32 %add12.i, ptr %93, align 4
  tail call void @migrate_enable() #14
  %tobool84.not = icmp eq ptr %l_new.2, null
  br i1 %tobool84.not, label %err.cleanup_crit_edge, label %if.then85

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then85:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  %96 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  %97 = getelementptr inbounds %struct.htab_elem, ptr %l_new.2, i32 0, i32 1
  tail call void @bpf_lru_push_free(ptr noundef %96, ptr noundef %97) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %err.cleanup_crit_edge, %htab_lock_bucket.exit, %prealloc_lru_pop.exit.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %prealloc_lru_pop.exit.cleanup_crit_edge ], [ -16, %htab_lock_bucket.exit ], [ %ret.0, %if.then85 ], [ %ret.0, %err.cleanup_crit_edge ], [ -12, %if.then62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__htab_percpu_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags, i1 noundef zeroext %onallcpus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %land.rhs, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.rhs:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs15, label %land.rhs.if.end49_crit_edge

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.rhs15:                                       ; preds = %land.rhs
  %.b120 = load i1, ptr @__htab_percpu_map_update_elem.__already_done, align 1
  br i1 %.b120, label %land.rhs15.if.end49_crit_edge, label %if.then26, !prof !95

land.rhs15.if.end49_crit_edge:                    ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then26:                                        ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__htab_percpu_map_update_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1205, i32 noundef 9, ptr noundef null) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then26, %land.rhs15.if.end49_crit_edge, %land.rhs.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %key_size57 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size57 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size57, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call58 = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call58
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %and.i124 = and i32 %call58, 7
  tail call void @migrate_disable() #14
  %arrayidx.i125 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i124
  %8 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i125, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add8.i = add i32 %19, 1
  store i32 %add8.i, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end64, label %if.end49.cleanup.sink.split_crit_edge, !prof !95

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end64:                                         ; preds = %if.end49
  %20 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end64.for.body.i_crit_edge, label %if.end64.lookup_elem_raw.exit_crit_edge

if.end64.lookup_elem_raw.exit_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

if.end64.for.body.i_crit_edge:                    ; preds = %if.end64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end64.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end64.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %23 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call58)
  %cmp.i = icmp eq i32 %24, %call58
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.lookup_elem_raw.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %26 = ptrtoint ptr %n.0.i to i32
  %and.i.i126 = and i32 %26, 1
  %tobool.not.i = icmp eq i32 %and.i.i126, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lookup_elem_raw.exit_crit_edge

for.inc.i.lookup_elem_raw.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lookup_elem_raw.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %for.inc.i.lookup_elem_raw.exit_crit_edge, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge, %if.end64.lookup_elem_raw.exit_crit_edge
  %retval.0.i127 = phi ptr [ null, %if.end64.lookup_elem_raw.exit_crit_edge ], [ %n.022.i, %land.lhs.true.i.lookup_elem_raw.exit_crit_edge ], [ null, %for.inc.i.lookup_elem_raw.exit_crit_edge ]
  %tobool.not.i128 = icmp eq ptr %retval.0.i127, null
  %and.i129 = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and.i129)
  %cmp.i130 = icmp ne i64 %and.i129, 1
  %27 = or i1 %cmp.i130, %tobool.not.i128
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i129)
  %cmp4.i = icmp eq i64 %and.i129, 2
  %or.cond1.i = and i1 %cmp4.i, %tobool.not.i128
  %spec.select.i = select i1 %or.cond1.i, i32 -2, i32 0
  %retval.0.i131 = select i1 %27, i32 %spec.select.i, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i131)
  %tobool67.not = icmp eq i32 %retval.0.i131, 0
  br i1 %tobool67.not, label %if.end69, label %lookup_elem_raw.exit.err_crit_edge

lookup_elem_raw.exit.err_crit_edge:               ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end69:                                         ; preds = %lookup_elem_raw.exit
  br i1 %tobool.not.i128, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end69
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i127, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %1
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  br i1 %onallcpus, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i132 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i132 to ptr
  %cpu.i133 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i133 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i133, align 4
  %arrayidx.i134 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i134, align 4
  %add.i135 = add i32 %36, %30
  %37 = inttoptr i32 %add.i135 to ptr
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %38 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value_size.i, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %value, i32 %39)
  br label %err

if.else.i:                                        ; preds = %if.then71
  %value_size3.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %41 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value_size3.i, align 4
  %sub.i136 = add i32 %42, -1
  %or.i = or i32 %sub.i136, 7
  %add4.i = add i32 %or.i, 1
  %call623.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call623.i, i32 %43)
  %cmp24.i = icmp ult i32 %call623.i, %43
  br i1 %cmp24.i, label %do.body7.lr.ph.i, label %if.else.i.err_crit_edge

if.else.i.err_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body7.lr.ph.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not4.i.i = icmp eq i32 %add4.i, 0
  %44 = ptrtoint ptr %29 to i32
  %div3.i.i = lshr exact i32 %add4.i, 2
  br label %do.body7.i

do.body7.i:                                       ; preds = %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, %do.body7.lr.ph.i
  %call626.i = phi i32 [ %call623.i, %do.body7.lr.ph.i ], [ %call6.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  %off.025.i = phi i32 [ 0, %do.body7.lr.ph.i ], [ %add15.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  br i1 %tobool.not4.i.i, label %do.body7.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.preheader.i.i

do.body7.i.bpf_long_memcpy.exit.i_crit_edge:      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

while.body.preheader.i.i:                         ; preds = %do.body7.i
  %add.ptr.i137 = getelementptr i8, ptr %value, i32 %off.025.i
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call626.i
  %45 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %46, %44
  %47 = inttoptr i32 %add14.i to ptr
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %ldst.07.i.i = phi ptr [ %incdec.ptr1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %47, %while.body.preheader.i.i ]
  %lsrc.06.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i137, %while.body.preheader.i.i ]
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div3.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %size.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %lsrc.06.i.i, i32 1
  %48 = ptrtoint ptr %lsrc.06.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lsrc.06.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %ldst.07.i.i, i32 1
  %50 = ptrtoint ptr %ldst.07.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ldst.07.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.bpf_long_memcpy.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

bpf_long_memcpy.exit.i:                           ; preds = %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, %do.body7.i.bpf_long_memcpy.exit.i_crit_edge
  %add15.i = add i32 %off.025.i, %add4.i
  %call6.i = tail call i32 @cpumask_next(i32 noundef %call626.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i138 = icmp ult i32 %call6.i, %51
  br i1 %cmp.i138, label %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, label %bpf_long_memcpy.exit.i.err_crit_edge

bpf_long_memcpy.exit.i.err_crit_edge:             ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

bpf_long_memcpy.exit.i.do.body7.i_crit_edge:      ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i

if.else:                                          ; preds = %if.end69
  %call75 = tail call fastcc ptr @alloc_htab_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i32 noundef %1, i32 noundef %call58, i1 noundef zeroext true, i1 noundef zeroext %onallcpus, ptr noundef null)
  %cmp.i140 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %call75 to i32
  br label %err

if.end79:                                         ; preds = %if.else
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %55 = ptrtoint ptr %call75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %call75, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %call75, i32 0, i32 1
  %56 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !98
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call75, ptr %arrayidx.i, align 4
  %58 = ptrtoint ptr %54 to i32
  %and.i.i141 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i141)
  %tobool.not.i142 = icmp eq i32 %and.i.i141, 0
  br i1 %tobool.not.i142, label %do.body49.i, label %if.end79.err_crit_edge

if.end79.err_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body49.i:                                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %call75, ptr %pprev51.i, align 4
  br label %err

err:                                              ; preds = %do.body49.i, %if.end79.err_crit_edge, %if.then77, %bpf_long_memcpy.exit.i.err_crit_edge, %if.else.i.err_crit_edge, %do.body.i, %lookup_elem_raw.exit.err_crit_edge
  %ret.0 = phi i32 [ %retval.0.i131, %lookup_elem_raw.exit.err_crit_edge ], [ %52, %if.then77 ], [ 0, %do.body.i ], [ 0, %if.else.i.err_crit_edge ], [ 0, %if.end79.err_crit_edge ], [ 0, %do.body49.i ], [ 0, %bpf_long_memcpy.exit.i.err_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call41.i) #14
  %60 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i145 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i145 to ptr
  %cpu.i146 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end49.cleanup.sink.split_crit_edge
  %cpu.i146.sink = phi ptr [ %cpu.i146, %err ], [ %cpu.i, %if.end49.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %err ], [ -16, %if.end49.cleanup.sink.split_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.sink154.in = load ptr, ptr %arrayidx.i125, align 4
  %.sink154 = ptrtoint ptr %.sink154.in to i32
  %63 = ptrtoint ptr %cpu.i146.sink to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i146.sink, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx11.i, align 4
  %add.i147 = add i32 %66, %.sink154
  %67 = inttoptr i32 %add.i147 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add31.i = add i32 %69, -1
  store i32 %add31.i, ptr %67, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_percpu_map_lookup_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_percpu_map_lookup_and_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i1 noundef zeroext false, i1 noundef zeroext true, i64 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_percpu_map_lookup_and_delete_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_percpu_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size, align 16
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_percpu_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_percpu_map_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %map_flags, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_percpu_map_seq_show_elem(ptr nocapture noundef readonly %map, ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i22, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.then
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %4 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btf, align 8
  %btf_key_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 13
  %6 = ptrtoint ptr %btf_key_type_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %btf_key_type_id, align 4
  tail call void @btf_type_seq_show(ptr noundef %5, i32 noundef %7, ptr noundef %key, ptr noundef %m) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.17) #14
  %call242 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call242, i32 %8)
  %cmp43 = icmp ult i32 %call242, %8
  br i1 %cmp43, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 3
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %9 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size, align 16
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %10
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %13 = ptrtoint ptr %12 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call244 = phi i32 [ %call242, %for.body.lr.ph ], [ %call2, %for.body.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %call244) #14
  %14 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btf, align 8
  %16 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %btf_value_type_id, align 64
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call244
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  tail call void @btf_type_seq_show(ptr noundef %15, i32 noundef %17, ptr noundef %20, ptr noundef %m) #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #14
  %call2 = tail call i32 @cpumask_next(i32 noundef %call244, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.19) #14
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i31, label %for.end.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true.i34

for.end.rcu_read_unlock.exit41_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit41

land.lhs.true.i34:                                ; preds = %for.end
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit41

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit41

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit41

rcu_read_unlock.exit41:                           ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, %for.end.rcu_read_unlock.exit41_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit41, %rcu_read_unlock.exit
  %22 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i38 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i40 = add i32 %25, -1
  store volatile i32 %sub.i.i.i40, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_percpu_map_lookup_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_percpu_map_lookup_and_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_percpu_map_lookup_and_delete_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr noundef %attr, ptr noundef %uattr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_lru_percpu_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %ref.i = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %ref.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ref.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.bpf_lru_node_set_ref.exit_crit_edge

if.then.bpf_lru_node_set_ref.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_lru_node_set_ref.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ref.i, align 1
  br label %bpf_lru_node_set_ref.exit

bpf_lru_node_set_ref.exit:                        ; preds = %if.then.i, %if.then.bpf_lru_node_set_ref.exit_crit_edge
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %3 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size, align 16
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %call, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  br label %cleanup

cleanup:                                          ; preds = %bpf_lru_node_set_ref.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %bpf_lru_node_set_ref.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htab_lru_percpu_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__htab_lru_percpu_map_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %map_flags, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_htab_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 128
  %map_fd_sys_lookup_elem = getelementptr inbounds %struct.bpf_map_ops, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %map_fd_sys_lookup_elem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_fd_sys_lookup_elem, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call.i11 = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key) #14
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %rcu_read_lock.exit.if.end6_crit_edge, label %htab_map_lookup_elem.exit

rcu_read_lock.exit.if.end6_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

htab_map_lookup_elem.exit:                        ; preds = %rcu_read_lock.exit
  %key1.i = getelementptr inbounds %struct.htab_elem, ptr %call.i11, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %9, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key1.i, i32 %add.i
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool1.not, label %htab_map_lookup_elem.exit.if.end6_crit_edge, label %if.then2

htab_map_lookup_elem.exit.if.end6_crit_edge:      ; preds = %htab_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %htab_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 128
  %map_fd_sys_lookup_elem4 = getelementptr inbounds %struct.bpf_map_ops, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %map_fd_sys_lookup_elem4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_fd_sys_lookup_elem4, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %add.ptr.i, align 4
  %call5 = tail call i32 %13(ptr noundef %15) #14
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %value, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %htab_map_lookup_elem.exit.if.end6_crit_edge, %rcu_read_lock.exit.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.then2 ], [ -2, %htab_map_lookup_elem.exit.if.end6_crit_edge ], [ -2, %rcu_read_lock.exit.if.end6_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i14, label %if.end6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.end6.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.end6
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.end6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i21 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_htab_map_update_elem(ptr noundef %map, ptr noundef %map_file, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #14
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 128
  %map_fd_get_ptr = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %map_fd_get_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_fd_get_ptr, align 4
  %call = tail call ptr %5(ptr noundef %map, ptr noundef %map_file, i32 noundef %1) #14
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ptr, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @htab_map_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef nonnull %ptr, i64 noundef %map_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 128
  %map_fd_put_ptr = getelementptr inbounds %struct.bpf_map_ops, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %map_fd_put_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_fd_put_ptr, align 4
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 4
  call void %11(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_htab_map_alloc_check(ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @htab_map_alloc_check(ptr noundef %attr)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_of_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inner_map_fd = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 5
  %0 = ptrtoint ptr %inner_map_fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inner_map_fd, align 4
  %call = tail call ptr @bpf_map_meta_alloc(i32 noundef %1) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @htab_map_alloc(ptr noundef %attr)
  %cmp.i15 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_map_meta_free(ptr noundef %call) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %inner_map_meta6 = getelementptr inbounds %struct.bpf_map, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %inner_map_meta6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %inner_map_meta6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call2, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_of_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inner_map_meta = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %inner_map_meta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inner_map_meta, align 4
  tail call void @bpf_map_meta_free(ptr noundef %1) #14
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %2 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not.i = icmp eq i32 %3, 0
  br i1 %cmp29.not.i, label %entry.fd_htab_map_free.exit_crit_edge, label %for.body.lr.ph.i

entry.fd_htab_map_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fd_htab_map_free.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %buckets.i.i.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi i32 [ %3, %for.body.lr.ph.i ], [ %22, %for.inc.i.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %buckets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buckets.i.i.i, align 128
  %sub.i.i.i = add i32 %4, -1
  %and.i.i.i = and i32 %sub.i.i.i, %i.030.i
  %arrayidx.i.i.i = getelementptr %struct.bucket, ptr %6, i32 %and.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !102
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i26.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %tobool.not27.i = icmp eq i32 %and.i26.i, 0
  br i1 %tobool.not27.i, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %n.028.i = phi ptr [ %11, %land.rhs.i.land.rhs.i_crit_edge ], [ %8, %for.body.i.land.rhs.i_crit_edge ]
  %10 = ptrtoint ptr %n.028.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %n.028.i, align 4
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %n.028.i, i32 0, i32 3
  %12 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size.i.i, align 16
  %add.i.i = add i32 %13, 7
  %div3.i.i = and i32 %add.i.i, -8
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %div3.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 128
  %map_fd_put_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %map_fd_put_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map_fd_put_ptr.i, align 4
  tail call void %19(ptr noundef %15) #14
  %20 = ptrtoint ptr %11 to i32
  %and.i.i = and i32 %20, 1
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.land.rhs.i_crit_edge, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

for.inc.i:                                        ; preds = %land.rhs.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.030.i, 1
  %21 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_buckets.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.fd_htab_map_free.exit_crit_edge

for.inc.i.fd_htab_map_free.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fd_htab_map_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

fd_htab_map_free.exit:                            ; preds = %for.inc.i.fd_htab_map_free.exit_crit_edge, %entry.fd_htab_map_free.exit_crit_edge
  tail call void @htab_map_free(ptr noundef %map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @htab_of_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__htab_map_lookup_elem(ptr noundef %map, ptr noundef %key) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %htab_map_lookup_elem.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

htab_map_lookup_elem.exit:                        ; preds = %entry
  %key1.i = getelementptr inbounds %struct.htab_elem, ptr %call.i, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %1, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key1.i, i32 %add.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %htab_map_lookup_elem.exit.cleanup_crit_edge, label %do.end

htab_map_lookup_elem.exit.cleanup_crit_edge:      ; preds = %htab_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %htab_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %htab_map_lookup_elem.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %do.end ], [ null, %htab_map_lookup_elem.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_fd_get_ptr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_fd_put_ptr(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htab_of_map_gen_lookup(ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %insn_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %0 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -123, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %3 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 sub (i32 ptrtoint (ptr @__htab_map_lookup_elem to i32), i32 ptrtoint (ptr @__bpf_call_base to i32)), ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %5 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %6 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %7 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %incdec.ptr17 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size, align 16
  %sub = add i32 %9, -1
  %or = or i32 %sub, 7
  %add30 = add i32 %or, 25
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %incdec.ptr4, align 4
  %.compoundliteral18.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral18.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral18.sroa.2.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  %12 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %13 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add30, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  %14 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 121, ptr %incdec.ptr17, align 4
  %.compoundliteral32.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 1
  %15 = ptrtoint ptr %.compoundliteral32.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %.compoundliteral32.sroa.2.0..sroa_idx, align 1
  %.compoundliteral32.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 2
  %16 = ptrtoint ptr %.compoundliteral32.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %.compoundliteral32.sroa.6.0..sroa_idx, align 2
  %.compoundliteral32.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 3
  %17 = ptrtoint ptr %.compoundliteral32.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %.compoundliteral32.sroa.7.0..sroa_idx, align 4
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_map_fd_sys_lookup_elem(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_register_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_alloc_percpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_extra_elems(ptr noundef %htab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_map_alloc_percpu(ptr noundef %htab, i32 noundef 4, i32 noundef 8, i32 noundef 1060032) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call114 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call114, i32 %0)
  %cmp15 = icmp ult i32 %call114, %0
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 4
  %2 = ptrtoint ptr %call to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call116 = phi i32 [ %call114, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %call2 = tail call ptr @pcpu_freelist_pop(ptr noundef %1) #14
  %add.ptr = getelementptr i8, ptr %call2, i32 -4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call116
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %5, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call116, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %extra_elems = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 5
  %8 = ptrtoint ptr %extra_elems to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %extra_elems, align 128
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prealloc_destroy(ptr noundef %htab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 3
  %0 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type.i.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.htab_free_elems.exit_crit_edge [
    i32 10, label %entry.for.cond.preheader.i_crit_edge
    i32 5, label %entry.for.cond.preheader.i_crit_edge4
  ]

entry.for.cond.preheader.i_crit_edge4:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

entry.for.cond.preheader.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i

entry.htab_free_elems.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_free_elems.exit

for.cond.preheader.i:                             ; preds = %entry.for.cond.preheader.i_crit_edge, %entry.for.cond.preheader.i_crit_edge4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 6
  %3 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12.not.i = icmp eq i32 %4, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.htab_free_elems.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.htab_free_elems.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_free_elems.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %elems.i.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 2
  %elem_size.i.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 8
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %elems.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elems.i.i, align 4
  %7 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %8, %i.013.i
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %mul.i.i
  %9 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size.i, align 16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %add.ptr.i.i, i32 0, i32 3
  %add.ptr.i11.i = getelementptr i8, ptr %key.i.i, i32 %10
  %11 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i11.i, align 4
  tail call void @free_percpu(ptr noundef %12) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 270, i32 noundef 0) #14
  %call.i.i = tail call i32 @__cond_resched() #14
  %inc.i = add nuw i32 %i.013.i, 1
  %13 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.htab_free_elems.exit_crit_edge

for.body.i.htab_free_elems.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_free_elems.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

htab_free_elems.exit:                             ; preds = %for.body.i.htab_free_elems.exit_crit_edge, %for.cond.preheader.i.htab_free_elems.exit_crit_edge, %entry.htab_free_elems.exit_crit_edge
  %elems.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 2
  %15 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %elems.i, align 4
  tail call void @bpf_map_area_free(ptr noundef %16) #14
  %17 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %map_type.i.i, align 4
  %19 = add i32 %18, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp ult i32 %19, 2
  %21 = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 4
  br i1 %20, label %if.then, label %if.else

if.then:                                          ; preds = %htab_free_elems.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_lru_destroy(ptr noundef %21) #14
  br label %if.end

if.else:                                          ; preds = %htab_free_elems.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pcpu_freelist_destroy(ptr noundef %21) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_unregister_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_lru_init(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @htab_lru_map_delete_node(ptr nocapture noundef readonly %arg, ptr noundef readonly %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 -8
  %hash = getelementptr i8, ptr %node, i32 12
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash, align 4
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_buckets.i, align 8
  %and.i43 = and i32 %1, 7
  tail call void @migrate_disable() #14
  %arrayidx.i44 = getelementptr %struct.bpf_htab, ptr %arg, i32 0, i32 11, i32 %and.i43
  %6 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i44, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add8.i = add i32 %17, 1
  store i32 %add8.i, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i44, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %24, %20
  %25 = inttoptr i32 %add30.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add31.i = add i32 %27, -1
  store i32 %add31.i, ptr %25, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = add i32 %5, -1
  %and.i = and i32 %sub.i, %1
  %arrayidx.i = getelementptr %struct.bucket, ptr %3, i32 %and.i
  %28 = getelementptr %struct.bucket, ptr %3, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.061 = load volatile ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %n.061 to i32
  %and.i4562 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4562)
  %tobool7.not63 = icmp eq i32 %and.i4562, 0
  br i1 %tobool7.not63, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %31 = ptrtoint ptr %n.064 to i32
  call void @__asan_load4_noabort(i32 %31)
  %n.0 = load volatile ptr, ptr %n.064, align 4
  %32 = ptrtoint ptr %n.0 to i32
  %and.i45 = and i32 %32, 1
  %tobool7.not = icmp eq i32 %and.i45, 0
  br i1 %tobool7.not, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.064 = phi ptr [ %n.0, %for.cond.for.body_crit_edge ], [ %n.061, %if.end.for.body_crit_edge ]
  %cmp = icmp eq ptr %n.064, %add.ptr
  br i1 %cmp, label %if.then13, label %for.cond

if.then13:                                        ; preds = %for.body
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %pprev2.i.i = getelementptr i8, ptr %node, i32 -4
  %35 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev2.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %34, ptr %36, align 4
  %38 = ptrtoint ptr %34 to i32
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then13.hlist_nulls_del_rcu.exit_crit_edge

if.then13.hlist_nulls_del_rcu.exit_crit_edge:     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %36, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.then13.hlist_nulls_del_rcu.exit_crit_edge
  %40 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %arg, i32 0, i32 10
  %41 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.i = icmp sgt i32 %42, -1
  br i1 %cmp.i.i, label %if.then.i48, label %hlist_nulls_del_rcu.exit.for.end_crit_edge, !prof !94

hlist_nulls_del_rcu.exit.for.end_crit_edge:       ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then.i48:                                      ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %key.i = getelementptr i8, ptr %node, i32 16
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %arg, i32 0, i32 4
  %43 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key_size.i, align 16
  %sub.i46 = add i32 %44, -1
  %or.i = or i32 %sub.i46, 7
  %add.i47 = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %add.i47
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %42
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i) #14
  br label %for.end

for.end:                                          ; preds = %if.then.i48, %hlist_nulls_del_rcu.exit.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %l.1 = phi ptr [ %add.ptr, %hlist_nulls_del_rcu.exit.for.end_crit_edge ], [ %add.ptr, %if.then.i48 ], [ null, %if.end.for.end_crit_edge ], [ %n.064, %for.cond.for.end_crit_edge ]
  %45 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call41.i) #14
  %and.i50 = and i32 %46, 7
  %arrayidx.i51 = getelementptr %struct.bpf_htab, ptr %arg, i32 0, i32 11, i32 %and.i50
  %47 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i51, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i52 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i52 to ptr
  %cpu.i53 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i53, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx11.i, align 4
  %add.i54 = add i32 %55, %49
  %56 = inttoptr i32 %add.i54 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add12.i = add i32 %58, -1
  store i32 %add12.i, ptr %56, align 4
  tail call void @migrate_enable() #14
  %cmp21 = icmp eq ptr %l.1, %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %for.end, %htab_lock_bucket.exit
  %retval.0 = phi i1 [ %cmp21, %for.end ], [ false, %htab_lock_bucket.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcpu_freelist_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lru_populate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_freelist_populate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htab_unlock_bucket(ptr nocapture noundef readonly %htab, ptr noundef %b, i32 noundef %hash, i32 noundef %flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %flags) #14
  %and = and i32 %hash, 7
  %arrayidx = getelementptr %struct.bpf_htab, ptr %htab, i32 0, i32 11, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add12 = add i32 %12, -1
  store i32 %add12, ptr %10, align 4
  tail call void @migrate_enable() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_timer_cancel_and_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcpu_freelist_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lru_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_freelist_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @htab_map_hash(ptr nocapture noundef readonly %key, i32 noundef %key_len, i32 noundef %hashrnd) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add i32 %key_len, -559038737
  %add1.i = add i32 %add.i, %hashrnd
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %key_len)
  %cmp213.i = icmp ugt i32 %key_len, 12
  br i1 %cmp213.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.0218.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %key, %entry.while.body.i_crit_edge ]
  %c.0217.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %b.0216.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %a.0215.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %length.addr.0214.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %key_len, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.0218.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218.i, align 1
  %add2.i = add i32 %1, %a.0215.i
  %add.ptr.i = getelementptr i8, ptr %k.0218.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.0216.i
  %add.ptr5.i = getelementptr i8, ptr %k.0218.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.0217.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #14
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i201.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #14
  %xor12.i = xor i32 %sub10.i, %or.i201.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i202.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #14
  %xor16.i = xor i32 %sub14.i, %or.i202.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i203.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #14
  %xor20.i = xor i32 %sub18.i, %or.i203.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i204.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #14
  %xor24.i = xor i32 %sub22.i, %or.i204.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i205.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #14
  %xor28.i = xor i32 %sub26.i, %or.i205.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.0214.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.0218.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %key_len, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %key, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #14
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #14
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #14
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #14
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #14
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #14
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #14
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_nulls_elem_raw(ptr noundef %head, i32 noundef %hash, ptr nocapture noundef readonly %key, i32 noundef %key_size, i32 noundef %n_buckets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %n_buckets, -1
  %and = and i32 %sub, %hash
  br label %again

again:                                            ; preds = %for.end.again_crit_edge, %entry
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !96
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.030 = load volatile ptr, ptr %head, align 4
  %1 = ptrtoint ptr %n.030 to i32
  %and.i31 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not32 = icmp eq i32 %and.i31, 0
  br i1 %tobool.not32, label %again.for.body_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %again.for.body_crit_edge
  %n.033 = phi ptr [ %n.0, %for.inc.for.body_crit_edge ], [ %n.030, %again.for.body_crit_edge ]
  %hash5 = getelementptr inbounds %struct.htab_elem, ptr %n.033, i32 0, i32 2
  %2 = ptrtoint ptr %hash5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %hash)
  %cmp = icmp eq i32 %3, %hash
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %key6 = getelementptr inbounds %struct.htab_elem, ptr %n.033, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr %key6, ptr %key, i32 %key_size) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %n.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load volatile ptr, ptr %n.033, align 4
  %5 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %5, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %n.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %again.for.end_crit_edge
  %.pre-phi = phi i32 [ %1, %again.for.end_crit_edge ], [ %6, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  %cmp15.not = icmp eq i32 %shr.i, %and
  br i1 %cmp15.not, label %for.end.cleanup_crit_edge, label %for.end.again_crit_edge, !prof !95

for.end.again_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %n.033, %land.lhs.true.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htab_free_malloced_timers(ptr nocapture noundef readonly %htab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %n_buckets = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 7
  %4 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28.not = icmp eq i32 %5, 0
  br i1 %cmp28.not, label %rcu_read_lock.exit.for.end7_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end7_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end7

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %buckets.i.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 1
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 10
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cond_resched_rcu.exit.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %26, %cond_resched_rcu.exit.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond_resched_rcu.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buckets.i.i, align 128
  %sub.i.i = add i32 %6, -1
  %and.i.i = and i32 %sub.i.i, %i.029
  %arrayidx.i.i = getelementptr %struct.bucket, ptr %8, i32 %and.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.024 = load ptr, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %n.024 to i32
  %and.i25 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not26, label %for.body.for.body5_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %check_and_free_timer.exit.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %n.027 = phi ptr [ %n.0, %check_and_free_timer.exit.for.body5_crit_edge ], [ %n.024, %for.body.for.body5_crit_edge ]
  %11 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.i = icmp sgt i32 %12, -1
  br i1 %cmp.i.i, label %if.then.i14, label %for.body5.check_and_free_timer.exit_crit_edge, !prof !94

for.body5.check_and_free_timer.exit_crit_edge:    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_and_free_timer.exit

if.then.i14:                                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %n.027, i32 0, i32 3
  %13 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %14, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %add.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %12
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i) #14
  br label %check_and_free_timer.exit

check_and_free_timer.exit:                        ; preds = %if.then.i14, %for.body5.check_and_free_timer.exit_crit_edge
  %15 = ptrtoint ptr %n.027 to i32
  call void @__asan_load4_noabort(i32 %15)
  %n.0 = load ptr, ptr %n.027, align 4
  %16 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %16, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %check_and_free_timer.exit.for.body5_crit_edge, label %check_and_free_timer.exit.for.end_crit_edge

check_and_free_timer.exit.for.end_crit_edge:      ; preds = %check_and_free_timer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

check_and_free_timer.exit.for.body5_crit_edge:    ; preds = %check_and_free_timer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.end:                                          ; preds = %check_and_free_timer.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i1.i, label %for.end.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i4.i

for.end.rcu_read_unlock.exit.i_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i4.i:                               ; preds = %for.end
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %for.end.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i8.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.8, i32 noundef 2089, i32 noundef 0) #14
  %call.i10.i = tail call i32 @__cond_resched() #14
  %21 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond_resched_rcu.exit

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond_resched_rcu.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond_resched_rcu.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %cond_resched_rcu.exit

cond_resched_rcu.exit:                            ; preds = %if.then.i.i, %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge
  %inc = add nuw i32 %i.029, 1
  %25 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_buckets, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %cond_resched_rcu.exit.for.body_crit_edge, label %cond_resched_rcu.exit.for.end7_crit_edge

cond_resched_rcu.exit.for.end7_crit_edge:         ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end7

cond_resched_rcu.exit.for.body_crit_edge:         ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end7:                                         ; preds = %cond_resched_rcu.exit.for.end7_crit_edge, %rcu_read_lock.exit.for.end7_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i15, label %for.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end7.rcu_read_unlock.exit_crit_edge:          ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end7
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %27 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i22 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htab_free_prealloced_timers(ptr nocapture noundef readonly %htab) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  %timer_off.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 10
  %2 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_off.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge, !prof !94

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 3
  %4 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_type.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %htab_has_extra_elems.exit [
    i32 10, label %if.end.if.end7_crit_edge
    i32 5, label %if.end.if.end7_crit_edge25
  ]

if.end.if.end7_crit_edge25:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

htab_has_extra_elems.exit:                        ; preds = %if.end
  %7 = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.end.i.i, label %htab_has_extra_elems.exit.if.end7_crit_edge

htab_has_extra_elems.exit.if.end7_crit_edge:      ; preds = %htab_has_extra_elems.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end.i.i:                                       ; preds = %htab_has_extra_elems.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #14
  %add = add i32 %call4.i.i, %1
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %htab_has_extra_elems.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge25
  %num_entries.0 = phi i32 [ %add, %if.end.i.i ], [ %1, %htab_has_extra_elems.exit.if.end7_crit_edge ], [ %1, %if.end.if.end7_crit_edge ], [ %1, %if.end.if.end7_crit_edge25 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries.0)
  %cmp23.not = icmp eq i32 %num_entries.0, 0
  br i1 %cmp23.not, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %elems.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 2
  %elem_size.i = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 8
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elems.i, align 4
  %12 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %13, %i.024
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %key = getelementptr inbounds %struct.htab_elem, ptr %add.ptr.i, i32 0, i32 3
  %14 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_size, align 16
  %sub = add i32 %15, -1
  %or = or i32 %sub, 7
  %add10 = add i32 %or, 1
  %add.ptr = getelementptr i8, ptr %key, i32 %add10
  %16 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timer_off.i, align 16
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %17
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr12) #14
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 253, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries.0
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__htab_map_lookup_and_delete_batch(ptr noundef %map, ptr nocapture noundef readonly %attr, ptr noundef %uattr, i1 noundef zeroext %do_delete, i1 noundef zeroext %is_lru_map, i1 noundef zeroext %is_percpu) unnamed_addr #0 align 64 {
entry:
  %batch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %values5 = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %values5 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %values5, align 8
  %conv6 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv6 to ptr
  %keys13 = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %keys13 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %keys13, align 8
  %conv14 = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv14 to ptr
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %attr, align 8
  %conv21 = trunc i64 %7 to i32
  %8 = inttoptr i32 %conv21 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batch) #14
  %elem_flags = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 6
  %9 = ptrtoint ptr %elem_flags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %elem_flags, align 8
  %and = and i64 %10, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and22 = and i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %11 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp sgt i32 %12, -1
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %flags24 = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 7
  %13 = ptrtoint ptr %flags24 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %flags24, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool25.not = icmp eq i64 %14, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 4
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %count31 = getelementptr inbounds %struct.anon.1, ptr %uattr, i32 0, i32 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1621) #14
  %17 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !104
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %count31, i32 0, i32 -1226833921) #14, !srcloc !107
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool35.not = icmp eq i32 %20, 0
  br i1 %tobool35.not, label %if.end37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %21 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21)
  %tobool38.not = icmp eq i32 %conv21, 0
  br i1 %tobool38.not, label %if.end37.if.end43_crit_edge, label %if.then.i

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then.i:                                        ; preds = %if.end37
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 4, i32 -1226833920) #21, !srcloc !108
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !95

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %batch, i32 noundef 4) #14
  %23 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !104
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %batch, ptr noundef nonnull %8, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #14, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end43_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !95

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i.if.end43_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %batch, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end43:                                         ; preds = %if.end.i.i.if.end43_crit_edge, %if.end37.if.end43_crit_edge
  %27 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %batch, align 4
  %n_buckets = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %29 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp44.not = icmp ult i32 %28, %30
  br i1 %cmp44.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %key_size49 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %31 = ptrtoint ptr %key_size49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %key_size49, align 16
  %sub = add i32 %32, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %value_size53 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %33 = ptrtoint ptr %value_size53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value_size53, align 4
  %sub54 = add i32 %34, -1
  %or55 = or i32 %sub54, 7
  %add56 = add i32 %or55, 1
  br i1 %is_percpu, label %if.end.i.i426, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.end.i.i426:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %35) #14
  %mul = mul i32 %call4.i.i, %add56
  br label %if.end60

if.end60:                                         ; preds = %if.end.i.i426, %if.end47.if.end60_crit_edge
  %value_size.0 = phi i32 [ %mul, %if.end.i.i426 ], [ %34, %if.end47.if.end60_crit_edge ]
  %buckets = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add56)
  %tobool.not4.i = icmp eq i32 %add56, 0
  %div3.i = lshr exact i32 %add56, 2
  %36 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  br label %alloc

alloc:                                            ; preds = %if.then109, %if.end60
  %flags.0 = phi i32 [ 0, %if.end60 ], [ %flags.4, %if.then109 ]
  %ret.0 = phi i32 [ 0, %if.end60 ], [ %ret.3, %if.then109 ]
  %locked.0.off0 = phi i1 [ false, %if.end60 ], [ %locked.2.off0, %if.then109 ]
  %bucket_size.0 = phi i32 [ 5, %if.end60 ], [ %bucket_cnt.3, %if.then109 ]
  %total.0 = phi i32 [ 0, %if.end60 ], [ %total.1, %if.then109 ]
  %bucket_cnt.0 = phi i32 [ -1, %if.end60 ], [ %bucket_cnt.3, %if.then109 ]
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 %bucket_size.0) #14
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %alloc.kvmalloc_array.exit_crit_edge, label %if.end.i, !prof !94

alloc.kvmalloc_array.exit_crit_edge:              ; preds = %alloc
  call void @__sanitizer_cov_trace_pc() #16
  br label %kvmalloc_array.exit

if.end.i:                                         ; preds = %alloc
  call void @__sanitizer_cov_trace_pc() #16
  %39 = extractvalue { i32, i1 } %37, 0
  %call.i.i427 = call noalias ptr @kvmalloc_node(i32 noundef %39, i32 noundef 1060032, i32 noundef -1) #22
  br label %kvmalloc_array.exit

kvmalloc_array.exit:                              ; preds = %if.end.i, %alloc.kvmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i427, %if.end.i ], [ null, %alloc.kvmalloc_array.exit_crit_edge ]
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %value_size.0, i32 %bucket_size.0) #14
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kvmalloc_array.exit.if.end210_crit_edge, label %kvmalloc_array.exit431, !prof !94

kvmalloc_array.exit.if.end210_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

kvmalloc_array.exit431:                           ; preds = %kvmalloc_array.exit
  %42 = extractvalue { i32, i1 } %40, 0
  %call.i.i428 = call noalias ptr @kvmalloc_node(i32 noundef %42, i32 noundef 1060032, i32 noundef -1) #22
  %tobool63.not = icmp eq ptr %retval.0.i, null
  %tobool65.not = icmp eq ptr %call.i.i428, null
  %or.cond = select i1 %tobool63.not, i1 true, i1 %tobool65.not
  br i1 %or.cond, label %kvmalloc_array.exit431.if.end210_crit_edge, label %kvmalloc_array.exit431.again_crit_edge

kvmalloc_array.exit431.again_crit_edge:           ; preds = %kvmalloc_array.exit431
  br label %again

kvmalloc_array.exit431.if.end210_crit_edge:       ; preds = %kvmalloc_array.exit431
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

again:                                            ; preds = %if.end199.again_crit_edge, %kvmalloc_array.exit431.again_crit_edge
  %flags.1 = phi i32 [ %flags.5, %if.end199.again_crit_edge ], [ %flags.0, %kvmalloc_array.exit431.again_crit_edge ]
  %ret.1 = phi i32 [ %ret.5, %if.end199.again_crit_edge ], [ %ret.0, %kvmalloc_array.exit431.again_crit_edge ]
  %locked.1.off0 = phi i1 [ %locked.3.off0, %if.end199.again_crit_edge ], [ %locked.0.off0, %kvmalloc_array.exit431.again_crit_edge ]
  %total.1 = phi i32 [ %add200, %if.end199.again_crit_edge ], [ %total.0, %kvmalloc_array.exit431.again_crit_edge ]
  %bucket_cnt.1 = phi i32 [ %bucket_cnt.4, %if.end199.again_crit_edge ], [ %bucket_cnt.0, %kvmalloc_array.exit431.again_crit_edge ]
  call void @migrate_disable() #14
  %43 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !109
  %44 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i432 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i432 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %49, ptrtoint (ptr @bpf_prog_active to i32)
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i = add i32 %52, 1
  store i32 %add13.i, ptr %50, align 4
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !110
  %and.i.i.i433 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i433)
  %tobool.not.i434 = icmp eq i32 %and.i.i.i433, 0
  br i1 %tobool.not.i434, label %if.then.i435, label %again.bpf_disable_instrumentation.exit_crit_edge, !prof !94

again.bpf_disable_instrumentation.exit_crit_edge: ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_disable_instrumentation.exit

if.then.i435:                                     ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %bpf_disable_instrumentation.exit

bpf_disable_instrumentation.exit:                 ; preds = %if.then.i435, %again.bpf_disable_instrumentation.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #14, !srcloc !111
  %54 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %bpf_disable_instrumentation.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

bpf_disable_instrumentation.exit.rcu_read_lock.exit_crit_edge: ; preds = %bpf_disable_instrumentation.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %bpf_disable_instrumentation.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i371

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i371:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i371, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %bpf_disable_instrumentation.exit.rcu_read_lock.exit_crit_edge
  %sub98 = sub i32 %16, %total.1
  br label %again_nocopy

again_nocopy:                                     ; preds = %again_nocopy.backedge, %rcu_read_lock.exit
  %flags.2 = phi i32 [ %flags.1, %rcu_read_lock.exit ], [ %flags.2.be, %again_nocopy.backedge ]
  %ret.2 = phi i32 [ %ret.1, %rcu_read_lock.exit ], [ %ret.2.be, %again_nocopy.backedge ]
  %locked.2.off0 = phi i1 [ %locked.1.off0, %rcu_read_lock.exit ], [ %locked.2.off0.be, %again_nocopy.backedge ]
  %bucket_cnt.2 = phi i32 [ %bucket_cnt.1, %rcu_read_lock.exit ], [ %bucket_cnt.2.be, %again_nocopy.backedge ]
  %58 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buckets, align 128
  %60 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %batch, align 4
  %arrayidx = getelementptr %struct.bucket, ptr %59, i32 %61
  br i1 %locked.2.off0, label %if.then70, label %again_nocopy.if.end75_crit_edge

again_nocopy.if.end75_crit_edge:                  ; preds = %again_nocopy
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then70:                                        ; preds = %again_nocopy
  %and.i436 = and i32 %61, 7
  call void @migrate_disable() #14
  %arrayidx.i437 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i436
  %62 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i437, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i438 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i438 to ptr
  %cpu.i439 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i439 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i439, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx7.i, align 4
  %add.i440 = add i32 %70, %64
  %71 = inttoptr i32 %add.i440 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add8.i = add i32 %73, 1
  store i32 %add8.i, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.not.i = icmp eq i32 %73, 0
  br i1 %cmp.not.i, label %htab_lock_bucket.exit.thread, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit.thread:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  %74 = getelementptr %struct.bucket, ptr %59, i32 %61, i32 1
  %call41.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %74) #14
  br label %if.end75

htab_lock_bucket.exit:                            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i437, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = ptrtoint ptr %cpu.i439 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i439, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %81, %77
  %82 = inttoptr i32 %add30.i to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add31.i = add i32 %84, -1
  store i32 %add31.i, ptr %82, align 4
  call void @migrate_enable() #14
  br label %next_batch

if.end75:                                         ; preds = %htab_lock_bucket.exit.thread, %again_nocopy.if.end75_crit_edge
  %flags.4 = phi i32 [ %flags.2, %again_nocopy.if.end75_crit_edge ], [ %call41.i, %htab_lock_bucket.exit.thread ]
  %ret.3 = phi i32 [ %ret.2, %again_nocopy.if.end75_crit_edge ], [ 0, %htab_lock_bucket.exit.thread ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !112
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end75
  %n.0.in = phi ptr [ %arrayidx, %if.end75 ], [ %n.0, %for.cond.for.cond_crit_edge ]
  %bucket_cnt.3 = phi i32 [ 0, %if.end75 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %85 = ptrtoint ptr %n.0.in to i32
  call void @__asan_load4_noabort(i32 %85)
  %n.0 = load volatile ptr, ptr %n.0.in, align 4
  %86 = ptrtoint ptr %n.0 to i32
  %and.i444 = and i32 %86, 1
  %tobool82.not = icmp eq i32 %and.i444, 0
  %inc = add i32 %bucket_cnt.3, 1
  br i1 %tobool82.not, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bucket_cnt.3)
  %tobool93.not = icmp eq i32 %bucket_cnt.3, 0
  %brmerge = select i1 %tobool93.not, i1 true, i1 %locked.2.off0
  br i1 %brmerge, label %if.end97, label %for.end.again_nocopy.backedge_crit_edge

for.end.again_nocopy.backedge_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %again_nocopy.backedge

if.end97:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %bucket_cnt.3, i32 %sub98)
  %cmp99 = icmp ugt i32 %bucket_cnt.3, %sub98
  br i1 %cmp99, label %if.then101, label %if.end106

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.1)
  %cmp102 = icmp eq i32 %total.1, 0
  %87 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %batch, align 4
  call fastcc void @htab_unlock_bucket(ptr noundef %map, ptr noundef %arrayidx, i32 noundef %88, i32 noundef %flags.4)
  call fastcc void @rcu_read_unlock()
  call fastcc void @bpf_enable_instrumentation()
  br i1 %cmp102, label %if.then101.if.end210_crit_edge, label %after_loop

if.then101.if.end210_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.end106:                                        ; preds = %if.end97
  %cmp107 = icmp ugt i32 %bucket_cnt.3, %bucket_size.0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %batch, align 4
  call fastcc void @htab_unlock_bucket(ptr noundef %map, ptr noundef %arrayidx, i32 noundef %90, i32 noundef %flags.4)
  call fastcc void @rcu_read_unlock()
  call fastcc void @bpf_enable_instrumentation()
  call void @kvfree(ptr noundef nonnull %retval.0.i) #14
  call void @kvfree(ptr noundef nonnull %call.i.i428) #14
  br label %alloc

if.end110:                                        ; preds = %if.end106
  br i1 %locked.2.off0, label %if.end113, label %if.end110.next_batch_crit_edge

if.end110.next_batch_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_batch

if.end113:                                        ; preds = %if.end110
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !113
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %arrayidx, align 4
  %93 = ptrtoint ptr %92 to i32
  %and.i445561 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i445561)
  %tobool122.not562 = icmp eq i32 %and.i445561, 0
  br i1 %tobool122.not562, label %if.end113.land.rhs123_crit_edge, label %if.end113.for.end174_crit_edge

if.end113.for.end174_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end174

if.end113.land.rhs123_crit_edge:                  ; preds = %if.end113
  br label %land.rhs123

land.rhs123:                                      ; preds = %if.end171.land.rhs123_crit_edge, %if.end113.land.rhs123_crit_edge
  %dst_key.0568 = phi ptr [ %add.ptr172, %if.end171.land.rhs123_crit_edge ], [ %retval.0.i, %if.end113.land.rhs123_crit_edge ]
  %dst_val.0565 = phi ptr [ %add.ptr173, %if.end171.land.rhs123_crit_edge ], [ %call.i.i428, %if.end113.land.rhs123_crit_edge ]
  %node_to_free.3564 = phi ptr [ %node_to_free.4, %if.end171.land.rhs123_crit_edge ], [ null, %if.end113.land.rhs123_crit_edge ]
  %n.1563 = phi ptr [ %95, %if.end171.land.rhs123_crit_edge ], [ %92, %if.end113.land.rhs123_crit_edge ]
  %94 = ptrtoint ptr %n.1563 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %n.1563, align 4
  %key = getelementptr inbounds %struct.htab_elem, ptr %n.1563, i32 0, i32 3
  %96 = call ptr @memcpy(ptr %dst_key.0568, ptr %key, i32 %32)
  br i1 %is_percpu, label %if.then138, label %if.else

if.then138:                                       ; preds = %land.rhs123
  %call142557 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %97 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call142557, i32 %97)
  %cmp143558 = icmp ult i32 %call142557, %97
  br i1 %cmp143558, label %for.body145.lr.ph, label %if.then138.if.end164_crit_edge

if.then138.if.end164_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

for.body145.lr.ph:                                ; preds = %if.then138
  %98 = ptrtoint ptr %key_size49 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %key_size49, align 16
  %add.ptr.i = getelementptr i8, ptr %key, i32 %99
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  %102 = ptrtoint ptr %101 to i32
  br label %for.body145

for.body145:                                      ; preds = %bpf_long_memcpy.exit.for.body145_crit_edge, %for.body145.lr.ph
  %call142560 = phi i32 [ %call142557, %for.body145.lr.ph ], [ %call142, %bpf_long_memcpy.exit.for.body145_crit_edge ]
  %off.0559 = phi i32 [ 0, %for.body145.lr.ph ], [ %add154, %bpf_long_memcpy.exit.for.body145_crit_edge ]
  br i1 %tobool.not4.i, label %for.body145.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body145.bpf_long_memcpy.exit_crit_edge:       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body145
  %arrayidx152 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call142560
  %103 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx152, align 4
  %add153 = add i32 %104, %102
  %105 = inttoptr i32 %add153 to ptr
  %add.ptr146 = getelementptr i8, ptr %dst_val.0565, i32 %off.0559
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr146, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %105, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %106 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %108 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %ldst.07.i, align 4
  %tobool.not.i446 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i446, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body145.bpf_long_memcpy.exit_crit_edge
  %add154 = add i32 %off.0559, %add56
  %call142 = call i32 @cpumask_next(i32 noundef %call142560, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %109 = load i32, ptr @nr_cpu_ids, align 4
  %cmp143 = icmp ult i32 %call142, %109
  br i1 %cmp143, label %bpf_long_memcpy.exit.for.body145_crit_edge, label %bpf_long_memcpy.exit.if.end164_crit_edge

bpf_long_memcpy.exit.if.end164_crit_edge:         ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

bpf_long_memcpy.exit.for.body145_crit_edge:       ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body145

if.else:                                          ; preds = %land.rhs123
  %add.ptr158 = getelementptr i8, ptr %key, i32 %add
  br i1 %tobool23.not, label %if.else162, label %if.then161

if.then161:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @copy_map_value_locked(ptr noundef %map, ptr noundef %dst_val.0565, ptr noundef %add.ptr158, i1 noundef zeroext true) #14
  br label %if.end163

if.else162:                                       ; preds = %if.else
  %110 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp.i.i447 = icmp sgt i32 %111, -1
  %112 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %cmp.i69.i = icmp sgt i32 %113, -1
  br i1 %cmp.i.i447, label %if.end.i449, label %if.end.thread.i, !prof !94

if.end.i449:                                      ; preds = %if.else162
  %114 = lshr i32 %113, 27
  %115 = and i32 %114, 16
  %116 = xor i32 %115, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %113, i32 0, !prof !94
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %spec.select97.i)
  %cmp.i448.not = icmp ult i32 %111, %spec.select97.i
  br i1 %cmp.i448.not, label %if.end.i449.do.body.i_crit_edge, label %if.end.i449.if.end26.i_crit_edge

if.end.i449.if.end26.i_crit_edge:                 ; preds = %if.end.i449
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i449.do.body.i_crit_edge:                  ; preds = %if.end.i449
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.thread.i:                                  ; preds = %if.else162
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !94

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i449.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %116, %if.end.i449.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i449.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %111, %if.end.i449.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i449.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i449.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %116, %if.end.i449.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i449.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %113, %do.body.i ], [ %111, %if.end.i449.if.end26.i_crit_edge ]
  %117 = call ptr @memcpy(ptr %dst_val.0565, ptr %add.ptr158, i32 %t_off.1.i)
  %add.ptr.i450 = getelementptr i8, ptr %dst_val.0565, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i450, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr158, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %118 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %118
  %119 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %dst_val.0565, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %add.ptr158, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %120 = ptrtoint ptr %value_size53 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %value_size53, align 4
  %122 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %121, %122
  %123 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %if.end163

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %value_size53 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %value_size53, align 4
  %126 = call ptr @memcpy(ptr %dst_val.0565, ptr %add.ptr158, i32 %125)
  br label %if.end163

if.end163:                                        ; preds = %if.else.i, %if.end26.i, %if.then161
  %127 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %cmp.i.i452 = icmp sgt i32 %128, -1
  br i1 %cmp.i.i452, label %if.then.i454, label %if.end163.if.end.i456_crit_edge, !prof !94

if.end163.if.end.i456_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i456

if.then.i454:                                     ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i453 = getelementptr i8, ptr %dst_val.0565, i32 %128
  %129 = ptrtoint ptr %add.ptr.i453 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 0, ptr %add.ptr.i453, align 1
  br label %if.end.i456

if.end.i456:                                      ; preds = %if.then.i454, %if.end163.if.end.i456_crit_edge
  %130 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp.i16.i = icmp sgt i32 %131, -1
  br i1 %cmp.i16.i, label %if.then9.i, label %if.end.i456.if.end164_crit_edge, !prof !94

if.end.i456.if.end164_crit_edge:                  ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.then9.i:                                       ; preds = %if.end.i456
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10.i = getelementptr i8, ptr %dst_val.0565, i32 %131
  %132 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 16)
  br label %if.end164

if.end164:                                        ; preds = %if.then9.i, %if.end.i456.if.end164_crit_edge, %bpf_long_memcpy.exit.if.end164_crit_edge, %if.then138.if.end164_crit_edge
  br i1 %do_delete, label %if.then166, label %if.end164.if.end171_crit_edge

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then166:                                       ; preds = %if.end164
  %133 = ptrtoint ptr %n.1563 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %n.1563, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.1563, i32 0, i32 1
  %135 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pprev2.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %134, ptr %136, align 4
  %138 = ptrtoint ptr %134 to i32
  %and.i.i.i457 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i457)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i457, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.then166.hlist_nulls_del_rcu.exit_crit_edge

if.then166.hlist_nulls_del_rcu.exit_crit_edge:    ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %134, i32 0, i32 1
  %139 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %136, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.then166.hlist_nulls_del_rcu.exit_crit_edge
  %140 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br i1 %is_lru_map, label %if.then168, label %if.else169

if.then168:                                       ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %141 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %node_to_free.3564, ptr %pprev2.i.i, align 4
  br label %if.end171

if.else169:                                       ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @free_htab_elem(ptr noundef %map, ptr noundef %n.1563)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %if.then168, %if.end164.if.end171_crit_edge
  %node_to_free.4 = phi ptr [ %n.1563, %if.then168 ], [ %node_to_free.3564, %if.else169 ], [ %node_to_free.3564, %if.end164.if.end171_crit_edge ]
  %add.ptr172 = getelementptr i8, ptr %dst_key.0568, i32 %32
  %add.ptr173 = getelementptr i8, ptr %dst_val.0565, i32 %value_size.0
  %142 = ptrtoint ptr %95 to i32
  %and.i445 = and i32 %142, 1
  %tobool122.not = icmp eq i32 %and.i445, 0
  br i1 %tobool122.not, label %if.end171.land.rhs123_crit_edge, label %if.end171.for.end174_crit_edge

if.end171.for.end174_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end174

if.end171.land.rhs123_crit_edge:                  ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs123

for.end174:                                       ; preds = %if.end171.for.end174_crit_edge, %if.end113.for.end174_crit_edge
  %node_to_free.3.lcssa = phi ptr [ null, %if.end113.for.end174_crit_edge ], [ %node_to_free.4, %if.end171.for.end174_crit_edge ]
  %143 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %batch, align 4
  %145 = getelementptr %struct.bucket, ptr %59, i32 %61, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %145, i32 noundef %flags.4) #14
  %and.i458 = and i32 %144, 7
  %arrayidx.i459 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i458
  %146 = ptrtoint ptr %arrayidx.i459 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i459, align 4
  %148 = ptrtoint ptr %147 to i32
  %149 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i460 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i460 to ptr
  %cpu.i461 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %cpu.i461 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu.i461, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx11.i, align 4
  %add.i462 = add i32 %154, %148
  %155 = inttoptr i32 %add.i462 to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add12.i = add i32 %157, -1
  store i32 %add12.i, ptr %155, align 4
  call void @migrate_enable() #14
  %tobool175.not569 = icmp eq ptr %node_to_free.3.lcssa, null
  br i1 %tobool175.not569, label %for.end174.next_batch_crit_edge, label %for.end174.while.body_crit_edge

for.end174.while.body_crit_edge:                  ; preds = %for.end174
  br label %while.body

for.end174.next_batch_crit_edge:                  ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_batch

while.body:                                       ; preds = %htab_lru_push_free.exit.while.body_crit_edge, %for.end174.while.body_crit_edge
  %node_to_free.5570 = phi ptr [ %160, %htab_lru_push_free.exit.while.body_crit_edge ], [ %node_to_free.3.lcssa, %for.end174.while.body_crit_edge ]
  %158 = getelementptr inbounds %struct.anon.163, ptr %node_to_free.5570, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %161 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp.i.i.i = icmp sgt i32 %162, -1
  br i1 %cmp.i.i.i, label %if.then.i.i465, label %while.body.htab_lru_push_free.exit_crit_edge, !prof !94

while.body.htab_lru_push_free.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_lru_push_free.exit

if.then.i.i465:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %node_to_free.5570, i32 0, i32 3
  %163 = ptrtoint ptr %key_size49 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %key_size49, align 16
  %sub.i.i463 = add i32 %164, -1
  %or.i.i = or i32 %sub.i.i463, 7
  %add.i.i = add i32 %or.i.i, 1
  %add.ptr.i.i464 = getelementptr i8, ptr %key.i.i, i32 %add.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i464, i32 %162
  call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i) #14
  br label %htab_lru_push_free.exit

htab_lru_push_free.exit:                          ; preds = %if.then.i.i465, %while.body.htab_lru_push_free.exit_crit_edge
  %165 = getelementptr inbounds %struct.htab_elem, ptr %node_to_free.5570, i32 0, i32 1
  call void @bpf_lru_push_free(ptr noundef %36, ptr noundef %165) #14
  %tobool175.not = icmp eq ptr %160, null
  br i1 %tobool175.not, label %htab_lru_push_free.exit.next_batch_crit_edge, label %htab_lru_push_free.exit.while.body_crit_edge

htab_lru_push_free.exit.while.body_crit_edge:     ; preds = %htab_lru_push_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

htab_lru_push_free.exit.next_batch_crit_edge:     ; preds = %htab_lru_push_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %next_batch

next_batch:                                       ; preds = %htab_lru_push_free.exit.next_batch_crit_edge, %for.end174.next_batch_crit_edge, %if.end110.next_batch_crit_edge, %htab_lock_bucket.exit
  %flags.5 = phi i32 [ %flags.4, %if.end110.next_batch_crit_edge ], [ %flags.2, %htab_lock_bucket.exit ], [ %flags.4, %for.end174.next_batch_crit_edge ], [ %flags.4, %htab_lru_push_free.exit.next_batch_crit_edge ]
  %ret.5 = phi i32 [ %ret.3, %if.end110.next_batch_crit_edge ], [ -16, %htab_lock_bucket.exit ], [ %ret.3, %for.end174.next_batch_crit_edge ], [ %ret.3, %htab_lru_push_free.exit.next_batch_crit_edge ]
  %locked.3.off0 = phi i1 [ false, %if.end110.next_batch_crit_edge ], [ true, %htab_lock_bucket.exit ], [ false, %for.end174.next_batch_crit_edge ], [ false, %htab_lru_push_free.exit.next_batch_crit_edge ]
  %bucket_cnt.4 = phi i32 [ %bucket_cnt.3, %if.end110.next_batch_crit_edge ], [ %bucket_cnt.2, %htab_lock_bucket.exit ], [ %bucket_cnt.3, %for.end174.next_batch_crit_edge ], [ %bucket_cnt.3, %htab_lru_push_free.exit.next_batch_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bucket_cnt.4)
  %tobool176.not = icmp eq i32 %bucket_cnt.4, 0
  br i1 %tobool176.not, label %land.lhs.true177, label %land.lhs.true186.critedge

land.lhs.true177:                                 ; preds = %next_batch
  %166 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %batch, align 4
  %add178 = add i32 %167, 1
  %168 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add178, i32 %169)
  %cmp180 = icmp ult i32 %add178, %169
  br i1 %cmp180, label %if.then182, label %if.end199.critedge

if.then182:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add178, ptr %batch, align 4
  br label %again_nocopy.backedge

again_nocopy.backedge:                            ; preds = %if.then182, %for.end.again_nocopy.backedge_crit_edge
  %flags.2.be = phi i32 [ %flags.5, %if.then182 ], [ %flags.4, %for.end.again_nocopy.backedge_crit_edge ]
  %ret.2.be = phi i32 [ %ret.5, %if.then182 ], [ %ret.3, %for.end.again_nocopy.backedge_crit_edge ]
  %locked.2.off0.be = phi i1 [ %locked.3.off0, %if.then182 ], [ true, %for.end.again_nocopy.backedge_crit_edge ]
  %bucket_cnt.2.be = phi i32 [ 0, %if.then182 ], [ %bucket_cnt.3, %for.end.again_nocopy.backedge_crit_edge ]
  br label %again_nocopy

land.lhs.true186.critedge:                        ; preds = %next_batch
  call fastcc void @rcu_read_unlock()
  call fastcc void @bpf_enable_instrumentation()
  %mul187 = mul i32 %total.1, %32
  %add.ptr188 = getelementptr i8, ptr %5, i32 %mul187
  %mul189 = mul i32 %bucket_cnt.4, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul189)
  %cmp9.i.i = icmp slt i32 %mul189, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true186.critedge
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !95

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %out

if.then.i.i.i:                                    ; preds = %land.lhs.true186.critedge
  call void @__check_object_size(ptr noundef %retval.0.i, i32 noundef %mul189, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #14
  %call.i.i373 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i373, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i376

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i376:                                    ; preds = %if.then.i.i.i
  %171 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr188, i32 %mul189, i32 -1226833920) #21, !srcloc !114
  %asmresult.i.i375 = extractvalue { i32, i32 } %171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i375)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i375, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i376.copy_to_user.exit_crit_edge

if.end.i.i376.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i377 = call zeroext i1 @__kasan_check_read(ptr noundef %retval.0.i, i32 noundef %mul189) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr188, ptr noundef %retval.0.i, i32 noundef %mul189) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i376.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i378 = phi i32 [ %mul189, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul189, %if.end.i.i376.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i378)
  %tobool191.not = icmp eq i32 %n.addr.0.i378, 0
  br i1 %tobool191.not, label %lor.lhs.false192, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

lor.lhs.false192:                                 ; preds = %copy_to_user.exit
  %mul193 = mul i32 %total.1, %value_size.0
  %add.ptr194 = getelementptr i8, ptr %2, i32 %mul193
  %mul195 = mul i32 %bucket_cnt.4, %value_size.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul195)
  %cmp9.i.i385 = icmp slt i32 %mul195, 0
  br i1 %cmp9.i.i385, label %land.rhs16.i.i388, label %if.then.i.i.i391

land.rhs16.i.i388:                                ; preds = %lor.lhs.false192
  %.b71.i.i387 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i387, label %land.rhs16.i.i388.out_crit_edge, label %if.then27.i.i389, !prof !95

land.rhs16.i.i388.out_crit_edge:                  ; preds = %land.rhs16.i.i388
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27.i.i389:                                 ; preds = %land.rhs16.i.i388
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %out

if.then.i.i.i391:                                 ; preds = %lor.lhs.false192
  call void @__check_object_size(ptr noundef %call.i.i428, i32 noundef %mul195, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #14
  %call.i.i392 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i392, label %if.then.i.i.i391.copy_to_user.exit401_crit_edge, label %if.end.i.i396

if.then.i.i.i391.copy_to_user.exit401_crit_edge:  ; preds = %if.then.i.i.i391
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit401

if.end.i.i396:                                    ; preds = %if.then.i.i.i391
  %172 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr194, i32 %mul195, i32 -1226833920) #21, !srcloc !114
  %asmresult.i.i394 = extractvalue { i32, i32 } %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i394)
  %cmp.i6.i395 = icmp eq i32 %asmresult.i.i394, 0
  br i1 %cmp.i6.i395, label %if.then2.i.i399, label %if.end.i.i396.copy_to_user.exit401_crit_edge

if.end.i.i396.copy_to_user.exit401_crit_edge:     ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit401

if.then2.i.i399:                                  ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i397 = call zeroext i1 @__kasan_check_read(ptr noundef %call.i.i428, i32 noundef %mul195) #14
  %call.i12.i.i398 = call i32 @arm_copy_to_user(ptr noundef %add.ptr194, ptr noundef %call.i.i428, i32 noundef %mul195) #14
  br label %copy_to_user.exit401

copy_to_user.exit401:                             ; preds = %if.then2.i.i399, %if.end.i.i396.copy_to_user.exit401_crit_edge, %if.then.i.i.i391.copy_to_user.exit401_crit_edge
  %n.addr.0.i400 = phi i32 [ %mul195, %if.then.i.i.i391.copy_to_user.exit401_crit_edge ], [ %call.i12.i.i398, %if.then2.i.i399 ], [ %mul195, %if.end.i.i396.copy_to_user.exit401_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i400)
  %tobool197.not = icmp eq i32 %n.addr.0.i400, 0
  br i1 %tobool197.not, label %copy_to_user.exit401.if.end199_crit_edge, label %copy_to_user.exit401.out_crit_edge

copy_to_user.exit401.out_crit_edge:               ; preds = %copy_to_user.exit401
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

copy_to_user.exit401.if.end199_crit_edge:         ; preds = %copy_to_user.exit401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.end199.critedge:                               ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @rcu_read_unlock()
  call fastcc void @bpf_enable_instrumentation()
  br label %if.end199

if.end199:                                        ; preds = %if.end199.critedge, %copy_to_user.exit401.if.end199_crit_edge
  %add200 = add i32 %bucket_cnt.4, %total.1
  %173 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %batch, align 4
  %inc201 = add i32 %174, 1
  store i32 %inc201, ptr %batch, align 4
  %175 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %n_buckets, align 8
  %cmp203.not = icmp ult i32 %inc201, %176
  br i1 %cmp203.not, label %if.end199.again_crit_edge, label %if.end199.if.end210_crit_edge

if.end199.if.end210_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.end199.again_crit_edge:                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

after_loop:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %ret.3)
  %cmp207 = icmp eq i32 %ret.3, -14
  br i1 %cmp207, label %after_loop.out_crit_edge, label %after_loop.if.end210_crit_edge

after_loop.if.end210_crit_edge:                   ; preds = %after_loop
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

after_loop.out_crit_edge:                         ; preds = %after_loop
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end210:                                        ; preds = %after_loop.if.end210_crit_edge, %if.end199.if.end210_crit_edge, %if.then101.if.end210_crit_edge, %kvmalloc_array.exit431.if.end210_crit_edge, %kvmalloc_array.exit.if.end210_crit_edge
  %total.2495 = phi i32 [ %total.1, %after_loop.if.end210_crit_edge ], [ 0, %if.then101.if.end210_crit_edge ], [ %add200, %if.end199.if.end210_crit_edge ], [ %total.0, %kvmalloc_array.exit431.if.end210_crit_edge ], [ %total.0, %kvmalloc_array.exit.if.end210_crit_edge ]
  %ret.6494 = phi i32 [ %ret.3, %after_loop.if.end210_crit_edge ], [ -28, %if.then101.if.end210_crit_edge ], [ -2, %if.end199.if.end210_crit_edge ], [ -12, %kvmalloc_array.exit431.if.end210_crit_edge ], [ -12, %kvmalloc_array.exit.if.end210_crit_edge ]
  %retval.0.i430474493 = phi ptr [ %call.i.i428, %after_loop.if.end210_crit_edge ], [ %call.i.i428, %if.then101.if.end210_crit_edge ], [ %call.i.i428, %if.end199.if.end210_crit_edge ], [ null, %kvmalloc_array.exit.if.end210_crit_edge ], [ %call.i.i428, %kvmalloc_array.exit431.if.end210_crit_edge ]
  %out_batch = getelementptr inbounds %struct.anon.1, ptr %attr, i32 0, i32 1
  %177 = ptrtoint ptr %out_batch to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %out_batch, align 8
  %conv217 = trunc i64 %178 to i32
  %179 = inttoptr i32 %conv217 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #14
  %call.i.i408 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i408, label %if.end210.if.then238_crit_edge, label %if.end.i.i412

if.end210.if.then238_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then238

if.end.i.i412:                                    ; preds = %if.end210
  %180 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %179, i32 4, i32 -1226833920) #21, !srcloc !114
  %asmresult.i.i410 = extractvalue { i32, i32 } %180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i410)
  %cmp.i6.i411 = icmp eq i32 %asmresult.i.i410, 0
  br i1 %cmp.i6.i411, label %copy_to_user.exit417, label %if.end.i.i412.if.then238_crit_edge

if.end.i.i412.if.then238_crit_edge:               ; preds = %if.end.i.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then238

copy_to_user.exit417:                             ; preds = %if.end.i.i412
  %call.i.i.i413 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %batch, i32 noundef 4) #14
  %call.i12.i.i414 = call i32 @arm_copy_to_user(ptr noundef %179, ptr noundef nonnull %batch, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i414)
  %tobool219.not = icmp eq i32 %call.i12.i.i414, 0
  br i1 %tobool219.not, label %lor.lhs.false220, label %copy_to_user.exit417.if.then238_crit_edge

copy_to_user.exit417.if.then238_crit_edge:        ; preds = %copy_to_user.exit417
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then238

lor.lhs.false220:                                 ; preds = %copy_to_user.exit417
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1791) #14
  %181 = call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i418 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i418 to ptr
  %cpu_domain.i.i419 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 4
  %183 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i419) #9, !srcloc !104
  %and.i420 = and i32 %183, -13
  %or.i421 = or i32 %and.i420, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i421) #14, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  %184 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %count31, i32 %total.2495, i32 -1226833921) #14, !srcloc !115
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #14, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool237.not = icmp eq i32 %184, 0
  br i1 %tobool237.not, label %lor.lhs.false220.out_crit_edge, label %lor.lhs.false220.if.then238_crit_edge

lor.lhs.false220.if.then238_crit_edge:            ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then238

lor.lhs.false220.out_crit_edge:                   ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then238:                                       ; preds = %lor.lhs.false220.if.then238_crit_edge, %copy_to_user.exit417.if.then238_crit_edge, %if.end.i.i412.if.then238_crit_edge, %if.end210.if.then238_crit_edge
  br label %out

out:                                              ; preds = %if.then238, %lor.lhs.false220.out_crit_edge, %after_loop.out_crit_edge, %copy_to_user.exit401.out_crit_edge, %if.then27.i.i389, %land.rhs16.i.i388.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %retval.0.i430474486 = phi ptr [ %call.i.i428, %after_loop.out_crit_edge ], [ %retval.0.i430474493, %if.then238 ], [ %retval.0.i430474493, %lor.lhs.false220.out_crit_edge ], [ %call.i.i428, %if.then27.i.i ], [ %call.i.i428, %land.rhs16.i.i.out_crit_edge ], [ %call.i.i428, %if.then27.i.i389 ], [ %call.i.i428, %land.rhs16.i.i388.out_crit_edge ], [ %call.i.i428, %copy_to_user.exit401.out_crit_edge ], [ %call.i.i428, %copy_to_user.exit.out_crit_edge ]
  %ret.7 = phi i32 [ -14, %after_loop.out_crit_edge ], [ -14, %if.then238 ], [ %ret.6494, %lor.lhs.false220.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ -14, %if.then27.i.i389 ], [ -14, %land.rhs16.i.i388.out_crit_edge ], [ -14, %copy_to_user.exit401.out_crit_edge ], [ -14, %copy_to_user.exit.out_crit_edge ]
  call void @kvfree(ptr noundef %retval.0.i) #14
  call void @kvfree(ptr noundef %retval.0.i430474486) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end43.cleanup_crit_edge, %if.then11.i.i, %if.end30.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ -14, %if.end30.cleanup_crit_edge ], [ -2, %if.end43.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batch) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_enable_instrumentation() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !109
  %1 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @bpf_prog_active to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add13 = add i32 %9, -1
  store i32 %add13, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !110
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end28_crit_edge, !prof !94

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end28

do.end28:                                         ; preds = %if.then, %entry.do.end28_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !111
  tail call void @migrate_enable() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_map_value_locked(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_htab_elem(ptr noundef %htab, ptr noundef %l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htab, align 128
  %map_fd_put_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %map_fd_put_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_fd_put_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.htab_put_fd_value.exit_crit_edge, label %if.then.i

entry.htab_put_fd_value.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_put_fd_value.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %l, i32 0, i32 3
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  %4 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size.i.i, align 16
  %add.i.i = add i32 %5, 7
  %div3.i.i = and i32 %add.i.i, -8
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %div3.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void %3(ptr noundef %7) #14
  br label %htab_put_fd_value.exit

htab_put_fd_value.exit:                           ; preds = %if.then.i, %entry.htab_put_fd_value.exit_crit_edge
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 8
  %8 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %if.then, label %if.else

if.then:                                          ; preds = %htab_put_fd_value.exit
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 10
  %10 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.i = icmp sgt i32 %11, -1
  br i1 %cmp.i.i, label %if.then.i11, label %if.then.check_and_free_timer.exit_crit_edge, !prof !94

if.then.check_and_free_timer.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_and_free_timer.exit

if.then.i11:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %key.i = getelementptr inbounds %struct.htab_elem, ptr %l, i32 0, i32 3
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  %12 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size.i, align 16
  %sub.i = add i32 %13, -1
  %or.i = or i32 %sub.i, 7
  %add.i = add i32 %or.i, 1
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %add.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %11
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i) #14
  br label %check_and_free_timer.exit

check_and_free_timer.exit:                        ; preds = %if.then.i11, %if.then.check_and_free_timer.exit_crit_edge
  %14 = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 4
  %15 = getelementptr inbounds %struct.anon.163, ptr %l, i32 0, i32 1
  tail call void @__pcpu_freelist_push(ptr noundef %14, ptr noundef %15) #14
  br label %if.end

if.else:                                          ; preds = %htab_put_fd_value.exit
  call void @__sanitizer_cov_trace_pc() #16
  %count = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #14, !srcloc !116
  %17 = getelementptr inbounds %struct.anon.163, ptr %l, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %htab, ptr %17, align 4
  %19 = getelementptr inbounds %struct.htab_elem, ptr %l, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %19, ptr noundef nonnull @htab_elem_free_rcu) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %check_and_free_timer.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pcpu_freelist_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htab_elem_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr i8, ptr %head, i32 -4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.i = icmp eq i32 %4, 5
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size.i, align 16
  %key.i.i = getelementptr i8, ptr %head, i32 16
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %6
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @free_percpu(ptr noundef %8) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %2, i32 0, i32 10
  %9 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.i.i = icmp sgt i32 %10, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.htab_elem_free.exit_crit_edge, !prof !94

if.end.i.htab_elem_free.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_elem_free.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %key.i6.i = getelementptr i8, ptr %head, i32 16
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_size.i.i, align 16
  %sub.i.i = add i32 %12, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add i32 %or.i.i, 1
  %add.ptr.i7.i = getelementptr i8, ptr %key.i6.i, i32 %add.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %10
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i) #14
  br label %htab_elem_free.exit

htab_elem_free.exit:                              ; preds = %if.then.i.i, %if.end.i.htab_elem_free.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_lru_push_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__htab_map_lookup_and_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i1 noundef zeroext %is_lru_map, i1 noundef zeroext %is_percpu, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size2 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size2, align 16
  %hashrnd = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 9
  %2 = ptrtoint ptr %hashrnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashrnd, align 16
  %call = tail call fastcc i32 @htab_map_hash(ptr noundef %key, i32 noundef %1, i32 noundef %3)
  %buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %n_buckets.i = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 7
  %6 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets.i, align 8
  %and.i85 = and i32 %call, 7
  tail call void @migrate_disable() #14
  %arrayidx.i86 = getelementptr %struct.bpf_htab, ptr %map, i32 0, i32 11, i32 %and.i85
  %8 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i86, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add8.i = add i32 %19, 1
  store i32 %add8.i, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %if.end, label %htab_lock_bucket.exit, !prof !95

htab_lock_bucket.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i86, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx29.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %26, %22
  %27 = inttoptr i32 %add30.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add31.i = add i32 %29, -1
  store i32 %add31.i, ptr %27, align 4
  tail call void @migrate_enable() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, %call
  %arrayidx.i = getelementptr %struct.bucket, ptr %5, i32 %and.i
  %30 = getelementptr %struct.bucket, ptr %5, i32 %and.i, i32 1
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %n.019.i = load volatile ptr, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %n.019.i to i32
  %and.i20.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not21.i = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not21.i, label %if.end.for.body.i_crit_edge, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %n.022.i = phi ptr [ %n.0.i, %for.inc.i.for.body.i_crit_edge ], [ %n.019.i, %if.end.for.body.i_crit_edge ]
  %hash5.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 2
  %33 = ptrtoint ptr %hash5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call)
  %cmp.i = icmp eq i32 %34, %call
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %key6.i = getelementptr inbounds %struct.htab_elem, ptr %n.022.i, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %key6.i, ptr %key, i32 %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %lookup_elem_raw.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %n.0.i = load volatile ptr, ptr %n.022.i, align 4
  %36 = ptrtoint ptr %n.0.i to i32
  %and.i.i87 = and i32 %36, 1
  %tobool.not.i = icmp eq i32 %and.i.i87, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end36_crit_edge

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lookup_elem_raw.exit:                             ; preds = %land.lhs.true.i
  %tobool7.not = icmp eq ptr %n.022.i, null
  br i1 %tobool7.not, label %lookup_elem_raw.exit.if.end36_crit_edge, label %if.else

lookup_elem_raw.exit.if.end36_crit_edge:          ; preds = %lookup_elem_raw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.else:                                          ; preds = %lookup_elem_raw.exit
  br i1 %is_percpu, label %if.then10, label %if.else18

if.then10:                                        ; preds = %if.else
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %37 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value_size, align 4
  %sub = add i32 %38, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %call12114 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12114, i32 %39)
  %cmp115 = icmp ult i32 %call12114, %39
  br i1 %cmp115, label %for.body.lr.ph, label %if.then10.if.end32_crit_edge

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

for.body.lr.ph:                                   ; preds = %if.then10
  %add.ptr.i = getelementptr i8, ptr %key6.i, i32 %1
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %42 = ptrtoint ptr %41 to i32
  %div3.i = lshr exact i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call12117 = phi i32 [ %call12114, %for.body.lr.ph ], [ %call12, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %add17, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12117
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %44, %42
  %45 = inttoptr i32 %add16 to ptr
  %add.ptr13 = getelementptr i8, ptr %value, i32 %off.0116
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr13, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %45, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %46 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %48 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %ldst.07.i, align 4
  %tobool.not.i89 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i89, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add17 = add i32 %off.0116, %add
  %call12 = tail call i32 @cpumask_next(i32 noundef %call12117, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call12, %49
  br i1 %cmp, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.if.end32_crit_edge

bpf_long_memcpy.exit.if.end32_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else18:                                        ; preds = %if.else
  %50 = ptrtoint ptr %key_size2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %key_size2, align 16
  %sub20 = add i32 %51, -1
  %or21 = or i32 %sub20, 7
  %add22 = add i32 %or21, 1
  %and = and i64 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  %add.ptr30 = getelementptr i8, ptr %key6.i, i32 %add22
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @copy_map_value_locked(ptr noundef %map, ptr noundef %value, ptr noundef %add.ptr30, i1 noundef zeroext true) #14
  br label %if.end31

if.else27:                                        ; preds = %if.else18
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %52 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.i = icmp sgt i32 %53, -1
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %54 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i69.i = icmp sgt i32 %55, -1
  br i1 %cmp.i.i, label %if.end.i91, label %if.end.thread.i, !prof !94

if.end.i91:                                       ; preds = %if.else27
  %56 = lshr i32 %55, 27
  %57 = and i32 %56, 16
  %58 = xor i32 %57, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %55, i32 0, !prof !94
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %spec.select97.i)
  %cmp.i90.not = icmp ult i32 %53, %spec.select97.i
  br i1 %cmp.i90.not, label %if.end.i91.do.body.i_crit_edge, label %if.end.i91.if.end26.i_crit_edge

if.end.i91.if.end26.i_crit_edge:                  ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i91.do.body.i_crit_edge:                   ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.thread.i:                                  ; preds = %if.else27
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !94

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i91.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %58, %if.end.i91.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i91.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %53, %if.end.i91.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i91.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i91.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %58, %if.end.i91.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i91.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %55, %do.body.i ], [ %53, %if.end.i91.if.end26.i_crit_edge ]
  %59 = call ptr @memcpy(ptr %value, ptr %add.ptr30, i32 %t_off.1.i)
  %add.ptr.i92 = getelementptr i8, ptr %value, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i92, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %add.ptr30, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %60 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %60
  %61 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %value, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %add.ptr30, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %62 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value_size.i, align 4
  %64 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %63, %64
  %65 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %if.end31

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %value_size37.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %66 = ptrtoint ptr %value_size37.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %value_size37.i, align 4
  %68 = call ptr @memcpy(ptr %value, ptr %add.ptr30, i32 %67)
  br label %if.end31

if.end31:                                         ; preds = %if.else.i, %if.end26.i, %if.then24
  %spin_lock_off.i.i93 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %69 = ptrtoint ptr %spin_lock_off.i.i93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %spin_lock_off.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i.i94 = icmp sgt i32 %70, -1
  br i1 %cmp.i.i94, label %if.then.i96, label %if.end31.if.end.i98_crit_edge, !prof !94

if.end31.if.end.i98_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i98

if.then.i96:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i95 = getelementptr i8, ptr %value, i32 %70
  %71 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 0, ptr %add.ptr.i95, align 1
  br label %if.end.i98

if.end.i98:                                       ; preds = %if.then.i96, %if.end31.if.end.i98_crit_edge
  %timer_off.i.i97 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %72 = ptrtoint ptr %timer_off.i.i97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %timer_off.i.i97, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i16.i = icmp sgt i32 %73, -1
  br i1 %cmp.i16.i, label %if.then9.i, label %if.end.i98.if.end32_crit_edge, !prof !94

if.end.i98.if.end32_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then9.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10.i = getelementptr i8, ptr %value, i32 %73
  %74 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 16)
  br label %if.end32

if.end32:                                         ; preds = %if.then9.i, %if.end.i98.if.end32_crit_edge, %bpf_long_memcpy.exit.if.end32_crit_edge, %if.then10.if.end32_crit_edge
  %75 = ptrtoint ptr %n.022.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %n.022.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %n.022.i, i32 0, i32 1
  %77 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pprev2.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %76, ptr %78, align 4
  %80 = ptrtoint ptr %76 to i32
  %and.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i, label %if.end32.hlist_nulls_del_rcu.exit_crit_edge

if.end32.hlist_nulls_del_rcu.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_nulls_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %78, ptr %pprev14.i.i, align 4
  br label %hlist_nulls_del_rcu.exit

hlist_nulls_del_rcu.exit:                         ; preds = %do.body13.i.i, %if.end32.hlist_nulls_del_rcu.exit_crit_edge
  %82 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br i1 %is_lru_map, label %hlist_nulls_del_rcu.exit.if.end36_crit_edge, label %if.then34

hlist_nulls_del_rcu.exit.if.end36_crit_edge:      ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then34:                                        ; preds = %hlist_nulls_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_htab_elem(ptr noundef %map, ptr noundef nonnull %n.022.i)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %hlist_nulls_del_rcu.exit.if.end36_crit_edge, %lookup_elem_raw.exit.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %tobool7.not111 = phi i1 [ false, %hlist_nulls_del_rcu.exit.if.end36_crit_edge ], [ false, %if.then34 ], [ true, %lookup_elem_raw.exit.if.end36_crit_edge ], [ true, %if.end.if.end36_crit_edge ], [ true, %for.inc.i.if.end36_crit_edge ]
  %retval.0.i88110 = phi ptr [ %n.022.i, %hlist_nulls_del_rcu.exit.if.end36_crit_edge ], [ %n.022.i, %if.then34 ], [ null, %lookup_elem_raw.exit.if.end36_crit_edge ], [ null, %if.end.if.end36_crit_edge ], [ null, %for.inc.i.if.end36_crit_edge ]
  %ret.0 = phi i32 [ 0, %hlist_nulls_del_rcu.exit.if.end36_crit_edge ], [ 0, %if.then34 ], [ -2, %lookup_elem_raw.exit.if.end36_crit_edge ], [ -2, %if.end.if.end36_crit_edge ], [ -2, %for.inc.i.if.end36_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call41.i) #14
  %83 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i86, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i101 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i101 to ptr
  %cpu.i102 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cpu.i102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu.i102, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx11.i, align 4
  %add.i103 = add i32 %91, %85
  %92 = inttoptr i32 %add.i103 to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %add12.i = add i32 %94, -1
  store i32 %add12.i, ptr %92, align 4
  tail call void @migrate_enable() #14
  %is_lru_map.not = xor i1 %is_lru_map, true
  %brmerge = or i1 %tobool7.not111, %is_lru_map.not
  br i1 %brmerge, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  %timer_off.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %95 = ptrtoint ptr %timer_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %timer_off.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i.i.i = icmp sgt i32 %96, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then39.htab_lru_push_free.exit_crit_edge, !prof !94

if.then39.htab_lru_push_free.exit_crit_edge:      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_lru_push_free.exit

if.then.i.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i88110, i32 0, i32 3
  %97 = ptrtoint ptr %key_size2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %key_size2, align 16
  %sub.i.i = add i32 %98, -1
  %or.i.i = or i32 %sub.i.i, 7
  %add.i.i = add i32 %or.i.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %add.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %96
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr4.i.i) #14
  br label %htab_lru_push_free.exit

htab_lru_push_free.exit:                          ; preds = %if.then.i.i, %if.then39.htab_lru_push_free.exit_crit_edge
  %99 = getelementptr inbounds %struct.bpf_htab, ptr %map, i32 0, i32 4
  %100 = getelementptr inbounds %struct.htab_elem, ptr %retval.0.i88110, i32 0, i32 1
  tail call void @bpf_lru_push_free(ptr noundef %99, ptr noundef %100) #14
  br label %cleanup

cleanup:                                          ; preds = %htab_lru_push_free.exit, %if.end36.cleanup_crit_edge, %htab_lock_bucket.exit
  %retval.0 = phi i32 [ -16, %htab_lock_bucket.exit ], [ %ret.0, %if.end36.cleanup_crit_edge ], [ %ret.0, %htab_lru_push_free.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_htab_elem(ptr noundef %htab, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i32 noundef %key_size, i32 noundef %hash, i1 noundef zeroext %percpu, i1 noundef zeroext %onallcpus, ptr noundef %old_elem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 8
  %2 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %old_elem, null
  br i1 %tobool3.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  %extra_elems = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 5
  %4 = ptrtoint ptr %extra_elems to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra_elems, align 128
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i130 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i130 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %htab to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %htab, align 128
  %map_fd_put_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %map_fd_put_ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map_fd_put_ptr.i, align 4
  %tobool.not.i131 = icmp eq ptr %19, null
  br i1 %tobool.not.i131, label %do.body.htab_put_fd_value.exit_crit_edge, label %if.then.i

do.body.htab_put_fd_value.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %htab_put_fd_value.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %key.i.i = getelementptr inbounds %struct.htab_elem, ptr %old_elem, i32 0, i32 3
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 4
  %20 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_size.i.i, align 16
  %add.i.i = add i32 %21, 7
  %div3.i.i = and i32 %add.i.i, -8
  %add.ptr.i.i = getelementptr i8, ptr %key.i.i, i32 %div3.i.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void %19(ptr noundef %23) #14
  br label %htab_put_fd_value.exit

htab_put_fd_value.exit:                           ; preds = %if.then.i, %do.body.htab_put_fd_value.exit_crit_edge
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %old_elem, ptr %13, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then
  %25 = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 4
  %call7 = tail call ptr @__pcpu_freelist_pop(ptr noundef %25) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.cleanup80_crit_edge, label %cleanup

if.else.cleanup80_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup80

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %call7, i32 -4
  br label %if.end33

if.else13:                                        ; preds = %entry
  %count = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #14
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #14, !srcloc !118
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !119
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 6
  %27 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %28)
  %cmp = icmp ugt i32 %asmresult.i.i.i.i, %28
  %tobool17.not = icmp eq ptr %old_elem, null
  %or.cond = and i1 %tobool17.not, %cmp
  br i1 %or.cond, label %if.else13.dec_count_crit_edge, label %if.end21

if.else13.dec_count_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  br label %dec_count

if.end21:                                         ; preds = %if.else13
  %elem_size = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 8
  %29 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %elem_size, align 4
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 12
  %31 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %numa_node, align 8
  %call24 = tail call ptr @bpf_map_kmalloc_node(ptr noundef %htab, i32 noundef %30, i32 noundef 10784, i32 noundef %32) #14
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end21.dec_count_crit_edge, label %if.end28

if.end21.dec_count_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %dec_count

if.end28:                                         ; preds = %if.end21
  %key30 = getelementptr inbounds %struct.htab_elem, ptr %call24, i32 0, i32 3
  %sub = add i32 %key_size, -1
  %or = or i32 %sub, 7
  %add31 = add i32 %or, 1
  %add.ptr32 = getelementptr i8, ptr %key30, i32 %add31
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 9
  %33 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.i = icmp sgt i32 %34, -1
  br i1 %cmp.i.i, label %if.then.i132, label %if.end28.if.end.i_crit_edge, !prof !94

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i132:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %add.ptr32, i32 %34
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i132, %if.end28.if.end.i_crit_edge
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 10
  %36 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i16.i = icmp sgt i32 %37, -1
  br i1 %cmp.i16.i, label %if.then9.i, label %if.end.i.if.end33_crit_edge, !prof !94

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr10.i = getelementptr i8, ptr %add.ptr32, i32 %37
  %38 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 16)
  br label %if.end33

if.end33:                                         ; preds = %if.then9.i, %if.end.i.if.end33_crit_edge, %cleanup, %htab_put_fd_value.exit
  %l_new.1 = phi ptr [ %15, %htab_put_fd_value.exit ], [ %add.ptr, %cleanup ], [ %call24, %if.end.i.if.end33_crit_edge ], [ %call24, %if.then9.i ]
  %key34 = getelementptr inbounds %struct.htab_elem, ptr %l_new.1, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %key34, ptr %key, i32 %key_size)
  br i1 %percpu, label %if.then37, label %if.else56

if.then37:                                        ; preds = %if.end33
  br i1 %tobool.not.i, label %if.end51.thread, label %if.else44

if.end51.thread:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i133 = getelementptr i8, ptr %key34, i32 %key_size
  %40 = ptrtoint ptr %add.ptr.i133 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i133, align 4
  tail call fastcc void @pcpu_init_value(ptr noundef %htab, ptr noundef %41, ptr noundef %value, i1 noundef zeroext %onallcpus)
  br label %if.end77

if.else44:                                        ; preds = %if.then37
  %sub38 = add i32 %1, -1
  %or39 = or i32 %sub38, 7
  %add40 = add i32 %or39, 1
  %call46 = tail call ptr @bpf_map_alloc_percpu(ptr noundef %htab, i32 noundef %add40, i32 noundef 8, i32 noundef 10784) #14
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.then54

if.then48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %l_new.1) #14
  br label %dec_count

if.then54:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @pcpu_init_value(ptr noundef %htab, ptr noundef nonnull %call46, ptr noundef %value, i1 noundef zeroext %onallcpus)
  %add.ptr.i135 = getelementptr i8, ptr %key34, i32 %key_size
  %42 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call46, ptr %add.ptr.i135, align 4
  br label %if.end77

if.else56:                                        ; preds = %if.end33
  %sub72 = add i32 %key_size, -1
  %or73 = or i32 %sub72, 7
  %add74 = add i32 %or73, 1
  %add.ptr75 = getelementptr i8, ptr %key34, i32 %add74
  %spin_lock_off.i.i136 = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 9
  %43 = ptrtoint ptr %spin_lock_off.i.i136 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %spin_lock_off.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.i137 = icmp sgt i32 %44, -1
  %timer_off.i.i138 = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 10
  %45 = ptrtoint ptr %timer_off.i.i138 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timer_off.i.i138, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i69.i = icmp sgt i32 %46, -1
  br i1 %cmp.i.i137, label %if.end.i139, label %if.end.thread.i, !prof !94

if.end.i139:                                      ; preds = %if.else56
  %47 = lshr i32 %46, 27
  %48 = and i32 %47, 16
  %49 = xor i32 %48, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %46, i32 0, !prof !94
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %spec.select97.i)
  %cmp.i.not = icmp ult i32 %44, %spec.select97.i
  br i1 %cmp.i.not, label %if.end.i139.do.body.i_crit_edge, label %if.end.i139.if.end26.i_crit_edge

if.end.i139.if.end26.i_crit_edge:                 ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i139.do.body.i_crit_edge:                  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.thread.i:                                  ; preds = %if.else56
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !94

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i139.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %49, %if.end.i139.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i139.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %44, %if.end.i139.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i139.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i139.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %49, %if.end.i139.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i139.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %46, %do.body.i ], [ %44, %if.end.i139.if.end26.i_crit_edge ]
  %50 = call ptr @memcpy(ptr %add.ptr75, ptr %value, i32 %t_off.1.i)
  %add.ptr.i140 = getelementptr i8, ptr %add.ptr75, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i140, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %value, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %51 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %51
  %52 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %add.ptr75, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %value, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %53 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value_size, align 4
  %55 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %54, %55
  %56 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %if.end77

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value_size, align 4
  %59 = call ptr @memcpy(ptr %add.ptr75, ptr %value, i32 %58)
  br label %if.end77

if.end77:                                         ; preds = %if.else.i, %if.end26.i, %if.then54, %if.end51.thread
  %hash78 = getelementptr inbounds %struct.htab_elem, ptr %l_new.1, i32 0, i32 2
  %60 = ptrtoint ptr %hash78 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %hash, ptr %hash78, align 4
  br label %cleanup80

dec_count:                                        ; preds = %if.then48, %if.end21.dec_count_crit_edge, %if.else13.dec_count_crit_edge
  %l_new.2 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then48 ], [ inttoptr (i32 -7 to ptr), %if.else13.dec_count_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end21.dec_count_crit_edge ]
  %count79 = getelementptr inbounds %struct.bpf_htab, ptr %htab, i32 0, i32 6
  %call.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count79, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %count79, i32 1, i32 3, i32 1) #14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count79, ptr %count79, i32 1, ptr elementtype(i32) %count79) #14, !srcloc !116
  br label %cleanup80

cleanup80:                                        ; preds = %dec_count, %if.end77, %if.else.cleanup80_crit_edge
  %retval.1 = phi ptr [ %l_new.1, %if.end77 ], [ %l_new.2, %dec_count ], [ inttoptr (i32 -7 to ptr), %if.else.cleanup80_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pcpu_freelist_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_init_value(ptr nocapture noundef readonly %htab, ptr noundef %pptr, ptr nocapture noundef readonly %value, i1 noundef zeroext %onallcpus) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %brmerge = or i1 %tobool.not.i, %onallcpus
  br i1 %brmerge, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 5
  %2 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value_size, align 4
  %sub = add i32 %3, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i31 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i31 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %call334 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call334, i32 %8)
  %cmp35 = icmp ult i32 %call334, %8
  br i1 %cmp35, label %for.body.lr.ph, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.body.lr.ph:                                   ; preds = %if.then
  %9 = ptrtoint ptr %pptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %div3.i = lshr exact i32 %add, 2
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %call336 = phi i32 [ %call334, %for.body.lr.ph ], [ %call3, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call336, i32 %7)
  %cmp4 = icmp eq i32 %call336, %7
  br i1 %cmp4, label %do.body, label %do.body8

do.body:                                          ; preds = %for.body
  br i1 %tobool.not4.i, label %do.body.if.end_crit_edge, label %while.body.preheader.i

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.preheader.i:                           ; preds = %do.body
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add7 = add i32 %11, %9
  %12 = inttoptr i32 %add7 to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %12, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %value, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %13 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %15 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ldst.07.i, align 4
  %tobool.not.i32 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i32, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call336
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %17, %9
  %18 = inttoptr i32 %add16 to ptr
  %19 = call ptr @memset(ptr %18, i32 0, i32 %add)
  br label %if.end

if.end:                                           ; preds = %do.body8, %while.body.i.if.end_crit_edge, %do.body.if.end_crit_edge
  %call3 = tail call i32 @cpumask_next(i32 noundef %call336, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.else17:                                        ; preds = %entry
  br i1 %onallcpus, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %pptr to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 5
  %29 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value_size.i, align 4
  %31 = call ptr @memcpy(ptr %28, ptr %value, i32 %30)
  br label %if.end19

if.else.i:                                        ; preds = %if.else17
  %value_size3.i = getelementptr inbounds %struct.bpf_map, ptr %htab, i32 0, i32 5
  %32 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value_size3.i, align 4
  %sub.i = add i32 %33, -1
  %or.i = or i32 %sub.i, 7
  %add4.i = add i32 %or.i, 1
  %call623.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call623.i, i32 %34)
  %cmp24.i = icmp ult i32 %call623.i, %34
  br i1 %cmp24.i, label %do.body7.lr.ph.i, label %if.else.i.if.end19_crit_edge

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.body7.lr.ph.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4.i)
  %tobool.not4.i.i = icmp eq i32 %add4.i, 0
  %35 = ptrtoint ptr %pptr to i32
  %div3.i.i = lshr exact i32 %add4.i, 2
  br label %do.body7.i

do.body7.i:                                       ; preds = %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, %do.body7.lr.ph.i
  %call626.i = phi i32 [ %call623.i, %do.body7.lr.ph.i ], [ %call6.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  %off.025.i = phi i32 [ 0, %do.body7.lr.ph.i ], [ %add15.i, %bpf_long_memcpy.exit.i.do.body7.i_crit_edge ]
  br i1 %tobool.not4.i.i, label %do.body7.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.preheader.i.i

do.body7.i.bpf_long_memcpy.exit.i_crit_edge:      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

while.body.preheader.i.i:                         ; preds = %do.body7.i
  %add.ptr.i = getelementptr i8, ptr %value, i32 %off.025.i
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call626.i
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %37, %35
  %38 = inttoptr i32 %add14.i to ptr
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %ldst.07.i.i = phi ptr [ %incdec.ptr1.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %38, %while.body.preheader.i.i ]
  %lsrc.06.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i.i ]
  %size.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div3.i.i, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %size.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %lsrc.06.i.i, i32 1
  %39 = ptrtoint ptr %lsrc.06.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lsrc.06.i.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %ldst.07.i.i, i32 1
  %41 = ptrtoint ptr %ldst.07.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ldst.07.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.bpf_long_memcpy.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit.i

bpf_long_memcpy.exit.i:                           ; preds = %while.body.i.i.bpf_long_memcpy.exit.i_crit_edge, %do.body7.i.bpf_long_memcpy.exit.i_crit_edge
  %add15.i = add i32 %off.025.i, %add4.i
  %call6.i = tail call i32 @cpumask_next(i32 noundef %call626.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call6.i, %42
  br i1 %cmp.i, label %bpf_long_memcpy.exit.i.do.body7.i_crit_edge, label %bpf_long_memcpy.exit.i.if.end19_crit_edge

bpf_long_memcpy.exit.i.if.end19_crit_edge:        ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

bpf_long_memcpy.exit.i.do.body7.i_crit_edge:      ; preds = %bpf_long_memcpy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i

if.end19:                                         ; preds = %bpf_long_memcpy.exit.i.if.end19_crit_edge, %if.else.i.if.end19_crit_edge, %do.body.i, %if.end.if.end19_crit_edge, %if.then.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__bpf_call_base(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_type_seq_show(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_init_hash_map(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readonly %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %entry.if.end6_crit_edge [
    i32 5, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge23
  ]

entry.if.then_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge23
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value_size, align 4
  %sub = add i32 %6, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %7) #14
  %mul = mul i32 %call4.i.i, %add
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 1060032) #22
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %priv_data, i32 0, i32 2
  %8 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %percpu_value_buf, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %9 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %priv_data, align 4
  %htab = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %priv_data, i32 0, i32 1
  %10 = ptrtoint ptr %htab to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %htab, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_fini_hash_map(ptr nocapture noundef readonly %priv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %priv_data, i32 0, i32 2
  %0 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_value_buf, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_hash_map_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call fastcc ptr @bpf_hash_map_seq_find_next(ptr noundef %1, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_hash_map_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__bpf_map_elem, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx.i) #14
  %2 = call ptr @memset(ptr %ctx.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #14
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.__bpf_hash_map_seq_show.exit_crit_edge, label %if.then.i

if.then.__bpf_hash_map_seq_show.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_hash_map_seq_show.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %call23.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #14
  br label %__bpf_hash_map_seq_show.exit

__bpf_hash_map_seq_show.exit:                     ; preds = %if.then.i, %if.then.__bpf_hash_map_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i1, label %if.else.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_unlock.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i3

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i3:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i3, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.else.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %10 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end

if.end:                                           ; preds = %rcu_read_unlock.exit, %__bpf_hash_map_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_hash_map_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %skip_elems = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %skip_elems to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip_elems, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %skip_elems, align 4
  %call = tail call fastcc ptr @bpf_hash_map_seq_find_next(ptr noundef %1, ptr noundef %v)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_hash_map_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bpf_hash_map_seq_show(ptr noundef %seq, ptr noundef %v)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bpf_hash_map_seq_find_next(ptr nocapture noundef %info, ptr noundef %prev_elem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %htab1 = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %htab1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htab1, align 4
  %skip_elems2 = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %info, i32 0, i32 4
  %bucket_id3 = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %bucket_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket_id3, align 4
  %n_buckets = getelementptr inbounds %struct.bpf_htab, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %skip_elems2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip_elems2, align 4
  %tobool.not = icmp eq ptr %prev_elem, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %prev_elem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %prev_elem, align 8
  %10 = ptrtoint ptr %9 to i32
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp ne i32 %and.i, 0
  %tobool9.not102 = icmp eq ptr %9, null
  %tobool9.not = select i1 %tobool7.not, i1 true, i1 %tobool9.not102
  br i1 %tobool9.not, label %if.end11, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.then4
  %inc = add nuw i32 %3, 1
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i81, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %if.end11
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %11 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i88 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end12

if.end12:                                         ; preds = %rcu_read_unlock.exit, %if.end.if.end12_crit_edge
  %bucket_id.0 = phi i32 [ %inc, %rcu_read_unlock.exit ], [ %3, %if.end.if.end12_crit_edge ]
  %skip_elems.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %7, %if.end.if.end12_crit_edge ]
  %15 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bucket_id.0, i32 %16)
  %cmp14111 = icmp ult i32 %bucket_id.0, %16
  br i1 %cmp14111, label %for.body.lr.ph, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end12
  %buckets15 = getelementptr inbounds %struct.bpf_htab, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit101.for.body_crit_edge, %for.body.lr.ph
  %skip_elems.1114 = phi i32 [ %skip_elems.0, %for.body.lr.ph ], [ 0, %rcu_read_unlock.exit101.for.body_crit_edge ]
  %i.0112 = phi i32 [ %bucket_id.0, %for.body.lr.ph ], [ %inc45, %rcu_read_unlock.exit101.for.body_crit_edge ]
  %17 = ptrtoint ptr %buckets15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buckets15, align 128
  %arrayidx16 = getelementptr %struct.bucket, ptr %18, i32 %i.0112
  %19 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !99
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !120
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.0106 = load volatile ptr, ptr %arrayidx16, align 4
  %24 = ptrtoint ptr %n.0106 to i32
  %and.i90107 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90107)
  %tobool25.not108 = icmp eq i32 %and.i90107, 0
  br i1 %tobool25.not108, label %rcu_read_lock.exit.for.body31_crit_edge, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

rcu_read_lock.exit.for.body31_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %for.body31

for.body31:                                       ; preds = %if.end36.for.body31_crit_edge, %rcu_read_lock.exit.for.body31_crit_edge
  %n.0110 = phi ptr [ %n.0, %if.end36.for.body31_crit_edge ], [ %n.0106, %rcu_read_lock.exit.for.body31_crit_edge ]
  %count.0109 = phi i32 [ %inc37, %if.end36.for.body31_crit_edge ], [ 0, %rcu_read_lock.exit.for.body31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0109, i32 %skip_elems.1114)
  %exitcond.not = icmp eq i32 %count.0109, %skip_elems.1114
  br i1 %exitcond.not, label %for.body31.cleanup.sink.split_crit_edge, label %if.end36

for.body31.cleanup.sink.split_crit_edge:          ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end36:                                         ; preds = %for.body31
  %inc37 = add i32 %count.0109, 1
  %25 = ptrtoint ptr %n.0110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %n.0 = load volatile ptr, ptr %n.0110, align 4
  %26 = ptrtoint ptr %n.0 to i32
  %and.i90 = and i32 %26, 1
  %tobool25.not = icmp eq i32 %and.i90, 0
  br i1 %tobool25.not, label %if.end36.for.body31_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end36.for.body31_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i91, label %for.end.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true.i94

for.end.rcu_read_unlock.exit101_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit101

land.lhs.true.i94:                                ; preds = %for.end
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit101

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit101

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit101

rcu_read_unlock.exit101:                          ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, %for.end.rcu_read_unlock.exit101_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  %27 = tail call i32 @llvm.read_register.i32(metadata !82) #14
  %and.i.i.i.i.i98 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i100 = add i32 %30, -1
  store volatile i32 %sub.i.i.i100, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %inc45 = add nuw i32 %i.0112, 1
  %31 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_buckets, align 8
  %cmp14 = icmp ult i32 %inc45, %32
  br i1 %cmp14, label %rcu_read_unlock.exit101.for.body_crit_edge, label %rcu_read_unlock.exit101.cleanup.sink.split_crit_edge

rcu_read_unlock.exit101.cleanup.sink.split_crit_edge: ; preds = %rcu_read_unlock.exit101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

rcu_read_unlock.exit101.for.body_crit_edge:       ; preds = %rcu_read_unlock.exit101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit101.cleanup.sink.split_crit_edge, %for.body31.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge
  %i.0.lcssa.sink = phi i32 [ %bucket_id.0, %if.end12.cleanup.sink.split_crit_edge ], [ %i.0112, %for.body31.cleanup.sink.split_crit_edge ], [ %inc45, %rcu_read_unlock.exit101.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ %skip_elems.1114, %for.body31.cleanup.sink.split_crit_edge ], [ 0, %rcu_read_unlock.exit101.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ null, %if.end12.cleanup.sink.split_crit_edge ], [ %n.0110, %for.body31.cleanup.sink.split_crit_edge ], [ null, %rcu_read_unlock.exit101.cleanup.sink.split_crit_edge ]
  %33 = ptrtoint ptr %bucket_id3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0.lcssa.sink, ptr %bucket_id3, align 4
  %34 = ptrtoint ptr %skip_elems2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %skip_elems2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %9, %if.then4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_hash_map_seq_show(ptr noundef %seq, ptr noundef %elem) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.bpf_iter__bpf_map_elem, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx) #14
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #14
  %5 = call ptr @memset(ptr %meta, i32 255, i32 24)
  %6 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %seq, ptr %meta, align 8
  %cmp = icmp eq ptr %elem, null
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext %cmp) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %meta, ptr %ctx, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  br i1 %cmp, label %if.then.if.end22_crit_edge, label %if.then4

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then4:                                         ; preds = %if.then
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_size, align 16
  %key = getelementptr inbounds %struct.htab_elem, ptr %elem, i32 0, i32 3
  %14 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %key, ptr %14, align 8
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_hash_map_info, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %percpu_value_buf, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %13, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %add.ptr = getelementptr i8, ptr %key, i32 %add
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.then4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %4, i32 0, i32 5
  %18 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value_size, align 4
  %sub9 = add i32 %19, -1
  %or10 = or i32 %sub9, 7
  %add11 = add i32 %or10, 1
  %call1441 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1441, i32 %20)
  %cmp1542 = icmp ult i32 %call1441, %20
  br i1 %cmp1542, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %21 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_size, align 16
  %add.ptr.i = getelementptr i8, ptr %key, i32 %22
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11)
  %tobool.not4.i = icmp eq i32 %add11, 0
  %25 = ptrtoint ptr %24 to i32
  %div3.i = lshr exact i32 %add11, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call1444 = phi i32 [ %call1441, %for.body.lr.ph ], [ %call14, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.043 = phi i32 [ 0, %for.body.lr.ph ], [ %add20, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1444
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add19 = add i32 %27, %25
  %28 = inttoptr i32 %add19 to ptr
  %29 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %percpu_value_buf, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 %off.043
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr17, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %28, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %31 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %33 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ldst.07.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add20 = add i32 %off.043, %add11
  %call14 = call i32 @cpumask_next(i32 noundef %call1444, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %34
  br i1 %cmp15, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %if.else.for.end_crit_edge
  %35 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %percpu_value_buf, align 4
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %for.end, %if.then6
  %add.ptr.sink = phi ptr [ %add.ptr, %if.then6 ], [ %36, %for.end ]
  %37 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.sink, ptr %37, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then.if.end22_crit_edge
  %call23 = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx) #14
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %entry.if.end24_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end22 ], [ 0, %entry.if.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_lru_pop_free(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_meta_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_meta_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !71, !72, !74, !76, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/hashtab.c", i32 2125, i32 18}
!2 = !{ptr @htab_map_ops, !3, !"htab_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/hashtab.c", i32 2109, i32 26}
!4 = !{ptr @htab_lru_map_ops, !5, !"htab_lru_map_ops", i1 false, i1 false}
!5 = !{!"../kernel/bpf/hashtab.c", i32 2131, i32 26}
!6 = !{ptr @htab_percpu_map_ops, !7, !"htab_percpu_map_ops", i1 false, i1 false}
!7 = !{!"../kernel/bpf/hashtab.c", i32 2256, i32 26}
!8 = !{ptr @htab_lru_percpu_map_ops, !9, !"htab_lru_percpu_map_ops", i1 false, i1 false}
!9 = !{!"../kernel/bpf/hashtab.c", i32 2276, i32 26}
!10 = !{ptr @htab_of_maps_map_ops, !11, !"htab_of_maps_map_ops", i1 false, i1 false}
!11 = !{!"../kernel/bpf/hashtab.c", i32 2416, i32 26}
!12 = !{ptr @htab_map_btf_id, !13, !"htab_map_btf_id", i1 false, i1 false}
!13 = !{!"../kernel/bpf/hashtab.c", i32 2108, i32 12}
!14 = !{ptr @htab_lru_map_btf_id, !15, !"htab_lru_map_btf_id", i1 false, i1 false}
!15 = !{!"../kernel/bpf/hashtab.c", i32 2130, i32 12}
!16 = !{ptr @htab_percpu_map_btf_id, !17, !"htab_percpu_map_btf_id", i1 false, i1 false}
!17 = !{!"../kernel/bpf/hashtab.c", i32 2255, i32 12}
!18 = !{ptr @htab_lru_percpu_map_btf_id, !19, !"htab_lru_percpu_map_btf_id", i1 false, i1 false}
!19 = !{!"../kernel/bpf/hashtab.c", i32 2275, i32 12}
!20 = !{ptr @htab_of_maps_map_btf_id, !21, !"htab_of_maps_map_btf_id", i1 false, i1 false}
!21 = !{!"../kernel/bpf/hashtab.c", i32 2415, i32 12}
!22 = !{ptr @htab_init_buckets.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../kernel/bpf/hashtab.c", i32 147, i32 4}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/bpf/hashtab.c", i32 148, i32 4}
!27 = distinct !{null, !28, !"__key", i1 false, i1 false}
!28 = !{!"../kernel/bpf/hashtab.c", i32 151, i32 4}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/bpf/hashtab.c", i32 155, i32 3}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/bpf/hashtab.c", i32 168, i32 6}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/bpf/hashtab.c", i32 169, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../kernel/bpf/hashtab.c", i32 778, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../kernel/bpf/hashtab.c", i32 1034, i32 2}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../kernel/bpf/hashtab.c", i32 1334, i32 2}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/bpf/hashtab.c", i32 1483, i32 14}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/bpf/hashtab.c", i32 1485, i32 14}
!55 = !{ptr @iter_seq_info, !56, !"iter_seq_info", i1 false, i1 false}
!56 = !{!"../kernel/bpf/hashtab.c", i32 2045, i32 39}
!57 = !{ptr @bpf_hash_map_seq_ops, !58, !"bpf_hash_map_seq_ops", i1 false, i1 false}
!58 = !{!"../kernel/bpf/hashtab.c", i32 2038, i32 36}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../kernel/bpf/hashtab.c", i32 1136, i32 2}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../kernel/bpf/hashtab.c", i32 1370, i32 2}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../kernel/bpf/hashtab.c", i32 629, i32 2}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../kernel/bpf/hashtab.c", i32 1259, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../kernel/bpf/hashtab.c", i32 1204, i32 2}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/bpf/hashtab.c", i32 2242, i32 14}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/bpf/hashtab.c", i32 2245, i32 17}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/bpf/hashtab.c", i32 2250, i32 14}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i32 0, i32 33}
!93 = !{i64 2157294280}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2157211863}
!97 = !{i64 2157200613}
!98 = !{i64 2157115267}
!99 = !{i64 2149737757}
!100 = !{i64 2149738023}
!101 = !{i64 2157381770}
!102 = !{i64 2157401599}
!103 = !{i64 2157239079}
!104 = !{i64 5872938}
!105 = !{i64 5873135}
!106 = !{i64 2153358368}
!107 = !{i64 2157318883, i64 2157319163, i64 2157319497, i64 2157319831}
!108 = !{i64 2153377383, i64 2153377408}
!109 = !{i64 1150136, i64 1150197}
!110 = !{i64 1152868}
!111 = !{i64 1153153}
!112 = !{i64 2157323016}
!113 = !{i64 2157334261}
!114 = !{i64 2153378064, i64 2153378089}
!115 = !{i64 2157352246, i64 2157352526, i64 2157352860, i64 2157353194}
!116 = !{i64 2148748901, i64 2148748927, i64 2148748956, i64 2148748990, i64 2148749021, i64 2148749044}
!117 = !{i64 2148831871}
!118 = !{i64 2148747156, i64 2148747188, i64 2148747217, i64 2148747251, i64 2148747282, i64 2148747305}
!119 = !{i64 2148832100}
!120 = !{i64 2157362426}
