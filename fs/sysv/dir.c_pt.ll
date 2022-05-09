; ModuleID = '/llk/IR_all_yes/fs/sysv/dir.c_pt.bc'
source_filename = "../fs/sysv/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sysv_dir_entry = type { i16, [14 x i8] }
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@sysv_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysv_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"sysv_dir_operations\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 24, i32 30 }
@___asan_gen_.20 = private constant [17 x i8] c"../fs/sysv/dir.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 272, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 788, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 260, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 44, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 717, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @sysv_dir_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pos1 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos1, align 8
  %conv = trunc i64 %1 to i32
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %8 = trunc i64 %7 to i32
  %conv.i = add i32 %8, 4095
  %shr.i = lshr i32 %conv.i, 12
  %sub = add i32 %conv, 15
  %and = and i32 %sub, -16
  %conv3 = zext i32 %and to i64
  store i64 %conv3, ptr %pos1, align 8
  %9 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv3)
  %cmp.not = icmp sgt i64 %9, %conv3
  br i1 %cmp.not, label %if.end, label %entry.cleanup43_crit_edge

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end:                                           ; preds = %entry
  %shr = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr.i)
  %cmp876 = icmp ult i32 %shr, %shr.i
  br i1 %cmp876, label %for.body.lr.ph, label %if.end.cleanup43_crit_edge

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %if.end
  %and7 = and i32 %sub, 4080
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %n.078 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc, %for.inc41.for.body_crit_edge ]
  %offset.077 = phi i32 [ %and7, %for.body.lr.ph ], [ 0, %for.inc41.for.body_crit_edge ]
  %10 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %11, i32 noundef %n.078, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.for.inc41_crit_edge, label %if.then.i

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc41

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i.i = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #10
  br label %if.end13

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else.i.i, %if.then.i.i
  %call14 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %add.ptr = getelementptr i8, ptr %call14, i32 %offset.077
  %add.ptr16 = getelementptr i8, ptr %call14, i32 4080
  %cmp18.not73 = icmp ugt ptr %add.ptr, %add.ptr16
  br i1 %cmp18.not73, label %if.end13.for.end_crit_edge, label %if.end13.for.body20_crit_edge

if.end13.for.body20_crit_edge:                    ; preds = %if.end13
  br label %for.body20

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %if.end13.for.body20_crit_edge
  %de.074 = phi ptr [ %incdec.ptr, %for.inc.for.body20_crit_edge ], [ %add.ptr, %if.end13.for.body20_crit_edge ]
  %16 = ptrtoint ptr %de.074 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %de.074, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %for.body20.for.inc_crit_edge, label %if.end24

for.body20.for.inc_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %for.body20
  %name21 = getelementptr inbounds %struct.sysv_dir_entry, ptr %de.074, i32 0, i32 1
  %call25 = tail call i32 @strnlen(ptr noundef %name21, i32 noundef 14) #13
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %retval.0.i = select i1 %cmp.not.i, i16 %17, i16 %22
  %conv29 = zext i16 %retval.0.i to i64
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  %25 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos1, align 8
  %call.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %name21, i32 noundef %call25, i64 noundef %26, i64 noundef %conv29, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i70 = icmp eq i32 %call.i, 0
  br i1 %cmp.i70, label %if.end24.for.inc_crit_edge, label %cleanup35

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end24.for.inc_crit_edge, %for.body20.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysv_dir_entry, ptr %de.074, i32 1
  %27 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos1, align 8
  %add34 = add i64 %28, 16
  store i64 %add34, ptr %pos1, align 8
  %cmp18.not = icmp ugt ptr %incdec.ptr, %add.ptr16
  br i1 %cmp18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %for.inc41

cleanup35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %cleanup43

