; ModuleID = '/llk/IR_all_yes/kernel/bpf/arraymap.c_pt.bc'
source_filename = "../kernel/bpf/arraymap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_array = type { %struct.bpf_map, i32, i32, ptr, [4 x i8], %union.anon.183, [112 x i8] }
%union.anon.183 = type { [0 x ptr] }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.btf_type = type { i32, i32, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.52, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.bpf_array_aux = type { %struct.anon.182, %struct.list_head, ptr, %struct.mutex, %struct.work_struct }
%struct.anon.182 = type { %struct.spinlock, i32, i8 }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { %struct.anon.97, [0 x %struct.sock_filter] }
%struct.anon.97 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.94 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.94 = type { %struct.work_struct }
%struct.prog_poke_elem = type { %struct.list_head, ptr }
%struct.bpf_jit_poke_descriptor = type { ptr, ptr, ptr, ptr, %union.anon.92, i8, i8, i16, i32 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, i32 }
%struct.bpf_event_entry = type { ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.bpf_iter_seq_array_map_info = type { ptr, ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bpf_iter__bpf_map_elem = type { %union.anon.184, %union.anon.186, %union.anon.187, %union.anon.188 }
%union.anon.184 = type { i64 }
%union.anon.186 = type { i64 }
%union.anon.187 = type { i64 }
%union.anon.188 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.185, i64, i64 }
%union.anon.185 = type { i64 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bpf_array\00", [22 x i8] zeroinitializer }, align 32
@array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iter_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @bpf_array_map_seq_ops, ptr @bpf_iter_init_array_map, ptr @bpf_iter_fini_array_map, i32 12 }, [16 x i8] zeroinitializer }, align 32
@array_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @array_map_alloc_check, ptr @array_map_alloc, ptr null, ptr @array_map_free, ptr @array_map_get_next_key, ptr @array_map_free_timers, ptr null, ptr @generic_map_lookup_batch, ptr null, ptr null, ptr @generic_map_update_batch, ptr null, ptr @array_map_lookup_elem, ptr @array_map_update_elem, ptr @array_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @array_map_gen_lookup, ptr null, ptr @array_map_seq_show_elem, ptr @array_map_check_btf, ptr null, ptr null, ptr null, ptr @array_map_direct_value_addr, ptr @array_map_direct_value_meta, ptr @array_map_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @array_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_array_elem, ptr @.str, ptr @array_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@percpu_array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@percpu_array_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @array_map_alloc_check, ptr @array_map_alloc, ptr null, ptr @array_map_free, ptr @array_map_get_next_key, ptr null, ptr null, ptr @generic_map_lookup_batch, ptr null, ptr null, ptr @generic_map_update_batch, ptr null, ptr @percpu_array_map_lookup_elem, ptr @array_map_update_elem, ptr @array_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @percpu_array_map_seq_show_elem, ptr @array_map_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr @map_set_for_each_callback_args, ptr @bpf_for_each_array_elem, ptr @.str, ptr @percpu_array_map_btf_id, ptr @iter_seq_info }, [60 x i8] zeroinitializer }, align 32
@prog_array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@prog_array_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @fd_array_map_alloc_check, ptr @prog_array_map_alloc, ptr null, ptr @prog_array_map_free, ptr @array_map_get_next_key, ptr @prog_array_map_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fd_array_map_lookup_elem, ptr null, ptr @fd_array_map_delete_elem, ptr null, ptr null, ptr null, ptr @prog_fd_array_get_ptr, ptr @prog_fd_array_put_ptr, ptr null, ptr @prog_fd_array_sys_lookup_elem, ptr @prog_array_map_seq_show_elem, ptr null, ptr @prog_array_map_poke_track, ptr @prog_array_map_poke_untrack, ptr @prog_array_map_poke_run, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr @prog_array_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@perf_event_array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@perf_event_array_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @fd_array_map_alloc_check, ptr @array_map_alloc, ptr @perf_event_fd_array_release, ptr @perf_event_fd_array_map_free, ptr @array_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fd_array_map_lookup_elem, ptr null, ptr @fd_array_map_delete_elem, ptr null, ptr null, ptr null, ptr @perf_event_fd_array_get_ptr, ptr @perf_event_fd_array_put_ptr, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @perf_event_array_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@cgroup_array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cgroup_array_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @fd_array_map_alloc_check, ptr @array_map_alloc, ptr null, ptr @cgroup_fd_array_free, ptr @array_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fd_array_map_lookup_elem, ptr null, ptr @fd_array_map_delete_elem, ptr null, ptr null, ptr null, ptr @cgroup_fd_array_get_ptr, ptr @cgroup_fd_array_put_ptr, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @cgroup_array_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@array_of_maps_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@array_of_maps_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @fd_array_map_alloc_check, ptr @array_of_map_alloc, ptr null, ptr @array_of_map_free, ptr @array_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @array_of_map_lookup_elem, ptr null, ptr @fd_array_map_delete_elem, ptr null, ptr null, ptr null, ptr @bpf_map_fd_get_ptr, ptr @bpf_map_fd_put_ptr, ptr @array_of_map_gen_lookup, ptr @bpf_map_fd_sys_lookup_elem, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr @array_of_maps_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/bpf/arraymap.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u: \00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@bpf_array_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bpf_array_map_seq_start, ptr @bpf_array_map_seq_stop, ptr @bpf_array_map_seq_next, ptr @bpf_array_map_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u: {\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09cpu%d: \00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@prog_array_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&aux->work)\00", [34 x i8] zeroinitializer }, align 32
@prog_array_map_alloc.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&aux->poke_mutex\00", [47 x i8] zeroinitializer }, align 32
@prog_array_map_alloc.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&aux->owner.lock\00", [47 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@prog_array_map_poke_run.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 704, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"array_map_btf_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 683, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"iter_seq_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 641, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"array_map_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 684, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"percpu_array_map_btf_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 709, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"percpu_array_map_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 710, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"prog_array_map_btf_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1107, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"prog_array_map_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1108, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"perf_event_array_map_btf_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1213, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"perf_event_array_map_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1214, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"cgroup_array_map_btf_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1250, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"cgroup_array_map_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1251, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"array_of_maps_map_btf_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1337, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"array_of_maps_map_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1338, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 44, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 425, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 427, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"bpf_array_map_seq_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 634, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 442, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 445, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 450, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1071, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1073, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [25 x i8] c"../kernel/bpf/arraymap.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1074, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @array_map_btf_id, ptr @iter_seq_info, ptr @array_map_ops, ptr @percpu_array_map_btf_id, ptr @percpu_array_map_ops, ptr @prog_array_map_btf_id, ptr @prog_array_map_ops, ptr @perf_event_array_map_btf_id, ptr @perf_event_array_map_ops, ptr @cgroup_array_map_btf_id, ptr @cgroup_array_map_ops, ptr @array_of_maps_map_btf_id, ptr @array_of_maps_map_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bpf_array_map_seq_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @prog_array_map_alloc.__key, ptr @.str.10, ptr @prog_array_map_alloc.__key.11, ptr @.str.12, ptr @prog_array_map_alloc.__key.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iter_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_array_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prog_array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prog_array_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_event_array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_event_array_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_array_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_of_maps_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @array_of_maps_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_array_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prog_array_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prog_array_map_alloc.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prog_array_map_alloc.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @array_map_alloc_check(ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ne i32 %1, 6
  %map_flags.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %4 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %bpf_map_attr_numa_node.exit.cleanup_crit_edge, label %lor.lhs.false

bpf_map_attr_numa_node.exit.cleanup_crit_edge:    ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %bpf_map_attr_numa_node.exit
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp2.not = icmp eq i32 %9, 4
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp ne i32 %11, 0
  %and = and i32 %3, -7581
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond47 = select i1 %cmp4, i1 %tobool.not, i1 false
  br i1 %or.cond47, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %and.i45 = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i45)
  %cmp.i = icmp ne i32 %and.i45, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp11.not = icmp eq i32 %cond.i, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11.not
  %or.cond44 = select i1 %cmp.i, i1 %or.cond, i1 false
  br i1 %or.cond44, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp13.not = icmp eq i32 %1, 2
  br i1 %cmp13.not, label %land.lhs.true22, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end
  %and16 = and i32 %3, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp21.not = icmp eq i32 %1, 4
  %and24 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond48 = select i1 %cmp21.not, i1 true, i1 %tobool25.not
  br i1 %or.cond48, label %if.end19.if.end27_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

