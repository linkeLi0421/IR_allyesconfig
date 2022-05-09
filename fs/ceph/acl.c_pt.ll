; ModuleID = '/llk/IR_all_yes/fs/ceph/acl.c_pt.bc'
source_filename = "../fs/ceph/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.105 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.108 = type { ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.ceph_acl_sec_ctx = type { ptr, ptr, ptr, i32, ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ceph_get_acl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_get_acl = private unnamed_addr constant [13 x i8] c"ceph_get_acl\00", align 1
@ceph_get_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.ceph_get_acl, ptr @.str.5, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ceph: get acl %llx.%llx failed, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ceph/acl.c\00", [18 x i8] zeroinitializer }, align 32
@ceph_get_acl._entry_ptr = internal global ptr @ceph_get_acl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 45, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 48, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 55, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [17 x i8] c"../fs/ceph/acl.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 75, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ceph_get_acl._entry, ptr @ceph_get_acl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ceph_get_acl._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_get_acl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_get_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %if.end.sw.epilog_crit_edge ]
  br label %retry

retry:                                            ; preds = %if.then16, %sw.epilog
  %retry_cnt.0 = phi i32 [ 0, %sw.epilog ], [ %inc, %if.then16 ]
  %call5 = tail call i32 @__ceph_getxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull @.str.2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp sgt i32 %call5, 0
  br i1 %cmp, label %if.end8.i.i, label %retry.if.end13_crit_edge

retry.if.end13_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end8.i.i:                                      ; preds = %retry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call5, i32 noundef 3392) #11
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @__ceph_getxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull %call9.i.i, i32 noundef %call5) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %retry.if.end13_crit_edge
  %size.0 = phi i32 [ %call12, %if.end11 ], [ %call5, %retry.if.end13_crit_edge ]
  %value.1 = phi ptr [ %call9.i.i, %if.end11 ], [ null, %retry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %size.0)
  %cmp14 = icmp eq i32 %size.0, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry_cnt.0)
  %cmp15 = icmp ult i32 %retry_cnt.0, 10
  %or.cond = select i1 %cmp14, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw nsw i32 %retry_cnt.0, 1
  tail call void @kfree(ptr noundef %value.1) #8
  br label %retry

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp18 = icmp sgt i32 %size.0, 0
  br i1 %cmp18, label %if.end38, label %if.else

if.else:                                          ; preds = %if.end17
  %1 = zext i32 %size.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %size.0, label %if.else24 [
    i32 -61, label %if.else.if.end38.thread72_crit_edge
    i32 0, label %if.else.if.end38.thread72_crit_edge76
  ]

if.else.if.end38.thread72_crit_edge76:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.thread72

if.else.if.end38.thread72_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.thread72

if.else24:                                        ; preds = %if.else
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_get_acl._rs, ptr noundef nonnull @__func__.ceph_get_acl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else24.if.end38.thread_crit_edge, label %do.end30

if.else24.if.end38.thread_crit_edge:              ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.thread

do.end30:                                         ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap, align 8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %3, i64 noundef %5, i32 noundef %size.0) #12
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %do.end30, %if.else24.if.end38.thread_crit_edge
  tail call void @kfree(ptr noundef %value.1) #8
  br label %cleanup

if.end38.thread72:                                ; preds = %if.else.if.end38.thread72_crit_edge, %if.else.if.end38.thread72_crit_edge76
  tail call void @kfree(ptr noundef %value.1) #8
  br label %if.then40

if.end38:                                         ; preds = %if.end17
  %call20 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %value.1, i32 noundef %size.0) #8
  tail call void @kfree(ptr noundef %value.1) #8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end38.cleanup_crit_edge, label %if.end38.if.then40_crit_edge

if.end38.if.then40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %if.end38.if.then40_crit_edge, %if.end38.thread72
  %acl.075 = phi ptr [ null, %if.end38.thread72 ], [ %call20, %if.end38.if.then40_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #8
  %call1.i = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl.075) #8
  br label %ceph_set_cached_acl.exit

if.else.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @forget_cached_acl(ptr noundef %inode, i32 noundef %type) #8
  br label %ceph_set_cached_acl.exit

