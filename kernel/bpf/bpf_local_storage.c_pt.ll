; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_local_storage.c_pt.bc'
source_filename = "../kernel/bpf/bpf_local_storage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_local_storage_map = type { %struct.bpf_map, ptr, i32, i16, i16, [116 x i8] }
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
%struct.bpf_local_storage_elem = type { %struct.hlist_node, %struct.hlist_node, ptr, %struct.callback_head, [100 x i8], %struct.bpf_local_storage_data, [120 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_local_storage_data = type { ptr, [4 x i8], [0 x i8] }
%struct.bpf_local_storage = type { [16 x ptr], %struct.hlist_head, ptr, %struct.callback_head, %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.bpf_local_storage_map_bucket = type { %struct.hlist_head, %struct.raw_spinlock }
%struct.bpf_local_storage_cache = type { %struct.spinlock, [16 x i64] }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.btf_type = type { i32, i32, %union.anon.107 }
%union.anon.107 = type { i32 }

@bpf_selem_unlink_storage_nolock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/bpf/bpf_local_storage.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bpf_selem_unlink_map.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_local_storage_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_local_storage_lookup.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@bpf_local_storage_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&storage->lock\00", [17 x i8] zeroinitializer }, align 32
@bpf_local_storage_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@bpf_local_storage_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&smap->buckets[i].lock\00", [41 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@__bpf_selem_unlink_storage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 115, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 242, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 303, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private constant [34 x i8] c"../kernel/bpf/bpf_local_storage.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 607, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 2089, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @bpf_local_storage_alloc.__key, ptr @.str.4, ptr @bpf_local_storage_map_alloc.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_local_storage_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_local_storage_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_selem_alloc(ptr noundef %smap, ptr noundef %owner, ptr noundef readonly %value, i1 noundef zeroext %charge_mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %charge_mem, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smap, align 128
  %map_local_storage_charge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %map_local_storage_charge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_local_storage_charge.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %mem_charge.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mem_charge.exit:                                  ; preds = %land.lhs.true
  %elem_size = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %4 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_size, align 8
  %conv = zext i16 %5 to i32
  %call.i = tail call i32 %3(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %mem_charge.exit.if.end_crit_edge, label %mem_charge.exit.cleanup_crit_edge

mem_charge.exit.cleanup_crit_edge:                ; preds = %mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mem_charge.exit.if.end_crit_edge:                 ; preds = %mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %mem_charge.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %elem_size2 = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %6 = ptrtoint ptr %elem_size2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %elem_size2, align 8
  %conv3 = zext i16 %7 to i32
  %call4 = tail call ptr @bpf_map_kzalloc(ptr noundef %smap, i32 noundef %conv3, i32 noundef 10784) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end
  %tobool7.not = icmp eq ptr %value, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4, i32 0, i32 6
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 5
  %8 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value_size, align 4
  %10 = call ptr @memcpy(ptr %data, ptr %value, i32 %9)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  br i1 %charge_mem, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %11 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smap, align 128
  %map_local_storage_uncharge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %map_local_storage_uncharge.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_local_storage_uncharge.i, align 4
  %tobool.not.i28 = icmp eq ptr %14, null
  br i1 %tobool.not.i28, label %if.then13.cleanup_crit_edge, label %if.then.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %elem_size2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %elem_size2, align 8
  %conv15 = zext i16 %16 to i32
  tail call void %14(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %if.then6.cleanup_crit_edge, %mem_charge.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %mem_charge.exit.cleanup_crit_edge ], [ %call4, %if.then8 ], [ %call4, %if.then6.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %if.then13.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kzalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_local_storage_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -72
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef %local_storage, ptr noundef %selem, i1 noundef zeroext %uncharge_mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 5
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sdata, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.do.end16_crit_edge

lor.lhs.false5.do.end16_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false8.do.end16_crit_edge

lor.lhs.false8.do.end16_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true13

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b84 = load i1, ptr @bpf_selem_unlink_storage_nolock.__warned, align 1
  br i1 %.b84, label %land.lhs.true13.do.end16_crit_edge, label %if.then

land.lhs.true13.do.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_selem_unlink_storage_nolock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then, %land.lhs.true13.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %lor.lhs.false8.do.end16_crit_edge, %lor.lhs.false5.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %entry.do.end16_crit_edge
  %owner18 = getelementptr inbounds %struct.bpf_local_storage, ptr %local_storage, i32 0, i32 2
  %2 = ptrtoint ptr %owner18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner18, align 4
  br i1 %uncharge_mem, label %if.then20, label %do.end16.if.end21_crit_edge

do.end16.if.end21_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %do.end16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %map_local_storage_uncharge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %map_local_storage_uncharge.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_local_storage_uncharge.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then20.if.end21_crit_edge, label %if.then.i

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %elem_size = getelementptr inbounds %struct.bpf_local_storage_map, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %elem_size, align 8
  %conv = zext i16 %9 to i32
  tail call void %7(ptr noundef %1, ptr noundef %3, i32 noundef %conv) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then20.if.end21_crit_edge, %do.end16.if.end21_crit_edge
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1
  %10 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %snode, align 4
  %tobool.not.i85 = icmp eq ptr %11, null
  br i1 %tobool.not.i85, label %hlist_is_singular_node.exit, label %if.end21.if.end40_crit_edge

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

hlist_is_singular_node.exit:                      ; preds = %if.end21
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %local_storage, i32 0, i32 1
  %pprev.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i, align 4
  %cmp.i = icmp eq ptr %13, %list
  br i1 %cmp.i, label %if.then25, label %hlist_is_singular_node.exit.if.end40_crit_edge

hlist_is_singular_node.exit.if.end40_crit_edge:   ; preds = %hlist_is_singular_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then25:                                        ; preds = %hlist_is_singular_node.exit
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %map_local_storage_uncharge.i86 = getelementptr inbounds %struct.bpf_map_ops, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %map_local_storage_uncharge.i86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map_local_storage_uncharge.i86, align 4
  %tobool.not.i87 = icmp eq ptr %17, null
  br i1 %tobool.not.i87, label %if.then25.mem_uncharge.exit89_crit_edge, label %if.then.i88

if.then25.mem_uncharge.exit89_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_uncharge.exit89

if.then.i88:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %17(ptr noundef %1, ptr noundef %3, i32 noundef 124) #9
  br label %mem_uncharge.exit89

mem_uncharge.exit89:                              ; preds = %if.then.i88, %if.then25.mem_uncharge.exit89_crit_edge
  %18 = ptrtoint ptr %owner18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner18, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %map_owner_storage_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %map_owner_storage_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map_owner_storage_ptr.i, align 4
  %call.i = tail call ptr %22(ptr noundef %3) #9
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %call.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %mem_uncharge.exit89, %hlist_is_singular_node.exit.if.end40_crit_edge, %if.end21.if.end40_crit_edge
  %24 = phi i1 [ true, %mem_uncharge.exit89 ], [ false, %hlist_is_singular_node.exit.if.end40_crit_edge ], [ false, %if.end21.if.end40_crit_edge ]
  %pprev.i.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.not.i, label %if.end40.hlist_del_init_rcu.exit_crit_edge, label %if.then.i90

if.end40.hlist_del_init_rcu.exit_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init_rcu.exit

if.then.i90:                                      ; preds = %if.end40
  %27 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %snode, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %26, align 4
  %tobool.not.i7.i = icmp eq ptr %28, null
  br i1 %tobool.not.i7.i, label %if.then.i90.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i90.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i90.__hlist_del.exit.i_crit_edge
  %31 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.end40.hlist_del_init_rcu.exit_crit_edge
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cache_idx, align 2
  %idxprom = zext i16 %33 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %local_storage, i32 0, i32 %idxprom
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %35, %sdata
  br i1 %cmp, label %do.body55, label %hlist_del_init_rcu.exit.if.end66_crit_edge

hlist_del_init_rcu.exit.if.end66_crit_edge:       ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.body55:                                        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr null, ptr %arrayidx, align 4
  br label %if.end66

if.end66:                                         ; preds = %do.body55, %hlist_del_init_rcu.exit.if.end66_crit_edge
  %rcu = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 3
  tail call void @call_rcu_tasks_trace(ptr noundef %rcu, ptr noundef nonnull @bpf_selem_free_rcu) #9
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks_trace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_selem_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -20
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_selem_link_storage_nolock(ptr noundef %local_storage, ptr noundef %selem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local_storage4 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 2
  %0 = ptrtoint ptr %local_storage4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %local_storage, ptr %local_storage4, align 16
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %local_storage, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %3 = ptrtoint ptr %snode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %snode, align 4
  %pprev.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %snode, ptr %list, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %snode, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_selem_unlink_map(ptr noundef %selem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %selem, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %entry.cleanup_crit_edge, label %if.end, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sdata = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 5
  %2 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sdata, align 128
  %call5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.do.end22_crit_edge

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

lor.lhs.false:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.do.end22_crit_edge

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.do.end22_crit_edge

lor.lhs.false9.do.end22_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %lor.lhs.false12.do.end22_crit_edge

lor.lhs.false12.do.end22_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b55 = load i1, ptr @bpf_selem_unlink_map.__warned, align 1
  br i1 %.b55, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_selem_unlink_map.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.1) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %lor.lhs.false12.do.end22_crit_edge, %lor.lhs.false9.do.end22_crit_edge, %lor.lhs.false.do.end22_crit_edge, %if.end.do.end22_crit_edge
  %buckets.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buckets.i, align 128
  %bucket_log.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %bucket_log.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket_log.i, align 4
  %8 = ptrtoint ptr %selem to i32
  %mul.i.i.i.i = mul i32 %8, 1640531527
  %sub.i.i.i = sub i32 32, %7
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %lock = getelementptr %struct.bpf_local_storage_map_bucket, ptr %5, i32 %shr.i.i.i, i32 1
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i57.not = icmp eq ptr %10, null
  br i1 %tobool.not.i.i57.not, label %do.end22.do.body39_crit_edge, label %if.then.i, !prof !43

do.end22.do.body39_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

if.then.i:                                        ; preds = %do.end22
  %11 = ptrtoint ptr %selem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %selem, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %10, align 4
  %tobool.not.i7.i = icmp eq ptr %12, null
  br i1 %tobool.not.i7.i, label %if.then.i.hlist_del_init_rcu.exit_crit_edge, label %do.body13.i.i

if.then.i.hlist_del_init_rcu.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init_rcu.exit

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %pprev14.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %do.body13.i.i, %if.then.i.hlist_del_init_rcu.exit_crit_edge
  %15 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %do.body39

do.body39:                                        ; preds = %hlist_del_init_rcu.exit, %do.end22.do.body39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_selem_link_map(ptr noundef %smap, ptr noundef %selem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buckets.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 1
  %0 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buckets.i, align 128
  %bucket_log.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 2
  %2 = ptrtoint ptr %bucket_log.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket_log.i, align 4
  %4 = ptrtoint ptr %selem to i32
  %mul.i.i.i.i = mul i32 %4, 1640531527
  %sub.i.i.i = sub i32 32, %3
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i.i
  %arrayidx.i = getelementptr %struct.bpf_local_storage_map_bucket, ptr %1, i32 %shr.i.i.i
  %lock = getelementptr %struct.bpf_local_storage_map_bucket, ptr %1, i32 %shr.i.i.i, i32 1
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %sdata = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 5
  %5 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %smap, ptr %sdata, align 128
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %selem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %selem, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %selem, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %selem, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %selem, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_selem_unlink(ptr noundef %selem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_selem_unlink_map(ptr noundef %selem)
  %pprev.i.i.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not.i, label %entry.__bpf_selem_unlink_storage.exit_crit_edge, label %if.end.i, !prof !43

entry.__bpf_selem_unlink_storage.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_selem_unlink_storage.exit

if.end.i:                                         ; preds = %entry
  %local_storage3.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem, i32 0, i32 2
  %2 = ptrtoint ptr %local_storage3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %local_storage3.i, align 16
  %call5.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.do.end22.i_crit_edge

lor.lhs.false.i.do.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %call10.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.do.end22.i_crit_edge

lor.lhs.false9.i.do.end22.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  %call13.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i, label %lor.lhs.false12.i.do.end22.i_crit_edge

lor.lhs.false12.i.do.end22.i_crit_edge:           ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false12.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.do.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %.b59.i = load i1, ptr @__bpf_selem_unlink_storage.__warned, align 1
  br i1 %.b59.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__bpf_selem_unlink_storage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #9
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true.i.do.end22.i_crit_edge, %lor.lhs.false12.i.do.end22.i_crit_edge, %lor.lhs.false9.i.do.end22.i_crit_edge, %lor.lhs.false.i.do.end22.i_crit_edge, %if.end.i.do.end22.i_crit_edge
  %lock.i = getelementptr inbounds %struct.bpf_local_storage, ptr %3, i32 0, i32 4
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i61.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i61.not.i, label %if.end50.critedge.i, label %if.then36.i, !prof !43

if.then36.i:                                      ; preds = %do.end22.i
  %call37.i = tail call zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef %3, ptr noundef %selem, i1 noundef zeroext true) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call26.i) #9
  br i1 %call37.i, label %if.then49.i, label %if.then36.i.__bpf_selem_unlink_storage.exit_crit_edge

if.then36.i.__bpf_selem_unlink_storage.exit_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_selem_unlink_storage.exit

if.then49.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  %rcu.i = getelementptr inbounds %struct.bpf_local_storage, ptr %3, i32 0, i32 3
  tail call void @call_rcu_tasks_trace(ptr noundef %rcu.i, ptr noundef nonnull @bpf_local_storage_free_rcu) #9
  br label %__bpf_selem_unlink_storage.exit

if.end50.critedge.i:                              ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call26.i) #9
  br label %__bpf_selem_unlink_storage.exit

__bpf_selem_unlink_storage.exit:                  ; preds = %if.end50.critedge.i, %if.then49.i, %if.then36.i.__bpf_selem_unlink_storage.exit_crit_edge, %entry.__bpf_selem_unlink_storage.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_local_storage_lookup(ptr noundef %local_storage, ptr noundef readonly %smap, i1 noundef zeroext %cacheit_lockit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cache_idx, align 2
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [16 x ptr], ptr %local_storage, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.do.end15_crit_edge

lor.lhs.false4.do.end15_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false7.do.end15_crit_edge

lor.lhs.false7.do.end15_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true12

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b170 = load i1, ptr @bpf_local_storage_lookup.__warned, align 1
  br i1 %.b170, label %land.lhs.true12.do.end15_crit_edge, label %if.then

land.lhs.true12.do.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_local_storage_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.1) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true12.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false7.do.end15_crit_edge, %lor.lhs.false4.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %entry.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %do.end15.do.body27_crit_edge, label %land.lhs.true18

do.end15.do.body27_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

land.lhs.true18:                                  ; preds = %do.end15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 8
  %cmp = icmp eq ptr %5, %smap
  br i1 %cmp, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.do.body27_crit_edge

land.lhs.true18.do.body27_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body27:                                        ; preds = %land.lhs.true18.do.body27_crit_edge, %do.end15.do.body27_crit_edge
  %call.i.i172 = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool29.not = icmp eq i32 %call.i.i172, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %do.body27.do.end41_crit_edge

do.body27.do.end41_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

land.lhs.true30:                                  ; preds = %do.body27
  %call31 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true30.do.end41_crit_edge

land.lhs.true30.do.end41_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b168169 = load i1, ptr @bpf_local_storage_lookup.__warned.2, align 1
  br i1 %.b168169, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_local_storage_lookup.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 243, ptr noundef nonnull @.str.3) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %land.lhs.true30.do.end41_crit_edge, %do.body27.do.end41_crit_edge
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %local_storage, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %tobool48.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -8
  %tobool50.not176181 = icmp eq ptr %add.ptr, null
  %tobool50.not176 = or i1 %tobool48.not, %tobool50.not176181
  br i1 %tobool50.not176, label %do.end41.cleanup_crit_edge, label %do.end41.for.body_crit_edge

do.end41.for.body_crit_edge:                      ; preds = %do.end41
  br label %for.body

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end41.for.body_crit_edge
  %selem.0177 = phi ptr [ %add.ptr72, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end41.for.body_crit_edge ]
  %sdata55 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0177, i32 0, i32 5
  %8 = ptrtoint ptr %sdata55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %sdata55, align 128
  %cmp58 = icmp eq ptr %9, %smap
  br i1 %cmp58, label %if.end78, label %for.inc

for.inc:                                          ; preds = %for.body
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0177, i32 0, i32 1
  %10 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %snode, align 8
  %tobool68.not = icmp eq ptr %11, null
  %add.ptr72 = getelementptr i8, ptr %11, i32 -8
  %tobool50.not184 = icmp eq ptr %add.ptr72, null
  %tobool50.not = or i1 %tobool68.not, %tobool50.not184
  br i1 %tobool50.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %for.body
  br i1 %cacheit_lockit, label %if.then81, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %if.end78
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %local_storage, i32 0, i32 4
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pprev.i.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0177, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.not, label %if.then81.do.body137_crit_edge, label %do.body90

if.then81.do.body137_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body137

do.body90:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %14 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cache_idx, align 2
  %idxprom123 = zext i16 %15 to i32
  %arrayidx124 = getelementptr [16 x ptr], ptr %local_storage, i32 0, i32 %idxprom123
  %16 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %sdata55, ptr %arrayidx124, align 4
  br label %do.body137

do.body137:                                       ; preds = %do.body90, %if.then81.do.body137_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call85) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body137, %if.end78.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end41.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %land.lhs.true18.cleanup_crit_edge ], [ %sdata55, %do.body137 ], [ %sdata55, %if.end78.cleanup_crit_edge ], [ null, %do.end41.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_local_storage_alloc(ptr noundef %owner, ptr noundef %smap, ptr noundef %first_selem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smap, align 128
  %map_local_storage_charge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %map_local_storage_charge.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_local_storage_charge.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %mem_charge.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mem_charge.exit:                                  ; preds = %entry
  %call.i51 = tail call i32 %3(ptr noundef %smap, ptr noundef %owner, i32 noundef 124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not = icmp eq i32 %call.i51, 0
  br i1 %tobool.not, label %mem_charge.exit.if.end_crit_edge, label %mem_charge.exit.cleanup_crit_edge

mem_charge.exit.cleanup_crit_edge:                ; preds = %mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mem_charge.exit.if.end_crit_edge:                 ; preds = %mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %mem_charge.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @bpf_map_kzalloc(ptr noundef %smap, i32 noundef 124, i32 noundef 10784) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.uncharge_crit_edge, label %if.end4

if.end.uncharge_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uncharge

if.end4:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %list, align 4
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %call1, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @bpf_local_storage_alloc.__key, i16 noundef signext 2) #9
  %owner5 = getelementptr inbounds %struct.bpf_local_storage, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %owner5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %owner, ptr %owner5, align 4
  %local_storage4.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %first_selem, i32 0, i32 2
  %6 = ptrtoint ptr %local_storage4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call1, ptr %local_storage4.i, align 16
  %snode.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %first_selem, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %9 = ptrtoint ptr %snode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %snode.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %first_selem, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %snode.i, ptr %list, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end4.bpf_selem_link_storage_nolock.exit_crit_edge, label %do.body49.i.i

if.end4.bpf_selem_link_storage_nolock.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_selem_link_storage_nolock.exit

do.body49.i.i:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %snode.i, ptr %pprev51.i.i, align 4
  br label %bpf_selem_link_storage_nolock.exit

bpf_selem_link_storage_nolock.exit:               ; preds = %do.body49.i.i, %if.end4.bpf_selem_link_storage_nolock.exit_crit_edge
  %buckets.i.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 1
  %13 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buckets.i.i, align 128
  %bucket_log.i.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 2
  %15 = ptrtoint ptr %bucket_log.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bucket_log.i.i, align 4
  %17 = ptrtoint ptr %first_selem to i32
  %mul.i.i.i.i.i = mul i32 %17, 1640531527
  %sub.i.i.i.i = sub i32 32, %16
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %arrayidx.i.i = getelementptr %struct.bpf_local_storage_map_bucket, ptr %14, i32 %shr.i.i.i.i
  %lock.i = getelementptr %struct.bpf_local_storage_map_bucket, ptr %14, i32 %shr.i.i.i.i, i32 1
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %sdata.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %first_selem, i32 0, i32 5
  %18 = ptrtoint ptr %sdata.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %smap, ptr %sdata.i, align 128
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %21 = ptrtoint ptr %first_selem to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %first_selem, align 4
  %pprev.i.i52 = getelementptr inbounds %struct.hlist_node, ptr %first_selem, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i52, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %first_selem, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i53 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i53, label %bpf_selem_link_storage_nolock.exit.bpf_selem_link_map.exit_crit_edge, label %do.body49.i.i55

bpf_selem_link_storage_nolock.exit.bpf_selem_link_map.exit_crit_edge: ; preds = %bpf_selem_link_storage_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_selem_link_map.exit

do.body49.i.i55:                                  ; preds = %bpf_selem_link_storage_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i54 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev51.i.i54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %first_selem, ptr %pprev51.i.i54, align 4
  br label %bpf_selem_link_map.exit

bpf_selem_link_map.exit:                          ; preds = %do.body49.i.i55, %bpf_selem_link_storage_nolock.exit.bpf_selem_link_map.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #9
  %25 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smap, align 128
  %map_owner_storage_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %map_owner_storage_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map_owner_storage_ptr.i, align 4
  %call.i56 = tail call ptr %28(ptr noundef %owner) #9
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call.i56, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %29 = ptrtoint ptr %call1 to i32
  tail call void @llvm.prefetch.p0(ptr %call.i56, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %bpf_selem_link_map.exit
  %30 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %call.i56, i32 0, i32 %29) #9, !srcloc !46
  %asmresult.i = extractvalue { i32, i32 } %30, 0
  %tobool.not.i57 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i57, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool25.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool25.not, label %__cmpxchg.exit.cleanup_crit_edge, label %if.then28, !prof !48

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_selem_unlink_map(ptr noundef %first_selem)
  br label %uncharge

uncharge:                                         ; preds = %if.then28, %if.end.uncharge_crit_edge
  %err.0 = phi i32 [ -11, %if.then28 ], [ -12, %if.end.uncharge_crit_edge ]
  tail call void @kfree(ptr noundef %call1) #9
  %31 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smap, align 128
  %map_local_storage_uncharge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %map_local_storage_uncharge.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map_local_storage_uncharge.i, align 4
  %tobool.not.i58 = icmp eq ptr %34, null
  br i1 %tobool.not.i58, label %uncharge.cleanup_crit_edge, label %if.then.i

uncharge.cleanup_crit_edge:                       ; preds = %uncharge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %uncharge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %34(ptr noundef %smap, ptr noundef %owner, i32 noundef 124) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %uncharge.cleanup_crit_edge, %__cmpxchg.exit.cleanup_crit_edge, %mem_charge.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i51, %mem_charge.exit.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.cleanup_crit_edge ], [ %err.0, %uncharge.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_local_storage_update(ptr noundef %owner, ptr noundef %smap, ptr noundef %value, i64 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %map_flags, -5
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp = icmp ugt i64 %and, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and2 = and i64 %map_flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %land.rhs

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %lor.lhs.false
  %spin_lock_off.i = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 9
  %0 = ptrtoint ptr %spin_lock_off.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spin_lock_off.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end_crit_edge, !prof !43

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %2 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smap, align 128
  %map_owner_storage_ptr.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %map_owner_storage_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_owner_storage_ptr.i, align 4
  %call.i = tail call ptr %5(ptr noundef %owner) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %call.i, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.end.do.end33_crit_edge

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

lor.lhs.false17:                                  ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false17.do.end33_crit_edge

lor.lhs.false17.do.end33_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false20.do.end33_crit_edge

lor.lhs.false20.do.end33_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %lor.lhs.false23.do.end33_crit_edge

lor.lhs.false23.do.end33_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

land.lhs.true:                                    ; preds = %lor.lhs.false23
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b214 = load i1, ptr @bpf_local_storage_update.__warned, align 1
  br i1 %.b214, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpf_local_storage_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true.do.end33_crit_edge, %lor.lhs.false23.do.end33_crit_edge, %lor.lhs.false20.do.end33_crit_edge, %lor.lhs.false17.do.end33_crit_edge, %if.end.do.end33_crit_edge
  %tobool35.not = icmp eq ptr %7, null
  br i1 %tobool35.not, label %do.end33.if.then39_crit_edge, label %lor.lhs.false36

do.end33.if.then39_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false36:                                  ; preds = %do.end33
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %lor.lhs.false36.if.then39_crit_edge, label %if.end55

lor.lhs.false36.if.then39_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false36.if.then39_crit_edge, %do.end33.if.then39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp4.i = icmp eq i64 %and, 2
  br i1 %cmp4.i, label %if.then39.cleanup_crit_edge, label %if.end44

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  %10 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smap, align 128
  %map_local_storage_charge.i.i = getelementptr inbounds %struct.bpf_map_ops, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %map_local_storage_charge.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_local_storage_charge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end44.if.end.i_crit_edge, label %mem_charge.exit.i

if.end44.if.end.i_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

mem_charge.exit.i:                                ; preds = %if.end44
  %elem_size.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %14 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %elem_size.i, align 8
  %conv.i = zext i16 %15 to i32
  %call.i.i216 = tail call i32 %13(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i216)
  %tobool1.not.i = icmp eq i32 %call.i.i216, 0
  br i1 %tobool1.not.i, label %mem_charge.exit.i.if.end.i_crit_edge, label %mem_charge.exit.i.cleanup_crit_edge

mem_charge.exit.i.cleanup_crit_edge:              ; preds = %mem_charge.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mem_charge.exit.i.if.end.i_crit_edge:             ; preds = %mem_charge.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %mem_charge.exit.i.if.end.i_crit_edge, %if.end44.if.end.i_crit_edge
  %elem_size2.i = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %16 = ptrtoint ptr %elem_size2.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %elem_size2.i, align 8
  %conv3.i = zext i16 %17 to i32
  %call4.i = tail call ptr @bpf_map_kzalloc(ptr noundef %smap, i32 noundef %conv3.i, i32 noundef 10784) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end11.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %tobool7.not.i = icmp eq ptr %value, null
  br i1 %tobool7.not.i, label %if.then6.i.if.end49_crit_edge, label %if.then8.i

if.then6.i.if.end49_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i, i32 0, i32 6
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 5
  %18 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value_size.i, align 4
  %20 = call ptr @memcpy(ptr %data.i, ptr %value, i32 %19)
  br label %if.end49

if.end11.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smap, align 128
  %map_local_storage_uncharge.i.i = getelementptr inbounds %struct.bpf_map_ops, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %map_local_storage_uncharge.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map_local_storage_uncharge.i.i, align 4
  %tobool.not.i28.i = icmp eq ptr %24, null
  br i1 %tobool.not.i28.i, label %if.end11.i.cleanup_crit_edge, label %if.then.i.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %elem_size2.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %elem_size2.i, align 8
  %conv15.i = zext i16 %26 to i32
  tail call void %24(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv15.i) #9
  br label %cleanup

if.end49:                                         ; preds = %if.then8.i, %if.then6.i.if.end49_crit_edge
  %call50 = tail call i32 @bpf_local_storage_alloc(ptr noundef %owner, ptr noundef %smap, ptr noundef nonnull %call4.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  tail call void @kfree(ptr noundef nonnull %call4.i) #9
  %27 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %smap, align 128
  %map_local_storage_uncharge.i = getelementptr inbounds %struct.bpf_map_ops, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %map_local_storage_uncharge.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map_local_storage_uncharge.i, align 4
  %tobool.not.i217 = icmp eq ptr %30, null
  br i1 %tobool.not.i217, label %if.then52.mem_uncharge.exit_crit_edge, label %if.then.i

if.then52.mem_uncharge.exit_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mem_uncharge.exit

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %elem_size2.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %elem_size2.i, align 8
  %conv = zext i16 %32 to i32
  tail call void %30(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv) #9
  br label %mem_uncharge.exit

mem_uncharge.exit:                                ; preds = %if.then.i, %if.then52.mem_uncharge.exit_crit_edge
  %33 = inttoptr i32 %call50 to ptr
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %sdata = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i, i32 0, i32 5
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false36
  %34 = and i64 %map_flags, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %34)
  %.not = icmp eq i64 %34, 4
  br i1 %.not, label %if.then61, label %if.end55.do.body77_crit_edge

if.end55.do.body77_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.then61:                                        ; preds = %if.end55
  %call62 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %7, ptr noundef %smap, i1 noundef zeroext false)
  %tobool.not.i219 = icmp eq ptr %call62, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp.i221 = icmp ne i64 %and, 1
  %35 = or i1 %cmp.i221, %tobool.not.i219
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp4.i222 = icmp eq i64 %and, 2
  %or.cond9.i = and i1 %cmp4.i222, %tobool.not.i219
  %spec.select.i223 = select i1 %or.cond9.i, i32 -2, i32 0
  %retval.0.i224 = select i1 %35, i32 %spec.select.i223, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i224)
  %tobool64.not = icmp eq i32 %retval.0.i224, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %36 = inttoptr i32 %retval.0.i224 to ptr
  br label %cleanup

if.end67:                                         ; preds = %if.then61
  br i1 %tobool.not.i219, label %if.end67.do.body77_crit_edge, label %land.lhs.true69

if.end67.do.body77_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

land.lhs.true69:                                  ; preds = %if.end67
  %pprev.i.i = getelementptr i8, ptr %call62, i32 -116
  %37 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i225.not = icmp eq ptr %38, null
  br i1 %tobool.not.i.i225.not, label %land.lhs.true69.do.body77_crit_edge, label %if.then73

land.lhs.true69.do.body77_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.then73:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call62, i32 0, i32 2
  tail call void @copy_map_value_locked(ptr noundef %smap, ptr noundef %data, ptr noundef %value, i1 noundef zeroext false) #9
  br label %cleanup

do.body77:                                        ; preds = %land.lhs.true69.do.body77_crit_edge, %if.end67.do.body77_crit_edge, %if.end55.do.body77_crit_edge
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %7, i32 0, i32 4
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %list, align 4
  %tobool.not.i226.not = icmp eq ptr %40, null
  br i1 %tobool.not.i226.not, label %do.body77.do.body139_crit_edge, label %if.end94, !prof !43

do.body77.do.body139_crit_edge:                   ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body139

if.end94:                                         ; preds = %do.body77
  %call95 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %7, ptr noundef %smap, i1 noundef zeroext false)
  %tobool.not.i228 = icmp eq ptr %call95, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp.i230 = icmp ne i64 %and, 1
  %41 = or i1 %cmp.i230, %tobool.not.i228
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp4.i231 = icmp eq i64 %and, 2
  %or.cond9.i232 = and i1 %cmp4.i231, %tobool.not.i228
  %spec.select.i233 = select i1 %or.cond9.i232, i32 -2, i32 0
  %retval.0.i234 = select i1 %41, i32 %spec.select.i233, i32 -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i234)
  %tobool97.not = icmp eq i32 %retval.0.i234, 0
  br i1 %tobool97.not, label %if.end99, label %if.end94.do.body139_crit_edge

if.end94.do.body139_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body139

if.end99:                                         ; preds = %if.end94
  %brmerge = or i1 %tobool3.not, %tobool.not.i228
  br i1 %brmerge, label %if.end111, label %if.then104

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %data106 = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call95, i32 0, i32 2
  tail call void @copy_map_value_locked(ptr noundef %smap, ptr noundef %data106, ptr noundef %value, i1 noundef zeroext false) #9
  %add.ptr110 = getelementptr i8, ptr %call95, i32 -128
  br label %do.body129

if.end111:                                        ; preds = %if.end99
  br i1 %tobool.not.i228, label %land.lhs.true.i, label %if.end111.if.end.i246_crit_edge

if.end111.if.end.i246_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i246

land.lhs.true.i:                                  ; preds = %if.end111
  %42 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %smap, align 128
  %map_local_storage_charge.i.i235 = getelementptr inbounds %struct.bpf_map_ops, ptr %43, i32 0, i32 31
  %44 = ptrtoint ptr %map_local_storage_charge.i.i235 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map_local_storage_charge.i.i235, align 4
  %tobool.not.i.i236 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i236, label %land.lhs.true.i.if.end.i246_crit_edge, label %mem_charge.exit.i241

land.lhs.true.i.if.end.i246_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i246

mem_charge.exit.i241:                             ; preds = %land.lhs.true.i
  %elem_size.i237 = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %46 = ptrtoint ptr %elem_size.i237 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %elem_size.i237, align 8
  %conv.i238 = zext i16 %47 to i32
  %call.i.i239 = tail call i32 %45(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv.i238) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239)
  %tobool1.not.i240 = icmp eq i32 %call.i.i239, 0
  br i1 %tobool1.not.i240, label %mem_charge.exit.i241.if.end.i246_crit_edge, label %mem_charge.exit.i241.do.body139_crit_edge

mem_charge.exit.i241.do.body139_crit_edge:        ; preds = %mem_charge.exit.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body139

mem_charge.exit.i241.if.end.i246_crit_edge:       ; preds = %mem_charge.exit.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i246

if.end.i246:                                      ; preds = %mem_charge.exit.i241.if.end.i246_crit_edge, %land.lhs.true.i.if.end.i246_crit_edge, %if.end111.if.end.i246_crit_edge
  %elem_size2.i242 = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 3
  %48 = ptrtoint ptr %elem_size2.i242 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %elem_size2.i242, align 8
  %conv3.i243 = zext i16 %49 to i32
  %call4.i244 = tail call ptr @bpf_map_kzalloc(ptr noundef %smap, i32 noundef %conv3.i243, i32 noundef 10784) #9
  %tobool5.not.i245 = icmp eq ptr %call4.i244, null
  br i1 %tobool5.not.i245, label %if.end11.i252, label %if.then6.i248

if.then6.i248:                                    ; preds = %if.end.i246
  %tobool7.not.i247 = icmp eq ptr %value, null
  br i1 %tobool7.not.i247, label %if.then6.i248.if.end118_crit_edge, label %if.then8.i251

if.then6.i248.if.end118_crit_edge:                ; preds = %if.then6.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then8.i251:                                    ; preds = %if.then6.i248
  call void @__sanitizer_cov_trace_pc() #11
  %data.i249 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i244, i32 0, i32 6
  %value_size.i250 = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 5
  %50 = ptrtoint ptr %value_size.i250 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value_size.i250, align 4
  %52 = call ptr @memcpy(ptr %data.i249, ptr %value, i32 %51)
  br label %if.end118

if.end11.i252:                                    ; preds = %if.end.i246
  br i1 %tobool.not.i228, label %if.then13.i, label %if.end11.i252.do.body139_crit_edge

if.end11.i252.do.body139_crit_edge:               ; preds = %if.end11.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body139

if.then13.i:                                      ; preds = %if.end11.i252
  %53 = ptrtoint ptr %smap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %smap, align 128
  %map_local_storage_uncharge.i.i253 = getelementptr inbounds %struct.bpf_map_ops, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %map_local_storage_uncharge.i.i253 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map_local_storage_uncharge.i.i253, align 4
  %tobool.not.i28.i254 = icmp eq ptr %56, null
  br i1 %tobool.not.i28.i254, label %if.then13.i.do.body139_crit_edge, label %if.then.i.i256

if.then13.i.do.body139_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body139

if.then.i.i256:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %elem_size2.i242 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %elem_size2.i242, align 8
  %conv15.i255 = zext i16 %58 to i32
  tail call void %56(ptr noundef %smap, ptr noundef %owner, i32 noundef %conv15.i255) #9
  br label %do.body139

if.end118:                                        ; preds = %if.then8.i251, %if.then6.i248.if.end118_crit_edge
  tail call void @bpf_selem_link_map(ptr noundef %smap, ptr noundef nonnull %call4.i244)
  %local_storage4.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i244, i32 0, i32 2
  %59 = ptrtoint ptr %local_storage4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %7, ptr %local_storage4.i, align 16
  %snode.i = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i244, i32 0, i32 1
  %60 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %list, align 4
  %62 = ptrtoint ptr %snode.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %snode.i, align 4
  %pprev.i.i259 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %call4.i244, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %pprev.i.i259 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list, ptr %pprev.i.i259, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  %64 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %snode.i, ptr %list, align 4
  %tobool.not.i.i260 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i260, label %if.end118.bpf_selem_link_storage_nolock.exit_crit_edge, label %do.body49.i.i

if.end118.bpf_selem_link_storage_nolock.exit_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_selem_link_storage_nolock.exit

do.body49.i.i:                                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %snode.i, ptr %pprev51.i.i, align 4
  br label %bpf_selem_link_storage_nolock.exit

bpf_selem_link_storage_nolock.exit:               ; preds = %do.body49.i.i, %if.end118.bpf_selem_link_storage_nolock.exit_crit_edge
  br i1 %tobool.not.i228, label %bpf_selem_link_storage_nolock.exit.do.body129_crit_edge, label %if.then120

bpf_selem_link_storage_nolock.exit.do.body129_crit_edge: ; preds = %bpf_selem_link_storage_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

if.then120:                                       ; preds = %bpf_selem_link_storage_nolock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr123 = getelementptr i8, ptr %call95, i32 -128
  tail call void @bpf_selem_unlink_map(ptr noundef %add.ptr123)
  %call127 = tail call zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef nonnull %7, ptr noundef %add.ptr123, i1 noundef zeroext false)
  br label %do.body129

