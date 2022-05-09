; ModuleID = '/llk/IR_all_yes/fs/jfs/acl.c_pt.bc'
source_filename = "../fs/jfs/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.72 = type { ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 29, i32 14 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [16 x i8] c"../fs/jfs/acl.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 32, i32 14 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jfs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %ea_name.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %if.end.sw.epilog_crit_edge ]
  %call3 = tail call i32 @__jfs_getxattr(ptr noundef %inode, ptr noundef nonnull %ea_name.0, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.end8.i, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3264) #8
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @__jfs_getxattr(ptr noundef %inode, ptr noundef nonnull %ea_name.0, ptr noundef nonnull %call9.i, i32 noundef %call3) #5
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %sw.epilog.if.end11_crit_edge
  %size.0 = phi i32 [ %call10, %if.end9 ], [ %call3, %sw.epilog.if.end11_crit_edge ]
  %value.0 = phi ptr [ %call9.i, %if.end9 ], [ null, %sw.epilog.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp12 = icmp slt i32 %size.0, 0
  br i1 %cmp12, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %size.0)
  %cmp14 = icmp eq i32 %size.0, -61
  %1 = inttoptr i32 %size.0 to ptr
  %spec.select = select i1 %cmp14, ptr null, ptr %1
  br label %if.end20

if.else18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %value.0, i32 noundef %size.0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then13
  %acl.0 = phi ptr [ %call19, %if.else18 ], [ %spec.select, %if.then13 ]
  tail call void @kfree(ptr noundef %value.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end20 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jfs_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %inode.addr = alloca ptr, align 4
  %acl.addr = alloca ptr, align 4
  %mode = alloca i16, align 2
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %inode.addr, align 4
  %1 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #5
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mode, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call = tail call zeroext i16 @txBegin(ptr noundef %6, i32 noundef 0) #5
  %commit_mutex = getelementptr i8, ptr %inode, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp eq i32 %type, 32768
  br i1 %cmp, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl.addr, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode.addr, align 4
  %call2 = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %10, ptr noundef nonnull %mode, ptr noundef nonnull %acl.addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.end_tx_crit_edge

if.then.end_tx_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_tx

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode, align 2
  %13 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %inode.addr, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %16)
  %cmp7.not = icmp eq i16 %12, %16
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %tobool15.not = phi i1 [ true, %land.lhs.true.if.end11_crit_edge ], [ true, %entry.if.end11_crit_edge ], [ %cmp7.not, %if.end ]
  %17 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inode.addr, align 4
  %19 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acl.addr, align 4
  %call12 = call fastcc i32 @__jfs_set_acl(i16 noundef zeroext %call, ptr noundef %18, i32 noundef %type, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.end_tx_crit_edge

if.end11.end_tx_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %end_tx

if.then14:                                        ; preds = %if.end11
  br i1 %tobool15.not, label %if.then14.if.end18_crit_edge, label %if.then16

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode, align 2
  %23 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inode.addr, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %22, ptr %24, align 8
  %26 = load ptr, ptr %inode.addr, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %26) #5
  %27 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @__mark_inode_dirty(ptr noundef %26, i32 noundef 7) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14.if.end18_crit_edge
  %call19 = call i32 @txCommit(i16 noundef zeroext %call, i32 noundef 1, ptr noundef nonnull %inode.addr, i32 noundef 0) #5
  br label %end_tx