ceph_set_cached_acl.exit:                         ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ceph_set_cached_acl.exit, %if.end38.cleanup_crit_edge, %if.end38.thread, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.075, %ceph_set_cached_acl.exit ], [ %call20, %if.end38.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end38.thread ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %newattrs = alloca %struct.iattr, align 8
  %old_ctime = alloca %struct.timespec64, align 8
  %new_mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #8
  %1 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %old_ctime)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %2 = call ptr @memcpy(ptr %old_ctime, ptr %i_ctime, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_mode) #8
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = ptrtoint ptr %new_mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %new_mode, align 2
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp.not = icmp eq i64 %7, -2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %type, label %if.end.out_crit_edge [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb8
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then2

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then2:                                         ; preds = %sw.bb
  %call3 = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef nonnull %new_mode, ptr noundef nonnull %acl.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.sw.epilog_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then2.sw.epilog_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %9 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp10 = icmp eq i16 %9, 16384
  br i1 %cmp10, label %sw.bb8.sw.epilog_crit_edge, label %if.then12

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %tobool13.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool13.not, i32 0, i32 -22
  br label %out

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %if.then2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str, %if.then2.sw.epilog_crit_edge ], [ @.str, %sw.bb.sw.epilog_crit_edge ], [ @.str.1, %sw.bb8.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl.addr, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %sw.epilog.if.end27_crit_edge, label %if.then16

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then16:                                        ; preds = %sw.epilog
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %13, 3
  %add.i = or i32 %mul.i, 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #11
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.then16.out_crit_edge, label %if.end21

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.then16
  %14 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acl.addr, align 4
  %call22 = call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %15, ptr noundef nonnull %call9.i, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.out_free_crit_edge, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end21.out_free_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %sw.epilog.if.end27_crit_edge
  %size.0 = phi i32 [ %add.i, %if.end21.if.end27_crit_edge ], [ 0, %sw.epilog.if.end27_crit_edge ]
  %value.0 = phi ptr [ %call9.i, %if.end21.if.end27_crit_edge ], [ null, %sw.epilog.if.end27_crit_edge ]
  %16 = ptrtoint ptr %new_mode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %new_mode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %4)
  %cmp30.not = icmp eq i16 %17, %4
  br i1 %cmp30.not, label %if.end27.if.end37_crit_edge, label %if.then32

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end27
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ia_ctime, ptr noundef %inode) #8
  %18 = ptrtoint ptr %new_mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %new_mode, align 2
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  %20 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ia_mode, align 4
  %21 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65, ptr %newattrs, align 8
  %call33 = call i32 @__ceph_setattr(ptr noundef %inode, ptr noundef nonnull %newattrs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.out_free_crit_edge

if.then32.out_free_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %call38 = call i32 @__ceph_setxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end51, label %if.then40

if.then40:                                        ; preds = %if.end37
  %22 = ptrtoint ptr %new_mode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %new_mode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %4)
  %cmp43.not = icmp eq i16 %23, %4
  br i1 %cmp43.not, label %if.then40.out_free_crit_edge, label %if.then45

if.then40.out_free_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %ia_ctime46 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %ia_ctime46, ptr %old_ctime, i32 16)
  %ia_mode47 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  %25 = ptrtoint ptr %ia_mode47 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %4, ptr %ia_mode47, align 4
  %26 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65, ptr %newattrs, align 8
  %call49 = call i32 @__ceph_setattr(ptr noundef %inode, ptr noundef nonnull %newattrs) #8
  br label %out_free

if.end51:                                         ; preds = %if.end37
  %27 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %acl.addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #8
  %call1.i = call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i74

if.then.i74:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %28) #8
  br label %ceph_set_cached_acl.exit

if.else.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @forget_cached_acl(ptr noundef %inode, i32 noundef %type) #8
  br label %ceph_set_cached_acl.exit

ceph_set_cached_acl.exit:                         ; preds = %if.else.i, %if.then.i74
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #8
  br label %out_free

