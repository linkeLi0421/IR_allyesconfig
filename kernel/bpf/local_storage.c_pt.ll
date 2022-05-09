; ModuleID = '/llk/IR_all_yes/kernel/bpf/local_storage.c_pt.bc'
source_filename = "../kernel/bpf/local_storage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.26 }
%union.anon.26 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bpf_cgroup_storage_map = type { %struct.bpf_map, %struct.spinlock, %struct.rb_root, %struct.list_head, [72 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.27 }
%union.anon.27 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.bpf_cgroup_storage_key = type { i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_storage_buffer = type { %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.btf_type = type { i32, i32, %union.anon.95 }
%union.anon.95 = type { i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.98 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.98 = type { %struct.work_struct }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.anon.101, [0 x %struct.sock_filter] }
%struct.anon.101 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_cgroup_storage = type { %union.anon, ptr, %struct.bpf_cgroup_storage_key, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.callback_head }
%union.anon = type { ptr }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.92, ptr, i64, i16, i16, ptr }
%union.anon.92 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bpf_cgroup_storage_map\00", [41 x i8] zeroinitializer }, align 32
@cgroup_storage_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cgroup_storage_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @cgroup_storage_map_alloc, ptr null, ptr @cgroup_storage_map_free, ptr @cgroup_storage_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_storage_lookup_elem, ptr @cgroup_storage_update_elem, ptr @cgroup_storage_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_storage_seq_show_elem, ptr @cgroup_storage_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr @cgroup_storage_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/bpf/local_storage.c\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cgroup_storage_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&map->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c": {\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09cpu%d: \00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"}\0A\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 459, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"cgroup_storage_map_btf_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 449, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"cgroup_storage_map_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 450, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 582, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 323, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 431, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 434, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 436, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 438, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [30 x i8] c"../kernel/bpf/local_storage.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 444, i32 15 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @cgroup_storage_map_btf_id, ptr @cgroup_storage_map_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cgroup_storage_map_alloc.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_storage_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_storage_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_storage_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cgroup_storage_lookup(ptr noundef %map, ptr nocapture noundef readonly %key, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %root1 = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 2
  br i1 %locked, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.034 = load ptr, ptr %root1, align 4
  %tobool2.not35 = icmp eq ptr %node.034, null
  br i1 %tobool2.not35, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %key_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %1 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key_size.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 16
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %key, align 8
  %attach_type.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %node.036 = phi ptr [ %node.034, %while.body.lr.ph ], [ %node.0, %cleanup.while.body_crit_edge ]
  %key3 = getelementptr i8, ptr %node.036, i32 -32
  %5 = ptrtoint ptr %key3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %key3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.i = icmp ult i64 %4, %6
  br i1 %cmp.i.i, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %while.body
  br i1 %cmp.i, label %if.then.i.sw.bb_crit_edge, label %if.else.i

if.then.i.sw.bb_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp6.i = icmp ugt i64 %4, %6
  br i1 %cmp6.i, label %if.else.i.sw.bb4_crit_edge, label %if.else8.i

if.else.i.sw.bb4_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.else8.i:                                       ; preds = %if.else.i
  %7 = ptrtoint ptr %attach_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attach_type.i, align 8
  %attach_type9.i = getelementptr i8, ptr %node.036, i32 -24
  %9 = ptrtoint ptr %attach_type9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_type9.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp10.i = icmp ult i32 %8, %10
  br i1 %cmp10.i, label %if.else8.i.sw.bb_crit_edge, label %cleanup.i

if.else8.i.sw.bb_crit_edge:                       ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

cleanup.i:                                        ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp15.not.i = icmp ugt i32 %8, %10
  br i1 %cmp15.not.i, label %cleanup.i.sw.bb4_crit_edge, label %cleanup.i.sw.default_crit_edge

cleanup.i.sw.default_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

cleanup.i.sw.bb4_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.else21.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %.not.i = icmp eq i64 %4, %6
  br i1 %.not.i, label %if.else21.i.sw.default_crit_edge, label %bpf_cgroup_storage_key_cmp.exit

if.else21.i.sw.default_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

bpf_cgroup_storage_key_cmp.exit:                  ; preds = %if.else21.i
  br i1 %cmp.i, label %bpf_cgroup_storage_key_cmp.exit.sw.bb_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.sw.bb4_crit_edge

bpf_cgroup_storage_key_cmp.exit.sw.bb4_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

bpf_cgroup_storage_key_cmp.exit.sw.bb_crit_edge:  ; preds = %bpf_cgroup_storage_key_cmp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %bpf_cgroup_storage_key_cmp.exit.sw.bb_crit_edge, %if.else8.i.sw.bb_crit_edge, %if.then.i.sw.bb_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.036, i32 0, i32 2
  br label %cleanup

sw.bb4:                                           ; preds = %bpf_cgroup_storage_key_cmp.exit.sw.bb4_crit_edge, %cleanup.i.sw.bb4_crit_edge, %if.else.i.sw.bb4_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.036, i32 0, i32 1
  br label %cleanup

sw.default:                                       ; preds = %if.else21.i.sw.default_crit_edge, %cleanup.i.sw.default_crit_edge
  %add.ptr.le = getelementptr i8, ptr %node.036, i32 -40
  br i1 %locked, label %sw.default.cleanup13_crit_edge, label %sw.default.cleanup13.sink.split_crit_edge

sw.default.cleanup13.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13.sink.split

sw.default.cleanup13_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

cleanup:                                          ; preds = %sw.bb4, %sw.bb
  %node.1.in = phi ptr [ %rb_right, %sw.bb4 ], [ %rb_left, %sw.bb ]
  %11 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool2.not = icmp eq ptr %node.0, null
  br i1 %tobool2.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  br i1 %locked, label %while.end.cleanup13_crit_edge, label %while.end.cleanup13.sink.split_crit_edge

while.end.cleanup13.sink.split_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13.sink.split

while.end.cleanup13_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

cleanup13.sink.split:                             ; preds = %while.end.cleanup13.sink.split_crit_edge, %sw.default.cleanup13.sink.split_crit_edge
  %retval.2.ph = phi ptr [ %add.ptr.le, %sw.default.cleanup13.sink.split_crit_edge ], [ null, %while.end.cleanup13.sink.split_crit_edge ]
  %lock7 = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock7) #10
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup13.sink.split, %while.end.cleanup13_crit_edge, %sw.default.cleanup13_crit_edge
  %retval.2 = phi ptr [ null, %while.end.cleanup13_crit_edge ], [ %add.ptr.le, %sw.default.cleanup13_crit_edge ], [ %retval.2.ph, %cleanup13.sink.split ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_cgroup_storage_copy(ptr noundef %_map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge, label %while.body.lr.ph.i

rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

while.body.lr.ph.i:                               ; preds = %rcu_read_lock.exit
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 4
  %5 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 16
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %9 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.i.i = icmp ult i64 %8, %10
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp6.i.i = icmp ugt i64 %8, %10
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %11 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %13 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.i.i = icmp ult i32 %12, %14
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp15.not.i.i = icmp ugt i32 %12, %14
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %.not.i.i = icmp eq i64 %8, %10
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %15 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

cgroup_storage_lookup.exit.thread:                ; preds = %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.then

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %cgroup_storage_lookup.exit.if.then_crit_edge, label %if.end

cgroup_storage_lookup.exit.if.then_crit_edge:     ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cgroup_storage_lookup.exit.if.then_crit_edge, %cgroup_storage_lookup.exit.thread
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i17, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.then
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup

if.end:                                           ; preds = %cgroup_storage_lookup.exit
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 5
  %16 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_size, align 4
  %sub = add i32 %17, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %call243 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call243, i32 %18)
  %cmp44 = icmp ult i32 %call243, %18
  br i1 %cmp44, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %div3.i = lshr exact i32 %add, 2
  br label %for.body

for.body:                                         ; preds = %bpf_long_memcpy.exit.for.body_crit_edge, %for.body.lr.ph
  %call246 = phi i32 [ %call243, %for.body.lr.ph ], [ %call2, %bpf_long_memcpy.exit.for.body_crit_edge ]
  %off.045 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %bpf_long_memcpy.exit.for.body_crit_edge ]
  br i1 %tobool.not4.i, label %for.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

