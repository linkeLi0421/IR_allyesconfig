; ModuleID = '/llk/IR_all_yes/fs/ceph/cache.c_pt.bc'
source_filename = "../fs/ceph/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.108, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.109, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.110, ptr, %struct.address_space, %struct.list_head, %union.anon.111, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.108 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.111 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.116, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_vino = type { i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%union.anon.116 = type { ptr }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.117, %union.anon.118 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.117 = type { ptr, [12 x i8] }
%union.anon.118 = type { ptr, [4 x i8] }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }

@ceph_fscache_register_inode_cookie.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/cache.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph,%pU%s%s\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to register fscache cookie for %s\00", [55 x i8] zeroinitializer }, align 32
@fscache_n_updates = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 32, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 92, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 92, i32 64 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 92, i32 70 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [19 x i8] c"../fs/ceph/cache.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 99, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_register_inode_cookie(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fscache = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fscache, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp = icmp eq i16 %8, -32768
  br i1 %cmp, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %and5 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %fscache9 = getelementptr i8, ptr %inode, i32 -8
  %11 = ptrtoint ptr %fscache9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fscache9, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end8.if.end41_crit_edge, label %land.rhs

if.end8.if.end41_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.rhs:                                         ; preds = %if.end8
  %.b64 = load i1, ptr @ceph_fscache_register_inode_cookie.__already_done, align 1
  br i1 %.b64, label %land.rhs.if.end41_crit_edge, label %if.then19, !prof !20

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ceph_fscache_register_inode_cookie.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 9, ptr noundef null) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then19, %land.rhs.if.end41_crit_edge, %if.end8.if.end41_crit_edge
  %13 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fscache, align 4
  %call50 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end41.fscache_acquire_cookie.exit_crit_edge, label %if.end.i

if.end41.fscache_acquire_cookie.exit_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_acquire_cookie.exit

if.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %i_version = getelementptr i8, ptr %inode, i32 -888
  %call.i = tail call ptr @__fscache_acquire_cookie(ptr noundef nonnull %14, i8 noundef zeroext 0, ptr noundef %add.ptr.i, i32 noundef 16, ptr noundef %i_version, i32 noundef 8, i64 noundef %call50) #6
  br label %fscache_acquire_cookie.exit

fscache_acquire_cookie.exit:                      ; preds = %if.end.i, %if.end41.fscache_acquire_cookie.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %if.end41.fscache_acquire_cookie.exit_crit_edge ]
  %15 = ptrtoint ptr %fscache9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %fscache9, align 8
  br label %cleanup

cleanup:                                          ; preds = %fscache_acquire_cookie.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !21
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %1 = tail call ptr @llvm.returnaddress(i32 0) #6
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call ptr @llvm.returnaddress(i32 0) #6
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #6
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !22
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !23

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !24
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !26
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_unregister_inode_cookie(ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 75
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fscache_relinquish_cookie.exit_crit_edge, label %if.then.i

entry.fscache_relinquish_cookie.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_relinquish_cookie.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_relinquish_cookie(ptr noundef nonnull %1, i1 noundef zeroext false) #6
  br label %fscache_relinquish_cookie.exit

fscache_relinquish_cookie.exit:                   ; preds = %if.then.i, %entry.fscache_relinquish_cookie.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_use_cookie(ptr nocapture noundef readonly %inode, i1 noundef zeroext %will_modify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fscache_use_cookie.exit_crit_edge, label %if.then.i

entry.fscache_use_cookie.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_use_cookie.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_use_cookie(ptr noundef nonnull %1, i1 noundef zeroext %will_modify) #6
  br label %fscache_use_cookie.exit

fscache_use_cookie.exit:                          ; preds = %if.then.i, %entry.fscache_use_cookie.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_unuse_cookie(ptr noundef %inode, i1 noundef zeroext %update) local_unnamed_addr #0 align 64 {
entry:
  %i_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %update, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_size) #6
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call1, ptr %i_size, align 8
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %1 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fscache, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.fscache_unuse_cookie.exit_crit_edge, label %if.then.i

if.then.fscache_unuse_cookie.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_unuse_cookie.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %i_version = getelementptr i8, ptr %inode, i32 -888
  call void @__fscache_unuse_cookie(ptr noundef nonnull %2, ptr noundef %i_version, ptr noundef nonnull %i_size) #6
  br label %fscache_unuse_cookie.exit

fscache_unuse_cookie.exit:                        ; preds = %if.then.i, %if.then.fscache_unuse_cookie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_size) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %fscache2 = getelementptr i8, ptr %inode, i32 -8
  %3 = ptrtoint ptr %fscache2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fscache2, align 8
  %tobool.not.i6 = icmp eq ptr %4, null
  br i1 %tobool.not.i6, label %if.else.if.end_crit_edge, label %if.then.i7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i7:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i7, %if.else.if.end_crit_edge, %fscache_unuse_cookie.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_update(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 8
  %i_version = getelementptr i8, ptr %inode, i32 -888
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fscache_update_cookie.exit_crit_edge, label %land.lhs.true.i

entry.fscache_update_cookie.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_update_cookie.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.fscache_update_cookie.exit_crit_edge

land.lhs.true.i.fscache_update_cookie.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_update_cookie.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_updates, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_updates, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_updates, ptr nonnull @fscache_n_updates, i32 1, ptr nonnull elementtype(i32) @fscache_n_updates) #6, !srcloc !29
  %aux_len.i.i.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %aux_len.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aux_len.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %7)
  %cmp.i.i.i.i = icmp ult i8 %7, 9
  %8 = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 21
  br i1 %cmp.i.i.i.i, label %if.then.i.fscache_get_aux.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

