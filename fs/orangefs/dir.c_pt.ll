; ModuleID = '/llk/IR_all_yes/fs/orangefs/dir.c_pt.bc'
source_filename = "../fs/orangefs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.orangefs_dir = type { i64, ptr, i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dir_context = type { ptr, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.83 = type { ptr }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.orangefs_dir_part = type { ptr, i32 }

@orangefs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @orangefs_dir_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @orangefs_dir_iterate, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @orangefs_dir_open, ptr null, ptr @orangefs_dir_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_readdir\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967291]
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"orangefs_dir_operations\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 398, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 3566, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 3571, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [21 x i8] c"../fs/orangefs/dir.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 89, i32 28 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @orangefs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @orangefs_dir_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whence)
  %tobool.not = icmp eq i32 %whence, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.orangefs_dir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp = icmp sgt i64 %3, %offset
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %part1 = getelementptr inbounds %struct.orangefs_dir, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %part1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part1, align 8
  %tobool2.not15 = icmp eq ptr %5, null
  br i1 %tobool2.not15, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %part.016 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %if.then.while.body_crit_edge ]
  %6 = ptrtoint ptr %part.016 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part.016, align 4
  tail call void @vfree(ptr noundef nonnull %part.016) #3
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2147483646, ptr %1, align 8
  %9 = ptrtoint ptr %part1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %part1, align 8
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 16777216, ptr %end, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i64 @default_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #3
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_dir_iterate(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -376
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %error = getelementptr inbounds %struct.orangefs_dir, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %13 to i64
  %call.i = tail call i32 %11(ptr noundef %ctx, ptr noundef nonnull @.str, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %pos, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %16 = phi i64 [ %inc, %if.end6 ], [ %9, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %16)
  %cmp10 = icmp eq i64 %16, 1
  br i1 %cmp10, label %if.then11, label %if.end16thread-pre-split

if.then11:                                        ; preds = %if.end8
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %19 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dentry1, align 4
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #3
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent.i.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #3
  %conv.i96 = zext i32 %26 to i64
  %call1.i = tail call i32 %18(ptr noundef %ctx, ptr noundef nonnull @.str.1, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i96, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i97 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i97, label %if.end14, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 16777216, ptr %pos, align 8
  br label %while.cond.preheader

if.end16thread-pre-split:                         ; preds = %if.end8
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %28)
  %.pr = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %.pr)
  %phi.cmp = icmp ult i64 %.pr, 16777216
  br i1 %phi.cmp, label %if.end16thread-pre-split.cleanup_crit_edge, label %if.end16thread-pre-split.while.cond.preheader_crit_edge

if.end16thread-pre-split.while.cond.preheader_crit_edge: ; preds = %if.end16thread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.preheader

if.end16thread-pre-split.cleanup_crit_edge:       ; preds = %if.end16thread-pre-split
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end16thread-pre-split.while.cond.preheader_crit_edge, %if.end14
  %end = getelementptr inbounds %struct.orangefs_dir, ptr %5, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483645, i64 %30)
  %cmp21.not = icmp eq i64 %30, 2147483645
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos, align 8
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp32 = icmp sgt i64 %32, %34
  br i1 %cmp21.not, label %land.lhs.true, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  br i1 %cmp32, label %while.body, label %land.rhs.if.end34_crit_edge

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

while.body:                                       ; preds = %land.rhs
  %call24 = tail call fastcc i32 @orangefs_dir_more(ptr noundef %add.ptr.i, ptr noundef %5, ptr noundef %1)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