land.lhs.true22:                                  ; preds = %if.end
  %and24.old = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.old)
  %tobool25.not.old = icmp eq i32 %and24.old, 0
  br i1 %tobool25.not.old, label %land.lhs.true22.if.end27_crit_edge, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true22.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %11)
  %cmp29 = icmp ugt i32 %11, 8388608
  %. = select i1 %cmp29, i32 -7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bpf_map_attr_numa_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %bpf_map_attr_numa_node.exit.cleanup_crit_edge ], [ -22, %land.lhs.true14.cleanup_crit_edge ], [ -22, %land.lhs.true22.cleanup_crit_edge ], [ %., %if.end27 ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_array_copy(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 4
  %sub = add i32 %5, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %10)
  %cmp334 = icmp ult i32 %call33, %10
  br i1 %cmp334, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %11 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index_mask, align 4
  %and = and i32 %13, %1
  %arrayidx = getelementptr [0 x ptr], ptr %11, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %16 = ptrtoint ptr %15 to i32
  %div3.i = lshr exact i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call36 = phi i32 [ %call33, %for.body.lr.ph ], [ %call, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.035 = phi i32 [ 0, %for.body.lr.ph ], [ %add9, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call36
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7, align 4
  %add8 = add i32 %18, %16
  %19 = inttoptr i32 %add8 to ptr
  %add.ptr4 = getelementptr i8, ptr %value, i32 %off.035
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr4, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %19, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %20 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %22 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ldst.07.i, align 4
  %tobool.not.i23 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i23, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add9 = add i32 %off.035, %add
  %call = tail call i32 @cpumask_next(i32 noundef %call36, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call, %23
  br i1 %cmp3, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i24, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %for.end
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %24 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i31 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_array_update(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3.not = icmp ult i32 %1, %3
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !70

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %map_flags)
  %cmp12 = icmp eq i64 %map_flags, 1
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end20, !prof !73

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 4
  %sub = add i32 %5, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end20.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end20.rcu_read_lock.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end20.rcu_read_lock.exit_crit_edge
  %call52 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %10)
  %cmp2153 = icmp ult i32 %call52, %10
  br i1 %cmp2153, label %do.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.body.lr.ph:                                    ; preds = %rcu_read_lock.exit
  %11 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index_mask, align 4
  %and = and i32 %13, %1
  %arrayidx = getelementptr [0 x ptr], ptr %11, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %16 = ptrtoint ptr %15 to i32
  %div3.i = lshr exact i32 %add, 2
  br label %do.body

do.body:                                          ; preds = %bpf_long_memcpy.exit.do.body_crit_edge, %do.body.lr.ph
  %call55 = phi i32 [ %call52, %do.body.lr.ph ], [ %call, %bpf_long_memcpy.exit.do.body_crit_edge ]
  %off.054 = phi i32 [ 0, %do.body.lr.ph ], [ %add27, %bpf_long_memcpy.exit.do.body_crit_edge ]
  br i1 %tobool.not4.i, label %do.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

do.body.bpf_long_memcpy.exit_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %do.body
  %add.ptr26 = getelementptr i8, ptr %value, i32 %off.054
  %arrayidx24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call55
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %18, %16
  %19 = inttoptr i32 %add25 to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %19, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr26, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %20 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %22 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ldst.07.i, align 4
  %tobool.not.i42 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i42, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %do.body.bpf_long_memcpy.exit_crit_edge
  %add27 = add i32 %off.054, %add
  %call = tail call i32 @cpumask_next(i32 noundef %call55, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call, %23
  br i1 %cmp21, label %bpf_long_memcpy.exit.do.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

bpf_long_memcpy.exit.do.body_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i43, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %24 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i50 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -17, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @array_map_alloc(ptr noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %map_flags.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %4 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %call.i.i = tail call zeroext i1 @capable(i32 noundef 38) #18
  br i1 %call.i.i, label %bpf_map_attr_numa_node.exit.bpf_bypass_spec_v1.exit_crit_edge, label %lor.rhs.i.i

bpf_map_attr_numa_node.exit.bpf_bypass_spec_v1.exit_crit_edge: ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_bypass_spec_v1.exit

lor.rhs.i.i:                                      ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i.i = tail call zeroext i1 @capable(i32 noundef 21) #18
  br label %bpf_bypass_spec_v1.exit

bpf_bypass_spec_v1.exit:                          ; preds = %lor.rhs.i.i, %bpf_map_attr_numa_node.exit.bpf_bypass_spec_v1.exit_crit_edge
  %6 = phi i1 [ true, %bpf_map_attr_numa_node.exit.bpf_bypass_spec_v1.exit_crit_edge ], [ %call1.i.i, %lor.rhs.i.i ]
  %frombool2 = zext i1 %6 to i8
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_size, align 8
  %sub = add i32 %8, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %max_entries3 = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %max_entries3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries3, align 4
  %sub4 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %tobool.not.i.i = icmp eq i32 %sub4, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub4, i1 true) #18, !range !74
  %sub.i.i = sub nuw nsw i32 32, %11
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %conv = zext i32 %cond.i.i to i64
  %notmask = shl nsw i64 -1, %conv
  %12 = trunc i64 %notmask to i32
  %conv7 = xor i32 %12, -1
  br i1 %6, label %bpf_bypass_spec_v1.exit.if.end14_crit_edge, label %if.then

bpf_bypass_spec_v1.exit.if.end14_crit_edge:       ; preds = %bpf_bypass_spec_v1.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then:                                          ; preds = %bpf_bypass_spec_v1.exit
  %add8 = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add8)
  %cmp10 = icmp ugt i32 %10, %add8
  br i1 %cmp10, label %if.then.cleanup67_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then.cleanup67_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %bpf_bypass_spec_v1.exit.if.end14_crit_edge
  %max_entries.0 = phi i32 [ %10, %bpf_bypass_spec_v1.exit.if.end14_crit_edge ], [ %add8, %if.then.if.end14_crit_edge ]
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %conv17 = zext i32 %max_entries.0 to i64
  %mul = shl nuw nsw i64 %conv17, 2
  %add18 = add nuw nsw i64 %mul, 512
  br label %if.end35

if.else:                                          ; preds = %if.end14
  %13 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %map_flags.i, align 8
  %and = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %conv30 = zext i32 %max_entries.0 to i64
  %conv31 = zext i32 %add to i64
  %mul32 = mul nuw i64 %conv30, %conv31
  br i1 %tobool19.not, label %if.else29, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %15 = add nuw i64 %mul32, 8191
  %add28 = and i64 %15, -4096
  br label %if.end35

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %add33 = add nuw i64 %mul32, 512
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then20, %if.then16
  %array_size.0 = phi i64 [ %add18, %if.then16 ], [ %add28, %if.then20 ], [ %add33, %if.else29 ]
  %16 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_flags.i, align 8
  %and37 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else46, label %if.then39

if.then39:                                        ; preds = %if.end35
  %call40 = tail call ptr @bpf_map_area_mmapable_alloc(i64 noundef %array_size.0, i32 noundef %cond.i) #18
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then39.cleanup67_crit_edge, label %cleanup

if.then39.cleanup67_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

cleanup:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr45 = getelementptr i8, ptr %call40, i32 3696
  br label %if.end48

if.else46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %call47 = tail call ptr @bpf_map_area_alloc(i64 noundef %array_size.0, i32 noundef %cond.i) #18
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %cleanup
  %array.1 = phi ptr [ %add.ptr45, %cleanup ], [ %call47, %if.else46 ]
  %tobool49.not = icmp eq ptr %array.1, null
  br i1 %tobool49.not, label %if.end48.cleanup67_crit_edge, label %if.end52

if.end48.cleanup67_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

if.end52:                                         ; preds = %if.end48
  %index_mask53 = getelementptr inbounds %struct.bpf_array, ptr %array.1, i32 0, i32 2
  %18 = ptrtoint ptr %index_mask53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv7, ptr %index_mask53, align 4
  %bypass_spec_v155 = getelementptr inbounds %struct.bpf_map, ptr %array.1, i32 0, i32 19
  %19 = ptrtoint ptr %bypass_spec_v155 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool2, ptr %bypass_spec_v155, align 32
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %array.1, ptr noundef %attr) #18
  %elem_size58 = getelementptr inbounds %struct.bpf_array, ptr %array.1, i32 0, i32 1
  %20 = ptrtoint ptr %elem_size58 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %elem_size58, align 128
  br i1 %cmp, label %land.lhs.true, label %if.end52.cleanup67_crit_edge

if.end52.cleanup67_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

land.lhs.true:                                    ; preds = %if.end52
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %array.1, i32 0, i32 6
  %21 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp13.not.i = icmp eq i32 %22, 0
  br i1 %cmp13.not.i, label %land.lhs.true.cleanup67_crit_edge, label %for.body.lr.ph.i

land.lhs.true.cleanup67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %23 = getelementptr inbounds %struct.bpf_array, ptr %array.1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %elem_size58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size58, align 128
  %call.i = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %array.1, i32 noundef %25, i32 noundef 8, i32 noundef 1060032) #18
  %tobool.not.i108 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i108, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %26 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp4.not.i.i, label %if.then.i.if.then63_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.if.then63_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then63

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %23, i32 0, i32 %i.05.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @free_percpu(ptr noundef %29) #18
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 27, i32 noundef 0) #18
  %call.i.i.i = tail call i32 @__cond_resched() #18
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %30 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_entries.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %31
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.then63_crit_edge

for.body.i.i.if.then63_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then63

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [0 x ptr], ptr %23, i32 0, i32 %i.014.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %arrayidx.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 44, i32 noundef 0) #18
  %call.i.i109 = tail call i32 @__cond_resched() #18
  %inc.i = add nuw i32 %i.014.i, 1
  %33 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup67_crit_edge

if.end.i.cleanup67_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup67

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.then63:                                        ; preds = %for.body.i.i.if.then63_crit_edge, %if.then.i.if.then63_crit_edge
  tail call void @bpf_map_area_free(ptr noundef nonnull %array.1) #18
  br label %cleanup67

