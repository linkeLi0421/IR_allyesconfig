; ModuleID = '/llk/IR_all_yes/fs/9p/acl.c_pt.bc'
source_filename = "../fs/9p/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
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
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@v9fs_xattr_acl_access_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.1, ptr null, i32 32768, ptr null, ptr @v9fs_xattr_get_acl, ptr @v9fs_xattr_set_acl }, [40 x i8] zeroinitializer }, align 32
@v9fs_xattr_acl_default_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str, ptr null, i32 16384, ptr null, ptr @v9fs_xattr_get_acl, ptr @v9fs_xattr_set_acl }, [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 62, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 63, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [30 x i8] c"v9fs_xattr_acl_access_handler\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 318, i32 28 }
@___asan_gen_.12 = private unnamed_addr constant [31 x i8] c"v9fs_xattr_acl_default_handler\00", align 1
@___asan_gen_.13 = private constant [15 x i8] c"../fs/9p/acl.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 325, i32 28 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @v9fs_xattr_acl_access_handler, ptr @v9fs_xattr_acl_default_handler], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_acl_access_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_xattr_acl_default_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_get_acl(ptr noundef %inode, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %6)
  %.not = icmp eq i8 %6, 48
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef null) #6
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc ptr @__v9fs_get_acl(ptr noundef %fid, ptr noundef nonnull @.str)
  %call9 = tail call fastcc ptr @__v9fs_get_acl(ptr noundef %fid, ptr noundef nonnull @.str.1)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %cmp.i35 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %land.lhs.true.if.then15_crit_edge, label %if.then12

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef %call8) #6
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef %call9) #6
  br label %if.then15

if.then15:                                        ; preds = %if.then12, %land.lhs.true.if.then15_crit_edge
  %retval1.0.ph = phi i32 [ -5, %land.lhs.true.if.then15_crit_edge ], [ 0, %if.then12 ]
  %tobool.not.i = icmp eq ptr %call8, null
  br i1 %tobool.not.i, label %if.then15.if.end16_crit_edge, label %land.lhs.true.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.then15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %call8, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8, ptr nonnull %call8, i32 1, ptr nonnull elementtype(i32) %call8) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end16_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.if.end16_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call8, i32 noundef 3) #6
  br label %if.end16

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call8, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end16

if.end16:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end16_crit_edge, %if.then15.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %retval1.051 = phi i32 [ -5, %if.end.if.end16_crit_edge ], [ %retval1.0.ph, %if.then15.if.end16_crit_edge ], [ %retval1.0.ph, %if.end5.i.i.i.i.if.end16_crit_edge ], [ %retval1.0.ph, %if.then10.i.i.i.i ], [ %retval1.0.ph, %do.end.i ]
  %cmp.i37 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %tobool.not.i38 = icmp eq ptr %call9, null
  %or.cond52 = or i1 %cmp.i37, %tobool.not.i38
  br i1 %or.cond52, label %if.end16.cleanup_crit_edge, label %land.lhs.true.i42

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i42:                                ; preds = %if.end16
  %call.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %call9, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9, ptr nonnull %call9, i32 1, ptr nonnull elementtype(i32) %call9) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i41, label %do.end.i47, label %if.end5.i.i.i.i44

if.end5.i.i.i.i44:                                ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40)
  %.not.i.i.i.i43 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i43, label %if.end5.i.i.i.i44.cleanup_crit_edge, label %if.then10.i.i.i.i45, !prof !19

if.end5.i.i.i.i44.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i45:                              ; preds = %if.end5.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call9, i32 noundef 3) #6
  br label %cleanup