for.body.bpf_long_memcpy.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %for.body
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call246
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.le.i, align 8
  %23 = ptrtoint ptr %22 to i32
  %add4 = add i32 %20, %23
  %24 = inttoptr i32 %add4 to ptr
  %add.ptr = getelementptr i8, ptr %value, i32 %off.045
  br label %while.body.i27

while.body.i27:                                   ; preds = %while.body.i27.while.body.i27_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i27.while.body.i27_crit_edge ], [ %add.ptr, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i27.while.body.i27_crit_edge ], [ %24, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i27.while.body.i27_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %25 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %27 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ldst.07.i, align 4
  %tobool.not.i26 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i26, label %while.body.i27.bpf_long_memcpy.exit_crit_edge, label %while.body.i27.while.body.i27_crit_edge

while.body.i27.while.body.i27_crit_edge:          ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i27

while.body.i27.bpf_long_memcpy.exit_crit_edge:    ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i27.bpf_long_memcpy.exit_crit_edge, %for.body.bpf_long_memcpy.exit_crit_edge
  %add5 = add i32 %off.045, %add
  %call2 = tail call i32 @cpumask_next(i32 noundef %call246, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %28
  br i1 %cmp, label %bpf_long_memcpy.exit.for.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

bpf_long_memcpy.exit.for.body_crit_edge:          ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit39_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %for.end.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit39, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit39 ], [ -2, %rcu_read_unlock.exit ]
  %29 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i36 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %32, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_percpu_cgroup_storage_update(ptr noundef %_map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %map_flags, ptr @__sancov_gen_cov_switch_values)
  switch i64 %map_flags, label %entry.cleanup_crit_edge [
    i64 0, label %entry.if.end_crit_edge
    i64 2, label %entry.if.end_crit_edge58
  ]

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge58
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge, label %while.body.lr.ph.i

rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

while.body.lr.ph.i:                               ; preds = %rcu_read_lock.exit
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 4
  %5 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 16
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %9 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.i.i = icmp ult i64 %8, %10
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp6.i.i = icmp ugt i64 %8, %10
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %11 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %13 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.i.i = icmp ult i32 %12, %14
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp15.not.i.i = icmp ugt i32 %12, %14
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %.not.i.i = icmp eq i64 %8, %10
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %15 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

cgroup_storage_lookup.exit.thread:                ; preds = %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.then3

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %cgroup_storage_lookup.exit.if.then3_crit_edge, label %if.end4

cgroup_storage_lookup.exit.if.then3_crit_edge:    ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %cgroup_storage_lookup.exit.if.then3_crit_edge, %cgroup_storage_lookup.exit.thread
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i22, label %if.then3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.then3.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.then3
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.then3.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup.sink.split

if.end4:                                          ; preds = %cgroup_storage_lookup.exit
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 5
  %16 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_size, align 4
  %sub = add i32 %17, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %call548 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call548, i32 %18)
  %cmp649 = icmp ult i32 %call548, %18
  br i1 %cmp649, label %do.body.lr.ph, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.lr.ph:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not4.i = icmp eq i32 %add, 0
  %div3.i = lshr exact i32 %add, 2
  br label %do.body