cleanup67:                                        ; preds = %if.then63, %if.end.i.cleanup67_crit_edge, %land.lhs.true.cleanup67_crit_edge, %if.end52.cleanup67_crit_edge, %if.end48.cleanup67_crit_edge, %if.then39.cleanup67_crit_edge, %if.then.cleanup67_crit_edge
  %retval.1 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then63 ], [ %array.1, %if.end52.cleanup67_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.then.cleanup67_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end48.cleanup67_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then39.cleanup67_crit_edge ], [ %array.1, %land.lhs.true.cleanup67_crit_edge ], [ %array.1, %if.end.i.cleanup67_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @array_map_free(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr %4, i32 0, i32 %i.05.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  tail call void @free_percpu(ptr noundef %6) #18
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 27, i32 noundef 0) #18
  %call.i.i = tail call i32 @__cond_resched() #18
  %inc.i = add nuw i32 %i.05.i, 1
  %7 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %9 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map_flags, align 8
  %and = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %map to i32
  %and.i = and i32 %11, -4096
  %12 = inttoptr i32 %and.i to ptr
  %map.sink = select i1 %tobool.not, ptr %map, ptr %12
  tail call void @bpf_map_area_free(ptr noundef %map.sink) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %cond.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %cond.end.cleanup.sink.split_crit_edge

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp4 = icmp eq i32 %1, %sub
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add = add nuw i32 %1, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %cond.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %if.end6 ], [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %cond.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.sink, ptr %next_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @array_map_free_timers(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %0 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_off.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %elem_size, align 128
  %mul = mul i32 %6, %i.014
  %add.ptr4 = getelementptr i8, ptr %4, i32 %mul
  %7 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timer_off.i, align 16
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %8
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr5) #18
  %inc = add nuw i32 %i.014, 1
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 8
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_lookup_batch(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_map_update_batch(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @array_map_lookup_elem(ptr noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %elem_size, align 128
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %7 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index_mask, align 4
  %and = and i32 %8, %1
  %mul = mul i32 %and, %6
  %add.ptr3 = getelementptr i8, ptr %4, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr3, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @array_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %map_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %and = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp = icmp ugt i64 %and, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3.not = icmp ult i32 %1, %3
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !70

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and12 = and i64 %map_flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end21, label %if.end11.cleanup_crit_edge, !prof !70

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %and22 = and i64 %map_flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end33_crit_edge, label %land.rhs

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

land.rhs:                                         ; preds = %if.end21
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %4 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end33_crit_edge, !prof !73

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end33:                                         ; preds = %land.rhs.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %6 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp35 = icmp eq i32 %7, 6
  %8 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br i1 %cmp35, label %do.body, label %if.else

do.body:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %9 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index_mask, align 4
  %and38 = and i32 %10, %1
  %arrayidx = getelementptr [0 x ptr], ptr %8, i32 0, i32 %and38
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx41, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %21 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value_size, align 4
  %23 = call ptr @memcpy(ptr %20, ptr %value, i32 %22)
  br label %cleanup

if.else:                                          ; preds = %if.end33
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %24 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size, align 128
  %index_mask42 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %26 = ptrtoint ptr %index_mask42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index_mask42, align 4
  %and43 = and i32 %27, %1
  %mul = mul i32 %and43, %25
  %add.ptr44 = getelementptr i8, ptr %8, i32 %mul
  br i1 %tobool23.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @copy_map_value_locked(ptr noundef %map, ptr noundef %add.ptr44, ptr noundef %value, i1 noundef zeroext false) #18
  br label %if.end49

if.else48:                                        ; preds = %if.else
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %28 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.i = icmp sgt i32 %29, -1
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %30 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i69.i = icmp sgt i32 %31, -1
  br i1 %cmp.i.i, label %if.end.i, label %if.end.thread.i, !prof !73

if.end.i:                                         ; preds = %if.else48
  %32 = lshr i32 %31, 27
  %33 = and i32 %32, 16
  %34 = xor i32 %33, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %31, i32 0, !prof !73
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %spec.select97.i)
  %cmp.i73.not = icmp ult i32 %29, %spec.select97.i
  br i1 %cmp.i73.not, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end.thread.i:                                  ; preds = %if.else48
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !73

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %34, %if.end.i.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %29, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %34, %if.end.i.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %31, %do.body.i ], [ %29, %if.end.i.if.end26.i_crit_edge ]
  %35 = call ptr @memcpy(ptr %add.ptr44, ptr %value, i32 %t_off.1.i)
  %add.ptr.i = getelementptr i8, ptr %add.ptr44, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %value, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %36 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %36
  %37 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %add.ptr44, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %value, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %38 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value_size.i, align 4
  %40 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %39, %40
  %41 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %if.end49

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  %value_size37.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %42 = ptrtoint ptr %value_size37.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value_size37.i, align 4
  %44 = call ptr @memcpy(ptr %add.ptr44, ptr %value, i32 %43)
  br label %if.end49

if.end49:                                         ; preds = %if.else.i, %if.end26.i, %if.then47
  %timer_off.i.i74 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %45 = ptrtoint ptr %timer_off.i.i74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timer_off.i.i74, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.i75 = icmp sgt i32 %46, -1
  br i1 %cmp.i.i75, label %if.then.i, label %if.end49.cleanup_crit_edge, !prof !73

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i76 = getelementptr i8, ptr %add.ptr44, i32 %46
  tail call void @bpf_timer_cancel_and_free(ptr noundef %add.ptr.i76) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end49.cleanup_crit_edge, %do.body, %land.rhs.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -17, %if.end11.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_map_delete_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_map_gen_lookup(ptr nocapture noundef readonly %map, ptr noundef %insn_buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %sub = add i32 %1, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %4 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 400, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 97, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %9 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %10 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %11 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %bypass_spec_v1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 19
  %12 = ptrtoint ptr %bypass_spec_v1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bypass_spec_v1, align 32, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  %incdec.ptr19 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %14 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_entries, align 8
  %16 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 53, ptr %incdec.ptr4, align 4
  %.compoundliteral20.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %17 = ptrtoint ptr %.compoundliteral20.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral20.sroa.2.0..sroa_idx, align 1
  %.compoundliteral20.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %.compoundliteral20.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %.compoundliteral20.sroa.6.0..sroa_idx, align 2
  %.compoundliteral20.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %19 = ptrtoint ptr %.compoundliteral20.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %.compoundliteral20.sroa.7.0..sroa_idx, align 4
  %incdec.ptr32 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %20 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index_mask, align 4
  %22 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 84, ptr %incdec.ptr19, align 4
  %.compoundliteral33.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 1
  %23 = ptrtoint ptr %.compoundliteral33.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %.compoundliteral33.sroa.2.0..sroa_idx, align 1
  %.compoundliteral33.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 2
  %24 = ptrtoint ptr %.compoundliteral33.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %.compoundliteral33.sroa.6.0..sroa_idx, align 2
  br label %if.end59

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %.compoundliteral20.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 3, ptr %.compoundliteral20.sroa.6.0..sroa_idx, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then18
  %.sink160 = phi i32 [ 2, %if.else ], [ 3, %if.then18 ]
  %.sink = phi i32 [ %15, %if.else ], [ %21, %if.then18 ]
  %insn.0 = phi ptr [ %incdec.ptr19, %if.else ], [ %incdec.ptr32, %if.then18 ]
  %.compoundliteral46.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 %.sink160, i32 3
  %26 = ptrtoint ptr %.compoundliteral46.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %.compoundliteral46.sroa.7.0..sroa_idx, align 4
  %27 = tail call i32 @llvm.ctpop.i32(i32 %add) #18, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %28 = icmp eq i32 %27, 1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #18, !range !74
  %cond79 = xor i32 %29, 31
  %storemerge = select i1 %28, i8 103, i8 39
  %add.sink = select i1 %28, i32 %cond79, i32 %add
  %30 = ptrtoint ptr %insn.0 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge, ptr %insn.0, align 4
  %31 = getelementptr inbounds i8, ptr %insn.0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 1
  %33 = getelementptr inbounds i8, ptr %insn.0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %33, align 2
  %35 = getelementptr inbounds i8, ptr %insn.0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.sink, ptr %35, align 4
  %insn.1 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1
  %incdec.ptr95 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2
  %37 = ptrtoint ptr %insn.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 15, ptr %insn.1, align 4
  %.compoundliteral96.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 1
  %38 = ptrtoint ptr %.compoundliteral96.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %.compoundliteral96.sroa.2.0..sroa_idx, align 1
  %.compoundliteral96.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 2
  %39 = ptrtoint ptr %.compoundliteral96.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %.compoundliteral96.sroa.6.0..sroa_idx, align 2
  %.compoundliteral96.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 3
  %40 = ptrtoint ptr %.compoundliteral96.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %.compoundliteral96.sroa.7.0..sroa_idx, align 4
  %incdec.ptr108 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3
  %41 = ptrtoint ptr %incdec.ptr95 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %incdec.ptr95, align 4
  %.compoundliteral109.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 1
  %42 = ptrtoint ptr %.compoundliteral109.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %.compoundliteral109.sroa.2.0..sroa_idx, align 1
  %.compoundliteral109.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 2
  %43 = ptrtoint ptr %.compoundliteral109.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %.compoundliteral109.sroa.6.0..sroa_idx, align 2
  %.compoundliteral109.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 3
  %44 = ptrtoint ptr %.compoundliteral109.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %.compoundliteral109.sroa.7.0..sroa_idx, align 4
  %incdec.ptr121 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 4
  %45 = ptrtoint ptr %incdec.ptr108 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -73, ptr %incdec.ptr108, align 4
  %.compoundliteral122.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 1
  %46 = ptrtoint ptr %.compoundliteral122.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %.compoundliteral122.sroa.2.0..sroa_idx, align 1
  %.compoundliteral122.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 2
  %47 = ptrtoint ptr %.compoundliteral122.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %.compoundliteral122.sroa.6.0..sroa_idx, align 2
  %.compoundliteral122.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 3
  %48 = ptrtoint ptr %.compoundliteral122.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %.compoundliteral122.sroa.7.0..sroa_idx, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr121 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %insn_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end59 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @array_map_seq_show_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %6 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp ult i32 %5, %7
  br i1 %cmp.not.i, label %array_map_lookup_elem.exit, label %rcu_read_lock.exit.if.then_crit_edge, !prof !70

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

array_map_lookup_elem.exit:                       ; preds = %rcu_read_lock.exit
  %8 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %9 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %elem_size.i, align 128
  %index_mask.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %11 = ptrtoint ptr %index_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index_mask.i, align 4
  %and.i = and i32 %12, %5
  %mul.i = mul i32 %and.i, %10
  %add.ptr3.i = getelementptr i8, ptr %8, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool.not, label %array_map_lookup_elem.exit.if.then_crit_edge, label %if.end

array_map_lookup_elem.exit.if.then_crit_edge:     ; preds = %array_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %array_map_lookup_elem.exit.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  br label %cleanup

if.end:                                           ; preds = %array_map_lookup_elem.exit
  %btf_key_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 13
  %13 = ptrtoint ptr %btf_key_type_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %btf_key_type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not = icmp eq i32 %14, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %5) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %15 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btf, align 8
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %17 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %btf_value_type_id, align 64
  tail call void @btf_type_seq_show(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %add.ptr3.i, ptr noundef %m) #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #18
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i20, label %if.end3.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true.i23

if.end3.rcu_read_unlock.exit30_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit30

land.lhs.true.i23:                                ; preds = %if.end3
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit30

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit30

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit30

rcu_read_unlock.exit30:                           ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, %if.end3.rcu_read_unlock.exit30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit30, %rcu_read_unlock.exit
  %19 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i27 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i29 = add i32 %22, -1
  store volatile i32 %sub.i.i.i29, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @array_map_check_btf(ptr nocapture noundef readonly %map, ptr nocapture noundef readnone %btf, ptr noundef %key_type, ptr nocapture noundef readonly %value_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @btf_type_is_void(ptr noundef %key_type) #18
  br i1 %call, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not = icmp eq i32 %3, 1
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %info = getelementptr inbounds %struct.btf_type, ptr %value_type, i32 0, i32 1
  br label %cleanup.sink.split

if.end6:                                          ; preds = %entry
  %info7 = getelementptr inbounds %struct.btf_type, ptr %key_type, i32 0, i32 1
  %4 = ptrtoint ptr %info7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info7, align 4
  %6 = and i32 %5, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp10.not = icmp eq i32 %6, 16777216
  br i1 %cmp10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr %struct.btf_type, ptr %key_type, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end
  %add.ptr.sink = phi ptr [ %add.ptr, %if.end12 ], [ %info, %if.end ]
  %.sink26 = phi i32 [ 16711935, %if.end12 ], [ 520093696, %if.end ]
  %.sink25 = phi i32 [ 32, %if.end12 ], [ 251658240, %if.end ]
  %7 = ptrtoint ptr %add.ptr.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.sink, align 4
  %9 = and i32 %8, %.sink26
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %.sink25)
  %10 = icmp eq i32 %9, %.sink25
  %spec.select = select i1 %10, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %spec.select, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_map_direct_value_addr(ptr noundef %map, ptr nocapture noundef writeonly %imm, i32 noundef %off) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %off)
  %cmp1.not = icmp ugt i32 %3, %off
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %imm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %imm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_map_direct_value_meta(ptr noundef %map, i64 noundef %imm, ptr nocapture noundef writeonly %off) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elem_size, align 128
  %conv1 = zext i32 %5 to i64
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %imm)
  %cmp3 = icmp ule i64 %conv, %imm
  %add = add nuw nsw i64 %conv1, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %imm)
  %cmp5.not = icmp ugt i64 %add, %imm
  %or.cond = select i1 %cmp3, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = trunc i64 %imm to i32
  %conv9 = sub i32 %6, %1
  %7 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv9, ptr %off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -524, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @array_map_mmap(ptr noundef %map, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %mul = shl i32 %3, 12
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = add i32 %mul, %5
  %add = sub i32 %sub, %7
  %conv = zext i32 %add to i64
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %8 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries, align 8
  %conv2 = zext i32 %9 to i64
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem_size, align 128
  %conv3 = zext i32 %11 to i64
  %mul4 = mul nuw i64 %conv3, %conv2
  %add5 = add nuw i64 %mul4, 4095
  %and6 = and i64 %add5, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and6, i64 %conv)
  %cmp = icmp ult i64 %and6, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %map to i32
  %and.i = and i32 %12, -4096
  %13 = inttoptr i32 %and.i to ptr
  %add11 = add i32 %3, 1
  %call12 = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %13, i32 noundef %add11) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @array_map_meta_equal(ptr noundef %meta0, ptr noundef %meta1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bpf_map_meta_equal(ptr noundef %meta0, ptr noundef %meta1) #18
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  %max_entries1 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 6
  %4 = ptrtoint ptr %max_entries1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br label %return

return:                                           ; preds = %cond.false, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp, %cond.false ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_set_for_each_callback_args(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_for_each_array_elem(ptr noundef %map, ptr nocapture noundef readonly %callback_fn, ptr noundef %callback_ctx, i64 noundef %flags) #2 align 64 {
entry:
  %key = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #18
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key, align 4, !annotation !77
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %cmp.not = icmp eq i64 %flags, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %1 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp eq i32 %2, 6
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @migrate_disable() #18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %3 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp441.not = icmp eq i32 %4, 0
  br i1 %cmp441.not, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %5 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  %conv = sext i32 %6 to i64
  %7 = ptrtoint ptr %key to i32
  %conv12 = sext i32 %7 to i64
  %8 = ptrtoint ptr %callback_ctx to i32
  %conv14 = sext i32 %8 to i64
  br label %for.body

for.cond:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 8
  %cmp4 = icmp ult i32 %inc19, %10
  br i1 %cmp4, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.cond.for.body_crit_edge ]
  br i1 %cmp1, label %do.body, label %if.else

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %i.043
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx9 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  br label %if.end11

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %elem_size, align 128
  %mul = mul i32 %22, %i.043
  %add.ptr10 = getelementptr i8, ptr %5, i32 %mul
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.body
  %val.0 = phi ptr [ %20, %do.body ], [ %add.ptr10, %if.else ]
  %inc19 = add nuw i32 %i.043, 1
  %23 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.043, ptr %key, align 4
  %24 = ptrtoint ptr %val.0 to i32
  %conv13 = sext i32 %24 to i64
  %call15 = call i64 %callback_fn(i64 noundef %conv, i64 noundef %conv12, i64 noundef %conv13, i64 noundef %conv14, i64 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call15)
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %for.cond, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end3.for.end_crit_edge
  %num_elems.1 = phi i32 [ 0, %if.end3.for.end_crit_edge ], [ %inc19, %if.end11.for.end_crit_edge ], [ %inc19, %for.cond.for.end_crit_edge ]
  br i1 %cmp1, label %if.then21, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @migrate_enable() #18
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %num_elems.1, %if.then21 ], [ %num_elems.1, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @percpu_array_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %5 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index_mask, align 4
  %and = and i32 %6, %1
  %arrayidx = getelementptr [0 x ptr], ptr %4, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx5 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @percpu_array_map_seq_show_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %7) #18
  %call24 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24, i32 %8)
  %cmp25 = icmp ult i32 %call24, %8
  br i1 %cmp25, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %9 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %10 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index_mask, align 4
  %and = and i32 %11, %1
  %arrayidx = getelementptr [0 x ptr], ptr %9, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %14 = ptrtoint ptr %13 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call26 = phi i32 [ %call24, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %call26) #18
  %15 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %btf, align 8
  %17 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %btf_value_type_id, align 64
  %arrayidx3 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call26
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %20, %14
  %21 = inttoptr i32 %add to ptr
  tail call void @btf_type_seq_show(ptr noundef %16, i32 noundef %18, ptr noundef %21, ptr noundef %m) #18
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #18
  %call = tail call i32 @cpumask_next(i32 noundef %call26, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #18
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i15, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %23 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i22 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_array_map_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %10 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp ult i32 %9, %11
  br i1 %cmp.not.i, label %array_map_lookup_elem.exit, label %rcu_read_lock.exit.if.end7_crit_edge, !prof !70

rcu_read_lock.exit.if.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

array_map_lookup_elem.exit:                       ; preds = %rcu_read_lock.exit
  %12 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %13 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %elem_size.i, align 128
  %index_mask.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %15 = ptrtoint ptr %index_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index_mask.i, align 4
  %and.i = and i32 %16, %9
  %mul.i = mul i32 %and.i, %14
  %add.ptr3.i = getelementptr i8, ptr %12, i32 %mul.i
  %tobool1.not = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool1.not, label %array_map_lookup_elem.exit.if.end7_crit_edge, label %do.end

array_map_lookup_elem.exit.if.end7_crit_edge:     ; preds = %array_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

do.end:                                           ; preds = %array_map_lookup_elem.exit
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %add.ptr3.i, align 4
  %tobool2.not = icmp eq ptr %18, null
  br i1 %tobool2.not, label %do.end.if.end7_crit_edge, label %if.then3

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 128
  %map_fd_sys_lookup_elem5 = getelementptr inbounds %struct.bpf_map_ops, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %map_fd_sys_lookup_elem5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map_fd_sys_lookup_elem5, align 4
  %call6 = tail call i32 %22(ptr noundef nonnull %18) #18
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call6, ptr %value, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %do.end.if.end7_crit_edge, %array_map_lookup_elem.exit.if.end7_crit_edge, %rcu_read_lock.exit.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ -2, %do.end.if.end7_crit_edge ], [ -2, %array_map_lookup_elem.exit.if.end7_crit_edge ], [ -2, %rcu_read_lock.exit.if.end7_crit_edge ]
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i13, label %if.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