for.inc41:                                        ; preds = %for.end, %for.body.for.inc41_crit_edge
  %inc = add nuw nsw i32 %n.078, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc41.cleanup43_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc41.cleanup43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc41.cleanup43_crit_edge, %cleanup35, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sysv_find_entry(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  %10 = trunc i64 %9 to i32
  %conv.i = add i32 %10, 4095
  %shr.i = lshr i32 %conv.i, 12
  %11 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %res_page, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %7, i32 -4
  %12 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_dir_start_lookup, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr.i)
  %cmp.not = icmp ult i32 %13, %shr.i
  %spec.store.select = select i1 %cmp.not, i32 %13, i32 0
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp.i54 = icmp slt i32 %3, 14
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %n.0 = phi i32 [ %spec.store.select, %entry ], [ %spec.store.select32, %do.cond.do.body_crit_edge ]
  %14 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %15, i32 noundef %n.0, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.do.cond_crit_edge, label %if.then.i

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then.i:                                        ; preds = %do.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i.i = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #10
  br label %if.then7

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #10
  br label %if.then7

if.then7:                                         ; preds = %if.else.i.i, %if.then.i.i
  %call8 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %add.ptr = getelementptr i8, ptr %call8, i32 4080
  %cmp9.not66 = icmp ugt ptr %call8, %add.ptr
  br i1 %cmp9.not66, label %if.then7.for.end_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %de.167 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call8, %if.then7.for.body_crit_edge ]
  %20 = ptrtoint ptr %de.167 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %de.167, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %name12 = getelementptr inbounds %struct.sysv_dir_entry, ptr %de.167, i32 0, i32 1
  br i1 %cmp.i54, label %land.lhs.true.i, label %if.end11.namecompare.exit_crit_edge

if.end11.namecompare.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %namecompare.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %arrayidx.i = getelementptr i8, ptr %name12, i32 %3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.namecompare.exit_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.namecompare.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %namecompare.exit

namecompare.exit:                                 ; preds = %land.lhs.true.i.namecompare.exit_crit_edge, %if.end11.namecompare.exit_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %name12, i32 %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i.not, label %found, label %namecompare.exit.for.inc_crit_edge

namecompare.exit.for.inc_crit_edge:               ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %namecompare.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysv_dir_entry, ptr %de.167, i32 1
  %cmp9.not = icmp ugt ptr %incdec.ptr, %add.ptr
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %do.cond

do.cond:                                          ; preds = %for.end, %do.body.do.cond_crit_edge
  %inc = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr.i)
  %cmp18.not = icmp ult i32 %inc, %shr.i
  %spec.store.select32 = select i1 %cmp18.not, i32 %inc, i32 0
  %cmp21.not = icmp eq i32 %spec.store.select32, %spec.store.select
  br i1 %cmp21.not, label %do.cond.cleanup24_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.cleanup24_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