do.body129:                                       ; preds = %if.then120, %bpf_selem_link_storage_nolock.exit.do.body129_crit_edge, %if.then104
  %selem.0 = phi ptr [ %add.ptr110, %if.then104 ], [ %call4.i244, %if.then120 ], [ %call4.i244, %bpf_selem_link_storage_nolock.exit.do.body129_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call81) #9
  %sdata138 = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0, i32 0, i32 5
  br label %cleanup

do.body139:                                       ; preds = %if.then.i.i256, %if.then13.i.do.body139_crit_edge, %if.end11.i252.do.body139_crit_edge, %mem_charge.exit.i241.do.body139_crit_edge, %if.end94.do.body139_crit_edge, %do.body77.do.body139_crit_edge
  %err.0 = phi i32 [ %retval.0.i234, %if.end94.do.body139_crit_edge ], [ -11, %do.body77.do.body139_crit_edge ], [ -12, %mem_charge.exit.i241.do.body139_crit_edge ], [ -12, %if.end11.i252.do.body139_crit_edge ], [ -12, %if.then13.i.do.body139_crit_edge ], [ -12, %if.then.i.i256 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call81) #9
  %66 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.body139, %do.body129, %if.then73, %if.then65, %if.end54, %mem_uncharge.exit, %if.then.i.i, %if.end11.i.cleanup_crit_edge, %mem_charge.exit.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %mem_uncharge.exit ], [ %sdata, %if.end54 ], [ %66, %do.body139 ], [ %sdata138, %do.body129 ], [ %36, %if.then65 ], [ %call62, %if.then73 ], [ inttoptr (i32 -22 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %mem_charge.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end11.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.i ], [ inttoptr (i32 -2 to ptr), %if.then39.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_map_value_locked(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %cache) #9
  %arrayidx = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %entry.for.end_crit_edge, label %for.inc

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp2.1 = icmp ult i64 %3, %1
  br i1 %cmp2.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.1 = icmp eq i64 %3, 0
  br i1 %tobool.not.1, label %if.then.1.for.end_crit_edge, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1.for.end_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %min_usage.1.1 = phi i64 [ %3, %if.then.1.for.inc.1_crit_edge ], [ %1, %for.inc.for.inc.1_crit_edge ]
  %res.1.1 = phi i16 [ 1, %if.then.1.for.inc.1_crit_edge ], [ 0, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %min_usage.1.1)
  %cmp2.2 = icmp ult i64 %5, %min_usage.1.1
  br i1 %cmp2.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.2 = icmp eq i64 %5, 0
  br i1 %tobool.not.2, label %if.then.2.for.end_crit_edge, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2.for.end_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %min_usage.1.2 = phi i64 [ %5, %if.then.2.for.inc.2_crit_edge ], [ %min_usage.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %res.1.2 = phi i16 [ 2, %if.then.2.for.inc.2_crit_edge ], [ %res.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %min_usage.1.2)
  %cmp2.3 = icmp ult i64 %7, %min_usage.1.2
  br i1 %cmp2.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.3 = icmp eq i64 %7, 0
  br i1 %tobool.not.3, label %if.then.3.for.end_crit_edge, label %if.then.3.for.inc.3_crit_edge

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3.for.end_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.3:                                        ; preds = %if.then.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %min_usage.1.3 = phi i64 [ %7, %if.then.3.for.inc.3_crit_edge ], [ %min_usage.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %res.1.3 = phi i16 [ 3, %if.then.3.for.inc.3_crit_edge ], [ %res.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %min_usage.1.3)
  %cmp2.4 = icmp ult i64 %9, %min_usage.1.3
  br i1 %cmp2.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.4 = icmp eq i64 %9, 0
  br i1 %tobool.not.4, label %if.then.4.for.end_crit_edge, label %if.then.4.for.inc.4_crit_edge

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then.4.for.end_crit_edge:                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %if.then.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %min_usage.1.4 = phi i64 [ %9, %if.then.4.for.inc.4_crit_edge ], [ %min_usage.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %res.1.4 = phi i16 [ 4, %if.then.4.for.inc.4_crit_edge ], [ %res.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %min_usage.1.4)
  %cmp2.5 = icmp ult i64 %11, %min_usage.1.4
  br i1 %cmp2.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.5 = icmp eq i64 %11, 0
  br i1 %tobool.not.5, label %if.then.5.for.end_crit_edge, label %if.then.5.for.inc.5_crit_edge

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then.5.for.end_crit_edge:                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.5:                                        ; preds = %if.then.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %min_usage.1.5 = phi i64 [ %11, %if.then.5.for.inc.5_crit_edge ], [ %min_usage.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %res.1.5 = phi i16 [ 5, %if.then.5.for.inc.5_crit_edge ], [ %res.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %min_usage.1.5)
  %cmp2.6 = icmp ult i64 %13, %min_usage.1.5
  br i1 %cmp2.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.6 = icmp eq i64 %13, 0
  br i1 %tobool.not.6, label %if.then.6.for.end_crit_edge, label %if.then.6.for.inc.6_crit_edge

if.then.6.for.inc.6_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then.6.for.end_crit_edge:                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.6:                                        ; preds = %if.then.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %min_usage.1.6 = phi i64 [ %13, %if.then.6.for.inc.6_crit_edge ], [ %min_usage.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %res.1.6 = phi i16 [ 6, %if.then.6.for.inc.6_crit_edge ], [ %res.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %min_usage.1.6)
  %cmp2.7 = icmp ult i64 %15, %min_usage.1.6
  br i1 %cmp2.7, label %if.then.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.7 = icmp eq i64 %15, 0
  br i1 %tobool.not.7, label %if.then.7.for.end_crit_edge, label %if.then.7.for.inc.7_crit_edge

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.then.7.for.end_crit_edge:                      ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.7:                                        ; preds = %if.then.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %min_usage.1.7 = phi i64 [ %15, %if.then.7.for.inc.7_crit_edge ], [ %min_usage.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %res.1.7 = phi i16 [ 7, %if.then.7.for.inc.7_crit_edge ], [ %res.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %arrayidx.8 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %min_usage.1.7)
  %cmp2.8 = icmp ult i64 %17, %min_usage.1.7
  br i1 %cmp2.8, label %if.then.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.8 = icmp eq i64 %17, 0
  br i1 %tobool.not.8, label %if.then.8.for.end_crit_edge, label %if.then.8.for.inc.8_crit_edge

if.then.8.for.inc.8_crit_edge:                    ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

if.then.8.for.end_crit_edge:                      ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.8:                                        ; preds = %if.then.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %min_usage.1.8 = phi i64 [ %17, %if.then.8.for.inc.8_crit_edge ], [ %min_usage.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %res.1.8 = phi i16 [ 8, %if.then.8.for.inc.8_crit_edge ], [ %res.1.7, %for.inc.7.for.inc.8_crit_edge ]
  %arrayidx.9 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %min_usage.1.8)
  %cmp2.9 = icmp ult i64 %19, %min_usage.1.8
  br i1 %cmp2.9, label %if.then.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.9 = icmp eq i64 %19, 0
  br i1 %tobool.not.9, label %if.then.9.for.end_crit_edge, label %if.then.9.for.inc.9_crit_edge

if.then.9.for.inc.9_crit_edge:                    ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

if.then.9.for.end_crit_edge:                      ; preds = %if.then.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.9:                                        ; preds = %if.then.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %min_usage.1.9 = phi i64 [ %19, %if.then.9.for.inc.9_crit_edge ], [ %min_usage.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %res.1.9 = phi i16 [ 9, %if.then.9.for.inc.9_crit_edge ], [ %res.1.8, %for.inc.8.for.inc.9_crit_edge ]
  %arrayidx.10 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %min_usage.1.9)
  %cmp2.10 = icmp ult i64 %21, %min_usage.1.9
  br i1 %cmp2.10, label %if.then.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.10 = icmp eq i64 %21, 0
  br i1 %tobool.not.10, label %if.then.10.for.end_crit_edge, label %if.then.10.for.inc.10_crit_edge

if.then.10.for.inc.10_crit_edge:                  ; preds = %if.then.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

if.then.10.for.end_crit_edge:                     ; preds = %if.then.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.10:                                       ; preds = %if.then.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %min_usage.1.10 = phi i64 [ %21, %if.then.10.for.inc.10_crit_edge ], [ %min_usage.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %res.1.10 = phi i16 [ 10, %if.then.10.for.inc.10_crit_edge ], [ %res.1.9, %for.inc.9.for.inc.10_crit_edge ]
  %arrayidx.11 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %min_usage.1.10)
  %cmp2.11 = icmp ult i64 %23, %min_usage.1.10
  br i1 %cmp2.11, label %if.then.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

if.then.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool.not.11 = icmp eq i64 %23, 0
  br i1 %tobool.not.11, label %if.then.11.for.end_crit_edge, label %if.then.11.for.inc.11_crit_edge

if.then.11.for.inc.11_crit_edge:                  ; preds = %if.then.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

if.then.11.for.end_crit_edge:                     ; preds = %if.then.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.11:                                       ; preds = %if.then.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %min_usage.1.11 = phi i64 [ %23, %if.then.11.for.inc.11_crit_edge ], [ %min_usage.1.10, %for.inc.10.for.inc.11_crit_edge ]
  %res.1.11 = phi i16 [ 11, %if.then.11.for.inc.11_crit_edge ], [ %res.1.10, %for.inc.10.for.inc.11_crit_edge ]
  %arrayidx.12 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %min_usage.1.11)
  %cmp2.12 = icmp ult i64 %25, %min_usage.1.11
  br i1 %cmp2.12, label %if.then.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

if.then.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not.12 = icmp eq i64 %25, 0
  br i1 %tobool.not.12, label %if.then.12.for.end_crit_edge, label %if.then.12.for.inc.12_crit_edge

if.then.12.for.inc.12_crit_edge:                  ; preds = %if.then.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

if.then.12.for.end_crit_edge:                     ; preds = %if.then.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.12:                                       ; preds = %if.then.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %min_usage.1.12 = phi i64 [ %25, %if.then.12.for.inc.12_crit_edge ], [ %min_usage.1.11, %for.inc.11.for.inc.12_crit_edge ]
  %res.1.12 = phi i16 [ 12, %if.then.12.for.inc.12_crit_edge ], [ %res.1.11, %for.inc.11.for.inc.12_crit_edge ]
  %arrayidx.13 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %min_usage.1.12)
  %cmp2.13 = icmp ult i64 %27, %min_usage.1.12
  br i1 %cmp2.13, label %if.then.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

if.then.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool.not.13 = icmp eq i64 %27, 0
  br i1 %tobool.not.13, label %if.then.13.for.end_crit_edge, label %if.then.13.for.inc.13_crit_edge

if.then.13.for.inc.13_crit_edge:                  ; preds = %if.then.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

if.then.13.for.end_crit_edge:                     ; preds = %if.then.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.13:                                       ; preds = %if.then.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %min_usage.1.13 = phi i64 [ %27, %if.then.13.for.inc.13_crit_edge ], [ %min_usage.1.12, %for.inc.12.for.inc.13_crit_edge ]
  %res.1.13 = phi i16 [ 13, %if.then.13.for.inc.13_crit_edge ], [ %res.1.12, %for.inc.12.for.inc.13_crit_edge ]
  %arrayidx.14 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %min_usage.1.13)
  %cmp2.14 = icmp ult i64 %29, %min_usage.1.13
  br i1 %cmp2.14, label %if.then.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

if.then.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.14 = icmp eq i64 %29, 0
  br i1 %tobool.not.14, label %if.then.14.for.end_crit_edge, label %if.then.14.for.inc.14_crit_edge

if.then.14.for.inc.14_crit_edge:                  ; preds = %if.then.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

if.then.14.for.end_crit_edge:                     ; preds = %if.then.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.14:                                       ; preds = %if.then.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %min_usage.1.14 = phi i64 [ %29, %if.then.14.for.inc.14_crit_edge ], [ %min_usage.1.13, %for.inc.13.for.inc.14_crit_edge ]
  %res.1.14 = phi i16 [ 14, %if.then.14.for.inc.14_crit_edge ], [ %res.1.13, %for.inc.13.for.inc.14_crit_edge ]
  %arrayidx.15 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %min_usage.1.14)
  %cmp2.15 = icmp ult i64 %31, %min_usage.1.14
  %spec.select = select i1 %cmp2.15, i16 15, i16 %res.1.14
  br label %for.end

for.end:                                          ; preds = %for.inc.14, %if.then.14.for.end_crit_edge, %if.then.13.for.end_crit_edge, %if.then.12.for.end_crit_edge, %if.then.11.for.end_crit_edge, %if.then.10.for.end_crit_edge, %if.then.9.for.end_crit_edge, %if.then.8.for.end_crit_edge, %if.then.7.for.end_crit_edge, %if.then.6.for.end_crit_edge, %if.then.5.for.end_crit_edge, %if.then.4.for.end_crit_edge, %if.then.3.for.end_crit_edge, %if.then.2.for.end_crit_edge, %if.then.1.for.end_crit_edge, %entry.for.end_crit_edge
  %res.2 = phi i16 [ 1, %if.then.1.for.end_crit_edge ], [ 2, %if.then.2.for.end_crit_edge ], [ 3, %if.then.3.for.end_crit_edge ], [ 4, %if.then.4.for.end_crit_edge ], [ 5, %if.then.5.for.end_crit_edge ], [ 6, %if.then.6.for.end_crit_edge ], [ 7, %if.then.7.for.end_crit_edge ], [ 8, %if.then.8.for.end_crit_edge ], [ 9, %if.then.9.for.end_crit_edge ], [ 10, %if.then.10.for.end_crit_edge ], [ 11, %if.then.11.for.end_crit_edge ], [ 12, %if.then.12.for.end_crit_edge ], [ 13, %if.then.13.for.end_crit_edge ], [ 14, %if.then.14.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.14 ]
  %idxprom10 = zext i16 %res.2 to i32
  %arrayidx11 = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 %idxprom10
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx11, align 8
  %inc12 = add i64 %33, 1
  store i64 %inc12, ptr %arrayidx11, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cache) #9
  ret i16 %res.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_local_storage_cache_idx_free(ptr noundef %cache, i16 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %cache) #9
  %idxprom = zext i16 %idx to i32
  %arrayidx = getelementptr %struct.bpf_local_storage_cache, ptr %cache, i32 0, i32 1, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %arrayidx, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cache) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_local_storage_map_free(ptr noundef %smap, ptr noundef %busy_counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_rcu() #9
  %bucket_log = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 2
  %buckets = getelementptr inbounds %struct.bpf_local_storage_map, ptr %smap, i32 0, i32 1
  %tobool5.not = icmp eq ptr %busy_counter, null
  %0 = ptrtoint ptr %busy_counter to i32
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buckets, align 128
  %arrayidx = getelementptr %struct.bpf_local_storage_map_bucket, ptr %2, i32 %i.069
  %3 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not68 = icmp eq ptr %8, null
  br i1 %tobool.not68, label %rcu_read_lock.exit.while.end_crit_edge, label %rcu_read_lock.exit.while.body_crit_edge

rcu_read_lock.exit.while.body_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %while.body

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cond_resched_rcu.exit.while.body_crit_edge, %rcu_read_lock.exit.while.body_crit_edge
  %9 = phi ptr [ %37, %cond_resched_rcu.exit.while.body_crit_edge ], [ %8, %rcu_read_lock.exit.while.body_crit_edge ]
  br i1 %tobool5.not, label %if.end47.critedge, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @migrate_disable() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %15, %0
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add18 = add i32 %18, 1
  store i32 %add18, ptr %16, align 4
  tail call void @bpf_selem_unlink(ptr noundef nonnull %9)
  %19 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i58 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i58 to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu39, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %24, %0
  %25 = inttoptr i32 %add41 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add42 = add i32 %27, -1
  store i32 %add42, ptr %25, align 4
  tail call void @migrate_enable() #9
  br label %if.end47

if.end47.critedge:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_selem_unlink(ptr noundef nonnull %9)
  br label %if.end47

if.end47:                                         ; preds = %if.end47.critedge, %if.then
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i1.i, label %if.end47.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i4.i

if.end47.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i4.i:                               ; preds = %if.end47
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %if.end47.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %28 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i8.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 2089, i32 noundef 0) #9
  %call.i10.i = tail call i32 @__cond_resched() #9
  %32 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_resched_rcu.exit

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_resched_rcu.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_resched_rcu.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %cond_resched_rcu.exit

cond_resched_rcu.exit:                            ; preds = %if.then.i.i, %land.lhs.true2.i.i.cond_resched_rcu.exit_crit_edge, %land.lhs.true.i.i.cond_resched_rcu.exit_crit_edge, %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %cond_resched_rcu.exit.while.end_crit_edge, label %cond_resched_rcu.exit.while.body_crit_edge

cond_resched_rcu.exit.while.body_crit_edge:       ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cond_resched_rcu.exit.while.end_crit_edge:        ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cond_resched_rcu.exit.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i59, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %while.end
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %38 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i66 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %inc = add i32 %i.069, 1
  %42 = ptrtoint ptr %bucket_log to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bucket_log, align 4
  %i.0.highbits = lshr i32 %inc, %43
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %for.end

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @synchronize_rcu() #9
  %44 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buckets, align 128
  tail call void @kvfree(ptr noundef %45) #9
  tail call void @kfree(ptr noundef %smap) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_local_storage_map_alloc_check(ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags, align 8
  %2 = and i32 %1, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %lor.lhs.false4, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false4:                                   ; preds = %entry
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %lor.lhs.false7, label %lor.lhs.false6.return_crit_edge

lor.lhs.false6.return_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false7.return_crit_edge, label %lor.lhs.false9

lor.lhs.false7.return_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %btf_key_type_id = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 10
  %9 = ptrtoint ptr %btf_key_type_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btf_key_type_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %lor.lhs.false9.return_crit_edge, label %lor.lhs.false11

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %btf_value_type_id = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 11
  %11 = ptrtoint ptr %btf_value_type_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %btf_value_type_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %lor.lhs.false11.return_crit_edge, label %if.end

lor.lhs.false11.return_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false11
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #9
  br i1 %call.i, label %if.end.if.end14_crit_edge, label %bpf_capable.exit

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

bpf_capable.exit:                                 ; preds = %if.end
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call1.i, label %bpf_capable.exit.if.end14_crit_edge, label %bpf_capable.exit.return_crit_edge

bpf_capable.exit.return_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

bpf_capable.exit.if.end14_crit_edge:              ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %bpf_capable.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %13 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65279, i32 %14)
  %cmp16 = icmp ugt i32 %14, 65279
  %. = select i1 %cmp16, i32 -7, i32 0
  br label %return

return:                                           ; preds = %if.end14, %bpf_capable.exit.return_crit_edge, %lor.lhs.false11.return_crit_edge, %lor.lhs.false9.return_crit_edge, %lor.lhs.false7.return_crit_edge, %lor.lhs.false6.return_crit_edge, %lor.lhs.false4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false11.return_crit_edge ], [ -22, %lor.lhs.false9.return_crit_edge ], [ -22, %lor.lhs.false7.return_crit_edge ], [ -22, %lor.lhs.false6.return_crit_edge ], [ -22, %lor.lhs.false4.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -1, %bpf_capable.exit.return_crit_edge ], [ %., %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_local_storage_map_alloc(ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 5254592, i32 noundef 512) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #9
  %sub.i = add i32 %call4.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #9, !range !51
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %3 = tail call i32 @llvm.umax.i32(i32 %sub.i.i.op.i, i32 2)
  %4 = select i1 %tobool.not.i.i.i, i32 2, i32 %3
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #9, !range !51
  %cond13 = xor i32 %5, 31
  %bucket_log = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %bucket_log to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond13, ptr %bucket_log, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 48) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !43

kvcalloc.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %buckets52 = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %buckets52 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %buckets52, align 128
  br label %if.then17

kvcalloc.exit:                                    ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 5254592, i32 noundef -1) #13
  %buckets = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %buckets to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %buckets, align 128
  %tobool16.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not, label %kvcalloc.exit.if.then17_crit_edge, label %kvcalloc.exit.for.body_crit_edge