land.lhs.true:                                    ; preds = %while.cond
  br i1 %cmp32, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %land.rhs.if.end34_crit_edge
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp37 = icmp slt i64 %36, %38
  br i1 %cmp37, label %if.then38, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.then38:                                        ; preds = %if.end34
  %call39 = tail call fastcc i32 @orangefs_dir_fill(ptr noundef %5, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483645, i64 %40)
  %cmp45.not = icmp eq i64 %40, 2147483645
  br i1 %cmp45.not, label %if.end43.cleanup_crit_edge, label %if.then46

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  %call47 = tail call fastcc i32 @orangefs_dir_more(ptr noundef %add.ptr.i, ptr noundef %5, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  %call51 = tail call fastcc i32 @orangefs_dir_fill(ptr noundef %5, ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then46.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end16thread-pre-split.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ -5, %if.end16thread-pre-split.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %call47, %if.then46.cleanup_crit_edge ], [ %call51, %if.end50 ], [ 0, %if.end43.cleanup_crit_edge ], [ %call24, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_dir_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2147483646, ptr %call7.i, align 8
  %part = getelementptr inbounds %struct.orangefs_dir, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %part, align 8
  %end = getelementptr inbounds %struct.orangefs_dir, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 16777216, ptr %end, align 8
  %error = getelementptr inbounds %struct.orangefs_dir, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_dir_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %part1 = getelementptr inbounds %struct.orangefs_dir, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %part1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part1, align 8
  %tobool.not6 = icmp eq ptr %3, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %part.07 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %4 = ptrtoint ptr %part.07 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part.07, align 4
  tail call void @vfree(ptr noundef nonnull %part.07) #3
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @kfree(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orangefs_dir_more(ptr nocapture noundef readonly %oi, ptr nocapture noundef %od, ptr nocapture noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @op_alloc(i32 noundef -16777209) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %error = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 3
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -12, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 8
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 3, i32 7
  %3 = call ptr @memcpy(ptr %req.i, ptr %oi, i32 24)
  %4 = ptrtoint ptr %od to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %od, align 8
  %token4.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %token4.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %token4.i, align 8
  %max_dirent_count.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 3, i32 7, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %max_dirent_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 512, ptr %max_dirent_count.i, align 8
  %call90.i = tail call i32 @orangefs_readdir_index_get() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %if.end.out_crit_edge, label %if.end.lr.ph.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end.lr.ph.i:                                   ; preds = %if.end
  %buf_index.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 3, i32 7, i32 0, i32 3, i32 20
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %trailer_buf.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 4, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call92.i = phi i32 [ %call90.i, %if.end.lr.ph.i ], [ %call.i, %if.then15.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %buf_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call92.i, ptr %buf_index.i, align 4
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %16, 1
  %call10.i = tail call i32 @service_operation(ptr noundef nonnull %call, ptr noundef nonnull @.str.2, i32 noundef %and.i) #3
  tail call void @orangefs_readdir_index_put(i32 noundef %call92.i) #3
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 8
  %and11.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then13.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end.i
  %19 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10.i, label %if.then13.i.if.end23.i_crit_edge [
    i32 -11, label %if.then15.i
    i32 -5, label %if.then13.i.if.then3.sink.split.sink.split_crit_edge
  ]

if.then13.i.if.then3.sink.split.sink.split_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3.sink.split.sink.split

if.then13.i.if.end23.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

if.then15.i:                                      ; preds = %if.then13.i
  %20 = ptrtoint ptr %trailer_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trailer_buf.i, align 8
  tail call void @vfree(ptr noundef %21) #3
  %call.i = tail call i32 @orangefs_readdir_index_get() #3
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then15.i.out_crit_edge, label %if.then15.i.if.end.i_crit_edge

if.then15.i.if.end.i_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then15.i.out_crit_edge:                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end23.i:                                       ; preds = %if.then13.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp24.i = icmp slt i32 %call10.i, 0
  br i1 %cmp24.i, label %if.end23.i.if.then3.sink.split.sink.split_crit_edge, label %if.else29.i

if.end23.i.if.then3.sink.split.sink.split_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3.sink.split.sink.split

if.else29.i:                                      ; preds = %if.end23.i
  %status.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not.i = icmp eq i32 %23, 0
  br i1 %tobool31.not.i, label %if.end41.i, label %do_readdir.exit

if.end41.i:                                       ; preds = %if.else29.i
  %trailer_size.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %trailer_size.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %trailer_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %25)
  %cmp43.i = icmp sgt i64 %25, 16777216
  %26 = ptrtoint ptr %trailer_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trailer_buf.i, align 8
  br i1 %cmp43.i, label %if.end41.i.if.then3.sink.split_crit_edge, label %do_readdir.exit.thread31

if.end41.i.if.then3.sink.split_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3.sink.split

do_readdir.exit.thread31:                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  %30 = ptrtoint ptr %od to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %od, align 8
  br label %if.end5

do_readdir.exit:                                  ; preds = %if.else29.i
  %31 = ptrtoint ptr %trailer_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trailer_buf.i, align 8
  tail call void @vfree(ptr noundef %32) #3
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i, align 4
  %error37.i = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 3
  %35 = ptrtoint ptr %error37.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %error37.i, align 8
  %36 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not = icmp eq i32 %36, 0
  br i1 %tobool2.not, label %do_readdir.exit.if.end5_crit_edge, label %do_readdir.exit.out_crit_edge

do_readdir.exit.out_crit_edge:                    ; preds = %do_readdir.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

do_readdir.exit.if.end5_crit_edge:                ; preds = %do_readdir.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then3.sink.split.sink.split:                   ; preds = %if.end23.i.if.then3.sink.split.sink.split_crit_edge, %if.then13.i.if.then3.sink.split.sink.split_crit_edge
  %37 = ptrtoint ptr %trailer_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trailer_buf.i, align 8
  br label %if.then3.sink.split

if.then3.sink.split:                              ; preds = %if.then3.sink.split.sink.split, %if.end41.i.if.then3.sink.split_crit_edge
  %.sink = phi ptr [ %27, %if.end41.i.if.then3.sink.split_crit_edge ], [ %38, %if.then3.sink.split.sink.split ]
  %retval.0.i30.ph = phi i32 [ -5, %if.end41.i.if.then3.sink.split_crit_edge ], [ %call10.i, %if.then3.sink.split.sink.split ]
  tail call void @vfree(ptr noundef %.sink) #3
  br label %out

if.end5:                                          ; preds = %do_readdir.exit.if.end5_crit_edge, %do_readdir.exit.thread31
  %part1.i = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 1
  %39 = ptrtoint ptr %part1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %part1.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end5
  %part.0.i = phi ptr [ %40, %if.end5 ], [ %42, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ 1, %if.end5 ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %part.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %count.0.i, 1
  %41 = ptrtoint ptr %part.0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %part.0.i, align 4
  %tobool2.not.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %while.body.i.while.end.i_crit_edge ], [ %count.0.i, %while.cond.i.while.end.i_crit_edge ]
  %43 = ptrtoint ptr %trailer_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trailer_buf.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %44, align 4
  %trailer_size.i27 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %trailer_size.i27 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %trailer_size.i27, align 8
  %48 = trunc i64 %47 to i32
  %conv.i = add i32 %48, -24
  %len.i = getelementptr inbounds %struct.orangefs_dir_part, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv.i, ptr %len.i, align 4
  %50 = ptrtoint ptr %part1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part1.i, align 8
  %tobool7.not.i = icmp eq ptr %51, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %part1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %part1.i, align 8
  br label %parse_readdir.exit

if.else10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %part.0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %44, ptr %part.0.i, align 4
  br label %parse_readdir.exit

parse_readdir.exit:                               ; preds = %if.else10.i, %if.then8.i
  %inc13.i = shl i32 %count.1.i, 24
  %shl.i = add i32 %inc13.i, 16777216
  %conv14.i = zext i32 %shl.i to i64
  %end.i = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 2
  %54 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv14.i, ptr %end.i, align 8
  br label %out

out:                                              ; preds = %parse_readdir.exit, %if.then3.sink.split, %do_readdir.exit.out_crit_edge, %if.then15.i.out_crit_edge, %if.end.out_crit_edge
  %.sink40 = phi i32 [ 0, %parse_readdir.exit ], [ %36, %do_readdir.exit.out_crit_edge ], [ %call90.i, %if.end.out_crit_edge ], [ %retval.0.i30.ph, %if.then3.sink.split ], [ %call.i, %if.then15.i.out_crit_edge ]
  %error11 = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 3
  %55 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink40, ptr %error11, align 8
  tail call void @op_release(ptr noundef nonnull %call) #3
  %error12 = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 3
  %56 = ptrtoint ptr %error12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error12, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %57, %out ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orangefs_dir_fill(ptr nocapture noundef %od, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %2 = lshr i64 %1, 24
  %3 = trunc i64 %2 to i32
  %part1 = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 1
  %4 = ptrtoint ptr %part1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %part.0 = phi ptr [ %5, %entry ], [ %7, %while.cond.while.cond_crit_edge ]
  %count.0.in = phi i32 [ %3, %entry ], [ %count.0, %while.cond.while.cond_crit_edge ]
  %count.0 = add i32 %count.0.in, -1
  %6 = ptrtoint ptr %part.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part.0, align 4
  %tobool.not = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool2.not = icmp eq i32 %count.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool2.not, label %while.cond5.preheader, label %if.then

while.cond5.preheader:                            ; preds = %while.end
  %tobool6.not7 = icmp eq ptr %part.0, null
  br i1 %tobool6.not7, label %while.cond5.preheader.cleanup25_crit_edge, label %while.cond5.preheader.land.rhs7_crit_edge

while.cond5.preheader.land.rhs7_crit_edge:        ; preds = %while.cond5.preheader
  br label %land.rhs7

while.cond5.preheader.cleanup25_crit_edge:        ; preds = %while.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup25

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %error = getelementptr inbounds %struct.orangefs_dir, ptr %od, i32 0, i32 3
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %error, align 8
  br label %cleanup25

land.rhs7:                                        ; preds = %cleanup.land.rhs7_crit_edge, %while.cond5.preheader.land.rhs7_crit_edge
  %part.18 = phi ptr [ %48, %cleanup.land.rhs7_crit_edge ], [ %part.0, %while.cond5.preheader.land.rhs7_crit_edge ]
  %len = getelementptr inbounds %struct.orangefs_dir_part, ptr %part.18, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %land.rhs7.cleanup25_crit_edge, label %while.body10

land.rhs7.cleanup25_crit_edge:                    ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup25

while.body10:                                     ; preds = %land.rhs7
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  %and.i = and i64 %12, 16777215
  %conv.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %while.body10.cleanup_crit_edge, label %if.end.i

while.body10.cleanup_crit_edge:                   ; preds = %while.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %while.body10
  %rem.i = and i64 %12, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.i)
  %tobool.not.i = icmp eq i64 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = sub i64 0, %12
  %rem5.i = and i64 %sub.i, 7
  %add.i = add nuw nsw i64 %and.i, %rem5.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i.0.i = phi i64 [ %add.i, %if.then3.i ], [ %and.i, %if.end.i.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %i.0.i, i64 %conv.i)
  %cmp9117.i = icmp uge i64 %i.0.i, %conv.i
  %add13118.i = add nuw nsw i64 %i.0.i, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add13118.i, i64 %conv.i)
  %cmp14119.i = icmp ugt i64 %add13118.i, %conv.i
  %or.cond120.i = or i1 %cmp9117.i, %cmp14119.i
  br i1 %or.cond120.i, label %if.end6.i.cleanup_crit_edge, label %if.end17.lr.ph.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17.lr.ph.i:                                 ; preds = %if.end6.i
  %add.ptr.i = getelementptr i8, ptr %part.18, i32 24
  br label %if.end17.i

if.end17.i:                                       ; preds = %while.cond.backedge.i.if.end17.i_crit_edge, %if.end17.lr.ph.i
  %conv8122.i = phi i64 [ %conv.i, %if.end17.lr.ph.i ], [ %conv8.i, %while.cond.backedge.i.if.end17.i_crit_edge ]
  %i.1121.i = phi i64 [ %i.0.i, %if.end17.lr.ph.i ], [ %i.1.be.i, %while.cond.backedge.i.if.end17.i_crit_edge ]
  %idx.ext.i = trunc i64 %i.1121.i to i32
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext.i
  %13 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr18.i, align 4
  %add20.i = add i32 %14, 5
  %sub24.i = sub i32 3, %14
  %rem25.i = and i32 %sub24.i, 7
  %add26.i = add i32 %add20.i, %rem25.i
  %conv29.i = zext i32 %add26.i to i64
  %add30.i = add i64 %i.1121.i, 16
  %add31.i = add i64 %add30.i, %conv29.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add31.i, i64 %conv8122.i)
  %cmp32.i = icmp sgt i64 %add31.i, %conv8122.i
  br i1 %cmp32.i, label %if.end17.i.next.i_crit_edge, label %if.end35.i

if.end17.i.next.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next.i

if.end35.i:                                       ; preds = %if.end17.i
  %add.ptr39.i = getelementptr i8, ptr %add.ptr18.i, i32 4
  %arrayidx.i = getelementptr i8, ptr %add.ptr39.i, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp41.not.i = icmp eq i8 %16, 0
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end35.i.next.i_crit_edge

if.end35.i.next.i_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next.i

if.end44.i:                                       ; preds = %if.end35.i
  %add.ptr48.i = getelementptr i8, ptr %add.ptr18.i, i32 %add26.i
  %arrayidx34.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 12
  %17 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx34.i.i, align 4
  %arrayidx37.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 8
  %19 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx37.i.i, align 8
  %xor3989.i.i = xor i8 %20, %18
  %arrayidx43.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 13
  %21 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx43.i.i, align 1
  %arrayidx46.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 9
  %23 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx46.i.i, align 1
  %xor4890.i.i = xor i8 %24, %22
  %arrayidx52.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 14
  %25 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx52.i.i, align 2
  %arrayidx55.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 10
  %27 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55.i.i, align 2
  %xor5791.i.i = xor i8 %28, %26
  %arrayidx61.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 15
  %29 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx61.i.i, align 1
  %arrayidx64.i.i = getelementptr [16 x i8], ptr %add.ptr48.i, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx64.i.i, align 1
  %xor6692.i.i = xor i8 %32, %30
  %ihandle.sroa.11.0.insert.ext.i.i = zext i8 %xor6692.i.i to i32
  %ihandle.sroa.10.0.insert.ext.i.i = zext i8 %xor5791.i.i to i32
  %ihandle.sroa.10.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.10.0.insert.ext.i.i, 8
  %ihandle.sroa.10.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.shift.i.i, %ihandle.sroa.11.0.insert.ext.i.i
  %ihandle.sroa.9.0.insert.ext.i.i = zext i8 %xor4890.i.i to i32
  %ihandle.sroa.9.0.insert.shift.i.i = shl nuw nsw i32 %ihandle.sroa.9.0.insert.ext.i.i, 16
  %ihandle.sroa.9.0.insert.insert.i.i = or i32 %ihandle.sroa.10.0.insert.insert.i.i, %ihandle.sroa.9.0.insert.shift.i.i
  %ihandle.sroa.8.0.insert.ext.i.i = zext i8 %xor3989.i.i to i32
  %ihandle.sroa.8.0.insert.shift.i.i = shl nuw i32 %ihandle.sroa.8.0.insert.ext.i.i, 24
  %ihandle.sroa.8.0.insert.insert.i.i = or i32 %ihandle.sroa.9.0.insert.insert.i.i, %ihandle.sroa.8.0.insert.shift.i.i
  %conv49.i = zext i32 %ihandle.sroa.8.0.insert.insert.i.i to i64
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 8
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos, align 8
  %call.i.i = tail call i32 %34(ptr noundef %ctx, ptr noundef %add.ptr39.i, i32 noundef %14, i64 noundef %36, i64 noundef %conv49.i, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end52.i, label %if.end44.i.cleanup25_crit_edge

if.end44.i.cleanup25_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup25

if.end52.i:                                       ; preds = %if.end44.i
  %add53.i = add i32 %add26.i, 16
  %conv54.i = zext i32 %add53.i to i64
  %add55.i = add i64 %i.1121.i, %conv54.i
  %37 = trunc i64 %add55.i to i8
  %rem58114.lhs.trunc.i = sub i8 0, %37
  %rem58114115.i = and i8 %rem58114.lhs.trunc.i, 7
  %rem58114.zext.i = zext i8 %rem58114115.i to i64
  %add59.i = add i64 %add55.i, %rem58114.zext.i
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %conv61.i = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add59.i, i64 %conv61.i)
  %cmp62.i = icmp sgt i64 %add59.i, %conv61.i
  br i1 %cmp62.i, label %do.body67.i, label %do.end73.i, !prof !17

do.body67.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/orangefs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #3, !srcloc !18
  unreachable

do.end73.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pos, align 8
  %and75.i = and i64 %41, -16777216
  %or.i = or i64 %and75.i, %add59.i
  store i64 %or.i, ptr %pos, align 8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %next.i, %do.end73.i
  %i.1.be.i = phi i64 [ %add77.i, %next.i ], [ %add59.i, %do.end73.i ]
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %conv8.i = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %i.1.be.i, i64 %conv8.i)
  %cmp9.i = icmp sge i64 %i.1.be.i, %conv8.i
  %add13.i = add i64 %i.1.be.i, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add13.i, i64 %conv8.i)
  %cmp14.i = icmp sgt i64 %add13.i, %conv8.i
  %or.cond.i = or i1 %cmp9.i, %cmp14.i
  br i1 %or.cond.i, label %while.cond.backedge.i.cleanup_crit_edge, label %while.cond.backedge.i.if.end17.i_crit_edge