do.end.i47:                                       ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i46 = getelementptr inbounds %struct.posix_acl, ptr %call9, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i46, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i47, %if.then10.i.i.i.i45, %if.end5.i.i.i.i44.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval1.051, %if.end16.cleanup_crit_edge ], [ %retval1.051, %if.end5.i.i.i.i44.cleanup_crit_edge ], [ %retval1.051, %if.then10.i.i.i.i45 ], [ %retval1.051, %do.end.i47 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__v9fs_get_acl(ptr noundef %fid, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v9fs_fid_xattr_get(ptr noundef %fid, ptr noundef %name, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3392) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %call4 = tail call i32 @v9fs_fid_xattr_get(ptr noundef %fid, ptr noundef %name, ptr noundef nonnull %call9.i.i, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call9.i.i, i32 noundef %call4) #6
  br label %err_out

if.else:                                          ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.else19 [
    i32 -61, label %if.else.err_out_crit_edge
    i32 0, label %if.else.err_out_crit_edge39
    i32 -38, label %if.else.err_out_crit_edge40
    i32 -95, label %if.else.err_out_crit_edge41
  ]

if.else.err_out_crit_edge41:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.else.err_out_crit_edge40:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.else.err_out_crit_edge39:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.else.err_out_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

err_out:                                          ; preds = %if.else19, %if.else.err_out_crit_edge, %if.else.err_out_crit_edge39, %if.else.err_out_crit_edge40, %if.else.err_out_crit_edge41, %if.then6, %if.end.err_out_crit_edge
  %value.0 = phi ptr [ %call9.i.i, %if.then6 ], [ %call9.i.i, %if.end.err_out_crit_edge ], [ null, %if.else19 ], [ null, %if.else.err_out_crit_edge ], [ null, %if.else.err_out_crit_edge39 ], [ null, %if.else.err_out_crit_edge40 ], [ null, %if.else.err_out_crit_edge41 ]
  %acl.0 = phi ptr [ %call7, %if.then6 ], [ null, %if.end.err_out_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.else19 ], [ null, %if.else.err_out_crit_edge ], [ null, %if.else.err_out_crit_edge39 ], [ null, %if.else.err_out_crit_edge40 ], [ null, %if.else.err_out_crit_edge41 ]
  tail call void @kfree(ptr noundef %value.0) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %err_out ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !19

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #6
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_iop_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %6)
  %.not = icmp eq i8 %6, 48
  br i1 %.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call ptr @get_cached_acl(ptr noundef %inode, i32 noundef %type) #6
  %7 = ptrtoint ptr %call.i to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end9.cleanup_crit_edge, label %do.body3.i, !prof !19

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body3.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_acl_chmod(ptr noundef %inode, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @get_cached_acl(ptr noundef %inode, i32 noundef 32768) #6
  %3 = ptrtoint ptr %call.i to i32
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %v9fs_get_cached_acl.exit, label %do.body3.i, !prof !19

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

v9fs_get_cached_acl.exit:                         ; preds = %if.end
  %4 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %acl, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %v9fs_get_cached_acl.exit.cleanup_crit_edge, label %if.then3

v9fs_get_cached_acl.exit.cleanup_crit_edge:       ; preds = %v9fs_get_cached_acl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %v9fs_get_cached_acl.exit
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %call5 = call i32 @__posix_acl_chmod(ptr noundef nonnull %acl, i32 noundef 3264, i16 noundef zeroext %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef %8) #6
  %9 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acl, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %a_count.i, align 4
  %mul.i.i = shl i32 %12, 3
  %add.i.i = or i32 %mul.i.i, 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #9
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.v9fs_set_acl.exit_crit_edge, label %if.end5.i

if.end.i.v9fs_set_acl.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_set_acl.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %10, ptr noundef nonnull %call9.i.i, i32 noundef %add.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.err_free_out.i_crit_edge, label %if.end8.i

if.end5.i.err_free_out.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_out.i

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 @v9fs_fid_xattr_set(ptr noundef %fid, ptr noundef nonnull @.str.1, ptr noundef nonnull %call9.i.i, i32 noundef %add.i.i, i32 noundef 0) #6
  br label %err_free_out.i

err_free_out.i:                                   ; preds = %if.end8.i, %if.end5.i.err_free_out.i_crit_edge
  %retval1.0.i = phi i32 [ %call6.i, %if.end5.i.err_free_out.i_crit_edge ], [ %call13.i, %if.end8.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %v9fs_set_acl.exit

v9fs_set_acl.exit:                                ; preds = %err_free_out.i, %if.end.i.v9fs_set_acl.exit_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.v9fs_set_acl.exit_crit_edge ], [ %retval1.0.i, %err_free_out.i ]
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %v9fs_set_acl.exit.cleanup_crit_edge, label %land.lhs.true.i

v9fs_set_acl.exit.cleanup_crit_edge:              ; preds = %v9fs_set_acl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %v9fs_set_acl.exit
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #6
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %.pr, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %v9fs_set_acl.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %v9fs_get_cached_acl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call5, %if.then3.cleanup_crit_edge ], [ 0, %v9fs_get_cached_acl.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %v9fs_set_acl.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then10.i.i.i.i ], [ %retval.0.i.ph, %do.end.i ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__posix_acl_chmod(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_set_create_acl(ptr noundef %inode, ptr noundef %fid, ptr noundef %dacl, ptr noundef %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 16384, ptr noundef %dacl) #6
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef 32768, ptr noundef %acl) #6
  %tobool.not.i = icmp eq ptr %dacl, null
  br i1 %tobool.not.i, label %entry.v9fs_set_acl.exit_crit_edge, label %if.end.i

entry.v9fs_set_acl.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_set_acl.exit

if.end.i:                                         ; preds = %entry
  %a_count.i = getelementptr inbounds %struct.posix_acl, ptr %dacl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count.i, align 4
  %mul.i.i = shl i32 %1, 3
  %add.i.i = or i32 %mul.i.i, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #9
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.v9fs_set_acl.exit_crit_edge, label %if.end5.i

if.end.i.v9fs_set_acl.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_set_acl.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %dacl, ptr noundef nonnull %call9.i.i, i32 noundef %add.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.err_free_out.i_crit_edge, label %if.end8.i

if.end5.i.err_free_out.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_out.i

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @v9fs_fid_xattr_set(ptr noundef %fid, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i.i, i32 noundef %add.i.i, i32 noundef 0) #6
  br label %err_free_out.i

err_free_out.i:                                   ; preds = %if.end8.i, %if.end5.i.err_free_out.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %v9fs_set_acl.exit

v9fs_set_acl.exit:                                ; preds = %err_free_out.i, %if.end.i.v9fs_set_acl.exit_crit_edge, %entry.v9fs_set_acl.exit_crit_edge
  %tobool.not.i6 = icmp eq ptr %acl, null
  br i1 %tobool.not.i6, label %v9fs_set_acl.exit.v9fs_set_acl.exit47_crit_edge, label %if.end.i10

v9fs_set_acl.exit.v9fs_set_acl.exit47_crit_edge:  ; preds = %v9fs_set_acl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_set_acl.exit47

if.end.i10:                                       ; preds = %v9fs_set_acl.exit
  %a_count.i7 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %2 = ptrtoint ptr %a_count.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count.i7, align 4
  %mul.i.i8 = shl i32 %3, 3
  %add.i.i9 = or i32 %mul.i.i8, 4
  %call9.i.i34 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i9, i32 noundef 3264) #9
  %tobool3.not.i37 = icmp eq ptr %call9.i.i34, null
  br i1 %tobool3.not.i37, label %if.end.i10.v9fs_set_acl.exit47_crit_edge, label %if.end5.i41

if.end.i10.v9fs_set_acl.exit47_crit_edge:         ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_set_acl.exit47

if.end5.i41:                                      ; preds = %if.end.i10
  %call6.i39 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i.i34, i32 noundef %add.i.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i39)
  %cmp.i40 = icmp slt i32 %call6.i39, 0
  br i1 %cmp.i40, label %if.end5.i41.err_free_out.i45_crit_edge, label %if.end8.i42