if.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %if.end7
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %if.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %24 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i20 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_array_map_update_elem(ptr noundef %map, ptr noundef %map_file, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %map_flags)
  %cmp.not = icmp eq i64 %map_flags, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2.not = icmp ult i32 %1, %3
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 128
  %map_fd_get_ptr = getelementptr inbounds %struct.bpf_map_ops, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %map_fd_get_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_fd_get_ptr, align 4
  %call = tail call ptr %9(ptr noundef %map, ptr noundef %map_file, i32 noundef %5) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 128
  %map_poke_run = getelementptr inbounds %struct.bpf_map_ops, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %map_poke_run to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_poke_run, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %aux = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %15 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %16, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %poke_mutex, i32 noundef 0) #18
  %17 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %add.ptr11 = getelementptr ptr, ptr %17, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr11, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !78
  %18 = ptrtoint ptr %call to i32
  tail call void @llvm.prefetch.p0(ptr %add.ptr11, i32 1, i32 3, i32 1) #18
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %18, ptr %add.ptr11) #18, !srcloc !79
  %asmresult.i = extractvalue { i32, i32 } %19, 0
  %20 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !80
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 128
  %map_poke_run29 = getelementptr inbounds %struct.bpf_map_ops, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %map_poke_run29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map_poke_run29, align 4
  tail call void %24(ptr noundef %map, i32 noundef %1, ptr noundef %20, ptr noundef %call) #18
  %25 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux, align 8
  %poke_mutex31 = getelementptr inbounds %struct.bpf_array_aux, ptr %26, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %poke_mutex31) #18
  br label %if.end55

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %27 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %add.ptr34 = getelementptr ptr, ptr %27, i32 %1
  %call.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr34, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !81
  %28 = ptrtoint ptr %call to i32
  tail call void @llvm.prefetch.p0(ptr %add.ptr34, i32 1, i32 3, i32 1) #18
  %29 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %28, ptr %add.ptr34) #18, !srcloc !79
  %asmresult.i86 = extractvalue { i32, i32 } %29, 0
  %30 = inttoptr i32 %asmresult.i86 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !82
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then10
  %old_ptr.0 = phi ptr [ %20, %if.then10 ], [ %30, %if.else ]
  %tobool56.not = icmp eq ptr %old_ptr.0, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.then57

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 128
  %map_fd_put_ptr = getelementptr inbounds %struct.bpf_map_ops, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %map_fd_put_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map_fd_put_ptr, align 4
  tail call void %34(ptr noundef nonnull %old_ptr.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end55.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ 0, %if.then57 ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fd_array_map_alloc_check(ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %and = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i = icmp ne i32 %5, 6
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.bpf_map_attr_numa_node.exit.i_crit_edge, label %cond.true.i.i

if.end2.bpf_map_attr_numa_node.exit.i_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_map_attr_numa_node.exit.i

cond.true.i.i:                                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  %numa_node.i.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %6 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numa_node.i.i, align 8
  br label %bpf_map_attr_numa_node.exit.i

bpf_map_attr_numa_node.exit.i:                    ; preds = %cond.true.i.i, %if.end2.bpf_map_attr_numa_node.exit.i_crit_edge
  %cond.i.i = phi i32 [ %7, %cond.true.i.i ], [ -1, %if.end2.bpf_map_attr_numa_node.exit.i_crit_edge ]
  %max_entries.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %8 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %bpf_map_attr_numa_node.exit.i.return_crit_edge, label %lor.lhs.false.i

bpf_map_attr_numa_node.exit.i.return_crit_edge:   ; preds = %bpf_map_attr_numa_node.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false.i:                                  ; preds = %bpf_map_attr_numa_node.exit.i
  %key_size.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp2.not.i = icmp eq i32 %11, 4
  %and.i = and i32 %3, -7581
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp2.not.i, i1 %tobool.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i.i)
  %cmp11.not.i = icmp eq i32 %cond.i.i, -1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp11.not.i
  %or.cond5 = select i1 %or.cond, i1 %or.cond.i, i1 false
  br i1 %or.cond5, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 2
  br i1 %cmp13.not.i, label %land.lhs.true22.i, label %land.lhs.true14.i

land.lhs.true14.i:                                ; preds = %if.end.i
  %and16.i = and i32 %3, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %land.lhs.true14.i.return_crit_edge

land.lhs.true14.i.return_crit_edge:               ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end19.i:                                       ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp21.not.i = icmp eq i32 %5, 4
  %and24.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %or.cond48.i = select i1 %cmp21.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond48.i, label %if.end19.i.if.end27.i_crit_edge, label %if.end19.i.return_crit_edge

if.end19.i.return_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

land.lhs.true22.i:                                ; preds = %if.end.i
  %and24.old.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.old.i)
  %tobool25.not.old.i = icmp eq i32 %and24.old.i, 0
  br i1 %tobool25.not.old.i, label %land.lhs.true22.i.if.end27.i_crit_edge, label %land.lhs.true22.i.return_crit_edge

land.lhs.true22.i.return_crit_edge:               ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true22.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true22.i.if.end27.i_crit_edge, %if.end19.i.if.end27.i_crit_edge
  br label %return

return:                                           ; preds = %if.end27.i, %land.lhs.true22.i.return_crit_edge, %if.end19.i.return_crit_edge, %land.lhs.true14.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %bpf_map_attr_numa_node.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.i.return_crit_edge ], [ -22, %bpf_map_attr_numa_node.exit.i.return_crit_edge ], [ -22, %land.lhs.true14.i.return_crit_edge ], [ -22, %land.lhs.true22.i.return_crit_edge ], [ 0, %if.end27.i ], [ -22, %if.end19.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prog_array_map_alloc(ptr noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197824, i32 noundef 200) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #18
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @prog_array_map_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry5 = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 8
  %prev.i = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @prog_array_map_clear_deferred, ptr %func, align 8
  %poke_progs = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %poke_progs to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %poke_progs, ptr %poke_progs, align 4
  %prev.i36 = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %poke_progs, ptr %prev.i36, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %poke_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @prog_array_map_alloc.__key.11) #18
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @prog_array_map_alloc.__key.13, i16 noundef signext 3) #18
  %call14 = tail call ptr @array_map_alloc(ptr noundef %attr)
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