do.body:                                          ; preds = %bpf_long_memcpy.exit.do.body_crit_edge, %do.body.lr.ph
  %call551 = phi i32 [ %call548, %do.body.lr.ph ], [ %call5, %bpf_long_memcpy.exit.do.body_crit_edge ]
  %off.050 = phi i32 [ 0, %do.body.lr.ph ], [ %add9, %bpf_long_memcpy.exit.do.body_crit_edge ]
  br i1 %tobool.not4.i, label %do.body.bpf_long_memcpy.exit_crit_edge, label %while.body.preheader.i

do.body.bpf_long_memcpy.exit_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_long_memcpy.exit

while.body.preheader.i:                           ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %value, i32 %off.050
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call551
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.le.i, align 8
  %23 = ptrtoint ptr %22 to i32
  %add8 = add i32 %20, %23
  %24 = inttoptr i32 %add8 to ptr
  br label %while.body.i32

while.body.i32:                                   ; preds = %while.body.i32.while.body.i32_crit_edge, %while.body.preheader.i
  %ldst.07.i = phi ptr [ %incdec.ptr1.i, %while.body.i32.while.body.i32_crit_edge ], [ %24, %while.body.preheader.i ]
  %lsrc.06.i = phi ptr [ %incdec.ptr.i, %while.body.i32.while.body.i32_crit_edge ], [ %add.ptr, %while.body.preheader.i ]
  %size.addr.05.i = phi i32 [ %dec.i, %while.body.i32.while.body.i32_crit_edge ], [ %div3.i, %while.body.preheader.i ]
  %dec.i = add nsw i32 %size.addr.05.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %lsrc.06.i, i32 1
  %25 = ptrtoint ptr %lsrc.06.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lsrc.06.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ldst.07.i, i32 1
  %27 = ptrtoint ptr %ldst.07.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ldst.07.i, align 4
  %tobool.not.i31 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i31, label %while.body.i32.bpf_long_memcpy.exit_crit_edge, label %while.body.i32.while.body.i32_crit_edge

while.body.i32.while.body.i32_crit_edge:          ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i32

while.body.i32.bpf_long_memcpy.exit_crit_edge:    ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_long_memcpy.exit

bpf_long_memcpy.exit:                             ; preds = %while.body.i32.bpf_long_memcpy.exit_crit_edge, %do.body.bpf_long_memcpy.exit_crit_edge
  %add9 = add i32 %off.050, %add
  %call5 = tail call i32 @cpumask_next(i32 noundef %call551, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call5, %28
  br i1 %cmp6, label %bpf_long_memcpy.exit.do.body_crit_edge, label %bpf_long_memcpy.exit.for.end_crit_edge

bpf_long_memcpy.exit.for.end_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

bpf_long_memcpy.exit.do.body_crit_edge:           ; preds = %bpf_long_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %bpf_long_memcpy.exit.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i34, label %for.end.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true.i37

for.end.rcu_read_unlock.exit44_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

land.lhs.true.i37:                                ; preds = %for.end
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit44

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit44

rcu_read_unlock.exit44:                           ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, %for.end.rcu_read_unlock.exit44_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit44, %rcu_read_unlock.exit
  %retval.0.ph = phi i32 [ -2, %rcu_read_unlock.exit ], [ 0, %rcu_read_unlock.exit44 ]
  %29 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i29 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i43 = add i32 %32, -1
  store volatile i32 %sub.i.i.i43, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroup_storage_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp = icmp eq i32 %1, 21
  %max_value_size.0 = select i1 %cmp, i32 32768, i32 65279
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end7_crit_edge
    i32 8, label %entry.if.end7_crit_edge54
  ]