if.end5.i41.err_free_out.i45_crit_edge:           ; preds = %if.end5.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_out.i45

if.end8.i42:                                      ; preds = %if.end5.i41
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i43 = tail call i32 @v9fs_fid_xattr_set(ptr noundef %fid, ptr noundef nonnull @.str.1, ptr noundef nonnull %call9.i.i34, i32 noundef %add.i.i9, i32 noundef 0) #6
  br label %err_free_out.i45

err_free_out.i45:                                 ; preds = %if.end8.i42, %if.end5.i41.err_free_out.i45_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i34) #6
  br label %v9fs_set_acl.exit47

v9fs_set_acl.exit47:                              ; preds = %err_free_out.i45, %if.end.i10.v9fs_set_acl.exit47_crit_edge, %v9fs_set_acl.exit.v9fs_set_acl.exit47_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_put_acl(ptr noundef %dacl, ptr noundef %acl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dacl, null
  br i1 %tobool.not.i, label %entry.posix_acl_release.exit_crit_edge, label %land.lhs.true.i

entry.posix_acl_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dacl, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %dacl, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dacl, ptr nonnull %dacl, i32 1, ptr nonnull elementtype(i32) %dacl) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.posix_acl_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %dacl, i32 noundef 3) #6
  br label %posix_acl_release.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %dacl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit

posix_acl_release.exit:                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.posix_acl_release.exit_crit_edge, %entry.posix_acl_release.exit_crit_edge
  %tobool.not.i1 = icmp eq ptr %acl, null
  br i1 %tobool.not.i1, label %posix_acl_release.exit.posix_acl_release.exit11_crit_edge, label %land.lhs.true.i5