while.cond.backedge.i.if.end17.i_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.i

while.cond.backedge.i.cleanup_crit_edge:          ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

next.i:                                           ; preds = %if.end35.i.next.i_crit_edge, %if.end17.i.next.i_crit_edge
  %add77.i = add i64 %i.1121.i, 8
  br label %while.cond.backedge.i

cleanup:                                          ; preds = %while.cond.backedge.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %while.body10.cleanup_crit_edge
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %pos, align 8
  %46 = add i64 %45, 16777216
  %add = and i64 %46, -16777216
  store i64 %add, ptr %pos, align 8
  %47 = ptrtoint ptr %part.18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %part.18, align 4
  %tobool6.not = icmp eq ptr %48, null
  br i1 %tobool6.not, label %cleanup.cleanup25_crit_edge, label %cleanup.land.rhs7_crit_edge

cleanup.land.rhs7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs7

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup.cleanup25_crit_edge, %if.end44.i.cleanup25_crit_edge, %land.rhs7.cleanup25_crit_edge, %if.then, %while.cond5.preheader.cleanup25_crit_edge
  %retval.2 = phi i32 [ -5, %if.then ], [ 0, %while.cond5.preheader.cleanup25_crit_edge ], [ 0, %if.end44.i.cleanup25_crit_edge ], [ 0, %land.rhs7.cleanup25_crit_edge ], [ 0, %cleanup.cleanup25_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_readdir_index_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_readdir_index_put(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @orangefs_dir_operations, !1, !"orangefs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/orangefs/dir.c", i32 398, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/dir.c", i32 89, i32 28}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2154844646, i64 2154849189, i64 2154844683, i64 2154844739, i64 2154844773, i64 2154844797, i64 2154844838, i64 2154844859, i64 2154844887, i64 2154844921}