if.then.i.fscache_get_aux.exit.i.i.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_get_aux.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  br label %fscache_get_aux.exit.i.i.i

fscache_get_aux.exit.i.i.i:                       ; preds = %if.else.i.i.i.i, %if.then.i.fscache_get_aux.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %10, %if.else.i.i.i.i ], [ %8, %if.then.i.fscache_get_aux.exit.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %i_version, null
  %tobool1.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool1.not.i.i.i
  br i1 %or.cond.i.i.i, label %fscache_get_aux.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

fscache_get_aux.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %fscache_get_aux.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %fscache_get_aux.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i8 %7 to i32
  %11 = call ptr @memcpy(ptr %retval.0.i.i.i.i, ptr %i_version, i32 %conv.i.i.i)
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %fscache_get_aux.exit.i.i.i.if.end.i.i.i_crit_edge
  %object_size4.i.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %object_size4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call1, ptr %object_size4.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #6
  br label %fscache_update_cookie.exit

fscache_update_cookie.exit:                       ; preds = %if.end.i.i.i, %land.lhs.true.i.fscache_update_cookie.exit_crit_edge, %entry.fscache_update_cookie.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_invalidate(ptr noundef %inode, i1 noundef zeroext %dio_write) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 8
  %i_version = getelementptr i8, ptr %inode, i32 -888
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %cond = zext i1 %dio_write to i32
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fscache_invalidate.exit_crit_edge, label %land.lhs.true.i

entry.fscache_invalidate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_invalidate.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags1.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags1.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp eq i32 %4, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.fscache_invalidate.exit_crit_edge

land.lhs.true.i.fscache_invalidate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_invalidate.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_invalidate(ptr noundef nonnull %1, ptr noundef %i_version, i64 noundef %call2, i32 noundef %cond) #6
  br label %fscache_invalidate.exit

fscache_invalidate.exit:                          ; preds = %if.then.i, %land.lhs.true.i.fscache_invalidate.exit_crit_edge, %entry.fscache_invalidate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_fscache_register_fs(ptr nocapture noundef %fsc, ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 2
  %2 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mount_options, align 4
  %fscache_uniq2 = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %fscache_uniq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fscache_uniq2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end.thread_crit_edge, label %cond.end

entry.cond.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cond.end:                                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %phi.cmp = icmp eq i8 %char0, 0
  br i1 %phi.cmp, label %cond.end.cond.end.thread_crit_edge, label %cond.end._crit_edge

cond.end._crit_edge:                              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %7

cond.end.cond.end.thread_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end.cond.end.thread_crit_edge, %entry.cond.end.thread_crit_edge
  br label %7

7:                                                ; preds = %cond.end.thread, %cond.end._crit_edge
  %8 = phi ptr [ @.str.3, %cond.end.thread ], [ @.str.2, %cond.end._crit_edge ]
  %9 = phi ptr [ @.str.3, %cond.end.thread ], [ %5, %cond.end._crit_edge ]
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %.cleanup_crit_edge, label %if.end

.cleanup_crit_edge:                               ; preds = %7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %7
  %call.i = tail call ptr @__fscache_acquire_volume(ptr noundef nonnull %call10, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  %fscache = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 22
  %10 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %fscache, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then15, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log16 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %log16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log16, align 4
  %13 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %12, ptr noundef %14, i8 noundef zeroext 101, ptr noundef nonnull @.str.4, ptr noundef nonnull %call10) #6
  %15 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fscache, align 4
  %tobool19.not = icmp eq ptr %16, null
  %17 = ptrtoint ptr %16 to i32
  %spec.select = select i1 %tobool19.not, i32 -95, i32 %17
  store ptr null, ptr %fscache, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then15, %if.end.if.end27_crit_edge
  %err.0 = phi i32 [ %spec.select, %if.then15 ], [ 0, %if.end.if.end27_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end27 ], [ -12, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fscache_unregister_fs(ptr nocapture noundef readonly %fsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fscache = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 22
  %0 = ptrtoint ptr %fscache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fscache, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.fscache_relinquish_volume.exit_crit_edge, label %if.then.i

entry.fscache_relinquish_volume.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_relinquish_volume.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_relinquish_volume(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false) #6
  br label %fscache_relinquish_volume.exit

fscache_relinquish_volume.exit:                   ; preds = %if.then.i, %entry.fscache_relinquish_volume.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_cookie(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_invalidate(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_volume(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_relinquish_volume(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/ceph/cache.c", i32 32, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ceph/cache.c", i32 92, i32 31}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ceph/cache.c", i32 92, i32 64}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ceph/cache.c", i32 92, i32 70}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ceph/cache.c", i32 99, i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 628178, i64 628239}
!22 = !{i64 630910}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 631195}
!25 = !{i64 2152569721}
!26 = !{i64 2152569563}
!27 = !{i64 2152569891}
!28 = !{i64 2150303343}
!29 = !{i64 2148235697, i64 2148235723, i64 2148235752, i64 2148235786, i64 2148235817, i64 2148235840}
!30 = !{i64 2155788477}