entry.if.end7_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %entry.if.end7_crit_edge54
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %max_value_size.0)
  %cmp13 = icmp ugt i32 %6, %max_value_size.0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %7 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_flags, align 8
  %and = and i32 %8, -413
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.i = and i32 %8, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 384
  %or.cond = and i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 5246400, i32 noundef 512) #14
  %tobool27.not = icmp eq ptr %call.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call.i.i, ptr noundef %attr) #10
  %lock = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %call.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cgroup_storage_map_alloc.__key, i16 noundef signext 3) #10
  %root = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %root, align 4
  %list = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %call.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end30 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end16.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end21.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_storage_map_free(ptr noundef %_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not83 = icmp eq ptr %1, %list
  br i1 %cmp.not83, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %bpf_cgroup_storage_free.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in84 = phi ptr [ %.pn, %bpf_cgroup_storage_free.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %storage.0 = getelementptr i8, ptr %.pn.in84, i32 -24
  %2 = ptrtoint ptr %.pn.in84 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in84, align 8
  tail call void @bpf_cgroup_storage_unlink(ptr noundef %storage.0)
  %tobool.not.i = icmp eq ptr %storage.0, null
  br i1 %tobool.not.i, label %for.body.bpf_cgroup_storage_free.exit_crit_edge, label %if.end.i

for.body.bpf_cgroup_storage_free.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_cgroup_storage_free.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %map1.i = getelementptr i8, ptr %.pn.in84, i32 -20
  %3 = ptrtoint ptr %map1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map1.i, align 4
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 21
  %rcu4.i = getelementptr i8, ptr %.pn.in84, i32 28
  %free_percpu_cgroup_storage_rcu.free_shared_cgroup_storage_rcu.i = select i1 %cmp.i.not.i, ptr @free_percpu_cgroup_storage_rcu, ptr @free_shared_cgroup_storage_rcu
  tail call void @call_rcu(ptr noundef %rcu4.i, ptr noundef nonnull %free_percpu_cgroup_storage_rcu.free_shared_cgroup_storage_rcu.i) #10
  br label %bpf_cgroup_storage_free.exit

bpf_cgroup_storage_free.exit:                     ; preds = %if.end.i, %for.body.bpf_cgroup_storage_free.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %bpf_cgroup_storage_free.exit.for.end_crit_edge, label %bpf_cgroup_storage_free.exit.for.body_crit_edge

bpf_cgroup_storage_free.exit.for.body_crit_edge:  ; preds = %bpf_cgroup_storage_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

bpf_cgroup_storage_free.exit.for.end_crit_edge:   ; preds = %bpf_cgroup_storage_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %bpf_cgroup_storage_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #10
  %root = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 2
  %7 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %root, align 4
  %cmp12.not = icmp eq ptr %8, null
  br i1 %cmp12.not, label %for.end.if.end_crit_edge, label %do.end24, !prof !40

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 345, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end24, %for.end.if.end_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %10, %list
  br i1 %cmp.i.not, label %if.end.if.end64_crit_edge, label %do.end58, !prof !40

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 346, i32 noundef 9, ptr noundef null) #10
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.end.if.end64_crit_edge
  tail call void @kfree(ptr noundef %_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_storage_get_next_key(ptr noundef %_map, ptr noundef readonly %key, ptr nocapture noundef writeonly %_next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %list = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 3
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.enoent_crit_edge, label %if.end

entry.enoent_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %enoent

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 2
  %2 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %if.then3.enoent_crit_edge, label %while.body.lr.ph.i

if.then3.enoent_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %enoent

while.body.lr.ph.i:                               ; preds = %if.then3
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 4
  %3 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp.i.i.i = icmp eq i32 %4, 16
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %7 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i.i = icmp ult i64 %6, %8
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp6.i.i = icmp ugt i64 %6, %8
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %9 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %11 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.i.i = icmp ult i32 %10, %12
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15.not.i.i = icmp ugt i32 %10, %12
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %.not.i.i = icmp eq i64 %6, %8
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %13 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.enoent_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.enoent_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enoent

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  %tobool5.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool5.not, label %cgroup_storage_lookup.exit.enoent_crit_edge, label %if.end7

cgroup_storage_lookup.exit.enoent_crit_edge:      ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %enoent

if.end7:                                          ; preds = %cgroup_storage_lookup.exit
  %list_map = getelementptr i8, ptr %node.036.i, i32 -16
  %14 = ptrtoint ptr %list_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list_map, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 -24
  %tobool8.not = icmp eq ptr %add.ptr, null
  br i1 %tobool8.not, label %if.end7.enoent_crit_edge, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end7.enoent_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %enoent

if.end16:                                         ; preds = %if.end7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %16 = phi ptr [ %15, %if.end7.if.end16_crit_edge ], [ %1, %if.end.if.end16_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 4
  %17 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_size.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp.i41 = icmp eq i32 %18, 16
  %key22 = getelementptr i8, ptr %16, i32 -16
  br i1 %cmp.i41, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %_next_key, ptr %key22, i32 16)
  br label %cleanup

if.else23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %key22 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %key22, align 8
  %22 = ptrtoint ptr %_next_key to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %_next_key, align 8
  br label %cleanup

enoent:                                           ; preds = %if.end7.enoent_crit_edge, %cgroup_storage_lookup.exit.enoent_crit_edge, %cleanup.i.enoent_crit_edge, %if.then3.enoent_crit_edge, %entry.enoent_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %enoent, %if.else23, %if.then20
  %retval.0 = phi i32 [ -2, %enoent ], [ 0, %if.else23 ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroup_storage_lookup_elem(ptr noundef %_map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %_map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %0 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %entry.cgroup_storage_lookup.exit.thread_crit_edge, label %while.body.lr.ph.i

entry.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

while.body.lr.ph.i:                               ; preds = %entry
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 4
  %1 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp.i.i.i = icmp eq i32 %2, 16
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %5 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp.i.i = icmp ult i64 %4, %6
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp6.i.i = icmp ugt i64 %4, %6
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %7 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %9 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp10.i.i = icmp ult i32 %8, %10
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp15.not.i.i = icmp ugt i32 %8, %10
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %.not.i.i = icmp eq i64 %4, %6
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %11 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

cgroup_storage_lookup.exit.thread:                ; preds = %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, %entry.cgroup_storage_lookup.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %cgroup_storage_lookup.exit.cleanup_crit_edge, label %do.end

cgroup_storage_lookup.exit.cleanup_crit_edge:     ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %add.ptr.le.i, align 8
  %data = getelementptr inbounds %struct.bpf_storage_buffer, ptr %13, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cgroup_storage_lookup.exit.cleanup_crit_edge, %cgroup_storage_lookup.exit.thread
  %retval.0 = phi ptr [ %data, %do.end ], [ null, %cgroup_storage_lookup.exit.cleanup_crit_edge ], [ null, %cgroup_storage_lookup.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_storage_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %flags, -7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i64 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %land.rhs

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.rhs:                                         ; preds = %if.end
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %0 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end14_crit_edge, !prof !41

land.rhs.if.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %land.rhs.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %2 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %if.end14.cgroup_storage_lookup.exit.thread_crit_edge, label %while.body.lr.ph.i

if.end14.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

while.body.lr.ph.i:                               ; preds = %if.end14
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %3 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp.i.i.i = icmp eq i32 %4, 16
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %7 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.i.i = icmp ult i64 %6, %8
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp6.i.i = icmp ugt i64 %6, %8
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %9 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %11 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.i.i = icmp ult i32 %10, %12
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15.not.i.i = icmp ugt i32 %10, %12
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %.not.i.i = icmp eq i64 %6, %8
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %13 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

cgroup_storage_lookup.exit.thread:                ; preds = %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, %if.end14.cgroup_storage_lookup.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool16.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool16.not, label %cgroup_storage_lookup.exit.cleanup_crit_edge, label %if.end18

cgroup_storage_lookup.exit.cleanup_crit_edge:     ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %cgroup_storage_lookup.exit
  br i1 %tobool4.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.le.i, align 8
  %data = getelementptr inbounds %struct.bpf_storage_buffer, ptr %15, i32 0, i32 1
  tail call void @copy_map_value_locked(ptr noundef %map, ptr noundef %data, ptr noundef %value, i1 noundef zeroext false) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %16 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_size, align 4
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %17, i32 8) #10
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 12
  %18 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numa_node, align 8
  %call24 = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef %spec.select.i, i32 noundef 11040, i32 noundef %19) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %data28 = getelementptr inbounds %struct.bpf_storage_buffer, ptr %call24, i32 0, i32 1
  %20 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value_size, align 4
  %22 = call ptr @memcpy(ptr %data28, ptr %value, i32 %21)
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %23 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i76 = icmp sgt i32 %24, -1
  br i1 %cmp.i.i76, label %if.then.i, label %if.end27.if.end.i_crit_edge, !prof !41

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %data28, i32 %24
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end27.if.end.i_crit_edge
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %26 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i16.i = icmp sgt i32 %27, -1
  br i1 %cmp.i16.i, label %if.then9.i, label %if.end.i.check_and_init_map_value.exit_crit_edge, !prof !41

if.end.i.check_and_init_map_value.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_and_init_map_value.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr10.i = getelementptr i8, ptr %data28, i32 %27
  %28 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 16)
  br label %check_and_init_map_value.exit

check_and_init_map_value.exit:                    ; preds = %if.then9.i, %if.end.i.check_and_init_map_value.exit_crit_edge
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.le.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  %29 = ptrtoint ptr %call24 to i32
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.le.i, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %29, ptr nonnull %add.ptr.le.i) #10, !srcloc !43
  %asmresult.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool48.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool48.not, label %check_and_init_map_value.exit.cleanup_crit_edge, label %do.end52

check_and_init_map_value.exit.cleanup_crit_edge:  ; preds = %check_and_init_map_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end52:                                         ; preds = %check_and_init_map_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = inttoptr i32 %asmresult.i to ptr
  tail call void @kvfree_call_rcu(ptr noundef nonnull %31, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %check_and_init_map_value.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then21, %cgroup_storage_lookup.exit.cleanup_crit_edge, %cgroup_storage_lookup.exit.thread, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -2, %cgroup_storage_lookup.exit.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %do.end52 ], [ 0, %check_and_init_map_value.exit.cleanup_crit_edge ], [ -2, %cgroup_storage_lookup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_storage_delete_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_storage_seq_show_elem(ptr noundef %map, ptr noundef %key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.034.i = load ptr, ptr %root1.i, align 4
  %tobool2.not35.i = icmp eq ptr %node.034.i, null
  br i1 %tobool2.not35.i, label %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge, label %while.body.lr.ph.i

rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

while.body.lr.ph.i:                               ; preds = %rcu_read_lock.exit
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %5 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 16
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key, align 8
  %attach_type.i.i = getelementptr inbounds %struct.bpf_cgroup_storage_key, ptr %key, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.036.i = phi ptr [ %node.034.i, %while.body.lr.ph.i ], [ %node.0.i, %cleanup.i.while.body.i_crit_edge ]
  %key3.i = getelementptr i8, ptr %node.036.i, i32 -32
  %9 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.i.i = icmp ult i64 %8, %10
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp6.i.i = icmp ugt i64 %8, %10
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb4.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb4.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %11 = ptrtoint ptr %attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attach_type.i.i, align 8
  %attach_type9.i.i = getelementptr i8, ptr %node.036.i, i32 -24
  %13 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.i.i = icmp ult i32 %12, %14
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp15.not.i.i = icmp ugt i32 %12, %14
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb4.i_crit_edge, label %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge

cleanup.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

cleanup.i.i.sw.bb4.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %.not.i.i = icmp eq i64 %8, %10
  br i1 %.not.i.i, label %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.cgroup_storage_lookup.exit_crit_edge: ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 2
  br label %cleanup.i

sw.bb4.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb4.i_crit_edge, %cleanup.i.i.sw.bb4.i_crit_edge, %if.else.i.i.sw.bb4.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.036.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb4.i, %sw.bb.i
  %node.1.in.i = phi ptr [ %rb_right.i, %sw.bb4.i ], [ %rb_left.i, %sw.bb.i ]
  %15 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_lookup.exit.thread

cgroup_storage_lookup.exit.thread:                ; preds = %cleanup.i.cgroup_storage_lookup.exit.thread_crit_edge, %rcu_read_lock.exit.cgroup_storage_lookup.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.then

cgroup_storage_lookup.exit:                       ; preds = %if.else21.i.i.cgroup_storage_lookup.exit_crit_edge, %cleanup.i.i.cgroup_storage_lookup.exit_crit_edge
  %add.ptr.le.i = getelementptr i8, ptr %node.036.i, i32 -40
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %tobool.not = icmp eq ptr %add.ptr.le.i, null
  br i1 %tobool.not, label %cgroup_storage_lookup.exit.if.then_crit_edge, label %if.end

cgroup_storage_lookup.exit.if.then_crit_edge:     ; preds = %cgroup_storage_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cgroup_storage_lookup.exit.if.then_crit_edge, %cgroup_storage_lookup.exit.thread
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.then
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup

if.end:                                           ; preds = %cgroup_storage_lookup.exit
  %btf = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 16
  %16 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btf, align 8
  %btf_key_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 13
  %18 = ptrtoint ptr %btf_key_type_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %btf_key_type_id, align 4
  tail call void @btf_type_seq_show(ptr noundef %17, i32 noundef %19, ptr noundef %key, ptr noundef %m) #10
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %20 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %21)
  %cmp.i.not = icmp eq i32 %21, 21
  br i1 %cmp.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #10
  %22 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %btf, align 8
  %btf_value_type_id = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  %24 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %btf_value_type_id, align 64
  %26 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %add.ptr.le.i, align 8
  %data = getelementptr inbounds %struct.bpf_storage_buffer, ptr %27, i32 0, i32 1
  tail call void @btf_type_seq_show(ptr noundef %23, i32 noundef %25, ptr noundef %data, ptr noundef %m) #10
  br label %if.end15

if.else:                                          ; preds = %if.end
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #10
  %call563 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call563, i32 %28)
  %cmp664 = icmp ult i32 %call563, %28
  br i1 %cmp664, label %for.body.lr.ph, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body.lr.ph:                                   ; preds = %if.else
  %btf_value_type_id8 = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call565 = phi i32 [ %call563, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %call565) #10
  %29 = ptrtoint ptr %btf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btf, align 8
  %31 = ptrtoint ptr %btf_value_type_id8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %btf_value_type_id8, align 64
  %33 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.le.i, align 8
  %35 = ptrtoint ptr %34 to i32
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call565
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %37, %35
  %38 = inttoptr i32 %add to ptr
  tail call void @btf_type_seq_show(ptr noundef %30, i32 noundef %32, ptr noundef %38, ptr noundef %m) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #10
  %call5 = tail call i32 @cpumask_next(i32 noundef %call565, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %cmp6 = icmp ult i32 %call5, %39
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then3
  %.str.10.sink = phi ptr [ @.str.7, %if.then3 ], [ @.str.10, %if.else.if.end15_crit_edge ], [ @.str.10, %for.body.if.end15_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.10.sink) #10
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i49, label %if.end15.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true.i52

if.end15.rcu_read_unlock.exit59_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59

land.lhs.true.i52:                                ; preds = %if.end15
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit59

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit59

rcu_read_unlock.exit59:                           ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit59_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit59_crit_edge, %if.end15.rcu_read_unlock.exit59_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit59, %rcu_read_unlock.exit
  %40 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i56 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i58 = add i32 %43, -1
  store volatile i32 %sub.i.i.i58, ptr %preempt_count.i.i.i.i57, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_storage_check_btf(ptr nocapture noundef readonly %map, ptr noundef %btf, ptr noundef %key_type, ptr nocapture noundef readnone %value_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key_size.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i = icmp eq i32 %1, 16
  %info = getelementptr inbounds %struct.btf_type, ptr %key_type, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = and i32 %3, 520159231
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108866, i32 %4)
  %5 = icmp eq i32 %4, 67108866
  br i1 %5, label %if.end, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %add.ptr = getelementptr %struct.btf_type, ptr %key_type, i32 1
  %call5 = tail call zeroext i1 @btf_member_is_reg_int(ptr noundef %btf, ptr noundef %key_type, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 8) #10
  br i1 %call5, label %if.end7, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end7:                                          ; preds = %if.end
  %incdec.ptr = getelementptr %struct.btf_type, ptr %key_type, i32 2
  %call8 = tail call zeroext i1 @btf_member_is_reg_int(ptr noundef %btf, ptr noundef %key_type, ptr noundef %incdec.ptr, i32 noundef 8, i32 noundef 4) #10
  br i1 %call8, label %if.end7.return_crit_edge, label %if.end7.cleanup.thread_crit_edge

if.end7.cleanup.thread_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

cleanup.thread:                                   ; preds = %if.end7.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  br label %return

if.else:                                          ; preds = %entry
  %6 = and i32 %3, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp16.not = icmp eq i32 %6, 16777216
  br i1 %cmp16.not, label %if.end18, label %if.else.cleanup27.thread_crit_edge

if.else.cleanup27.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27.thread

if.end18:                                         ; preds = %if.else
  %add.ptr19 = getelementptr %struct.btf_type, ptr %key_type, i32 1
  %7 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr19, align 4
  %9 = and i32 %8, 16711935
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %if.end18.return_crit_edge, label %if.end18.cleanup27.thread_crit_edge

if.end18.cleanup27.thread_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27.thread

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

cleanup27.thread:                                 ; preds = %if.end18.cleanup27.thread_crit_edge, %if.else.cleanup27.thread_crit_edge
  br label %return

return:                                           ; preds = %cleanup27.thread, %if.end18.return_crit_edge, %cleanup.thread, %if.end7.return_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup.thread ], [ -22, %cleanup27.thread ], [ 0, %if.end18.return_crit_edge ], [ 0, %if.end7.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_cgroup_storage_assign(ptr nocapture noundef %aux, ptr noundef %_map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %_map, i32 0, i32 3
  %0 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %1)
  %cmp.i = icmp eq i32 %1, 21
  %..i = zext i1 %cmp.i to i32
  %arrayidx = getelementptr %struct.bpf_prog_aux, ptr %aux, i32 0, i32 45, i32 %..i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %cmp.not = icmp eq ptr %3, %_map
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %_map, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_cgroup_storage_alloc(ptr nocapture noundef readonly %prog, i32 noundef %stype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %arrayidx = getelementptr %struct.bpf_prog_aux, ptr %1, i32 0, i32 45, i32 %stype
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 21
  %value_size3.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %value_size3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_size3.i, align 4
  br i1 %cmp.i.not.i, label %if.end.i.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %7, 8
  br label %bpf_cgroup_storage_calculate_size.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %8) #10
  br label %bpf_cgroup_storage_calculate_size.exit

bpf_cgroup_storage_calculate_size.exit:           ; preds = %if.end.i.i.i, %if.then.i
  %size.0.i = phi i32 [ %add.i, %if.then.i ], [ %7, %if.end.i.i.i ]
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numa_node, align 8
  %call1 = tail call ptr @bpf_map_kmalloc_node(ptr noundef nonnull %3, i32 noundef 64, i32 noundef 1052096, i32 noundef %10) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %bpf_cgroup_storage_calculate_size.exit.enomem_crit_edge, label %if.end4

bpf_cgroup_storage_calculate_size.exit.enomem_crit_edge: ; preds = %bpf_cgroup_storage_calculate_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %enomem

if.end4:                                          ; preds = %bpf_cgroup_storage_calculate_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stype)
  %cmp = icmp eq i32 %stype, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numa_node, align 8
  %call7 = tail call ptr @bpf_map_kmalloc_node(ptr noundef nonnull %3, i32 noundef %size.0.i, i32 noundef 1052096, i32 noundef %12) #10
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %call1, align 8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.enomem_crit_edge, label %if.end10

if.then5.enomem_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %enomem

if.end10:                                         ; preds = %if.then5
  %data = getelementptr inbounds %struct.bpf_storage_buffer, ptr %call7, i32 0, i32 1
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.i = icmp sgt i32 %15, -1
  br i1 %cmp.i.i, label %if.then.i40, label %if.end10.if.end.i_crit_edge, !prof !41

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i40:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %data, i32 %15
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %add.ptr.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i40, %if.end10.if.end.i_crit_edge
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i16.i = icmp sgt i32 %18, -1
  br i1 %cmp.i16.i, label %if.then9.i, label %if.end.i.if.end15_crit_edge, !prof !41

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr10.i = getelementptr i8, ptr %data, i32 %18
  %19 = call ptr @memset(ptr %add.ptr10.i, i32 0, i32 16)
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %call11 = tail call ptr @bpf_map_alloc_percpu(ptr noundef nonnull %3, i32 noundef %size.0.i, i32 noundef 8, i32 noundef 1052096) #10
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call11, ptr %call1, align 8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else.enomem_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else.enomem_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %enomem

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then9.i, %if.end.i.if.end15_crit_edge
  %map16 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %map16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %map16, align 4
  br label %cleanup

enomem:                                           ; preds = %if.else.enomem_crit_edge, %if.then5.enomem_crit_edge, %bpf_cgroup_storage_calculate_size.exit.enomem_crit_edge
  tail call void @kfree(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %enomem, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end15 ], [ inttoptr (i32 -12 to ptr), %enomem ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_alloc_percpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_cgroup_storage_free(ptr noundef %storage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %storage, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %map1 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 1
  %0 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map1, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 21
  %rcu4 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 6
  %free_percpu_cgroup_storage_rcu.free_shared_cgroup_storage_rcu = select i1 %cmp.i.not, ptr @free_percpu_cgroup_storage_rcu, ptr @free_shared_cgroup_storage_rcu
  tail call void @call_rcu(ptr noundef %rcu4, ptr noundef nonnull %free_percpu_cgroup_storage_rcu.free_shared_cgroup_storage_rcu) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_shared_cgroup_storage_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_percpu_cgroup_storage_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @free_percpu(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_cgroup_storage_link(ptr noundef %storage, ptr noundef %cgroup, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %storage, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 2
  %attach_type = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %attach_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %attach_type, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 11
  %1 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kn.i, align 8
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %id.i, align 8
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %key, align 8
  %map2 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 1
  %6 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map2, align 4
  %lock = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %root1.i = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root1.i, align 4
  %tobool.not27.i = icmp eq ptr %9, null
  br i1 %tobool.not27.i, label %if.end.cgroup_storage_insert.exit_crit_edge, label %while.body.lr.ph.i

if.end.cgroup_storage_insert.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cgroup_storage_insert.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %key_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %key_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_size.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 16
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %key, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = phi ptr [ %9, %while.body.lr.ph.i ], [ %22, %cleanup.i.while.body.i_crit_edge ]
  %key2.i = getelementptr i8, ptr %14, i32 -32
  %15 = ptrtoint ptr %key2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %key2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %16)
  %cmp.i.i = icmp ult i64 %13, %16
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %while.body.i
  br i1 %cmp.i.i, label %if.then.i.i.sw.bb.i_crit_edge, label %if.else.i.i

if.then.i.i.sw.bb.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %16)
  %cmp6.i.i = icmp ugt i64 %13, %16
  br i1 %cmp6.i.i, label %if.else.i.i.sw.bb3.i_crit_edge, label %if.else8.i.i

if.else.i.i.sw.bb3.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %17 = ptrtoint ptr %attach_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attach_type, align 8
  %attach_type9.i.i = getelementptr i8, ptr %14, i32 -24
  %19 = ptrtoint ptr %attach_type9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attach_type9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp10.i.i = icmp ult i32 %18, %20
  br i1 %cmp10.i.i, label %if.else8.i.i.sw.bb.i_crit_edge, label %cleanup.i.i

if.else8.i.i.sw.bb.i_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cleanup.i.i:                                      ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp15.not.i.i = icmp ugt i32 %18, %20
  br i1 %cmp15.not.i.i, label %cleanup.i.i.sw.bb3.i_crit_edge, label %cleanup.i.i.do.end_crit_edge

cleanup.i.i.do.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cleanup.i.i.sw.bb3.i_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

if.else21.i.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %16)
  %.not.i.i = icmp eq i64 %13, %16
  br i1 %.not.i.i, label %if.else21.i.i.do.end_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i

if.else21.i.i.do.end_crit_edge:                   ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

bpf_cgroup_storage_key_cmp.exit.i:                ; preds = %if.else21.i.i
  br i1 %cmp.i.i, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, label %bpf_cgroup_storage_key_cmp.exit.i.sw.bb3.i_crit_edge

bpf_cgroup_storage_key_cmp.exit.i.sw.bb3.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge: ; preds = %bpf_cgroup_storage_key_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb.i_crit_edge, %if.else8.i.i.sw.bb.i_crit_edge, %if.then.i.i.sw.bb.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  br label %cleanup.i

sw.bb3.i:                                         ; preds = %bpf_cgroup_storage_key_cmp.exit.i.sw.bb3.i_crit_edge, %cleanup.i.i.sw.bb3.i_crit_edge, %if.else.i.i.sw.bb3.i_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb3.i, %sw.bb.i
  %new.2.i = phi ptr [ %rb_right.i, %sw.bb3.i ], [ %rb_left.i, %sw.bb.i ]
  %21 = ptrtoint ptr %new.2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %new.2.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %14 to i32
  br label %cgroup_storage_insert.exit

cgroup_storage_insert.exit:                       ; preds = %while.cond.while.end_crit_edge.i, %if.end.cgroup_storage_insert.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.cgroup_storage_insert.exit_crit_edge ]
  %new.0.lcssa.i = phi ptr [ %new.2.i, %while.cond.while.end_crit_edge.i ], [ %root1.i, %if.end.cgroup_storage_insert.exit_crit_edge ]
  %node.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 5
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %parent.0.lcssa.i, ptr %node.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_left.i.i, align 4
  %26 = ptrtoint ptr %new.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node.i, ptr %new.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %root1.i) #10
  br label %if.end19

do.end:                                           ; preds = %if.else21.i.i.do.end_crit_edge, %cleanup.i.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 582, i32 noundef 9, ptr noundef null) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %cgroup_storage_insert.exit
  %list_map = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 3
  %list = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %7, i32 0, i32 3
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_map, ptr noundef %list, ptr noundef %28) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add.exit_crit_edge