if.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %aux18 = getelementptr inbounds %struct.bpf_array, ptr %call14, i32 0, i32 3
  %7 = ptrtoint ptr %aux18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %aux18, align 8
  %map19 = getelementptr inbounds %struct.bpf_array_aux, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %map19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %map19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %if.then16 ], [ %call14, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_free(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux2 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux2, align 8
  %poke_progs = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %poke_progs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poke_progs, align 4
  %cmp.not25 = icmp eq ptr %3, %poke_progs
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %elem.026 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %elem.026 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %elem.026, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem.026) #18
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %elem.026, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %elem.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elem.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %elem.026 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %elem.026, ptr %elem.026, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %elem.026, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %elem.026, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %elem.026) #18
  %cmp.not = icmp eq ptr %tmp.0, %poke_progs
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #18
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %13 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not.i = icmp eq i32 %14, 0
  br i1 %cmp14.not.i, label %for.end.fd_array_map_free.exit_crit_edge, label %do.body.lr.ph.i

for.end.fd_array_map_free.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.lr.ph.i:                                  ; preds = %for.end
  %15 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %do.body.i

for.cond.i:                                       ; preds = %do.body.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.fd_array_map_free.exit_crit_edge, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.cond.i.fd_array_map_free.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %for.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr %15, i32 0, i32 %i.015.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %17, null
  br i1 %cmp2.not.i, label %for.cond.i, label %do.body4.i, !prof !70

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #18, !srcloc !83
  unreachable

fd_array_map_free.exit:                           ; preds = %for.cond.i.fd_array_map_free.exit_crit_edge, %for.end.fd_array_map_free.exit_crit_edge
  tail call void @bpf_map_area_free(ptr noundef %map) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_clear(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1, align 8
  tail call void @bpf_map_inc(ptr noundef %map) #18
  %work = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @fd_array_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -95 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fd_array_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 128
  %map_poke_run = getelementptr inbounds %struct.bpf_map_ops, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %map_poke_run to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_poke_run, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %aux = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %9, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %poke_mutex, i32 noundef 0) #18
  %10 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %add.ptr3 = getelementptr ptr, ptr %10, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr3, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %add.ptr3, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %add.ptr3) #18, !srcloc !79
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  %12 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !85
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 128
  %map_poke_run20 = getelementptr inbounds %struct.bpf_map_ops, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %map_poke_run20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map_poke_run20, align 4
  tail call void %16(ptr noundef %map, i32 noundef %1, ptr noundef %12, ptr noundef null) #18
  %17 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aux, align 8
  %poke_mutex22 = getelementptr inbounds %struct.bpf_array_aux, ptr %18, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %poke_mutex22) #18
  br label %if.end46

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %add.ptr25 = getelementptr ptr, ptr %19, i32 %1
  %call.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr25, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %add.ptr25, i32 1, i32 3, i32 1) #18
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %add.ptr25) #18, !srcloc !79
  %asmresult.i69 = extractvalue { i32, i32 } %20, 0
  %21 = inttoptr i32 %asmresult.i69 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !87
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then2
  %old_ptr.0 = phi ptr [ %12, %if.then2 ], [ %21, %if.else ]
  %tobool47.not = icmp eq ptr %old_ptr.0, null
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %if.then48

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 128
  %map_fd_put_ptr = getelementptr inbounds %struct.bpf_map_ops, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %map_fd_put_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map_fd_put_ptr, align 4
  tail call void %25(ptr noundef nonnull %old_ptr.0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then48 ], [ -7, %entry.cleanup_crit_edge ], [ -2, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prog_fd_array_get_ptr(ptr noundef %map, ptr nocapture noundef readnone %map_file, i32 noundef %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_prog_get(i32 noundef %fd) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @bpf_prog_array_compatible(ptr noundef %map, ptr noundef %call) #18
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bpf_prog_put(ptr noundef %call) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_fd_array_put_ptr(ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_prog_put(ptr noundef %ptr) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prog_fd_array_sys_lookup_elem(ptr nocapture noundef readonly %ptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %ptr, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_seq_show_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %m) #2 align 64 {
entry:
  %prog_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prog_id) #18
  %0 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prog_id, align 4, !annotation !77
  %1 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not.i = icmp ult i32 %6, %8
  br i1 %cmp.not.i, label %array_map_lookup_elem.exit, label %rcu_read_lock.exit.if.end4_crit_edge, !prof !70

rcu_read_lock.exit.if.end4_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

array_map_lookup_elem.exit:                       ; preds = %rcu_read_lock.exit
  %9 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem_size.i, align 128
  %index_mask.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %index_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index_mask.i, align 4
  %and.i = and i32 %13, %6
  %mul.i = mul i32 %and.i, %11
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool.not, label %array_map_lookup_elem.exit.if.end4_crit_edge, label %do.end

array_map_lookup_elem.exit.if.end4_crit_edge:     ; preds = %array_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

do.end:                                           ; preds = %array_map_lookup_elem.exit
  %14 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %add.ptr3.i, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %do.end.if.end4_crit_edge, label %if.then2

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %6) #18
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aux.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 8
  %20 = ptrtoint ptr %prog_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %prog_id, align 4
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %21 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %btf, align 8
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %23 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %btf_value_type_id, align 64
  call void @btf_type_seq_show(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %prog_id, ptr noundef %m) #18
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.end.if.end4_crit_edge, %array_map_lookup_elem.exit.if.end4_crit_edge, %rcu_read_lock.exit.if.end4_crit_edge
  %call.i12 = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i12, label %if.end4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.end4.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.end4
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.end4.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %25 = call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i19 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prog_id) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prog_array_map_poke_track(ptr nocapture noundef readonly %map, ptr noundef %prog_aux) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %poke_mutex, i32 noundef 0) #18
  %poke_progs = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %elem.0.in = phi ptr [ %poke_progs, %entry ], [ %elem.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %elem.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %elem.0 = load ptr, ptr %elem.0.in, align 4
  %cmp.not = icmp eq ptr %elem.0, %poke_progs
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %aux6 = getelementptr inbounds %struct.prog_poke_elem, ptr %elem.0, i32 0, i32 1
  %3 = ptrtoint ptr %aux6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux6, align 4
  %cmp7 = icmp eq ptr %4, %prog_aux
  br i1 %cmp7, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end14

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end14:                                         ; preds = %for.end
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %prev.i, align 4
  %aux16 = getelementptr inbounds %struct.prog_poke_elem, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %aux16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %prog_aux, ptr %aux16, align 8
  %prev.i31 = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i31, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %10, ptr noundef %poke_progs) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %prev.i31, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %poke_progs, ptr %call7.i, align 8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i, ptr %10, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end14.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ -12, %for.end.out_crit_edge ], [ 0, %if.end14.out_crit_edge ], [ 0, %if.end.i.i ], [ 0, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %poke_mutex) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_poke_untrack(ptr nocapture noundef readonly %map, ptr noundef readnone %prog_aux) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux2 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux2, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %poke_mutex, i32 noundef 0) #18
  %poke_progs = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %elem.0.in = phi ptr [ %poke_progs, %entry ], [ %elem.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %elem.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %elem.0 = load ptr, ptr %elem.0.in, align 4
  %cmp.not = icmp eq ptr %elem.0, %poke_progs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond
  %aux12 = getelementptr inbounds %struct.prog_poke_elem, ptr %elem.0, i32 0, i32 1
  %3 = ptrtoint ptr %aux12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux12, align 4
  %cmp13 = icmp eq ptr %4, %prog_aux
  br i1 %cmp13, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem.0) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %elem.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %elem.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elem.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %elem.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %elem.0, ptr %elem.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %elem.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %elem.0, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef %elem.0) #18
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %poke_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_poke_run(ptr noundef readonly %map, i32 noundef %key, ptr noundef readonly %old, ptr noundef readonly %new) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1, align 8
  %poke_mutex = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %poke_mutex) #18
  br i1 %call, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b239 = load i1, ptr @prog_array_map_poke_run.__already_done, align 1
  br i1 %.b239, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !70

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @prog_array_map_poke_run.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %poke_progs = getelementptr inbounds %struct.bpf_array_aux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %poke_progs to i32
  call void @__asan_load4_noabort(i32 %2)
  %elem.0251 = load ptr, ptr %poke_progs, align 4
  %cmp.not252 = icmp eq ptr %elem.0251, %poke_progs
  br i1 %cmp.not252, label %if.end30.for.end202_crit_edge, label %for.cond44.preheader.lr.ph

if.end30.for.end202_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end202

for.cond44.preheader.lr.ph:                       ; preds = %if.end30
  %tobool70.not = icmp eq ptr %old, null
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %old, i32 0, i32 9
  %tobool78.not = icmp eq ptr %new, null
  %bpf_func80 = getelementptr inbounds %struct.bpf_prog, ptr %new, i32 0, i32 9
  br label %for.cond44.preheader

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond44.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %elem.0253 to i32
  call void @__asan_load4_noabort(i32 %3)
  %elem.0 = load ptr, ptr %elem.0253, align 4
  %cmp.not = icmp eq ptr %elem.0, %poke_progs
  br i1 %cmp.not, label %for.cond.loopexit.for.end202_crit_edge, label %for.cond.loopexit.for.cond44.preheader_crit_edge

for.cond.loopexit.for.cond44.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond44.preheader

for.cond.loopexit.for.end202_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end202

for.cond44.preheader:                             ; preds = %for.cond.loopexit.for.cond44.preheader_crit_edge, %for.cond44.preheader.lr.ph
  %elem.0253 = phi ptr [ %elem.0251, %for.cond44.preheader.lr.ph ], [ %elem.0, %for.cond.loopexit.for.cond44.preheader_crit_edge ]
  %aux45 = getelementptr inbounds %struct.prog_poke_elem, ptr %elem.0253, i32 0, i32 1
  %4 = ptrtoint ptr %aux45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux45, align 4
  %size_poke_tab246 = getelementptr inbounds %struct.bpf_prog_aux, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %size_poke_tab246 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size_poke_tab246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp46247.not = icmp eq i32 %7, 0
  br i1 %cmp46247.not, label %for.cond44.preheader.for.cond.loopexit_crit_edge, label %for.cond44.preheader.for.body47_crit_edge

for.cond44.preheader.for.body47_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body47

for.cond44.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit

for.body47:                                       ; preds = %for.inc.for.body47_crit_edge, %for.cond44.preheader.for.body47_crit_edge
  %8 = phi ptr [ %43, %for.inc.for.body47_crit_edge ], [ %5, %for.cond44.preheader.for.body47_crit_edge ]
  %i.0248 = phi i32 [ %inc, %for.inc.for.body47_crit_edge ], [ 0, %for.cond44.preheader.for.body47_crit_edge ]
  %poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %poke_tab to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %poke_tab, align 8
  %arrayidx = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248
  %tailcall_target_stable = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 5
  %11 = ptrtoint ptr %tailcall_target_stable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %tailcall_target_stable, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool53.not = icmp eq i8 %12, 0
  br i1 %tobool53.not, label %for.body47.for.inc_crit_edge, label %if.end57

for.body47.for.inc_crit_edge:                     ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end57:                                         ; preds = %for.body47
  %reason = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 7
  %13 = ptrtoint ptr %reason to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp58.not = icmp eq i16 %14, 0
  br i1 %cmp58.not, label %if.end61, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end61:                                         ; preds = %if.end57
  %15 = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp63.not = icmp eq ptr %17, %map
  br i1 %cmp63.not, label %lor.lhs.false, label %if.end61.for.inc_crit_edge

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end61
  %key65 = getelementptr inbounds %struct.anon.93, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %key65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %key)
  %cmp66.not = icmp eq i32 %19, %key
  br i1 %cmp66.not, label %if.end69, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end69:                                         ; preds = %lor.lhs.false
  br i1 %tobool70.not, label %cond.end.thread, label %cond.true72