found:                                            ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %n.0, ptr %i_dir_start_lookup, align 4
  %25 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %res_page, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %found, %do.cond.cleanup24_crit_edge
  %retval.0 = phi ptr [ %de.167, %found ], [ null, %do.cond.cleanup24_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dir_put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #10
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !30

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@dir_put_page, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %8) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_add_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  %10 = trunc i64 %9 to i32
  %conv.i = add i32 %10, 4095
  %shr.i = lshr i32 %conv.i, 12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp.i82 = icmp slt i32 %7, 14
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry
  %n.099 = phi i32 [ 0, %entry ], [ %inc, %while.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %12, i32 noundef %n.099, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dir_get_page.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %14, 30
  %15 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %16 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp2.i.not.i.i = icmp eq i32 %16, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #10
  br label %if.end

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #10
  br label %if.end

dir_get_page.exit:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call.i.i to i32
  br label %out

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %call7 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %add.ptr = getelementptr i8, ptr %call7, i32 4080
  %cmp8.not96 = icmp ugt ptr %call7, %add.ptr
  br i1 %cmp8.not96, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %if.end.while.body_crit_edge
  %de.097 = phi ptr [ %incdec.ptr, %if.end16.while.body_crit_edge ], [ %call7, %if.end.while.body_crit_edge ]
  %18 = ptrtoint ptr %de.097 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %de.097, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %got_it, label %if.end11

if.end11:                                         ; preds = %while.body
  %name12 = getelementptr inbounds %struct.sysv_dir_entry, ptr %de.097, i32 0, i32 1
  br i1 %cmp.i82, label %land.lhs.true.i, label %if.end11.namecompare.exit_crit_edge

if.end11.namecompare.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %namecompare.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %arrayidx.i = getelementptr i8, ptr %name12, i32 %7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.namecompare.exit_crit_edge, label %land.lhs.true.i.if.end16_crit_edge

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.i.namecompare.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %namecompare.exit

namecompare.exit:                                 ; preds = %land.lhs.true.i.namecompare.exit_crit_edge, %if.end11.namecompare.exit_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %name12, i32 %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i.not, label %namecompare.exit.out_page_crit_edge, label %namecompare.exit.if.end16_crit_edge

namecompare.exit.if.end16_crit_edge:              ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

namecompare.exit.out_page_crit_edge:              ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_page

if.end16:                                         ; preds = %namecompare.exit.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge
  %incdec.ptr = getelementptr %struct.sysv_dir_entry, ptr %de.097, i32 1
  %cmp8.not = icmp ugt ptr %incdec.ptr, %add.ptr
  br i1 %cmp8.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  %inc = add nuw nsw i32 %n.099, 1
  %exitcond = icmp eq i32 %n.099, %shr.i
  br i1 %exitcond, label %do.body, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/sysv/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #10, !srcloc !36
  unreachable

got_it:                                           ; preds = %while.body
  %22 = ptrtoint ptr %call.i.i to i32
  %index.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %24, 12
  %add.ptr21 = getelementptr i8, ptr %de.097, i32 %shl.i
  %call22 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr21 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 788) #10
  %25 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %got_it._compound_head.exit.i_crit_edge, label %if.then.i.i84, !prof !29

got_it._compound_head.exit.i_crit_edge:           ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i84:                                    ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i84, %got_it._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i84 ], [ %22, %got_it._compound_head.exit.i_crit_edge ]
  %28 = inttoptr i32 %retval.0.i.i to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !37
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #10
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and.i.i4.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i85_crit_edge

folio_flags.exit.i.i.if.then.i85_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i85

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #10, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i85_crit_edge

folio_trylock.exit.i.if.then.i85_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i85

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i85:                                      ; preds = %folio_trylock.exit.i.if.then.i85_crit_edge, %folio_flags.exit.i.i.if.then.i85_crit_edge
  tail call void @__folio_lock(ptr noundef %28) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i85, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call23 = tail call i32 @sysv_prepare_chunk(ptr noundef %call.i.i, i64 noundef %conv, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %out_unlock

if.end26:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name27 = getelementptr inbounds %struct.sysv_dir_entry, ptr %de.097, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %name27, ptr %5, i32 %7)
  %add.ptr31 = getelementptr i8, ptr %name27, i32 %7
  %sub32 = sub i32 14, %7
  %36 = call ptr @memset(ptr %add.ptr31, i32 0, i32 %sub32)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino, align 8
  %conv34 = trunc i32 %42 to i16
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp.not.i = icmp eq i8 %44, 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv34) #10
  %retval.0.i87 = select i1 %cmp.not.i, i16 %conv34, i16 %45
  %46 = ptrtoint ptr %de.097 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %retval.0.i87, ptr %de.097, align 2
  %call37 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %call.i.i, i64 noundef %conv, i32 noundef 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #10
  %47 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %48 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  br label %out_page

out_page:                                         ; preds = %out_unlock, %if.end26, %namecompare.exit.out_page_crit_edge
  %err.0 = phi i32 [ %call23, %out_unlock ], [ %call37, %if.end26 ], [ -17, %namecompare.exit.out_page_crit_edge ]
  call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %out