if.end19.list_add.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list_map, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %list_map to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %list_map, align 4
  %prev3.i.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list_map, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end19.list_add.exit_crit_edge
  %list_cg = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 4
  %storages = getelementptr inbounds %struct.cgroup, ptr %cgroup, i32 0, i32 34, i32 3
  %33 = ptrtoint ptr %storages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %storages, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_cg, ptr noundef %storages, ptr noundef %34) #10
  br i1 %call.i.i38, label %if.end.i.i41, label %list_add.exit.list_add.exit42_crit_edge

list_add.exit.list_add.exit42_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit42

if.end.i.i41:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i39 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list_cg, ptr %prev1.i.i39, align 4
  %36 = ptrtoint ptr %list_cg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %list_cg, align 4
  %prev3.i.i40 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev3.i.i40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storages, ptr %prev3.i.i40, align 4
  %38 = ptrtoint ptr %storages to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list_cg, ptr %storages, align 4
  br label %list_add.exit42

list_add.exit42:                                  ; preds = %if.end.i.i41, %list_add.exit.list_add.exit42_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_cgroup_storage_unlink(ptr noundef %storage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %storage, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %map1 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 1
  %0 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map1, align 4
  %lock = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %root2 = getelementptr inbounds %struct.bpf_cgroup_storage_map, ptr %1, i32 0, i32 2
  %node = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %node, ptr noundef %root2) #10
  %list_map = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_map) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list_map, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list_map, align 4
  %prev.i = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list_cg = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 4
  %call.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_cg) #10
  br i1 %call.i.i11, label %if.end.i.i14, label %list_del.exit.list_del.exit16_crit_edge

