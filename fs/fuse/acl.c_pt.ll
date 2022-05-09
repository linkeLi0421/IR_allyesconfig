; ModuleID = '/llk/IR_all_yes/fs/fuse/acl.c_pt.bc'
source_filename = "../fs/fuse/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.41 }
%union.anon.41 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.43, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.81, i32, %struct.mutex, %struct.spinlock }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967235, i64 4294967262]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 32, i32 10 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [17 x i8] c"../fs/fuse/acl.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 34, i32 10 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fuse_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %posix_acl = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %posix_acl to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %posix_acl, align 1
  %10 = and i56 %bf.load, 68719542272
  %11 = icmp eq i56 %10, 65536
  br i1 %11, label %if.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end13.cleanup_crit_edge [
    i32 32768, label %if.end13.if.end20_crit_edge
    i32 16384, label %if.then16
  ]

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %name.0 = phi ptr [ @.str.1, %if.then16 ], [ @.str, %if.end13.if.end20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4096) #7
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @fuse_getxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull %call7.i, i32 noundef 4096) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %user_ns = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns, align 8
  %call29 = tail call ptr @posix_acl_from_xattr(ptr noundef %15, ptr noundef nonnull %call7.i, i32 noundef %call26) #4
  br label %if.end51

if.else30:                                        ; preds = %if.end25
  %16 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call26, label %if.else30.if.else47_crit_edge [
    i32 0, label %if.else30.if.end51_crit_edge
    i32 -61, label %if.else30.if.end51_crit_edge73
    i32 -95, label %land.lhs.true
    i32 -34, label %if.then45
  ]

if.else30.if.end51_crit_edge73:                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.else30.if.end51_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.else30.if.else47_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else47

land.lhs.true:                                    ; preds = %if.else30
  %17 = ptrtoint ptr %posix_acl to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load37 = load i56, ptr %posix_acl, align 1
  %18 = and i56 %bf.load37, 68719476736
  %tobool41.not = icmp eq i56 %18, 0
  br i1 %tobool41.not, label %land.lhs.true.if.else47_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

land.lhs.true.if.else47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else47

if.then45:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.else47:                                        ; preds = %land.lhs.true.if.else47_crit_edge, %if.else30.if.else47_crit_edge
  %19 = inttoptr i32 %call26 to ptr
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then45, %land.lhs.true.if.end51_crit_edge, %if.else30.if.end51_crit_edge, %if.else30.if.end51_crit_edge73, %if.then28
  %acl.0 = phi ptr [ %call29, %if.then28 ], [ inttoptr (i32 -7 to ptr), %if.then45 ], [ %19, %if.else47 ], [ null, %if.else30.if.end51_crit_edge ], [ null, %if.else30.if.end51_crit_edge73 ], [ null, %land.lhs.true.if.end51_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end51 ], [ null, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end20.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup42_crit_edge

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end:                                           ; preds = %entry
  %posix_acl = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %9 = ptrtoint ptr %posix_acl to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %posix_acl, align 1
  %10 = and i56 %bf.load, 274877972480
  %11 = icmp eq i56 %10, 65536
  br i1 %11, label %if.end8, label %if.end.cleanup42_crit_edge

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end8:                                          ; preds = %if.end
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %if.end8.cleanup42_crit_edge [
    i32 32768, label %if.end8.if.end14_crit_edge
    i32 16384, label %if.then11
  ]

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end8.cleanup42_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %name.0 = phi ptr [ @.str.1, %if.then11 ], [ @.str, %if.end8.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %acl, null
  br i1 %tobool15.not, label %if.else39, label %if.then16

if.then16:                                        ; preds = %if.end14
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %13 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %14, 3
  %add.i = or i32 %mul.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp18 = icmp ugt i32 %add.i, 4096
  br i1 %cmp18, label %if.then16.cleanup42_crit_edge, label %if.end8.i

if.then16.cleanup42_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end8.i:                                        ; preds = %if.then16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #8
  %tobool22.not = icmp eq ptr %call9.i, null
  br i1 %tobool22.not, label %if.end8.i.cleanup42_crit_edge, label %if.end24

if.end8.i.cleanup42_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end24:                                         ; preds = %if.end8.i
  %user_ns = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns, align 8
  %call25 = tail call i32 @posix_acl_to_xattr(ptr noundef %16, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i, i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %cleanup42

if.end28:                                         ; preds = %if.end24
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %17 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.unpack.i, 0
  %call31 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef 4) #4
  %not.call33 = xor i1 %call33, true
  %spec.select = zext i1 %not.call33 to i32
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end28.cleanup_crit_edge
  %extra_flags.0 = phi i32 [ 0, %if.end28.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call36 = tail call i32 @fuse_setxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull %call9.i, i32 noundef %add.i, i32 noundef 0, i32 noundef %extra_flags.0) #4
  tail call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %if.end41

if.else39:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 @fuse_removexattr(ptr noundef %inode, ptr noundef nonnull %name.0) #4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %cleanup
  %ret.1 = phi i32 [ %call36, %cleanup ], [ %call40, %if.else39 ]
  tail call void @forget_all_cached_acls(ptr noundef %inode) #4
  tail call void @fuse_invalidate_attr(ptr noundef %inode) #4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %if.then27, %if.end8.i.cleanup42_crit_edge, %if.then16.cleanup42_crit_edge, %if.end8.cleanup42_crit_edge, %if.end.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ %ret.1, %if.end41 ], [ -5, %entry.cleanup42_crit_edge ], [ -95, %if.end.cleanup42_crit_edge ], [ -22, %if.end8.cleanup42_crit_edge ], [ -12, %if.end8.i.cleanup42_crit_edge ], [ -7, %if.then16.cleanup42_crit_edge ], [ %call25, %if.then27 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_removexattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_invalidate_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fuse/acl.c", i32 32, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fuse/acl.c", i32 34, i32 10}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