posix_acl_release.exit.posix_acl_release.exit11_crit_edge: ; preds = %posix_acl_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit11

land.lhs.true.i5:                                 ; preds = %posix_acl_release.exit
  %call.i.i.i.i.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i3 = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i3)
  %cmp.i.i.i.i4 = icmp eq i32 %asmresult.i.i.i.i.i.i.i3, 1
  br i1 %cmp.i.i.i.i4, label %do.end.i10, label %if.end5.i.i.i.i7

if.end5.i.i.i.i7:                                 ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i3)
  %.not.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i3, 0
  br i1 %.not.i.i.i.i6, label %if.end5.i.i.i.i7.posix_acl_release.exit11_crit_edge, label %if.then10.i.i.i.i8, !prof !19

if.end5.i.i.i.i7.posix_acl_release.exit11_crit_edge: ; preds = %if.end5.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_release.exit11

if.then10.i.i.i.i8:                               ; preds = %if.end5.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #6
  br label %posix_acl_release.exit11

do.end.i10:                                       ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i9 = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i9, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %posix_acl_release.exit11

posix_acl_release.exit11:                         ; preds = %do.end.i10, %if.then10.i.i.i.i8, %if.end5.i.i.i.i7.posix_acl_release.exit11_crit_edge, %posix_acl_release.exit.posix_acl_release.exit11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_acl_mode(ptr noundef %dir, ptr nocapture noundef %modep, ptr nocapture noundef writeonly %dpacl, ptr nocapture noundef writeonly %pacl) local_unnamed_addr #0 align 64 {
entry:
  %mode = alloca i16, align 2
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #6
  %0 = ptrtoint ptr %modep to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %modep, align 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %mode, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %3 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %3)
  %cmp = icmp eq i16 %3, -24576
  br i1 %cmp, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @get_cached_acl(ptr noundef %dir, i32 noundef 16384) #6
  %4 = ptrtoint ptr %call.i to i32
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %v9fs_get_cached_acl.exit, label %do.body3.i, !prof !19

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

v9fs_get_cached_acl.exit:                         ; preds = %if.then
  %5 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %acl, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %v9fs_get_cached_acl.exit.cleanup_crit_edge, label %if.end

v9fs_get_cached_acl.exit.cleanup_crit_edge:       ; preds = %v9fs_get_cached_acl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %v9fs_get_cached_acl.exit
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end12, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end12:                                         ; preds = %if.end
  %call7 = tail call i32 @current_umask() #6
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 2
  %8 = trunc i32 %call7 to i16
  %9 = xor i16 %8, -1
  %conv10 = and i16 %7, %9
  store i16 %conv10, ptr %mode, align 2
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %acl, align 4
  %tobool13.not = icmp eq ptr %.pr, null
  br i1 %tobool13.not, label %if.end12.if.end31_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %11 = phi ptr [ %.pr, %if.end12.if.then14_crit_edge ], [ %call.i, %if.end.if.then14_crit_edge ]
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode, align 2
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp17 = icmp eq i16 %14, 16384
  br i1 %cmp17, label %if.then.i, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.i:                                        ; preds = %if.then14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !23

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !19

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.posix_acl_dup.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %posix_acl_dup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #6
  br label %posix_acl_dup.exit

posix_acl_dup.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.posix_acl_dup.exit_crit_edge
  %17 = ptrtoint ptr %dpacl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %dpacl, align 4
  br label %if.end21

if.end21:                                         ; preds = %posix_acl_dup.exit, %if.then14.if.end21_crit_edge
  %call22 = call i32 @__posix_acl_create(ptr noundef nonnull %acl, i32 noundef 3136, ptr noundef nonnull %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27.not = icmp eq i32 %call22, 0
  %18 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %acl, align 4
  br i1 %cmp27.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pacl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pacl, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end26
  %tobool.not.i37 = icmp eq ptr %19, null
  br i1 %tobool.not.i37, label %if.else.if.end31_crit_edge, label %land.lhs.true.i

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true.i:                                  ; preds = %if.else
  %call.i.i.i.i.i.i38 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #6
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i.if.end31_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.if.end31_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef 3) #6
  br label %if.end31

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %19, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end31