out_free:                                         ; preds = %ceph_set_cached_acl.exit, %if.then45, %if.then40.out_free_crit_edge, %if.then32.out_free_crit_edge, %if.end21.out_free_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end21.out_free_crit_edge ], [ %call33, %if.then32.out_free_crit_edge ], [ %call38, %if.then45 ], [ %call38, %if.then40.out_free_crit_edge ], [ 0, %ceph_set_cached_acl.exit ]
  %value.1 = phi ptr [ %call9.i, %if.end21.out_free_crit_edge ], [ %value.0, %if.then32.out_free_crit_edge ], [ %value.0, %if.then45 ], [ %value.0, %if.then40.out_free_crit_edge ], [ %value.0, %ceph_set_cached_acl.exit ]
  call void @kfree(ptr noundef %value.1) #8
  br label %out

out:                                              ; preds = %out_free, %if.then16.out_crit_edge, %if.then12, %if.then2.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ %cond, %if.then12 ], [ %call3, %if.then2.out_crit_edge ], [ -30, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -12, %if.then16.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new_mode) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %old_ctime)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_pre_init_acls(ptr noundef %dir, ptr noundef %mode, ptr nocapture noundef writeonly %as_ctx) local_unnamed_addr #0 align 64 {
entry:
  %ev.i141 = alloca i32, align 4
  %ev.i139 = alloca i32, align 4
  %ev.i = alloca i32, align 4
  %acl = alloca ptr, align 4
  %default_acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #8
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #8
  %1 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !24
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef %mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup81_crit_edge

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @posix_acl_equiv_mode(ptr noundef nonnull %3, ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then2.out_err_crit_edge, label %if.end5

if.then2.out_err_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp6 = icmp eq i32 %call3, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then7.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

if.then7.posix_acl_release.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #8
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #8, !srcloc !26
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !27

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #8
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %if.then7.posix_acl_release.exit_crit_edge
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %acl, align 4
  br label %if.end9

if.end9:                                          ; preds = %posix_acl_release.exit, %if.end5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %default_acl, align 4
  %tobool10.not = icmp eq ptr %9, null
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end9
  br i1 %tobool11.not, label %land.lhs.true.cleanup81_crit_edge, label %if.end17.thread169

land.lhs.true.cleanup81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

if.end17.thread169:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %a_count170 = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %a_count170 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_count170, align 4
  %mul.i171 = shl i32 %13, 3
  %add.i172 = or i32 %mul.i171, 4
  br label %if.end8.i

if.end13:                                         ; preds = %if.end9
  br i1 %tobool11.not, label %if.end13.if.then19_crit_edge, label %if.end17

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %15, 3
  %add.i = or i32 %mul.i, 4
  br label %if.then19

if.then19:                                        ; preds = %if.end17, %if.end13.if.then19_crit_edge
  %val_size1.0167 = phi i32 [ %add.i, %if.end17 ], [ 0, %if.end13.if.then19_crit_edge ]
  %a_count20 = getelementptr inbounds %struct.posix_acl, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %a_count20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %a_count20, align 4
  %mul.i137 = shl i32 %17, 3
  %add.i138 = or i32 %mul.i137, 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then19, %if.end17.thread169
  %val_size1.0168 = phi i32 [ %val_size1.0167, %if.then19 ], [ %add.i172, %if.end17.thread169 ]
  %val_size2.0 = phi i32 [ %add.i138, %if.then19 ], [ 0, %if.end17.thread169 ]
  %18 = call i32 @llvm.umax.i32(i32 %val_size1.0168, i32 %val_size2.0)
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #11
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %if.end8.i.out_err_crit_edge, label %if.end27

if.end8.i.out_err_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end27:                                         ; preds = %if.end8.i
  %call28 = call ptr @ceph_pagelist_alloc(i32 noundef 3264) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.out_err_crit_edge, label %if.end31

if.end27.out_err_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @ceph_pagelist_reserve(ptr noundef nonnull %call28, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_err_crit_edge

if.end31.out_err_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end35:                                         ; preds = %if.end31
  %19 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %acl, align 4
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %if.end35.land.end_crit_edge, label %land.rhs

if.end35.land.end_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %default_acl, align 4
  %tobool37.not = icmp eq ptr %22, null
  %phi.sel = select i1 %tobool37.not, i32 16777216, i32 33554432
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end35.land.end_crit_edge
  %23 = phi i32 [ 16777216, %if.end35.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i) #8
  %24 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ev.i, align 4
  %call.i = call i32 @ceph_pagelist_append(ptr noundef nonnull %call28, ptr noundef nonnull %ev.i, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i) #8
  %25 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %acl, align 4
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %land.end.if.end54_crit_edge, label %if.then41

land.end.if.end54_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then41:                                        ; preds = %land.end
  %add42 = add i32 %val_size1.0168, 31
  %call43 = call i32 @ceph_pagelist_reserve(ptr noundef nonnull %call28, i32 noundef %add42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then41.out_err_crit_edge

if.then41.out_err_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end46:                                         ; preds = %if.then41
  call fastcc void @ceph_pagelist_encode_string(ptr noundef nonnull %call28, ptr noundef nonnull @.str, i32 noundef 23)
  %27 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %acl, align 4
  %call48 = call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %28, ptr noundef nonnull %call9.i, i32 noundef %val_size1.0168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.out_err_crit_edge, label %cleanup

if.end46.out_err_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

cleanup:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i139) #8
  %29 = call i32 @llvm.bswap.i32(i32 %val_size1.0168) #8
  %30 = ptrtoint ptr %ev.i139 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ev.i139, align 4
  %call.i140 = call i32 @ceph_pagelist_append(ptr noundef nonnull %call28, ptr noundef nonnull %ev.i139, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i139) #8
  %call53 = call i32 @ceph_pagelist_append(ptr noundef nonnull %call28, ptr noundef nonnull %call9.i, i32 noundef %val_size1.0168) #8
  br label %if.end54

if.end54:                                         ; preds = %cleanup, %land.end.if.end54_crit_edge
  %31 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %default_acl, align 4
  %tobool55.not = icmp eq ptr %32, null
  br i1 %tobool55.not, label %if.end54.if.end74_crit_edge, label %if.then56

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then56:                                        ; preds = %if.end54
  %add59 = add i32 %val_size2.0, 32
  %call60 = call i32 @ceph_pagelist_reserve(ptr noundef nonnull %call28, i32 noundef %add59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then56.out_err_crit_edge

if.then56.out_err_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end63:                                         ; preds = %if.then56
  call fastcc void @ceph_pagelist_encode_string(ptr noundef nonnull %call28, ptr noundef nonnull @.str.1, i32 noundef 24)
  %33 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %default_acl, align 4
  %call65 = call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %34, ptr noundef nonnull %call9.i, i32 noundef %val_size2.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end63.out_err_crit_edge, label %cleanup71

if.end63.out_err_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

cleanup71:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i141) #8
  %35 = call i32 @llvm.bswap.i32(i32 %val_size2.0) #8
  %36 = ptrtoint ptr %ev.i141 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ev.i141, align 4
  %call.i142 = call i32 @ceph_pagelist_append(ptr noundef nonnull %call28, ptr noundef nonnull %ev.i141, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i141) #8
  %call70 = call i32 @ceph_pagelist_append(ptr noundef nonnull %call28, ptr noundef nonnull %call9.i, i32 noundef %val_size2.0) #8
  br label %if.end74

if.end74:                                         ; preds = %cleanup71, %if.end54.if.end74_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #8
  %37 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %acl, align 4
  %acl75 = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 1
  %39 = ptrtoint ptr %acl75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %acl75, align 4
  %40 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %default_acl, align 4
  %42 = ptrtoint ptr %as_ctx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %as_ctx, align 4
  %pagelist77 = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %43 = ptrtoint ptr %pagelist77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call28, ptr %pagelist77, align 4
  br label %cleanup81

out_err:                                          ; preds = %if.end63.out_err_crit_edge, %if.then56.out_err_crit_edge, %if.end46.out_err_crit_edge, %if.then41.out_err_crit_edge, %if.end31.out_err_crit_edge, %if.end27.out_err_crit_edge, %if.end8.i.out_err_crit_edge, %if.then2.out_err_crit_edge
  %pagelist.0 = phi ptr [ null, %if.then2.out_err_crit_edge ], [ %call28, %if.end31.out_err_crit_edge ], [ null, %if.end27.out_err_crit_edge ], [ null, %if.end8.i.out_err_crit_edge ], [ %call28, %if.then41.out_err_crit_edge ], [ %call28, %if.end46.out_err_crit_edge ], [ %call28, %if.then56.out_err_crit_edge ], [ %call28, %if.end63.out_err_crit_edge ]
  %tmp_buf.0 = phi ptr [ null, %if.then2.out_err_crit_edge ], [ %call9.i, %if.end31.out_err_crit_edge ], [ %call9.i, %if.end27.out_err_crit_edge ], [ null, %if.end8.i.out_err_crit_edge ], [ %call9.i, %if.then41.out_err_crit_edge ], [ %call9.i, %if.end46.out_err_crit_edge ], [ %call9.i, %if.then56.out_err_crit_edge ], [ %call9.i, %if.end63.out_err_crit_edge ]
  %err.2 = phi i32 [ %call3, %if.then2.out_err_crit_edge ], [ %call32, %if.end31.out_err_crit_edge ], [ -12, %if.end27.out_err_crit_edge ], [ -12, %if.end8.i.out_err_crit_edge ], [ %call43, %if.then41.out_err_crit_edge ], [ %call48, %if.end46.out_err_crit_edge ], [ %call60, %if.then56.out_err_crit_edge ], [ %call65, %if.end63.out_err_crit_edge ]
  %44 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %acl, align 4
  %tobool.not.i143 = icmp eq ptr %45, null
  br i1 %tobool.not.i143, label %out_err.posix_acl_release.exit153_crit_edge, label %land.lhs.true.i147

out_err.posix_acl_release.exit153_crit_edge:      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit153

land.lhs.true.i147:                               ; preds = %out_err
  %call.i.i.i.i.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %45, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @llvm.prefetch.p0(ptr nonnull %45, i32 1, i32 3, i32 1) #8
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %45, ptr nonnull %45, i32 1, ptr nonnull elementtype(i32) %45) #8, !srcloc !26
  %asmresult.i.i.i.i.i.i.i145 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i145)
  %cmp.i.i.i.i146 = icmp eq i32 %asmresult.i.i.i.i.i.i.i145, 1
  br i1 %cmp.i.i.i.i146, label %do.end.i152, label %if.end5.i.i.i.i149