out:                                              ; preds = %out_page, %dir_get_page.exit
  %err.1 = phi i32 [ %17, %dir_get_page.exit ], [ %err.0, %out_page ]
  ret i32 %err.1

out_unlock:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef %call.i.i) #10
  br label %out_page
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_prepare_chunk(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @block_write_end(ptr noundef null, ptr noundef %1, i64 noundef %pos, i32 noundef %len, i32 noundef %len, ptr noundef %page, ptr noundef null) #10
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp = icmp sgt i64 %add, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %11 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %15 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %20, ptrtoint (ptr @lockdep_recursion to i32)
  %21 = inttoptr i32 %add.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %24 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i7.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i29.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i9.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %35, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  %36 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %39, ptrtoint (ptr @hardirqs_enabled to i32)
  %40 = inttoptr i32 %add47.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !44
  %43 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i12.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %46, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !29

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #10
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %50) #10
  %51 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !46
  %52 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %54 = tail call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i.i26.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  br label %if.end

if.end:                                           ; preds = %i_size_write.exit, %entry.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_flags, align 4
  %and = and i32 %61, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags, align 4
  %and5 = and i32 %63, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %64 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i, label %if.then.i.i25, !prof !29

if.then.i.i25:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i24 = add i32 %66, -1
  br label %write_one_page.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %page to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i, %if.then.i.i25
  %retval.0.i.i = phi i32 [ %sub.i.i24, %if.then.i.i25 ], [ %67, %if.end.i.i ]
  %68 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %68) #10
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef %page) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %write_one_page.exit
  %err.0 = phi i32 [ %call1.i, %write_one_page.exit ], [ 0, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_delete_entry(ptr noundef %de, ptr noundef %page) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #10
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %5, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 788) #10
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !37
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and.i.i4.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %10, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %10) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call2 = tail call i32 @sysv_prepare_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !29

do.body5:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/sysv/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #10, !srcloc !48
  unreachable

do.end10:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %de to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %de, align 2
  %call12 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef 16)
  tail call fastcc void @dir_put_page(ptr noundef %page)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #10
  %18 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %19 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_make_empty(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %dir) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sysv_prepare_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #10
  br label %fail

if.end4:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.i, align 4
  %shr.i.i = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i, label %if.end4.if.then.i_crit_edge [
    i32 2, label %if.end4.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end4.if.else.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call.i.i) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end4.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call.i.i) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %call6 = tail call ptr @page_address(ptr noundef nonnull %call.i.i) #10
  %8 = call ptr @memset(ptr %call6, i32 0, i32 4096)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %conv = trunc i32 %14 to i16
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.not.i = icmp eq i8 %16, 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %retval.0.i = select i1 %cmp.not.i, i16 %conv, i16 %17
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %retval.0.i, ptr %call6, align 2
  %name = getelementptr inbounds %struct.sysv_dir_entry, ptr %call6, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 11776, ptr %name, align 1
  %incdec.ptr = getelementptr %struct.sysv_dir_entry, ptr %call6, i32 1
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i40 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i40, align 16
  %i_ino13 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino13, align 8
  %conv14 = trunc i32 %25 to i16
  %s_bytesex.i41 = getelementptr inbounds %struct.sysv_sb_info, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %s_bytesex.i41 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_bytesex.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.not.i42 = icmp eq i8 %27, 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv14) #10
  %retval.0.i43 = select i1 %cmp.not.i42, i16 %conv14, i16 %28
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %retval.0.i43, ptr %incdec.ptr, align 2
  %name17 = getelementptr %struct.sysv_dir_entry, ptr %call6, i32 1, i32 1
  %30 = call ptr @memcpy(ptr %name17, ptr @.str.1, i32 3)
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #10
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i.i, align 4
  %shr.i.i44 = lshr i32 %32, 30
  %33 = zext i32 %shr.i.i44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i44, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i46
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i46:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %34 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i.not.i45 = icmp eq i32 %34, 2
  br i1 %cmp2.i.not.i45, label %is_highmem_idx.exit.i46.if.end.i_crit_edge, label %is_highmem_idx.exit.i46.kunmap.exit_crit_edge