kvcalloc.exit.for.body_crit_edge:                 ; preds = %kvcalloc.exit
  br label %for.body

kvcalloc.exit.if.then17_crit_edge:                ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then17:                                        ; preds = %kvcalloc.exit.if.then17_crit_edge, %kvcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %kvcalloc.exit.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %kvcalloc.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets, align 128
  %arrayidx = getelementptr %struct.bpf_local_storage_map_bucket, ptr %13, i32 %i.054
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %15 = load ptr, ptr %buckets, align 128
  %lock = getelementptr %struct.bpf_local_storage_map_bucket, ptr %15, i32 %i.054, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @bpf_local_storage_map_alloc.__key, i16 noundef signext 2) #9
  %inc = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_size, align 8
  %18 = trunc i32 %17 to i16
  %conv25 = add i16 %18, 256
  %elem_size = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %elem_size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv25, ptr %elem_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_local_storage_map_check_btf(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %btf, ptr nocapture noundef readonly %key_type, ptr nocapture noundef readnone %value_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.btf_type, ptr %key_type, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %2 = and i32 %1, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp.not = icmp eq i32 %2, 16777216
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.btf_type, ptr %key_type, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = and i32 %4, 16711935
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %6 = icmp eq i32 %5, 32
  %spec.select = select i1 %6, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bpf_local_storage.c", i32 115, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_local_storage.c", i32 197, i32 9}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_local_storage.c", i32 236, i32 10}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../kernel/bpf/bpf_local_storage.c", i32 242, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bpf_local_storage_alloc.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../kernel/bpf/bpf_local_storage.c", i32 303, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../kernel/bpf/bpf_local_storage.c", i32 368, i32 18}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/bpf/bpf_local_storage.c", i32 533, i32 5}
!18 = !{ptr @bpf_local_storage_map_alloc.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../kernel/bpf/bpf_local_storage.c", i32 607, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../kernel/bpf/bpf_local_storage.c", i32 167, i32 18}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2149281581}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2157947005}
!45 = !{i64 2157951813}
!46 = !{i64 820932, i64 820953, i64 820976, i64 820995, i64 821014}
!47 = !{i64 2157952230}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2149179970}
!50 = !{i64 2149180236}
!51 = !{i32 0, i32 33}