if.end5.i.i.i.i149:                               ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i145)
  %.not.i.i.i.i148 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i145, 0
  br i1 %.not.i.i.i.i148, label %if.end5.i.i.i.i149.posix_acl_release.exit153_crit_edge, label %if.then10.i.i.i.i150, !prof !27

if.end5.i.i.i.i149.posix_acl_release.exit153_crit_edge: ; preds = %if.end5.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit153

if.then10.i.i.i.i150:                             ; preds = %if.end5.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %45, i32 noundef 3) #8
  br label %posix_acl_release.exit153

do.end.i152:                                      ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %a_rcu.i151 = getelementptr inbounds %struct.posix_acl, ptr %45, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i151, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %posix_acl_release.exit153

posix_acl_release.exit153:                        ; preds = %do.end.i152, %if.then10.i.i.i.i150, %if.end5.i.i.i.i149.posix_acl_release.exit153_crit_edge, %out_err.posix_acl_release.exit153_crit_edge
  %47 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %default_acl, align 4
  %tobool.not.i154 = icmp eq ptr %48, null
  br i1 %tobool.not.i154, label %posix_acl_release.exit153.posix_acl_release.exit164_crit_edge, label %land.lhs.true.i158

posix_acl_release.exit153.posix_acl_release.exit164_crit_edge: ; preds = %posix_acl_release.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit164