if.end31:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end31_crit_edge, %if.else.if.end31_crit_edge, %if.then29, %if.end12.if.end31_crit_edge, %entry.if.end31_crit_edge
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mode, align 2
  %24 = ptrtoint ptr %modep to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %modep, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end21.cleanup_crit_edge, %v9fs_get_cached_acl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call22, %if.end21.cleanup_crit_edge ], [ %4, %v9fs_get_cached_acl.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__posix_acl_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_xattr_get_acl(ptr nocapture noundef readonly %handler, ptr noundef %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %6)
  %cmp.not = icmp eq i8 %6, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler, align 4
  %call3 = tail call i32 @v9fs_xattr_get(ptr noundef %dentry, ptr noundef %8, ptr noundef %buffer, i32 noundef %size) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags4 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags4, align 4
  %call.i = tail call ptr @get_cached_acl(ptr noundef %inode, i32 noundef %10) #6
  %11 = ptrtoint ptr %call.i to i32
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %v9fs_get_cached_acl.exit, label %do.body3.i, !prof !19

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

v9fs_get_cached_acl.exit:                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %v9fs_get_cached_acl.exit.cleanup_crit_edge, label %if.end9

v9fs_get_cached_acl.exit.cleanup_crit_edge:       ; preds = %v9fs_get_cached_acl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %v9fs_get_cached_acl.exit
  %cmp10 = icmp eq ptr %call.i, null
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %land.lhs.true.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end9
  %call14 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call.i, ptr noundef %buffer, i32 noundef %size) #6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #6
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %call.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %v9fs_get_cached_acl.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -61, %if.end9.cleanup_crit_edge ], [ %11, %v9fs_get_cached_acl.exit.cleanup_crit_edge ], [ %call14, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_xattr_set_acl(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %inode, ptr nocapture noundef readnone %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %acl = alloca ptr, align 4
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %6)
  %cmp.not = icmp eq i8 %6, 16
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler, align 4
  %call5 = tail call i32 @v9fs_xattr_set(ptr noundef %dentry, ptr noundef %8, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #6
  br label %cleanup61

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %11)
  %cmp8 = icmp eq i16 %11, -24576
  br i1 %cmp8, label %if.end.cleanup61_crit_edge, label %if.end11

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end11:                                         ; preds = %if.end
  %call12 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %inode) #6
  br i1 %call12, label %if.end14, label %if.end11.cleanup61_crit_edge

if.end11.cleanup61_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end14:                                         ; preds = %if.end11
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %if.else28, label %if.then15

if.then15:                                        ; preds = %if.end14
  %call16 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %value, i32 noundef %size) #6
  %12 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %acl, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call16 to i32
  br label %cleanup61