is_highmem_idx.exit.i46.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i46.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i46.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call.i.i) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i46.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %call20 = tail call fastcc i32 @dir_commit_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef 32)
  br label %fail

fail:                                             ; preds = %kunmap.exit, %if.then3
  %err.0 = phi i32 [ %call1, %if.then3 ], [ %call20, %kunmap.exit ]
  %35 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %37, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %38, %if.end.i.i ]
  %39 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %40 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !30

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@sysv_make_empty, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %39, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_empty_dir(ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = add i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp69.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp69.not, label %entry.cleanup43_crit_edge, label %for.body.lr.ph

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc41.for.body_crit_edge ]
  %5 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %6, i32 noundef %i.070, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.for.inc41_crit_edge, label %if.then.i

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc41

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %8, 30
  %9 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %10 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.i.not.i.i = icmp eq i32 %10, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #10
  br label %if.end

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %call3 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %add.ptr = getelementptr i8, ptr %call3, i32 4080
  %cmp5.not66 = icmp ugt ptr %call3, %add.ptr
  br i1 %cmp5.not66, label %if.end.for.end_crit_edge, label %if.end.for.body6_crit_edge

if.end.for.body6_crit_edge:                       ; preds = %if.end
  br label %for.body6

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %if.end.for.body6_crit_edge
  %de.067 = phi ptr [ %incdec.ptr, %for.inc.for.body6_crit_edge ], [ %call3, %if.end.for.body6_crit_edge ]
  %11 = ptrtoint ptr %de.067 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %de.067, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %for.body6.for.inc_crit_edge, label %if.end9

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %for.body6
  %name = getelementptr inbounds %struct.sysv_dir_entry, ptr %de.067, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %14)
  %cmp10.not = icmp eq i8 %14, 46
  br i1 %cmp10.not, label %if.end13, label %if.end9.not_empty_crit_edge

if.end9.not_empty_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.end13:                                         ; preds = %if.end9
  %arrayidx15 = getelementptr %struct.sysv_dir_entry, ptr %de.067, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %16, label %if.end13.not_empty_crit_edge [
    i8 0, label %if.then17
    i8 46, label %lor.lhs.false
  ]

if.end13.not_empty_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.then17:                                        ; preds = %if.end13
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %conv21 = trunc i32 %21 to i16
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv21) #10
  %retval.0.i = select i1 %cmp.not.i, i16 %conv21, i16 %24
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %retval.0.i)
  %cmp24 = icmp eq i16 %12, %retval.0.i
  br i1 %cmp24, label %if.then17.for.inc_crit_edge, label %if.then17.not_empty_crit_edge

if.then17.not_empty_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end13
  %arrayidx35 = getelementptr %struct.sysv_dir_entry, ptr %de.067, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  br i1 %tobool37.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.not_empty_crit_edge

lor.lhs.false.not_empty_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysv_dir_entry, ptr %de.067, i32 1
  %cmp5.not = icmp ugt ptr %incdec.ptr, %add.ptr
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %for.inc41

for.inc41:                                        ; preds = %for.end, %for.body.for.inc41_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc41.cleanup43_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc41.cleanup43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

not_empty:                                        ; preds = %lor.lhs.false.not_empty_crit_edge, %if.then17.not_empty_crit_edge, %if.end13.not_empty_crit_edge, %if.end9.not_empty_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %cleanup43