land.lhs.true.i158:                               ; preds = %posix_acl_release.exit153
  %call.i.i.i.i.i.i155 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #8, !srcloc !26
  %asmresult.i.i.i.i.i.i.i156 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i156)
  %cmp.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i156, 1
  br i1 %cmp.i.i.i.i157, label %do.end.i163, label %if.end5.i.i.i.i160

if.end5.i.i.i.i160:                               ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i156)
  %.not.i.i.i.i159 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i156, 0
  br i1 %.not.i.i.i.i159, label %if.end5.i.i.i.i160.posix_acl_release.exit164_crit_edge, label %if.then10.i.i.i.i161, !prof !27

if.end5.i.i.i.i160.posix_acl_release.exit164_crit_edge: ; preds = %if.end5.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_acl_release.exit164

if.then10.i.i.i.i161:                             ; preds = %if.end5.i.i.i.i160
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #8
  br label %posix_acl_release.exit164

do.end.i163:                                      ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %a_rcu.i162 = getelementptr inbounds %struct.posix_acl, ptr %48, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i162, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %posix_acl_release.exit164

posix_acl_release.exit164:                        ; preds = %do.end.i163, %if.then10.i.i.i.i161, %if.end5.i.i.i.i160.posix_acl_release.exit164_crit_edge, %posix_acl_release.exit153.posix_acl_release.exit164_crit_edge
  call void @kfree(ptr noundef %tmp_buf.0) #8
  %tobool78.not = icmp eq ptr %pagelist.0, null
  br i1 %tobool78.not, label %posix_acl_release.exit164.cleanup81_crit_edge, label %if.then79