cond.end.thread:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %bypass_addr = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 2
  %20 = ptrtoint ptr %bypass_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bypass_addr, align 4
  br label %cond.end76

cond.true72:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bpf_func, align 4
  %adj_off = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 6
  %24 = ptrtoint ptr %adj_off to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adj_off, align 1
  %conv73 = zext i8 %25 to i32
  %add.ptr74 = getelementptr i8, ptr %23, i32 %conv73
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true72, %cond.end.thread
  %cond244 = phi ptr [ null, %cond.true72 ], [ %21, %cond.end.thread ]
  %cond77 = phi ptr [ %add.ptr74, %cond.true72 ], [ null, %cond.end.thread ]
  br i1 %tobool78.not, label %if.else, label %if.then88

if.then88:                                        ; preds = %cond.end76
  %26 = ptrtoint ptr %bpf_func80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bpf_func80, align 4
  %adj_off81 = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 6
  %28 = ptrtoint ptr %adj_off81 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %adj_off81, align 1
  %conv82 = zext i8 %29 to i32
  %add.ptr83 = getelementptr i8, ptr %27, i32 %conv82
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call89 = tail call i32 @bpf_arch_text_poke(ptr noundef %31, i32 noundef 1, ptr noundef %cond77, ptr noundef %add.ptr83) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp91 = icmp slt i32 %call89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call89)
  %cmp94 = icmp ne i32 %call89, -22
  %spec.select = and i1 %cmp91, %cmp94
  br i1 %spec.select, label %do.body104, label %do.end112, !prof !73

do.body104:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1017, 0\0A.popsection", ""() #18, !srcloc !88
  unreachable

do.end112:                                        ; preds = %if.then88
  br i1 %tobool70.not, label %if.then114, label %do.end112.for.inc_crit_edge

do.end112.for.inc_crit_edge:                      ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then114:                                       ; preds = %do.end112
  %tailcall_bypass = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 1
  %32 = ptrtoint ptr %tailcall_bypass to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tailcall_bypass, align 4
  %bypass_addr115 = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 2
  %34 = ptrtoint ptr %bypass_addr115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bypass_addr115, align 4
  %call116 = tail call i32 @bpf_arch_text_poke(ptr noundef %33, i32 noundef 1, ptr noundef %35, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp118 = icmp slt i32 %call116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call116)
  %cmp121 = icmp ne i32 %call116, -22
  %spec.select240 = and i1 %cmp118, %cmp121
  br i1 %spec.select240, label %do.body131, label %if.then114.for.inc_crit_edge, !prof !73

if.then114.for.inc_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body131:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1023, 0\0A.popsection", ""() #18, !srcloc !89
  unreachable

if.else:                                          ; preds = %cond.end76
  %tailcall_bypass141 = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 1
  %36 = ptrtoint ptr %tailcall_bypass141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tailcall_bypass141, align 4
  %bypass_addr142 = getelementptr %struct.bpf_jit_poke_descriptor, ptr %10, i32 %i.0248, i32 2
  %38 = ptrtoint ptr %bypass_addr142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bypass_addr142, align 4
  %call143 = tail call i32 @bpf_arch_text_poke(ptr noundef %37, i32 noundef 1, ptr noundef %cond244, ptr noundef %39) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp145 = icmp slt i32 %call143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call143)
  %cmp148 = icmp ne i32 %call143, -22
  %spec.select241 = and i1 %cmp145, %cmp148
  br i1 %spec.select241, label %do.body158, label %do.end166, !prof !73

do.body158:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1030, 0\0A.popsection", ""() #18, !srcloc !90
  unreachable

do.end166:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool167.not = icmp eq i32 %call143, 0
  br i1 %tobool167.not, label %if.then168, label %do.end166.if.end169_crit_edge

do.end166.if.end169_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end169

if.then168:                                       ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @synchronize_rcu() #18
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %do.end166.if.end169_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call171 = tail call i32 @bpf_arch_text_poke(ptr noundef %41, i32 noundef 1, ptr noundef %cond77, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp173 = icmp slt i32 %call171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call171)
  %cmp176 = icmp ne i32 %call171, -22
  %spec.select242 = and i1 %cmp173, %cmp176
  br i1 %spec.select242, label %do.body186, label %if.end169.for.inc_crit_edge, !prof !73

if.end169.for.inc_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

do.body186:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1040, 0\0A.popsection", ""() #18, !srcloc !91
  unreachable

for.inc:                                          ; preds = %if.end169.for.inc_crit_edge, %if.then114.for.inc_crit_edge, %do.end112.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end61.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %for.body47.for.inc_crit_edge
  %inc = add nuw i32 %i.0248, 1
  %42 = ptrtoint ptr %aux45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aux45, align 4
  %size_poke_tab = getelementptr inbounds %struct.bpf_prog_aux, ptr %43, i32 0, i32 35
  %44 = ptrtoint ptr %size_poke_tab to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size_poke_tab, align 4
  %cmp46 = icmp ult i32 %inc, %45
  br i1 %cmp46, label %for.inc.for.body47_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit

for.inc.for.body47_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body47

for.end202:                                       ; preds = %for.cond.loopexit.for.end202_crit_edge, %if.end30.for.end202_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_event_fd_array_release(ptr noundef %map, ptr noundef readnone %map_file) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #18
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i, align 4
  %7 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.not = icmp eq i32 %8, 0
  br i1 %cmp24.not, label %rcu_read_lock.exit.for.end_crit_edge, label %do.end.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

do.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %9 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.end.lr.ph
  %storemerge25 = phi i32 [ 0, %do.end.lr.ph ], [ %inc, %for.inc.do.end_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %9, i32 0, i32 %storemerge25
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %do.end.for.inc_crit_edge, label %land.lhs.true

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end
  %map_file4 = getelementptr inbounds %struct.bpf_event_entry, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %map_file4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_file4, align 4
  %cmp5 = icmp eq ptr %13, %map_file
  br i1 %cmp5, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call = call i32 @fd_array_map_delete_elem(ptr noundef %map, ptr noundef nonnull %i)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc = add nuw i32 %storemerge25, 1
  %14 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %i, align 4
  %15 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_entries, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.do.end_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i15, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i22 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_event_fd_array_map_free(ptr noundef %map) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #18
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i.i, align 4
  %3 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not.i = icmp eq i32 %4, 0
  br i1 %cmp3.not.i, label %if.then.bpf_fd_array_map_clear.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.bpf_fd_array_map_clear.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_fd_array_map_clear.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %storemerge4.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = call i32 @fd_array_map_delete_elem(ptr noundef %map, ptr noundef nonnull %i.i) #18
  %inc.i = add nuw i32 %storemerge4.i, 1
  %5 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %i.i, align 4
  %6 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bpf_fd_array_map_clear.exit_crit_edge

for.body.i.bpf_fd_array_map_clear.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_fd_array_map_clear.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bpf_fd_array_map_clear.exit:                      ; preds = %for.body.i.bpf_fd_array_map_clear.exit_crit_edge, %if.then.bpf_fd_array_map_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  br label %if.end

if.end:                                           ; preds = %bpf_fd_array_map_clear.exit, %entry.if.end_crit_edge
  %max_entries.i3 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %8 = ptrtoint ptr %max_entries.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.not.i = icmp eq i32 %9, 0
  br i1 %cmp14.not.i, label %if.end.fd_array_map_free.exit_crit_edge, label %do.body.lr.ph.i

if.end.fd_array_map_free.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %10 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %do.body.i

for.cond.i:                                       ; preds = %do.body.i
  %inc.i4 = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i4, %9
  br i1 %exitcond.not.i, label %for.cond.i.fd_array_map_free.exit_crit_edge, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.cond.i.fd_array_map_free.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i4, %for.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr %10, i32 0, i32 %i.015.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %12, null
  br i1 %cmp2.not.i, label %for.cond.i, label %do.body4.i, !prof !70

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #18, !srcloc !83
  unreachable

fd_array_map_free.exit:                           ; preds = %for.cond.i.fd_array_map_free.exit_crit_edge, %if.end.fd_array_map_free.exit_crit_edge
  tail call void @bpf_map_area_free(ptr noundef %map) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @perf_event_fd_array_get_ptr(ptr nocapture noundef readnone %map, ptr noundef %map_file, i32 noundef %fd) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #18
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !77
  %call = tail call ptr @perf_event_get(i32 noundef %fd) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %call3 = call i32 @perf_event_read_local(ptr noundef %2, ptr noundef nonnull %value, ptr noundef null, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call3)
  %cmp = icmp eq i32 %call3, -95
  br i1 %cmp, label %if.end.err_out_crit_edge, label %if.end5

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 20) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end5.err_out_crit_edge, label %bpf_event_entry_gen.exit

if.end5.err_out_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_out

bpf_event_entry_gen.exit:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i.i, align 8
  %perf_file1.i = getelementptr inbounds %struct.bpf_event_entry, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %perf_file1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %perf_file1.i, align 4
  %map_file2.i = getelementptr inbounds %struct.bpf_event_entry, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %map_file2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %map_file, ptr %map_file2.i, align 8
  br label %cleanup

err_out:                                          ; preds = %if.end5.err_out_crit_edge, %if.end.err_out_crit_edge
  %ee.0 = phi ptr [ inttoptr (i32 -95 to ptr), %if.end.err_out_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.err_out_crit_edge ]
  call void @fput(ptr noundef %call) #18
  br label %cleanup