cleanup43:                                        ; preds = %not_empty, %for.inc41.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ 0, %not_empty ], [ 1, %entry.cleanup43_crit_edge ], [ 1, %for.inc41.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_set_link(ptr noundef %de, ptr noundef %page, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %5, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %call1 = tail call ptr @page_address(ptr noundef %page) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 788) #10
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !37
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and.i.i4.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %10, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %10) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call2 = tail call i32 @sysv_prepare_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !29

do.body5:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/sysv/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

do.end10:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino, align 8
  %conv12 = trunc i32 %22 to i16
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.not.i = icmp eq i8 %24, 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv12) #10
  %retval.0.i = select i1 %cmp.not.i, i16 %conv12, i16 %25
  %26 = ptrtoint ptr %de to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %retval.0.i, ptr %de, align 2
  %call15 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef 16)
  tail call fastcc void @dir_put_page(ptr noundef %page)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #10
  %27 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %28 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sysv_dotdot(ptr nocapture noundef readonly %dir, ptr nocapture noundef writeonly %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #10
  br label %if.then

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #10
  br label %if.then

if.then:                                          ; preds = %if.else.i.i, %if.then.i.i
  %call2 = tail call ptr @page_address(ptr noundef %call.i.i) #10
  %add.ptr = getelementptr %struct.sysv_dir_entry, ptr %call2, i32 1
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %de.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_inode_by_name(ptr nocapture noundef readonly %dentry) local_unnamed_addr #1 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #10
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !50
  %call = call ptr @sysv_find_entry(ptr noundef %dentry, ptr noundef nonnull %page)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call, align 2
  %s_bytesex.i = getelementptr inbounds %struct.sysv_sb_info, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  %retval.0.i = select i1 %cmp.not.i, i16 %6, i16 %9
  %conv = zext i16 %retval.0.i to i32
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 4
  tail call fastcc void @dir_put_page(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #10
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @sysv_dir_operations, !1, !"sysv_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/sysv/dir.c", i32 24, i32 30}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/sysv/dir.c", i32 269, i32 18}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/sysv/dir.c", i32 272, i32 18}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/mm.h", i32 717, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2153156641, i64 2153157124, i64 2153156678, i64 2153156734, i64 2153156768, i64 2153156792, i64 2153156833, i64 2153156854, i64 2153156882, i64 2153156916}
!32 = !{i64 2148799121}
!33 = !{i64 2148713830, i64 2148713862, i64 2148713891, i64 2148713925, i64 2148713956, i64 2148713979}
!34 = !{i64 2148799350}
!35 = !{i64 2148311322, i64 2148311327, i64 2148311340, i64 2148311384, i64 2148311418, i64 2148311439}
!36 = !{i64 2154860368, i64 2154860846, i64 2154860405, i64 2154860461, i64 2154860495, i64 2154860519, i64 2154860560, i64 2154860581, i64 2154860609, i64 2154860643}
!37 = !{i64 2150265643, i64 2150266134, i64 2150265680, i64 2150265736, i64 2150265770, i64 2150265794, i64 2150265835, i64 2150265856, i64 2150265884, i64 2150265918}
!38 = !{i64 2148719503, i64 2148719535, i64 2148719564, i64 2148719598, i64 2148719629, i64 2148719652}
!39 = !{i64 2148808608}
!40 = !{i64 2153103158}
!41 = !{i64 2149780838}
!42 = !{i64 2149785770}
!43 = !{i64 2149807482}
!44 = !{i64 2149812374}
!45 = !{i64 2149888831}
!46 = !{i64 2149889156}
!47 = !{i64 2153115020}
!48 = !{i64 2154862035, i64 2154862513, i64 2154862072, i64 2154862128, i64 2154862162, i64 2154862186, i64 2154862227, i64 2154862248, i64 2154862276, i64 2154862310}
!49 = !{i64 2154863864, i64 2154864342, i64 2154863901, i64 2154863957, i64 2154863991, i64 2154864015, i64 2154864056, i64 2154864077, i64 2154864105, i64 2154864139}
!50 = !{!"auto-init"}