posix_acl_release.exit164.cleanup81_crit_edge:    ; preds = %posix_acl_release.exit164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup81

if.then79:                                        ; preds = %posix_acl_release.exit164
  call void @__sanitizer_cov_trace_pc() #10
  call void @ceph_pagelist_release(ptr noundef nonnull %pagelist.0) #8
  br label %cleanup81

cleanup81:                                        ; preds = %if.then79, %posix_acl_release.exit164.cleanup81_crit_edge, %if.end74, %land.lhs.true.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ %call, %entry.cleanup81_crit_edge ], [ 0, %land.lhs.true.cleanup81_crit_edge ], [ %err.2, %if.then79 ], [ %err.2, %posix_acl_release.exit164.cleanup81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_equiv_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pagelist_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pagelist_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_pagelist_encode_string(ptr noundef %pl, ptr noundef %s, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  %ev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev.i) #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %len) #8
  %1 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ev.i, align 4
  %call.i = call i32 @ceph_pagelist_append(ptr noundef %pl, ptr noundef nonnull %ev.i, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 @ceph_pagelist_append(ptr noundef %pl, ptr noundef %s, i32 noundef %len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pagelist_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_pagelist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_init_inode_acls(ptr noundef %inode, ptr nocapture noundef readonly %as_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %acl = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl, align 4
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #8
  %call1.i = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_cached_acl(ptr noundef nonnull %inode, i32 noundef 32768, ptr noundef %1) #8
  br label %ceph_set_cached_acl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @forget_cached_acl(ptr noundef nonnull %inode, i32 noundef 32768) #8
  br label %ceph_set_cached_acl.exit

ceph_set_cached_acl.exit:                         ; preds = %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #8
  %2 = ptrtoint ptr %as_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as_ctx, align 4
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #8
  %call1.i6 = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i.i, i32 noundef 64, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %if.else.i9, label %if.then.i8

if.then.i8:                                       ; preds = %ceph_set_cached_acl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @set_cached_acl(ptr noundef nonnull %inode, i32 noundef 16384, ptr noundef %3) #8
  br label %ceph_set_cached_acl.exit10

if.else.i9:                                       ; preds = %ceph_set_cached_acl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @forget_cached_acl(ptr noundef nonnull %inode, i32 noundef 16384) #8
  br label %ceph_set_cached_acl.exit10

ceph_set_cached_acl.exit10:                       ; preds = %if.else.i9, %if.then.i8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #8
  br label %return

return:                                           ; preds = %ceph_set_cached_acl.exit10, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask_metric(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_cached_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/acl.c", i32 45, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ceph/acl.c", i32 48, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ceph/acl.c", i32 55, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ceph/acl.c", i32 75, i32 3}
!8 = !{ptr @ceph_get_acl._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.ceph_get_acl, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ceph_get_acl._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ceph_get_acl._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2155841222, i64 2155841699, i64 2155841259, i64 2155841315, i64 2155841349, i64 2155841373, i64 2155841414, i64 2155841435, i64 2155841463, i64 2155841497}
!24 = !{!"auto-init"}
!25 = !{i64 2148761918}
!26 = !{i64 2148676358, i64 2148676390, i64 2148676419, i64 2148676453, i64 2148676484, i64 2148676507}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2150367658}