cleanup:                                          ; preds = %err_out, %bpf_event_entry_gen.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ee.0, %err_out ], [ %call, %entry.cleanup_crit_edge ], [ %call7.i.i.i, %bpf_event_entry_gen.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #18
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_event_fd_array_put_ptr(ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rcu.i = getelementptr inbounds %struct.bpf_event_entry, ptr %ptr, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__bpf_event_entry_free) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_fd_array_free(ptr noundef %map) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #18
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i.i, align 4
  %1 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.not.i = icmp eq i32 %2, 0
  br i1 %cmp3.not.i, label %bpf_fd_array_map_clear.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

bpf_fd_array_map_clear.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  br label %fd_array_map_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %storemerge4.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = call i32 @fd_array_map_delete_elem(ptr noundef %map, ptr noundef nonnull %i.i) #18
  %inc.i = add nuw i32 %storemerge4.i, 1
  %3 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc.i, ptr %i.i, align 4
  %4 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %bpf_fd_array_map_clear.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bpf_fd_array_map_clear.exit:                      ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not.i = icmp eq i32 %5, 0
  br i1 %cmp14.not.i, label %bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge, label %do.body.lr.ph.i

bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge: ; preds = %bpf_fd_array_map_clear.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.lr.ph.i:                                  ; preds = %bpf_fd_array_map_clear.exit
  %6 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %do.body.i

for.cond.i:                                       ; preds = %do.body.i
  %inc.i3 = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i3, %5
  br i1 %exitcond.not.i, label %for.cond.i.fd_array_map_free.exit_crit_edge, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.cond.i.fd_array_map_free.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i3, %for.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %i.015.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %8, null
  br i1 %cmp2.not.i, label %for.cond.i, label %do.body4.i, !prof !70

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #18, !srcloc !83
  unreachable

fd_array_map_free.exit:                           ; preds = %for.cond.i.fd_array_map_free.exit_crit_edge, %bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge, %bpf_fd_array_map_clear.exit.thread
  tail call void @bpf_map_area_free(ptr noundef %map) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroup_fd_array_get_ptr(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %map_file, i32 noundef %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cgroup_get_from_fd(i32 noundef %fd) #18
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_fd_array_put_ptr(ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %ptr, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.cgroup_put.exit_crit_edge

entry.cgroup_put.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cgroup_put.exit

if.then.i.i:                                      ; preds = %entry
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %ptr, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #18
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !70

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !92
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i2.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i.i.i = add i32 %17, -1
  store i32 %add15.i.i.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !93
  %and.i.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !73

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #18, !srcloc !94
  br label %if.end48.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %ptr, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #18, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then45.i.i.i.i, label %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48.i.i.i.i

if.then45.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %release.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i.i.i, align 4
  tail call void %25(ptr noundef %refcnt.i.i) #18
  br label %if.end48.i.i.i.i

if.end48.i.i.i.i:                                 ; preds = %if.then45.i.i.i.i, %if.else.i.i.i.i.if.end48.i.i.i.i_crit_edge, %do.end31.i.i.i.i
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i3.i.i.i.i, label %if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %if.end48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i.i

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end48.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i.i

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i.i

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #18
  br label %percpu_ref_put.exit.i.i

percpu_ref_put.exit.i.i:                          ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge, %if.end48.i.i.i.i.percpu_ref_put.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !72
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #18
  %and.i.i.i.i.i10.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cgroup_put.exit

cgroup_put.exit:                                  ; preds = %percpu_ref_put.exit.i.i, %entry.cgroup_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @array_of_map_alloc(ptr noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inner_map_fd = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 5
  %0 = ptrtoint ptr %inner_map_fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inner_map_fd, align 4
  %call = tail call ptr @bpf_map_meta_alloc(i32 noundef %1) #18
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @array_map_alloc(ptr noundef %attr)
  %cmp.i15 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @bpf_map_meta_free(ptr noundef %call) #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
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
define internal void @array_of_map_free(ptr noundef %map) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %inner_map_meta = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %inner_map_meta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inner_map_meta, align 4
  tail call void @bpf_map_meta_free(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #18
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i.i, align 4
  %3 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not.i = icmp eq i32 %4, 0
  br i1 %cmp3.not.i, label %bpf_fd_array_map_clear.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

bpf_fd_array_map_clear.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  br label %fd_array_map_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %storemerge4.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = call i32 @fd_array_map_delete_elem(ptr noundef %map, ptr noundef nonnull %i.i) #18
  %inc.i = add nuw i32 %storemerge4.i, 1
  %5 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %i.i, align 4
  %6 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %bpf_fd_array_map_clear.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bpf_fd_array_map_clear.exit:                      ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.not.i = icmp eq i32 %7, 0
  br i1 %cmp14.not.i, label %bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge, label %do.body.lr.ph.i

bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge: ; preds = %bpf_fd_array_map_clear.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.lr.ph.i:                                  ; preds = %bpf_fd_array_map_clear.exit
  %8 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  br label %do.body.i

for.cond.i:                                       ; preds = %do.body.i
  %inc.i4 = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i4, %7
  br i1 %exitcond.not.i, label %for.cond.i.fd_array_map_free.exit_crit_edge, label %for.cond.i.do.body.i_crit_edge

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.cond.i.fd_array_map_free.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %fd_array_map_free.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i4, %for.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr %8, i32 0, i32 %i.015.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %10, null
  br i1 %cmp2.not.i, label %for.cond.i, label %do.body4.i, !prof !70

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/arraymap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #18, !srcloc !83
  unreachable

fd_array_map_free.exit:                           ; preds = %for.cond.i.fd_array_map_free.exit_crit_edge, %bpf_fd_array_map_clear.exit.fd_array_map_free.exit_crit_edge, %bpf_fd_array_map_clear.exit.thread
  tail call void @bpf_map_area_free(ptr noundef %map) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @array_of_map_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp ult i32 %1, %3
  br i1 %cmp.not.i, label %array_map_lookup_elem.exit, label %entry.cleanup_crit_edge, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

array_map_lookup_elem.exit:                       ; preds = %entry
  %4 = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 5
  %elem_size.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 1
  %5 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %elem_size.i, align 128
  %index_mask.i = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %7 = ptrtoint ptr %index_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index_mask.i, align 4
  %and.i = and i32 %8, %1
  %mul.i = mul i32 %and.i, %6
  %add.ptr3.i = getelementptr i8, ptr %4, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr3.i, null
  br i1 %tobool.not, label %array_map_lookup_elem.exit.cleanup_crit_edge, label %do.end

array_map_lookup_elem.exit.cleanup_crit_edge:     ; preds = %array_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %array_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %add.ptr3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %array_map_lookup_elem.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %do.end ], [ null, %array_map_lookup_elem.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_fd_get_ptr(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_fd_put_ptr(ptr noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @array_of_map_gen_lookup(ptr nocapture noundef readonly %map, ptr noundef %insn_buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %2 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %3 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %4 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 400, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 97, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %7 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %8 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %9 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %bypass_spec_v1 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 19
  %10 = ptrtoint ptr %bypass_spec_v1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bypass_spec_v1, align 32, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %incdec.ptr17 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %12 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries, align 8
  %14 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 53, ptr %incdec.ptr4, align 4
  %.compoundliteral18.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %15 = ptrtoint ptr %.compoundliteral18.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %.compoundliteral18.sroa.2.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 6, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %17 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  %incdec.ptr30 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %map, i32 0, i32 2
  %18 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index_mask, align 4
  %20 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 84, ptr %incdec.ptr17, align 4
  %.compoundliteral31.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 1
  %21 = ptrtoint ptr %.compoundliteral31.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %.compoundliteral31.sroa.2.0..sroa_idx, align 1
  %.compoundliteral31.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 2
  %22 = ptrtoint ptr %.compoundliteral31.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %.compoundliteral31.sroa.6.0..sroa_idx, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 5, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink179 = phi i32 [ 2, %if.else ], [ 3, %if.then ]
  %.sink = phi i32 [ %13, %if.else ], [ %19, %if.then ]
  %insn.0 = phi ptr [ %incdec.ptr17, %if.else ], [ %incdec.ptr30, %if.then ]
  %sub = add i32 %1, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %.compoundliteral44.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 %.sink179, i32 3
  %24 = ptrtoint ptr %.compoundliteral44.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %.compoundliteral44.sroa.7.0..sroa_idx, align 4
  %25 = tail call i32 @llvm.ctpop.i32(i32 %add) #18, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %26 = icmp eq i32 %25, 1
  %27 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #18, !range !74
  %cond76 = xor i32 %27, 31
  %storemerge = select i1 %26, i8 103, i8 39
  %add.sink = select i1 %26, i32 %cond76, i32 %add
  %28 = ptrtoint ptr %insn.0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge, ptr %insn.0, align 4
  %29 = getelementptr inbounds i8, ptr %insn.0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %insn.0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %31, align 2
  %33 = getelementptr inbounds i8, ptr %insn.0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.sink, ptr %33, align 4
  %insn.1 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1
  %incdec.ptr92 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2
  %35 = ptrtoint ptr %insn.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %insn.1, align 4
  %.compoundliteral93.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 1
  %36 = ptrtoint ptr %.compoundliteral93.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %.compoundliteral93.sroa.2.0..sroa_idx, align 1
  %.compoundliteral93.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 2
  %37 = ptrtoint ptr %.compoundliteral93.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %.compoundliteral93.sroa.6.0..sroa_idx, align 2
  %.compoundliteral93.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 1, i32 3
  %38 = ptrtoint ptr %.compoundliteral93.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %.compoundliteral93.sroa.7.0..sroa_idx, align 4
  %incdec.ptr105 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3
  %39 = ptrtoint ptr %incdec.ptr92 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 121, ptr %incdec.ptr92, align 4
  %.compoundliteral106.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 1
  %40 = ptrtoint ptr %.compoundliteral106.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %.compoundliteral106.sroa.2.0..sroa_idx, align 1
  %.compoundliteral106.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 2
  %41 = ptrtoint ptr %.compoundliteral106.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %.compoundliteral106.sroa.6.0..sroa_idx, align 2
  %.compoundliteral106.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 2, i32 3
  %42 = ptrtoint ptr %.compoundliteral106.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %.compoundliteral106.sroa.7.0..sroa_idx, align 4
  %incdec.ptr118 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 4
  %43 = ptrtoint ptr %incdec.ptr105 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 21, ptr %incdec.ptr105, align 4
  %.compoundliteral119.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 1
  %44 = ptrtoint ptr %.compoundliteral119.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %.compoundliteral119.sroa.2.0..sroa_idx, align 1
  %.compoundliteral119.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 2
  %45 = ptrtoint ptr %.compoundliteral119.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %.compoundliteral119.sroa.6.0..sroa_idx, align 2
  %.compoundliteral119.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 3, i32 3
  %46 = ptrtoint ptr %.compoundliteral119.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %.compoundliteral119.sroa.7.0..sroa_idx, align 4
  %incdec.ptr131 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 5
  %47 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %incdec.ptr118, align 4
  %.compoundliteral132.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 4, i32 1
  %48 = ptrtoint ptr %.compoundliteral132.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %.compoundliteral132.sroa.2.0..sroa_idx, align 1
  %.compoundliteral132.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 4, i32 2
  %49 = ptrtoint ptr %.compoundliteral132.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %.compoundliteral132.sroa.6.0..sroa_idx, align 2
  %.compoundliteral132.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 4, i32 3
  %50 = ptrtoint ptr %.compoundliteral132.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %.compoundliteral132.sroa.7.0..sroa_idx, align 4
  %incdec.ptr144 = getelementptr %struct.bpf_insn, ptr %insn.0, i32 6
  %51 = ptrtoint ptr %incdec.ptr131 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -73, ptr %incdec.ptr131, align 4
  %.compoundliteral145.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 5, i32 1
  %52 = ptrtoint ptr %.compoundliteral145.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %.compoundliteral145.sroa.2.0..sroa_idx, align 1
  %.compoundliteral145.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 5, i32 2
  %53 = ptrtoint ptr %.compoundliteral145.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %.compoundliteral145.sroa.6.0..sroa_idx, align 2
  %.compoundliteral145.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn.0, i32 5, i32 3
  %54 = ptrtoint ptr %.compoundliteral145.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %.compoundliteral145.sroa.7.0..sroa_idx, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr144 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %insn_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  ret i32 %sub.ptr.div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_map_fd_sys_lookup_elem(ptr noundef) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_mmapable_alloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_alloc_percpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_timer_cancel_and_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_map_value_locked(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_type_seq_show(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_type_is_void(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_iter_init_array_map(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readonly %aux) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then:                                          ; preds = %entry
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 4
  %sub = add i32 %5, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #18
  %mul = mul i32 %call4.i.i, %add
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 1060032) #23
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %priv_data, i32 0, i32 1
  %7 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %percpu_value_buf, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %8 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %priv_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_iter_fini_array_map(ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %priv_data, i32 0, i32 1
  %0 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_value_buf, align 4
  tail call void @kfree(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bpf_array_map_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index2 = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp3 = icmp eq i64 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %pos, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2, align 4
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index_mask, align 4
  %and = and i32 %14, %12
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %percpu_value_buf, align 4
  %tobool.not = icmp eq ptr %16, null
  %17 = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 5
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [0 x ptr], ptr %17, i32 0, i32 %and
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elem_size, align 128
  %mul = mul i32 %21, %and
  %add.ptr9 = getelementptr i8, ptr %17, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %if.then7 ], [ %add.ptr9, %if.end8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_array_map_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #2 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__bpf_map_elem, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx.i) #18
  %2 = call ptr @memset(ptr %ctx.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #18
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.__bpf_array_map_seq_show.exit_crit_edge, label %if.end.i

if.then.__bpf_array_map_seq_show.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %__bpf_array_map_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
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
  %call16.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #18
  br label %__bpf_array_map_seq_show.exit

__bpf_array_map_seq_show.exit:                    ; preds = %if.end.i, %if.then.__bpf_array_map_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #18
  br label %if.end

if.end:                                           ; preds = %__bpf_array_map_seq_show.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bpf_array_map_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %index2 = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %index2, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc3, i32 %9)
  %cmp.not = icmp ult i32 %inc3, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %index_mask = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %index_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index_mask, align 4
  %and = and i32 %11, %inc3
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %percpu_value_buf, align 4
  %tobool.not = icmp eq ptr %13, null
  %14 = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 5
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [0 x ptr], ptr %14, i32 0, i32 %and
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elem_size, align 128
  %mul = mul i32 %18, %and
  %add.ptr8 = getelementptr i8, ptr %14, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then6 ], [ %add.ptr8, %if.end7 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_array_map_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bpf_array_map_seq_show(ptr noundef %seq, ptr noundef %v)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_array_map_seq_show(ptr noundef %seq, ptr noundef %v) unnamed_addr #2 align 64 {
entry:
  %ctx = alloca %struct.bpf_iter__bpf_map_elem, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx) #18
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #18
  %5 = call ptr @memset(ptr %meta, i32 255, i32 24)
  %6 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %seq, ptr %meta, align 8
  %cmp = icmp eq ptr %v, null
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext %cmp) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
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
  br i1 %cmp, label %if.end.if.end15_crit_edge, label %if.then4

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then4:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %index, ptr %12, align 8
  %percpu_value_buf = getelementptr inbounds %struct.bpf_iter_seq_array_map_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %percpu_value_buf, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.then4.if.end15.sink.split_crit_edge, label %if.else

if.then4.if.end15.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.then4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %4, i32 0, i32 5
  %16 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_size, align 4
  %sub = add i32 %17, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %call739 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call739, i32 %18)
  %cmp840 = icmp ult i32 %call739, %18
  br i1 %cmp840, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %19 = ptrtoint ptr %v to i32
  %div3.i = lshr exact i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call742 = phi i32 [ %call739, %for.body.lr.ph ], [ %call7, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.041 = phi i32 [ 0, %for.body.lr.ph ], [ %add12, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call742
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add11 = add i32 %21, %19
  %22 = inttoptr i32 %add11 to ptr
  %23 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %percpu_value_buf, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %off.041
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %22, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %25 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %27 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ldst.07.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.bpf_long_memcpy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.bpf_long_memcpy.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add12 = add i32 %off.041, %add
  %call7 = call i32 @cpumask_next(i32 noundef %call742, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %call7, %28
  br i1 %cmp8, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %if.else.for.end_crit_edge
  %29 = ptrtoint ptr %percpu_value_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %percpu_value_buf, align 4
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %for.end, %if.then4.if.end15.sink.split_crit_edge
  %v.sink = phi ptr [ %30, %for.end ], [ %v, %if.then4.if.end15.sink.split_crit_edge ]
  %31 = getelementptr inbounds %struct.bpf_iter__bpf_map_elem, ptr %ctx, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %v.sink, ptr %31, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.end.if.end15_crit_edge
  %call16 = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prog_array_map_clear_deferred(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #18
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i.i, align 4
  %3 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not.i = icmp eq i32 %4, 0
  br i1 %cmp3.not.i, label %entry.bpf_fd_array_map_clear.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bpf_fd_array_map_clear.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_fd_array_map_clear.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %storemerge4.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = call i32 @fd_array_map_delete_elem(ptr noundef %1, ptr noundef nonnull %i.i) #18
  %inc.i = add nuw i32 %storemerge4.i, 1
  %5 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %i.i, align 4
  %6 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bpf_fd_array_map_clear.exit_crit_edge

for.body.i.bpf_fd_array_map_clear.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_fd_array_map_clear.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bpf_fd_array_map_clear.exit:                      ; preds = %for.body.i.bpf_fd_array_map_clear.exit_crit_edge, %entry.bpf_fd_array_map_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #18
  tail call void @bpf_map_put(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_prog_array_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_arch_text_poke(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_event_get(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_read_local(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_event_entry_free(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -12
  %perf_file = getelementptr i8, ptr %rcu, i32 -8
  %0 = ptrtoint ptr %perf_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf_file, align 4
  tail call void @fput(ptr noundef %1) #18
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_get_from_fd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_meta_alloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_meta_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !57, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/arraymap.c", i32 704, i32 18}
!2 = !{ptr @array_map_ops, !3, !"array_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/arraymap.c", i32 684, i32 26}
!4 = !{ptr @percpu_array_map_ops, !5, !"percpu_array_map_ops", i1 false, i1 false}
!5 = !{!"../kernel/bpf/arraymap.c", i32 710, i32 26}
!6 = !{ptr @prog_array_map_ops, !7, !"prog_array_map_ops", i1 false, i1 false}
!7 = !{!"../kernel/bpf/arraymap.c", i32 1108, i32 26}
!8 = !{ptr @perf_event_array_map_ops, !9, !"perf_event_array_map_ops", i1 false, i1 false}
!9 = !{!"../kernel/bpf/arraymap.c", i32 1214, i32 26}
!10 = !{ptr @cgroup_array_map_ops, !11, !"cgroup_array_map_ops", i1 false, i1 false}
!11 = !{!"../kernel/bpf/arraymap.c", i32 1251, i32 26}
!12 = !{ptr @array_of_maps_map_ops, !13, !"array_of_maps_map_ops", i1 false, i1 false}
!13 = !{!"../kernel/bpf/arraymap.c", i32 1338, i32 26}
!14 = !{ptr @array_map_btf_id, !15, !"array_map_btf_id", i1 false, i1 false}
!15 = !{!"../kernel/bpf/arraymap.c", i32 683, i32 12}
!16 = !{ptr @percpu_array_map_btf_id, !17, !"percpu_array_map_btf_id", i1 false, i1 false}
!17 = !{!"../kernel/bpf/arraymap.c", i32 709, i32 12}
!18 = !{ptr @prog_array_map_btf_id, !19, !"prog_array_map_btf_id", i1 false, i1 false}
!19 = !{!"../kernel/bpf/arraymap.c", i32 1107, i32 12}
!20 = !{ptr @perf_event_array_map_btf_id, !21, !"perf_event_array_map_btf_id", i1 false, i1 false}
!21 = !{!"../kernel/bpf/arraymap.c", i32 1213, i32 12}
!22 = !{ptr @cgroup_array_map_btf_id, !23, !"cgroup_array_map_btf_id", i1 false, i1 false}
!23 = !{!"../kernel/bpf/arraymap.c", i32 1250, i32 12}
!24 = !{ptr @array_of_maps_map_btf_id, !25, !"array_of_maps_map_btf_id", i1 false, i1 false}
!25 = !{!"../kernel/bpf/arraymap.c", i32 1337, i32 12}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/bpf/arraymap.c", i32 44, i32 3}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/bpf/arraymap.c", i32 425, i32 17}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/bpf/arraymap.c", i32 427, i32 14}
!39 = !{ptr @iter_seq_info, !40, !"iter_seq_info", i1 false, i1 false}
!40 = !{!"../kernel/bpf/arraymap.c", i32 641, i32 39}
!41 = !{ptr @bpf_array_map_seq_ops, !42, !"bpf_array_map_seq_ops", i1 false, i1 false}
!42 = !{!"../kernel/bpf/arraymap.c", i32 634, i32 36}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/bpf/arraymap.c", i32 442, i32 16}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/bpf/arraymap.c", i32 445, i32 17}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/bpf/arraymap.c", i32 450, i32 14}
!49 = !{ptr @prog_array_map_alloc.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../kernel/bpf/arraymap.c", i32 1071, i32 2}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @prog_array_map_alloc.__key.11, !53, !"__key", i1 false, i1 false}
!53 = !{!"../kernel/bpf/arraymap.c", i32 1073, i32 2}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @prog_array_map_alloc.__key.13, !56, !"__key", i1 false, i1 false}
!56 = !{!"../kernel/bpf/arraymap.c", i32 1074, i32 2}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../kernel/bpf/arraymap.c", i32 962, i32 2}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2149710070}
!72 = !{i64 2149710336}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i32 0, i32 33}
!75 = !{i8 0, i8 2}
!76 = !{i32 0, i32 30}
!77 = !{!"auto-init"}
!78 = !{i64 2157477244}
!79 = !{i64 1225517, i64 1225534, i64 1225558, i64 1225584, i64 1225602}
!80 = !{i64 2157477593}
!81 = !{i64 2157478456}
!82 = !{i64 2157478805}
!83 = !{i64 2157471308, i64 2157471794, i64 2157471345, i64 2157471401, i64 2157471435, i64 2157471459, i64 2157471500, i64 2157471521, i64 2157471549, i64 2157471583}
!84 = !{i64 2157480882}
!85 = !{i64 2157481235}
!86 = !{i64 2157482142}
!87 = !{i64 2157482495}
!88 = !{i64 2157507154, i64 2157507641, i64 2157507191, i64 2157507247, i64 2157507281, i64 2157507305, i64 2157507346, i64 2157507367, i64 2157507395, i64 2157507429}
!89 = !{i64 2157508778, i64 2157509265, i64 2157508815, i64 2157508871, i64 2157508905, i64 2157508929, i64 2157508970, i64 2157508991, i64 2157509019, i64 2157509053}
!90 = !{i64 2157514451, i64 2157514938, i64 2157514488, i64 2157514544, i64 2157514578, i64 2157514602, i64 2157514643, i64 2157514664, i64 2157514692, i64 2157514726}
!91 = !{i64 2157516075, i64 2157516562, i64 2157516112, i64 2157516168, i64 2157516202, i64 2157516226, i64 2157516267, i64 2157516288, i64 2157516316, i64 2157516350}
!92 = !{i64 1122449, i64 1122510}
!93 = !{i64 1125181}
!94 = !{i64 1125466}
!95 = !{i64 2148807225}
!96 = !{i64 2148721934, i64 2148721966, i64 2148721995, i64 2148722029, i64 2148722060, i64 2148722083}
!97 = !{i64 2148807454}