list_del.exit.list_del.exit16_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit16

if.end.i.i14:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i12 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i12, align 4
  %12 = ptrtoint ptr %list_cg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list_cg, align 4
  %prev1.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i13, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit16

list_del.exit16:                                  ; preds = %if.end.i.i14, %list_del.exit.list_del.exit16_crit_edge
  %16 = ptrtoint ptr %list_cg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list_cg, align 4
  %prev.i15 = getelementptr inbounds %struct.bpf_cgroup_storage, ptr %storage, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i15, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_map_value_locked(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @btf_type_seq_show(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btf_member_is_reg_int(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/local_storage.c", i32 459, i32 18}
!2 = !{ptr @cgroup_storage_map_ops, !3, !"cgroup_storage_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/local_storage.c", i32 450, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/local_storage.c", i32 582, i32 2}
!6 = !{ptr @cgroup_storage_map_btf_id, !7, !"cgroup_storage_map_btf_id", i1 false, i1 false}
!7 = !{!"../kernel/bpf/local_storage.c", i32 449, i32 12}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cgroup_storage_map_alloc.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../kernel/bpf/local_storage.c", i32 323, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/bpf/local_storage.c", i32 431, i32 15}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/bpf/local_storage.c", i32 434, i32 15}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/bpf/local_storage.c", i32 436, i32 15}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/bpf/local_storage.c", i32 438, i32 18}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/bpf/local_storage.c", i32 444, i32 15}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2149705022}
!39 = !{i64 2149705288}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2157095568}
!43 = !{i64 1220469, i64 1220486, i64 1220510, i64 1220536, i64 1220554}
!44 = !{i64 2157095913}