if.else:                                          ; preds = %if.then15
  %tobool20.not = icmp eq ptr %call16, null
  br i1 %tobool20.not, label %if.else.if.end29_crit_edge, label %if.then21

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21:                                        ; preds = %if.else
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_user_ns, align 8
  %call22 = tail call i32 @posix_acl_valid(ptr noundef %17, ptr noundef nonnull %call16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end29_crit_edge, label %if.then21.err_outthread-pre-split_crit_edge

if.then21.err_outthread-pre-split_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_outthread-pre-split

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.else28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %acl, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then21.if.end29_crit_edge, %if.else.if.end29_crit_edge
  %flags30 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %19 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags30, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %20, label %do.body [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end29
  %22 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %acl, align 4
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %sw.bb.sw.epilog_crit_edge, label %if.then32

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #6
  %24 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %call33 = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef %ia_mode, ptr noundef nonnull %acl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.then32
  %25 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %acl, align 4
  %tobool37.not = icmp eq ptr %26, null
  br i1 %tobool37.not, label %if.then38, label %if.end36.cleanup.thread_crit_edge

if.end36.cleanup.thread_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @posix_acl_release(ptr noundef nonnull %23)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then38, %if.end36.cleanup.thread_crit_edge
  %size.addr.0 = phi i32 [ %size, %if.end36.cleanup.thread_crit_edge ], [ 0, %if.then38 ]
  %value.addr.0 = phi ptr [ %value, %if.end36.cleanup.thread_crit_edge ], [ null, %if.then38 ]
  %27 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %iattr, align 8
  %call40 = call i32 @v9fs_vfs_setattr_dotl(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull %iattr) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #6
  br label %sw.epilog

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #6
  br label %err_outthread-pre-split

sw.bb43:                                          ; preds = %if.end29
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp47 = icmp eq i16 %30, 16384
  br i1 %cmp47, label %sw.bb43.sw.epilog_crit_edge, label %if.then49

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then49:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %acl, align 4
  %tobool50.not = icmp eq ptr %32, null
  %cond = select i1 %tobool50.not, i32 0, i32 -22
  br label %err_out

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

sw.epilog:                                        ; preds = %sw.bb43.sw.epilog_crit_edge, %cleanup.thread, %sw.bb.sw.epilog_crit_edge
  %size.addr.2 = phi i32 [ %size, %sw.bb43.sw.epilog_crit_edge ], [ %size, %sw.bb.sw.epilog_crit_edge ], [ %size.addr.0, %cleanup.thread ]
  %value.addr.2 = phi ptr [ %value, %sw.bb43.sw.epilog_crit_edge ], [ %value, %sw.bb.sw.epilog_crit_edge ], [ %value.addr.0, %cleanup.thread ]
  %33 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handler, align 4
  %call56 = call i32 @v9fs_xattr_set(ptr noundef %dentry, ptr noundef %34, ptr noundef %value.addr.2, i32 noundef %size.addr.2, i32 noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %sw.epilog.err_outthread-pre-split_crit_edge

sw.epilog.err_outthread-pre-split_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_outthread-pre-split

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags30, align 4
  %37 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %acl, align 4
  call void @set_cached_acl(ptr noundef %inode, i32 noundef %36, ptr noundef %38) #6
  br label %err_outthread-pre-split

err_outthread-pre-split:                          ; preds = %if.then58, %sw.epilog.err_outthread-pre-split_crit_edge, %cleanup, %if.then21.err_outthread-pre-split_crit_edge
  %retval1.0.ph = phi i32 [ %call33, %cleanup ], [ 0, %if.then58 ], [ %call56, %sw.epilog.err_outthread-pre-split_crit_edge ], [ %call22, %if.then21.err_outthread-pre-split_crit_edge ]
  %39 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load ptr, ptr %acl, align 4
  br label %err_out

err_out:                                          ; preds = %err_outthread-pre-split, %if.then49
  %40 = phi ptr [ %.pr, %err_outthread-pre-split ], [ %32, %if.then49 ]
  %retval1.0 = phi i32 [ %retval1.0.ph, %err_outthread-pre-split ], [ %cond, %if.then49 ]
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %err_out.cleanup61_crit_edge, label %land.lhs.true.i

err_out.cleanup61_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

land.lhs.true.i:                                  ; preds = %err_out
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %40, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  call void @llvm.prefetch.p0(ptr nonnull %40, i32 1, i32 3, i32 1) #6
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup61_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end5.i.i.i.i.cleanup61_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef 3) #6
  br label %cleanup61

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !20
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %40, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %cleanup61

cleanup61:                                        ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup61_crit_edge, %err_out.cleanup61_crit_edge, %if.then18, %if.end11.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %13, %if.then18 ], [ -95, %if.end.cleanup61_crit_edge ], [ -1, %if.end11.cleanup61_crit_edge ], [ %retval1.0, %err_out.cleanup61_crit_edge ], [ %retval1.0, %if.end5.i.i.i.i.cleanup61_crit_edge ], [ %retval1.0, %if.then10.i.i.i.i ], [ %retval1.0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_fid_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cached_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_fid_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_vfs_setattr_dotl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/acl.c", i32 62, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/9p/acl.c", i32 63, i32 29}
!4 = !{ptr @v9fs_xattr_acl_access_handler, !5, !"v9fs_xattr_acl_access_handler", i1 false, i1 false}
!5 = !{!"../fs/9p/acl.c", i32 318, i32 28}
!6 = !{ptr @v9fs_xattr_acl_default_handler, !7, !"v9fs_xattr_acl_default_handler", i1 false, i1 false}
!7 = !{!"../fs/9p/acl.c", i32 325, i32 28}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148435566}
!18 = !{i64 2148350006, i64 2148350038, i64 2148350067, i64 2148350101, i64 2148350132, i64 2148350155}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149311680}
!21 = !{i64 2154628022, i64 2154628497, i64 2154628059, i64 2154628115, i64 2154628149, i64 2154628173, i64 2154628214, i64 2154628235, i64 2154628263, i64 2154628297}
!22 = !{i64 2148347541, i64 2148347573, i64 2148347602, i64 2148347636, i64 2148347667, i64 2148347690}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154632336, i64 2154632812, i64 2154632373, i64 2154632429, i64 2154632463, i64 2154632487, i64 2154632528, i64 2154632549, i64 2154632577, i64 2154632611}