end_tx:                                           ; preds = %if.end18, %if.end11.end_tx_crit_edge, %if.then.end_tx_crit_edge
  %rc.0 = phi i32 [ %call2, %if.then.end_tx_crit_edge ], [ %call12, %if.end11.end_tx_crit_edge ], [ %call19, %if.end18 ]
  call void @txEnd(i16 noundef zeroext %call) #5
  %28 = ptrtoint ptr %inode.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode.addr, align 4
  %commit_mutex22 = getelementptr i8, ptr %29, i32 -592
  call void @mutex_unlock(ptr noundef %commit_mutex22) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__jfs_set_acl(i16 noundef zeroext %tid, ptr noundef %inode, i32 noundef %type, ptr noundef %acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 32768, label %entry.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %ea_name.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %entry.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %sw.epilog.out_crit_edge, label %if.then

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %sw.epilog
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %1 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %2, 3
  %add.i = or i32 %mul.i, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #8
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %out.thread, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %sw.epilog.out_crit_edge
  %size.0 = phi i32 [ %add.i, %if.end.out_crit_edge ], [ 0, %sw.epilog.out_crit_edge ]
  %value.0 = phi ptr [ %call9.i, %if.end.out_crit_edge ], [ null, %sw.epilog.out_crit_edge ]
  %call9 = tail call i32 @__jfs_setxattr(i16 noundef zeroext %tid, ptr noundef %inode, ptr noundef nonnull %ea_name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #5
  tail call void @kfree(ptr noundef %value.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %out.cleanup_crit_edge, %out.thread, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %out.cleanup_crit_edge ], [ %call5, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_init_acl(i16 noundef zeroext %tid, ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #5
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #5
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !13
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_acl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end4.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @__jfs_set_acl(i16 noundef zeroext %tid, ptr noundef %inode, i32 noundef 16384, ptr noundef nonnull %3)
  %4 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then2.if.end4_crit_edge, label %land.lhs.true.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.then2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #5
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #5, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !16

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #5
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #5
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end4.if.else11_crit_edge, label %if.then6

if.end4.if.else11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else11

if.end4.thread:                                   ; preds = %if.end
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %9 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %i_default_acl, align 4
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl, align 4
  %tobool5.not44 = icmp eq ptr %11, null
  br i1 %tobool5.not44, label %if.end4.thread.if.else11_crit_edge, label %if.end4.thread.if.end10_crit_edge

if.end4.thread.if.end10_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end4.thread.if.else11_crit_edge:               ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not = icmp eq i32 %call3, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.land.lhs.true.i35_crit_edge

if.then6.land.lhs.true.i35_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i35

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end4.thread.if.end10_crit_edge
  %12 = phi ptr [ %8, %if.then6.if.end10_crit_edge ], [ %11, %if.end4.thread.if.end10_crit_edge ]
  %call9 = call fastcc i32 @__jfs_set_acl(i16 noundef zeroext %tid, ptr noundef %inode, i32 noundef 32768, ptr noundef nonnull %12)
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i31 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i31, label %if.end10.if.end12_crit_edge, label %if.end10.land.lhs.true.i35_crit_edge

if.end10.land.lhs.true.i35_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i35

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true.i35:                                ; preds = %if.end10.land.lhs.true.i35_crit_edge, %if.then6.land.lhs.true.i35_crit_edge
  %rc.151 = phi i32 [ %call9, %if.end10.land.lhs.true.i35_crit_edge ], [ %call3, %if.then6.land.lhs.true.i35_crit_edge ]
  %14 = phi ptr [ %.pr, %if.end10.land.lhs.true.i35_crit_edge ], [ %8, %if.then6.land.lhs.true.i35_crit_edge ]
  %call.i.i.i.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #5
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #5, !srcloc !15
  %asmresult.i.i.i.i.i.i.i33 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i33)
  %cmp.i.i.i.i34 = icmp eq i32 %asmresult.i.i.i.i.i.i.i33, 1
  br i1 %cmp.i.i.i.i34, label %do.end.i40, label %if.end5.i.i.i.i37

if.end5.i.i.i.i37:                                ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i33)
  %.not.i.i.i.i36 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i33, 0
  br i1 %.not.i.i.i.i36, label %if.end5.i.i.i.i37.if.end12_crit_edge, label %if.then10.i.i.i.i38, !prof !16

if.end5.i.i.i.i37.if.end12_crit_edge:             ; preds = %if.end5.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10.i.i.i.i38:                              ; preds = %if.end5.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #5
  br label %if.end12

do.end.i40:                                       ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !17
  %a_rcu.i39 = getelementptr inbounds %struct.posix_acl, ptr %14, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i39, ptr noundef nonnull inttoptr (i32 4 to ptr)) #5
  br label %if.end12

if.else11:                                        ; preds = %if.end4.thread.if.else11_crit_edge, %if.end4.if.else11_crit_edge
  %rc.046 = phi i32 [ 0, %if.end4.thread.if.else11_crit_edge ], [ %call3, %if.end4.if.else11_crit_edge ]
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %16 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %i_acl, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %do.end.i40, %if.then10.i.i.i.i38, %if.end5.i.i.i.i37.if.end12_crit_edge, %if.end10.if.end12_crit_edge
  %rc.2 = phi i32 [ %rc.046, %if.else11 ], [ %call9, %if.end10.if.end12_crit_edge ], [ %rc.151, %if.end5.i.i.i.i37.if.end12_crit_edge ], [ %rc.151, %if.then10.i.i.i.i38 ], [ %rc.151, %do.end.i40 ]
  %mode2 = getelementptr i8, ptr %inode, i32 -844
  %17 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode2, align 4
  %and = and i32 %18, -65536
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %conv = zext i16 %20 to i32
  %or = or i32 %and, %conv
  store i32 %or, ptr %mode2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %if.end12 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jfs_setxattr(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/acl.c", i32 29, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jfs/acl.c", i32 32, i32 14}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{i64 2148510115}
!15 = !{i64 2148424579, i64 2148424611, i64 2148424640, i64 2148424674, i64 2148424705, i64 2148424728}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149556085}
