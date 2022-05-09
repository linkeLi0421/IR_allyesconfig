; ModuleID = '/llk/IR_all_yes/fs/hfs/extent.c_pt.bc'
source_filename = "../fs/hfs/extent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfs_ext_key = type <{ i8, i8, i32, i16 }>
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_extent = type { i16, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hfs_ext_keycmp(ptr nocapture noundef readonly %key1, ptr nocapture noundef readonly %key2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FNum = getelementptr inbounds %struct.hfs_ext_key, ptr %key1, i32 0, i32 2
  %0 = ptrtoint ptr %FNum to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %FNum, align 1
  %FNum1 = getelementptr inbounds %struct.hfs_ext_key, ptr %key2, i32 0, i32 2
  %2 = ptrtoint ptr %FNum1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %FNum1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %FkType = getelementptr inbounds %struct.hfs_ext_key, ptr %key1, i32 0, i32 1
  %4 = ptrtoint ptr %FkType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %FkType, align 1
  %FkType3 = getelementptr inbounds %struct.hfs_ext_key, ptr %key2, i32 0, i32 1
  %6 = ptrtoint ptr %FkType3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %FkType3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5.not = icmp eq i8 %5, %7
  br i1 %cmp5.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12 = icmp ult i8 %5, %7
  %cond14 = select i1 %cmp12, i32 -1, i32 1
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %FABN = getelementptr inbounds %struct.hfs_ext_key, ptr %key1, i32 0, i32 3
  %8 = ptrtoint ptr %FABN to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %FABN, align 1
  %FABN16 = getelementptr inbounds %struct.hfs_ext_key, ptr %key2, i32 0, i32 3
  %10 = ptrtoint ptr %FABN16 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %FABN16, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp19 = icmp eq i16 %9, %11
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp25 = icmp ult i16 %9, %11
  %cond27 = select i1 %cmp25, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond14, %if.then7 ], [ %cond27, %if.end22 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_ext_write_extent(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #5
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %flags = getelementptr i8, ptr %inode, i32 -252
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_tree, align 4
  %call = call i32 @hfs_find_init(ptr noundef %8, ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call fastcc i32 @__hfs_ext_write_extent(ptr noundef %inode, ptr noundef nonnull %fd)
  call void @hfs_find_exit(ptr noundef nonnull %fd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hfs_ext_write_extent(ptr noundef %inode, ptr noundef %fd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %0 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %search_key, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %cached_start = getelementptr i8, ptr %inode, i32 -14
  %4 = ptrtoint ptr %cached_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cached_start, align 2
  %flags = getelementptr i8, ptr %inode, i32 -252
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %conv = sub nsw i8 0, %9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %1, align 1
  %FkType.i = getelementptr inbounds %struct.hfs_ext_key, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %FkType.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %FkType.i, align 1
  %FNum.i = getelementptr inbounds %struct.hfs_ext_key, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %FNum.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %3, ptr %FNum.i, align 1
  %FABN.i = getelementptr inbounds %struct.hfs_ext_key, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %FABN.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %5, ptr %FABN.i, align 1
  %call = tail call i32 @hfs_brec_find(ptr noundef %fd) #5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and8 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp.not = icmp eq i32 %call, -2
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %16 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %depth, align 4
  %add = add i32 %19, 1
  %call13 = tail call i32 @hfs_bmap_reserve(ptr noundef %17, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cached_extents = getelementptr i8, ptr %inode, i32 -26
  %call20 = tail call i32 @hfs_brec_insert(ptr noundef %fd, ptr noundef %cached_extents, i32 noundef 12) #5
  br label %if.end39

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %20 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bnode, align 4
  %cached_extents32 = getelementptr i8, ptr %inode, i32 -26
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %22 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entryoffset, align 4
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %24 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entrylength, align 4
  tail call void @hfs_bnode_write(ptr noundef %21, ptr noundef %cached_extents32, i32 noundef %23, i32 noundef %25) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end28, %if.end16
  %.sink59 = phi i32 [ -3, %if.end28 ], [ -7, %if.end16 ]
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and38 = and i32 %27, %.sink59
  store i32 %and38, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call, %if.then.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ], [ %call, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_free_fork(ptr noundef %sb, ptr noundef %file, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #5
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 5
  %1 = ptrtoint ptr %FlNum to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %FlNum, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %PyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 8
  %ExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 17
  %RPyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 11
  %RExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %file, i32 0, i32 18
  %total_blocks.0.in = select i1 %cmp, ptr %PyLen, ptr %RPyLen
  %extent.0 = select i1 %cmp, ptr %ExtRec, ptr %RExtRec
  %3 = ptrtoint ptr %total_blocks.0.in to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %total_blocks.0 = load i32, ptr %total_blocks.0.in, align 1
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_blksz, align 4
  %div = udiv i32 %total_blocks.0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %total_blocks.0)
  %tobool.not = icmp ugt i32 %7, %total_blocks.0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %count = getelementptr %struct.hfs_extent, ptr %extent.0, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  %conv = zext i16 %9 to i32
  %count.1 = getelementptr %struct.hfs_extent, ptr %extent.0, i32 1, i32 1
  %10 = ptrtoint ptr %count.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %count.1, align 2
  %conv.1 = zext i16 %11 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %count.2 = getelementptr %struct.hfs_extent, ptr %extent.0, i32 2, i32 1
  %12 = ptrtoint ptr %count.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count.2, align 2
  %conv.2 = zext i16 %13 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %conv5 = trunc i32 %add.2 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %conv5)
  %cmp3.i = icmp eq i16 %9, %conv5
  br i1 %cmp3.i, label %for.body.preheader.for.cond14.preheader.i_crit_edge, label %if.else.i

for.body.preheader.for.cond14.preheader.i_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %if.end10.1.i.for.cond14.preheader.i_crit_edge, %if.end10.i.for.cond14.preheader.i_crit_edge, %for.body.preheader.for.cond14.preheader.i_crit_edge
  %tobool37.not.i.1 = phi i1 [ false, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ true, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ false, %for.body.preheader.for.cond14.preheader.i_crit_edge ]
  %tobool37.not.i.2 = phi i1 [ true, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ false, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ false, %for.body.preheader.for.cond14.preheader.i_crit_edge ]
  %extent.addr.083.lcssa.i = phi ptr [ %incdec.ptr.1.i, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ %incdec.ptr.i, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ %extent.0, %for.body.preheader.for.cond14.preheader.i_crit_edge ]
  %.lcssa98.i = phi i16 [ %sub.1.i, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ %sub.i, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ %9, %for.body.preheader.for.cond14.preheader.i_crit_edge ]
  %14 = ptrtoint ptr %extent.addr.083.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %extent.addr.083.lcssa.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.lcssa98.i, i16 %conv5)
  %cmp17.not86.i = icmp ugt i16 %.lcssa98.i, %conv5
  br i1 %cmp17.not86.i, label %for.cond14.preheader.i.if.end36.thread.i_crit_edge, label %if.end36.i

for.cond14.preheader.i.if.end36.thread.i_crit_edge: ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.else.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %conv5)
  %cmp7.i = icmp ugt i16 %9, %conv5
  br i1 %cmp7.i, label %if.else.i.cleanup_crit_edge, label %if.end10.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.else.i
  %sub.i = sub i16 %conv5, %9
  %incdec.ptr.i = getelementptr %struct.hfs_extent, ptr %extent.0, i32 1
  %16 = ptrtoint ptr %count.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %17)
  %cmp3.1.i = icmp eq i16 %sub.i, %17
  br i1 %cmp3.1.i, label %if.end10.i.for.cond14.preheader.i_crit_edge, label %if.else.1.i

if.end10.i.for.cond14.preheader.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

if.else.1.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %17)
  %cmp7.1.i = icmp ult i16 %sub.i, %17
  br i1 %cmp7.1.i, label %if.else.1.i.cleanup_crit_edge, label %if.end10.1.i

if.else.1.i.cleanup_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1.i:                                     ; preds = %if.else.1.i
  %sub.1.i = sub i16 %sub.i, %17
  %incdec.ptr.1.i = getelementptr %struct.hfs_extent, ptr %extent.0, i32 2
  %18 = ptrtoint ptr %count.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i, i16 %19)
  %cmp3.2.i = icmp eq i16 %sub.1.i, %19
  br i1 %cmp3.2.i, label %if.end10.1.i.for.cond14.preheader.i_crit_edge, label %if.end10.1.i.cleanup_crit_edge

if.end10.1.i.cleanup_crit_edge:                   ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1.i.for.cond14.preheader.i_crit_edge:    ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

if.end36.thread.i:                                ; preds = %if.end39.i.2, %if.end39.i.1.if.end36.thread.i_crit_edge, %if.end39.i.if.end36.thread.i_crit_edge, %for.cond14.preheader.i.if.end36.thread.i_crit_edge
  %extent.addr.1.lcssa.i = phi ptr [ %extent.addr.083.lcssa.i, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i, %if.end39.i.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i.1, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i.2, %if.end39.i.2 ]
  %block_nr.addr.0.lcssa.i = phi i16 [ %conv5, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %sub24.i, %if.end39.i.if.end36.thread.i_crit_edge ], [ %sub24.i.1, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %sub24.i.2, %if.end39.i.2 ]
  %count.0.lcssa.i = phi i16 [ %.lcssa98.i, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %24, %if.end39.i.if.end36.thread.i_crit_edge ], [ %30, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %36, %if.end39.i.2 ]
  %.lcssa.i = phi i16 [ %15, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %26, %if.end39.i.if.end36.thread.i_crit_edge ], [ %32, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %38, %if.end39.i.2 ]
  %sub29.i = sub i16 %count.0.lcssa.i, %block_nr.addr.0.lcssa.i
  %add.i = add i16 %.lcssa.i, %sub29.i
  %call34.i = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %add.i, i16 noundef zeroext %block_nr.addr.0.lcssa.i) #5
  %count35.i = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.lcssa.i, i32 0, i32 1
  %20 = ptrtoint ptr %count35.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %sub29.i, ptr %count35.i, align 2
  br label %if.end9

if.end36.i:                                       ; preds = %for.cond14.preheader.i
  %call.i = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %15, i16 noundef zeroext %.lcssa98.i) #5
  %21 = ptrtoint ptr %extent.addr.083.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %extent.addr.083.lcssa.i, align 2
  %count21.i = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 0, i32 1
  %22 = ptrtoint ptr %count21.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count21.i, align 2
  %sub24.i = sub i16 %conv5, %.lcssa98.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i)
  %tobool.not.i = icmp eq i16 %sub24.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %if.end36.i.if.end9_crit_edge, label %if.end39.i

if.end36.i.if.end9_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end39.i:                                       ; preds = %if.end36.i
  %incdec.ptr40.i = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1
  %count41.i = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1, i32 1
  %23 = ptrtoint ptr %count41.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count41.i, align 2
  %25 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr40.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i, i16 %24)
  %cmp17.not.i = icmp ult i16 %sub24.i, %24
  br i1 %cmp17.not.i, label %if.end39.i.if.end36.thread.i_crit_edge, label %if.end36.i.1

if.end39.i.if.end36.thread.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.end36.i.1:                                     ; preds = %if.end39.i
  %call.i.1 = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %26, i16 noundef zeroext %24) #5
  %27 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %incdec.ptr40.i, align 2
  %count21.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1, i32 1
  %28 = ptrtoint ptr %count21.i.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %count21.i.1, align 2
  %sub24.i.1 = sub i16 %sub24.i, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i.1)
  %tobool.not.i.1 = icmp eq i16 %sub24.i.1, 0
  %or.cond.i.1 = or i1 %tobool.not.i.1, %tobool37.not.i.1
  br i1 %or.cond.i.1, label %if.end36.i.1.if.end9_crit_edge, label %if.end39.i.1

if.end36.i.1.if.end9_crit_edge:                   ; preds = %if.end36.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end39.i.1:                                     ; preds = %if.end36.i.1
  %incdec.ptr40.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2
  %count41.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2, i32 1
  %29 = ptrtoint ptr %count41.i.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count41.i.1, align 2
  %31 = ptrtoint ptr %incdec.ptr40.i.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %incdec.ptr40.i.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i.1, i16 %30)
  %cmp17.not.i.1 = icmp ult i16 %sub24.i.1, %30
  br i1 %cmp17.not.i.1, label %if.end39.i.1.if.end36.thread.i_crit_edge, label %if.end36.i.2

if.end39.i.1.if.end36.thread.i_crit_edge:         ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.end36.i.2:                                     ; preds = %if.end39.i.1
  %call.i.2 = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %32, i16 noundef zeroext %30) #5
  %33 = ptrtoint ptr %incdec.ptr40.i.1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %incdec.ptr40.i.1, align 2
  %count21.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2, i32 1
  %34 = ptrtoint ptr %count21.i.2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %count21.i.2, align 2
  %sub24.i.2 = sub i16 %sub24.i.1, %30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i.2)
  %tobool.not.i.2 = icmp eq i16 %sub24.i.2, 0
  %or.cond.i.2 = or i1 %tobool.not.i.2, %tobool37.not.i.2
  br i1 %or.cond.i.2, label %if.end36.i.2.if.end9_crit_edge, label %if.end39.i.2

if.end36.i.2.if.end9_crit_edge:                   ; preds = %if.end36.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end39.i.2:                                     ; preds = %if.end36.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr40.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -3
  %count41.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -3, i32 1
  %35 = ptrtoint ptr %count41.i.2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count41.i.2, align 2
  %37 = ptrtoint ptr %incdec.ptr40.i.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr40.i.2, align 2
  br label %if.end36.thread.i

if.end9:                                          ; preds = %if.end36.i.2.if.end9_crit_edge, %if.end36.i.1.if.end9_crit_edge, %if.end36.i.if.end9_crit_edge, %if.end36.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add.2)
  %cmp10 = icmp eq i32 %div, %add.2
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %39 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ext_tree, align 4
  %call15 = call i32 @hfs_find_init(ptr noundef %42, ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body.preheader, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.preheader:                                ; preds = %if.end13
  %entrylength.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %conv19 = trunc i32 %type to i8
  %search_key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %incdec.ptr.i80 = getelementptr %struct.hfs_extent, ptr %extent.0, i32 1
  %incdec.ptr.1.i87 = getelementptr %struct.hfs_extent, ptr %extent.0, i32 2
  br label %do.body

do.body:                                          ; preds = %hfs_free_extents.exit117.do.body_crit_edge, %do.body.preheader
  %total_blocks.1 = phi i32 [ %conv24, %hfs_free_extents.exit117.do.body_crit_edge ], [ %div, %do.body.preheader ]
  %43 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %search_key.i, align 4
  %conv.i = trunc i32 %total_blocks.1 to i16
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 7, ptr %44, align 1
  %FkType.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %FkType.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv19, ptr %FkType.i.i, align 1
  %FNum.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %FNum.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %2, ptr %FNum.i.i, align 1
  %FABN.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %FABN.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %conv.i, ptr %FABN.i.i, align 1
  %49 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fd, align 4
  %FNum.i = getelementptr inbounds %struct.hfs_ext_key, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %FNum.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %FNum.i, align 1
  %call.i67 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #5
  %52 = zext i32 %call.i67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i67, label %do.body.do.end_crit_edge [
    i32 0, label %do.body.if.end.i_crit_edge
    i32 -2, label %do.body.if.end.i_crit_edge154
  ]

do.body.if.end.i_crit_edge154:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %do.body.if.end.i_crit_edge, %do.body.if.end.i_crit_edge154
  %53 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fd, align 4
  %FNum3.i = getelementptr inbounds %struct.hfs_ext_key, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %FNum3.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %FNum3.i, align 1
  %57 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %search_key.i, align 4
  %FNum5.i = getelementptr inbounds %struct.hfs_ext_key, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %FNum5.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %FNum5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %60)
  %cmp6.not.i = icmp eq i32 %56, %60
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %FkType.i = getelementptr inbounds %struct.hfs_ext_key, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %FkType.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %FkType.i, align 1
  %FkType11.i = getelementptr inbounds %struct.hfs_ext_key, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %FkType11.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %FkType11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp13.not.i = icmp eq i8 %62, %64
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %65 = ptrtoint ptr %entrylength.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %entrylength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %66)
  %cmp17.not.i68 = icmp eq i32 %66, 12
  br i1 %cmp17.not.i68, label %__hfs_ext_read_extent.exit.thread123, label %if.end16.i.do.end_crit_edge

if.end16.i.do.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

__hfs_ext_read_extent.exit.thread123:             ; preds = %if.end16.i
  %67 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bnode.i, align 4
  %69 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %entryoffset.i, align 4
  call void @hfs_bnode_read(ptr noundef %68, ptr noundef %extent.0, i32 noundef %70, i32 noundef 12) #5
  %71 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fd, align 4
  %FABN = getelementptr inbounds %struct.hfs_ext_key, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %FABN to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %FABN, align 1
  %conv24 = zext i16 %74 to i32
  %conv25 = sub i16 %conv.i, %74
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv25, i16 %76)
  %cmp3.i71 = icmp eq i16 %conv25, %76
  br i1 %cmp3.i71, label %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge, label %if.else.i78

__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge: ; preds = %__hfs_ext_read_extent.exit.thread123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i76

for.cond14.preheader.i76:                         ; preds = %if.end10.1.i90.for.cond14.preheader.i76_crit_edge, %if.end10.i83.for.cond14.preheader.i76_crit_edge, %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge
  %tobool37.not.i108.1 = phi i1 [ false, %if.end10.1.i90.for.cond14.preheader.i76_crit_edge ], [ true, %if.end10.i83.for.cond14.preheader.i76_crit_edge ], [ false, %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge ]
  %tobool37.not.i108.2 = phi i1 [ true, %if.end10.1.i90.for.cond14.preheader.i76_crit_edge ], [ false, %if.end10.i83.for.cond14.preheader.i76_crit_edge ], [ false, %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge ]
  %extent.addr.083.lcssa.i73 = phi ptr [ %incdec.ptr.1.i87, %if.end10.1.i90.for.cond14.preheader.i76_crit_edge ], [ %incdec.ptr.i80, %if.end10.i83.for.cond14.preheader.i76_crit_edge ], [ %extent.0, %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge ]
  %.lcssa98.i74 = phi i16 [ %sub.1.i86, %if.end10.1.i90.for.cond14.preheader.i76_crit_edge ], [ %sub.i79, %if.end10.i83.for.cond14.preheader.i76_crit_edge ], [ %conv25, %__hfs_ext_read_extent.exit.thread123.for.cond14.preheader.i76_crit_edge ]
  %77 = ptrtoint ptr %extent.addr.083.lcssa.i73 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %extent.addr.083.lcssa.i73, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.lcssa98.i74, i16 %conv.i)
  %cmp17.not86.i75 = icmp ugt i16 %.lcssa98.i74, %conv.i
  br i1 %cmp17.not86.i75, label %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge, label %if.end36.i110

for.cond14.preheader.i76.if.end36.thread.i99_crit_edge: ; preds = %for.cond14.preheader.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i99

if.else.i78:                                      ; preds = %__hfs_ext_read_extent.exit.thread123
  call void @__sanitizer_cov_trace_cmp2(i16 %conv25, i16 %76)
  %cmp7.i77 = icmp ult i16 %conv25, %76
  br i1 %cmp7.i77, label %if.else.i78.hfs_free_extents.exit117_crit_edge, label %if.end10.i83

if.else.i78.hfs_free_extents.exit117_crit_edge:   ; preds = %if.else.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end10.i83:                                     ; preds = %if.else.i78
  %sub.i79 = sub i16 %conv25, %76
  %79 = ptrtoint ptr %count.1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %count.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i79, i16 %80)
  %cmp3.1.i82 = icmp eq i16 %sub.i79, %80
  br i1 %cmp3.1.i82, label %if.end10.i83.for.cond14.preheader.i76_crit_edge, label %if.else.1.i85

if.end10.i83.for.cond14.preheader.i76_crit_edge:  ; preds = %if.end10.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i76

if.else.1.i85:                                    ; preds = %if.end10.i83
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i79, i16 %80)
  %cmp7.1.i84 = icmp ult i16 %sub.i79, %80
  br i1 %cmp7.1.i84, label %if.else.1.i85.hfs_free_extents.exit117_crit_edge, label %if.end10.1.i90

if.else.1.i85.hfs_free_extents.exit117_crit_edge: ; preds = %if.else.1.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end10.1.i90:                                   ; preds = %if.else.1.i85
  %sub.1.i86 = sub i16 %sub.i79, %80
  %81 = ptrtoint ptr %count.2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %count.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i86, i16 %82)
  %cmp3.2.i89 = icmp eq i16 %sub.1.i86, %82
  br i1 %cmp3.2.i89, label %if.end10.1.i90.for.cond14.preheader.i76_crit_edge, label %if.end10.1.i90.hfs_free_extents.exit117_crit_edge

if.end10.1.i90.hfs_free_extents.exit117_crit_edge: ; preds = %if.end10.1.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end10.1.i90.for.cond14.preheader.i76_crit_edge: ; preds = %if.end10.1.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i76

if.end36.thread.i99:                              ; preds = %if.end39.i115.2, %if.end39.i115.1.if.end36.thread.i99_crit_edge, %if.end39.i115.if.end36.thread.i99_crit_edge, %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge
  %extent.addr.1.lcssa.i91 = phi ptr [ %extent.addr.083.lcssa.i73, %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge ], [ %incdec.ptr40.i112, %if.end39.i115.if.end36.thread.i99_crit_edge ], [ %incdec.ptr40.i112.1, %if.end39.i115.1.if.end36.thread.i99_crit_edge ], [ %incdec.ptr40.i112.2, %if.end39.i115.2 ]
  %block_nr.addr.0.lcssa.i92 = phi i16 [ %conv.i, %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge ], [ %sub24.i106, %if.end39.i115.if.end36.thread.i99_crit_edge ], [ %sub24.i106.1, %if.end39.i115.1.if.end36.thread.i99_crit_edge ], [ %sub24.i106.2, %if.end39.i115.2 ]
  %count.0.lcssa.i93 = phi i16 [ %.lcssa98.i74, %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge ], [ %87, %if.end39.i115.if.end36.thread.i99_crit_edge ], [ %93, %if.end39.i115.1.if.end36.thread.i99_crit_edge ], [ %99, %if.end39.i115.2 ]
  %.lcssa.i94 = phi i16 [ %78, %for.cond14.preheader.i76.if.end36.thread.i99_crit_edge ], [ %89, %if.end39.i115.if.end36.thread.i99_crit_edge ], [ %95, %if.end39.i115.1.if.end36.thread.i99_crit_edge ], [ %101, %if.end39.i115.2 ]
  %sub29.i95 = sub i16 %count.0.lcssa.i93, %block_nr.addr.0.lcssa.i92
  %add.i96 = add i16 %.lcssa.i94, %sub29.i95
  %call34.i97 = call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %add.i96, i16 noundef zeroext %block_nr.addr.0.lcssa.i92) #5
  %count35.i98 = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.lcssa.i91, i32 0, i32 1
  %83 = ptrtoint ptr %count35.i98 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %sub29.i95, ptr %count35.i98, align 2
  br label %hfs_free_extents.exit117

if.end36.i110:                                    ; preds = %for.cond14.preheader.i76
  %call.i104 = call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %78, i16 noundef zeroext %.lcssa98.i74) #5
  %84 = ptrtoint ptr %extent.addr.083.lcssa.i73 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %extent.addr.083.lcssa.i73, align 2
  %count21.i105 = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 0, i32 1
  %85 = ptrtoint ptr %count21.i105 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %count21.i105, align 2
  %sub24.i106 = sub i16 %conv.i, %.lcssa98.i74
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i106)
  %tobool.not.i107 = icmp eq i16 %sub24.i106, 0
  %or.cond.i109 = select i1 %tobool.not.i107, i1 true, i1 %cmp3.i71
  br i1 %or.cond.i109, label %if.end36.i110.hfs_free_extents.exit117_crit_edge, label %if.end39.i115

if.end36.i110.hfs_free_extents.exit117_crit_edge: ; preds = %if.end36.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end39.i115:                                    ; preds = %if.end36.i110
  %incdec.ptr40.i112 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -1
  %count41.i113 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -1, i32 1
  %86 = ptrtoint ptr %count41.i113 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %count41.i113, align 2
  %88 = ptrtoint ptr %incdec.ptr40.i112 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %incdec.ptr40.i112, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i106, i16 %87)
  %cmp17.not.i114 = icmp ult i16 %sub24.i106, %87
  br i1 %cmp17.not.i114, label %if.end39.i115.if.end36.thread.i99_crit_edge, label %if.end36.i110.1

if.end39.i115.if.end36.thread.i99_crit_edge:      ; preds = %if.end39.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i99

if.end36.i110.1:                                  ; preds = %if.end39.i115
  %call.i104.1 = call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %89, i16 noundef zeroext %87) #5
  %90 = ptrtoint ptr %incdec.ptr40.i112 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %incdec.ptr40.i112, align 2
  %count21.i105.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -1, i32 1
  %91 = ptrtoint ptr %count21.i105.1 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %count21.i105.1, align 2
  %sub24.i106.1 = sub i16 %sub24.i106, %87
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i106.1)
  %tobool.not.i107.1 = icmp eq i16 %sub24.i106.1, 0
  %or.cond.i109.1 = or i1 %tobool.not.i107.1, %tobool37.not.i108.1
  br i1 %or.cond.i109.1, label %if.end36.i110.1.hfs_free_extents.exit117_crit_edge, label %if.end39.i115.1

if.end36.i110.1.hfs_free_extents.exit117_crit_edge: ; preds = %if.end36.i110.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end39.i115.1:                                  ; preds = %if.end36.i110.1
  %incdec.ptr40.i112.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -2
  %count41.i113.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -2, i32 1
  %92 = ptrtoint ptr %count41.i113.1 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %count41.i113.1, align 2
  %94 = ptrtoint ptr %incdec.ptr40.i112.1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %incdec.ptr40.i112.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i106.1, i16 %93)
  %cmp17.not.i114.1 = icmp ult i16 %sub24.i106.1, %93
  br i1 %cmp17.not.i114.1, label %if.end39.i115.1.if.end36.thread.i99_crit_edge, label %if.end36.i110.2

if.end39.i115.1.if.end36.thread.i99_crit_edge:    ; preds = %if.end39.i115.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i99

if.end36.i110.2:                                  ; preds = %if.end39.i115.1
  %call.i104.2 = call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %95, i16 noundef zeroext %93) #5
  %96 = ptrtoint ptr %incdec.ptr40.i112.1 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %incdec.ptr40.i112.1, align 2
  %count21.i105.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -2, i32 1
  %97 = ptrtoint ptr %count21.i105.2 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %count21.i105.2, align 2
  %sub24.i106.2 = sub i16 %sub24.i106.1, %93
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i106.2)
  %tobool.not.i107.2 = icmp eq i16 %sub24.i106.2, 0
  %or.cond.i109.2 = or i1 %tobool.not.i107.2, %tobool37.not.i108.2
  br i1 %or.cond.i109.2, label %if.end36.i110.2.hfs_free_extents.exit117_crit_edge, label %if.end39.i115.2

if.end36.i110.2.hfs_free_extents.exit117_crit_edge: ; preds = %if.end36.i110.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit117

if.end39.i115.2:                                  ; preds = %if.end36.i110.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr40.i112.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -3
  %count41.i113.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i73, i32 -3, i32 1
  %98 = ptrtoint ptr %count41.i113.2 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %count41.i113.2, align 2
  %100 = ptrtoint ptr %incdec.ptr40.i112.2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %incdec.ptr40.i112.2, align 2
  br label %if.end36.thread.i99

hfs_free_extents.exit117:                         ; preds = %if.end36.i110.2.hfs_free_extents.exit117_crit_edge, %if.end36.i110.1.hfs_free_extents.exit117_crit_edge, %if.end36.i110.hfs_free_extents.exit117_crit_edge, %if.end36.thread.i99, %if.end10.1.i90.hfs_free_extents.exit117_crit_edge, %if.else.1.i85.hfs_free_extents.exit117_crit_edge, %if.else.i78.hfs_free_extents.exit117_crit_edge
  %call28 = call i32 @hfs_brec_remove(ptr noundef nonnull %fd) #5
  %cmp29 = icmp ult i32 %add.2, %conv24
  br i1 %cmp29, label %hfs_free_extents.exit117.do.body_crit_edge, label %hfs_free_extents.exit117.do.end_crit_edge

hfs_free_extents.exit117.do.end_crit_edge:        ; preds = %hfs_free_extents.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

hfs_free_extents.exit117.do.body_crit_edge:       ; preds = %hfs_free_extents.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %hfs_free_extents.exit117.do.end_crit_edge, %if.end16.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %do.body.do.end_crit_edge
  %retval.0.i69122 = phi i32 [ 0, %hfs_free_extents.exit117.do.end_crit_edge ], [ -5, %if.end16.i.do.end_crit_edge ], [ -2, %if.end.i.do.end_crit_edge ], [ -2, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i67, %do.body.do.end_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end10.1.i.cleanup_crit_edge, %if.else.1.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i69122, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call15, %if.end13.cleanup_crit_edge ], [ -5, %if.else.1.i.cleanup_crit_edge ], [ -5, %if.else.i.cleanup_crit_edge ], [ -5, %if.end10.1.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfs_free_extents(ptr noundef %sb, ptr nocapture noundef %extent, i16 noundef zeroext %offset, i16 noundef zeroext %block_nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.hfs_extent, ptr %extent, i32 0, i32 1
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp3 = icmp eq i16 %1, %offset
  br i1 %cmp3, label %entry.for.cond14.preheader_crit_edge, label %if.else

entry.for.cond14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %if.end10.1.for.cond14.preheader_crit_edge, %if.end10.for.cond14.preheader_crit_edge, %entry.for.cond14.preheader_crit_edge
  %tobool37.not.1 = phi i1 [ false, %if.end10.1.for.cond14.preheader_crit_edge ], [ true, %if.end10.for.cond14.preheader_crit_edge ], [ false, %entry.for.cond14.preheader_crit_edge ]
  %tobool37.not.2 = phi i1 [ true, %if.end10.1.for.cond14.preheader_crit_edge ], [ false, %if.end10.for.cond14.preheader_crit_edge ], [ false, %entry.for.cond14.preheader_crit_edge ]
  %extent.addr.083.lcssa = phi ptr [ %incdec.ptr.1, %if.end10.1.for.cond14.preheader_crit_edge ], [ %incdec.ptr, %if.end10.for.cond14.preheader_crit_edge ], [ %extent, %entry.for.cond14.preheader_crit_edge ]
  %.lcssa98 = phi i16 [ %sub.1, %if.end10.1.for.cond14.preheader_crit_edge ], [ %sub, %if.end10.for.cond14.preheader_crit_edge ], [ %offset, %entry.for.cond14.preheader_crit_edge ]
  %2 = ptrtoint ptr %extent.addr.083.lcssa to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %extent.addr.083.lcssa, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.lcssa98, i16 %block_nr)
  %cmp17.not86 = icmp ugt i16 %.lcssa98, %block_nr
  br i1 %cmp17.not86, label %for.cond14.preheader.if.end36.thread_crit_edge, label %if.end36

for.cond14.preheader.if.end36.thread_crit_edge:   ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %offset)
  %cmp7 = icmp ugt i16 %1, %offset
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %sub = sub i16 %offset, %1
  %incdec.ptr = getelementptr %struct.hfs_extent, ptr %extent, i32 1
  %count1.1 = getelementptr %struct.hfs_extent, ptr %extent, i32 1, i32 1
  %4 = ptrtoint ptr %count1.1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count1.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %5)
  %cmp3.1 = icmp eq i16 %sub, %5
  br i1 %cmp3.1, label %if.end10.for.cond14.preheader_crit_edge, label %if.else.1

if.end10.for.cond14.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

if.else.1:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %5)
  %cmp7.1 = icmp ult i16 %sub, %5
  br i1 %cmp7.1, label %if.else.1.cleanup_crit_edge, label %if.end10.1

if.else.1.cleanup_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1:                                       ; preds = %if.else.1
  %sub.1 = sub i16 %sub, %5
  %incdec.ptr.1 = getelementptr %struct.hfs_extent, ptr %extent, i32 2
  %count1.2 = getelementptr %struct.hfs_extent, ptr %extent, i32 2, i32 1
  %6 = ptrtoint ptr %count1.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %count1.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1, i16 %7)
  %cmp3.2 = icmp eq i16 %sub.1, %7
  br i1 %cmp3.2, label %if.end10.1.for.cond14.preheader_crit_edge, label %if.end10.1.cleanup_crit_edge

if.end10.1.cleanup_crit_edge:                     ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1.for.cond14.preheader_crit_edge:        ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

if.end36.thread:                                  ; preds = %if.end39.2, %if.end39.1.if.end36.thread_crit_edge, %if.end39.if.end36.thread_crit_edge, %for.cond14.preheader.if.end36.thread_crit_edge
  %extent.addr.1.lcssa = phi ptr [ %extent.addr.083.lcssa, %for.cond14.preheader.if.end36.thread_crit_edge ], [ %incdec.ptr40, %if.end39.if.end36.thread_crit_edge ], [ %incdec.ptr40.1, %if.end39.1.if.end36.thread_crit_edge ], [ %incdec.ptr40.2, %if.end39.2 ]
  %block_nr.addr.0.lcssa = phi i16 [ %block_nr, %for.cond14.preheader.if.end36.thread_crit_edge ], [ %sub24, %if.end39.if.end36.thread_crit_edge ], [ %sub24.1, %if.end39.1.if.end36.thread_crit_edge ], [ %sub24.2, %if.end39.2 ]
  %count.0.lcssa = phi i16 [ %.lcssa98, %for.cond14.preheader.if.end36.thread_crit_edge ], [ %12, %if.end39.if.end36.thread_crit_edge ], [ %18, %if.end39.1.if.end36.thread_crit_edge ], [ %24, %if.end39.2 ]
  %.lcssa = phi i16 [ %3, %for.cond14.preheader.if.end36.thread_crit_edge ], [ %14, %if.end39.if.end36.thread_crit_edge ], [ %20, %if.end39.1.if.end36.thread_crit_edge ], [ %26, %if.end39.2 ]
  %sub29 = sub i16 %count.0.lcssa, %block_nr.addr.0.lcssa
  %add = add i16 %.lcssa, %sub29
  %call34 = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %add, i16 noundef zeroext %block_nr.addr.0.lcssa) #5
  %count35 = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %count35 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %sub29, ptr %count35, align 2
  br label %cleanup

if.end36:                                         ; preds = %for.cond14.preheader
  %call = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %3, i16 noundef zeroext %.lcssa98) #5
  %9 = ptrtoint ptr %extent.addr.083.lcssa to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %extent.addr.083.lcssa, align 2
  %count21 = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %count21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %count21, align 2
  %sub24 = sub i16 %block_nr, %.lcssa98
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24)
  %tobool.not = icmp eq i16 %sub24, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %incdec.ptr40 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -1
  %count41 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -1, i32 1
  %11 = ptrtoint ptr %count41 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count41, align 2
  %13 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incdec.ptr40, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24, i16 %12)
  %cmp17.not = icmp ult i16 %sub24, %12
  br i1 %cmp17.not, label %if.end39.if.end36.thread_crit_edge, label %if.end36.1

if.end39.if.end36.thread_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread

if.end36.1:                                       ; preds = %if.end39
  %call.1 = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %14, i16 noundef zeroext %12) #5
  %15 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %incdec.ptr40, align 2
  %count21.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -1, i32 1
  %16 = ptrtoint ptr %count21.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %count21.1, align 2
  %sub24.1 = sub i16 %sub24, %12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.1)
  %tobool.not.1 = icmp eq i16 %sub24.1, 0
  %or.cond.1 = or i1 %tobool.not.1, %tobool37.not.1
  br i1 %or.cond.1, label %if.end36.1.cleanup_crit_edge, label %if.end39.1

if.end36.1.cleanup_crit_edge:                     ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39.1:                                       ; preds = %if.end36.1
  %incdec.ptr40.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -2
  %count41.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -2, i32 1
  %17 = ptrtoint ptr %count41.1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %count41.1, align 2
  %19 = ptrtoint ptr %incdec.ptr40.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %incdec.ptr40.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.1, i16 %18)
  %cmp17.not.1 = icmp ult i16 %sub24.1, %18
  br i1 %cmp17.not.1, label %if.end39.1.if.end36.thread_crit_edge, label %if.end36.2

if.end39.1.if.end36.thread_crit_edge:             ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread

if.end36.2:                                       ; preds = %if.end39.1
  %call.2 = tail call i32 @hfs_clear_vbm_bits(ptr noundef %sb, i16 noundef zeroext %20, i16 noundef zeroext %18) #5
  %21 = ptrtoint ptr %incdec.ptr40.1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %incdec.ptr40.1, align 2
  %count21.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -2, i32 1
  %22 = ptrtoint ptr %count21.2 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count21.2, align 2
  %sub24.2 = sub i16 %sub24.1, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.2)
  %tobool.not.2 = icmp eq i16 %sub24.2, 0
  %or.cond.2 = or i1 %tobool.not.2, %tobool37.not.2
  br i1 %or.cond.2, label %if.end36.2.cleanup_crit_edge, label %if.end39.2

if.end36.2.cleanup_crit_edge:                     ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39.2:                                       ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr40.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -3
  %count41.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa, i32 -3, i32 1
  %23 = ptrtoint ptr %count41.2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %count41.2, align 2
  %25 = ptrtoint ptr %incdec.ptr40.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr40.2, align 2
  br label %if.end36.thread

cleanup:                                          ; preds = %if.end36.2.cleanup_crit_edge, %if.end36.1.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end36.thread, %if.end10.1.cleanup_crit_edge, %if.else.1.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36.thread ], [ -5, %if.else.1.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %if.end10.1.cleanup_crit_edge ], [ 0, %if.end36.2.cleanup_crit_edge ], [ 0, %if.end36.1.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) local_unnamed_addr #2 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %conv = trunc i64 %block to i32
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %fs_div = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %fs_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fs_div, align 4
  %div = udiv i32 %conv, %5
  %conv1 = trunc i32 %div to i16
  %fs_blocks = getelementptr i8, ptr %inode, i32 -48
  %6 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fs_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %block)
  %cmp.not = icmp ugt i64 %7, %block
  br i1 %cmp.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %div, 65535
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %block)
  %cmp8 = icmp ult i64 %7, %block
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %conv12 = and i32 %div, 65535
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %alloc_blocks, align 8
  %conv16 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %conv16)
  %cmp17.not = icmp ult i32 %conv12, %conv16
  br i1 %cmp17.not, label %if.end11.if.end24_crit_edge, label %if.then19

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then19:                                        ; preds = %if.end11
  %call = tail call i32 @hfs_extend_file(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end11.if.end24_crit_edge, %entry.if.end24_crit_edge
  %conv25.pre-phi = phi i32 [ %.pre, %entry.if.end24_crit_edge ], [ %conv12, %if.end11.if.end24_crit_edge ], [ %conv12, %if.then19.if.end24_crit_edge ]
  %first_blocks = getelementptr i8, ptr %inode, i32 -28
  %10 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %first_blocks, align 4
  %conv29 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.pre-phi, i32 %conv29)
  %cmp30 = icmp ult i32 %conv25.pre-phi, %conv29
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end24
  %first_extents = getelementptr i8, ptr %inode, i32 -40
  %count1.i = getelementptr i8, ptr %inode, i32 -38
  %12 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv1)
  %cmp3.i = icmp ugt i16 %13, %conv1
  br i1 %cmp3.i, label %if.then32.if.then.i124_crit_edge, label %if.end.i

if.then32.if.then.i124_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i124

if.then.i124:                                     ; preds = %if.end.1.i.if.then.i124_crit_edge, %if.end.i.if.then.i124_crit_edge, %if.then32.if.then.i124_crit_edge
  %off.addr.021.lcssa.i = phi i16 [ %conv1, %if.then32.if.then.i124_crit_edge ], [ %sub.i, %if.end.i.if.then.i124_crit_edge ], [ %sub.1.i, %if.end.1.i.if.then.i124_crit_edge ]
  %ext.addr.020.lcssa.i = phi ptr [ %first_extents, %if.then32.if.then.i124_crit_edge ], [ %incdec.ptr.i, %if.end.i.if.then.i124_crit_edge ], [ %incdec.ptr.1.i, %if.end.1.i.if.then.i124_crit_edge ]
  %14 = ptrtoint ptr %ext.addr.020.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ext.addr.020.lcssa.i, align 2
  %add.i = add i16 %15, %off.addr.021.lcssa.i
  br label %done

if.end.i:                                         ; preds = %if.then32
  %sub.i = sub i16 %conv1, %13
  %incdec.ptr.i = getelementptr i8, ptr %inode, i32 -36
  %count1.1.i = getelementptr i8, ptr %inode, i32 -34
  %16 = ptrtoint ptr %count1.1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count1.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %17)
  %cmp3.1.i = icmp ult i16 %sub.i, %17
  br i1 %cmp3.1.i, label %if.end.i.if.then.i124_crit_edge, label %if.end.1.i

if.end.i.if.then.i124_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i124

if.end.1.i:                                       ; preds = %if.end.i
  %sub.1.i = sub i16 %sub.i, %17
  %incdec.ptr.1.i = getelementptr i8, ptr %inode, i32 -32
  %count1.2.i = getelementptr i8, ptr %inode, i32 -30
  %18 = ptrtoint ptr %count1.2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count1.2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i, i16 %19)
  %cmp3.2.i = icmp ult i16 %sub.1.i, %19
  br i1 %cmp3.2.i, label %if.end.1.i.if.then.i124_crit_edge, label %if.end.1.i.done_crit_edge

if.end.1.i.done_crit_edge:                        ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end.1.i.if.then.i124_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i124

if.end37:                                         ; preds = %if.end24
  %extents_lock = getelementptr i8, ptr %inode, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #5
  %20 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  %cached_start.i = getelementptr i8, ptr %inode, i32 -14
  %21 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cached_start.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv1)
  %cmp.not.i = icmp ugt i16 %22, %conv1
  br i1 %cmp.not.i, label %if.end37.if.end.i127_crit_edge, label %land.lhs.true.i

if.end37.if.end.i127_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

land.lhs.true.i:                                  ; preds = %if.end37
  %conv1.i = zext i16 %22 to i32
  %cached_blocks.i = getelementptr i8, ptr %inode, i32 -12
  %23 = ptrtoint ptr %cached_blocks.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cached_blocks.i, align 4
  %conv12.i = zext i16 %24 to i32
  %add.i125 = add nuw nsw i32 %conv12.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i125, i32 %conv25.pre-phi)
  %cmp13.i = icmp ugt i32 %add.i125, %conv25.pre-phi
  br i1 %cmp13.i, label %hfs_ext_read_extent.exit.thread, label %land.lhs.true.i.if.end.i127_crit_edge

land.lhs.true.i.if.end.i127_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

hfs_ext_read_extent.exit.thread:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  br label %if.then43

if.end.i127:                                      ; preds = %land.lhs.true.i.if.end.i127_crit_edge, %if.end37.if.end.i127_crit_edge
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree.i = getelementptr inbounds %struct.hfs_sb_info, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_tree.i, align 4
  %call.i = call i32 @hfs_find_init(ptr noundef %30, ptr noundef nonnull %fd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i126 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i126, label %hfs_ext_read_extent.exit, label %hfs_ext_read_extent.exit.thread149

hfs_ext_read_extent.exit.thread149:               ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  br label %if.else55

hfs_ext_read_extent.exit:                         ; preds = %if.end.i127
  %call17.i = call fastcc i32 @__hfs_ext_cache_extent(ptr noundef nonnull %fd.i, ptr noundef %inode, i32 noundef %conv25.pre-phi) #5
  call void @hfs_find_exit(ptr noundef nonnull %fd.i) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool42.not = icmp eq i32 %call17.i, 0
  br i1 %tobool42.not, label %hfs_ext_read_extent.exit.if.then43_crit_edge, label %hfs_ext_read_extent.exit.if.else55_crit_edge

hfs_ext_read_extent.exit.if.else55_crit_edge:     ; preds = %hfs_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else55

hfs_ext_read_extent.exit.if.then43_crit_edge:     ; preds = %hfs_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %hfs_ext_read_extent.exit.if.then43_crit_edge, %hfs_ext_read_extent.exit.thread
  %cached_extents = getelementptr i8, ptr %inode, i32 -26
  %31 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cached_start.i, align 2
  %conv53 = sub i16 %conv1, %32
  %count1.i129 = getelementptr i8, ptr %inode, i32 -24
  %33 = ptrtoint ptr %count1.i129 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %count1.i129, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv53, i16 %34)
  %cmp3.i130 = icmp ult i16 %conv53, %34
  br i1 %cmp3.i130, label %if.then43.if.then.i134_crit_edge, label %if.end.i139

if.then43.if.then.i134_crit_edge:                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i134

if.then.i134:                                     ; preds = %if.end.1.i144.if.then.i134_crit_edge, %if.end.i139.if.then.i134_crit_edge, %if.then43.if.then.i134_crit_edge
  %off.addr.021.lcssa.i131 = phi i16 [ %conv53, %if.then43.if.then.i134_crit_edge ], [ %sub.i135, %if.end.i139.if.then.i134_crit_edge ], [ %sub.1.i140, %if.end.1.i144.if.then.i134_crit_edge ]
  %ext.addr.020.lcssa.i132 = phi ptr [ %cached_extents, %if.then43.if.then.i134_crit_edge ], [ %incdec.ptr.i136, %if.end.i139.if.then.i134_crit_edge ], [ %incdec.ptr.1.i141, %if.end.1.i144.if.then.i134_crit_edge ]
  %35 = ptrtoint ptr %ext.addr.020.lcssa.i132 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ext.addr.020.lcssa.i132, align 2
  %add.i133 = add i16 %36, %off.addr.021.lcssa.i131
  br label %hfs_ext_find_block.exit146

if.end.i139:                                      ; preds = %if.then43
  %sub.i135 = sub i16 %conv53, %34
  %incdec.ptr.i136 = getelementptr i8, ptr %inode, i32 -22
  %count1.1.i137 = getelementptr i8, ptr %inode, i32 -20
  %37 = ptrtoint ptr %count1.1.i137 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %count1.1.i137, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i135, i16 %38)
  %cmp3.1.i138 = icmp ult i16 %sub.i135, %38
  br i1 %cmp3.1.i138, label %if.end.i139.if.then.i134_crit_edge, label %if.end.1.i144

if.end.i139.if.then.i134_crit_edge:               ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i134

if.end.1.i144:                                    ; preds = %if.end.i139
  %sub.1.i140 = sub i16 %sub.i135, %38
  %incdec.ptr.1.i141 = getelementptr i8, ptr %inode, i32 -18
  %count1.2.i142 = getelementptr i8, ptr %inode, i32 -16
  %39 = ptrtoint ptr %count1.2.i142 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count1.2.i142, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i140, i16 %40)
  %cmp3.2.i143 = icmp ult i16 %sub.1.i140, %40
  br i1 %cmp3.2.i143, label %if.end.1.i144.if.then.i134_crit_edge, label %if.end.1.i144.hfs_ext_find_block.exit146_crit_edge

if.end.1.i144.hfs_ext_find_block.exit146_crit_edge: ; preds = %if.end.1.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_ext_find_block.exit146

if.end.1.i144.if.then.i134_crit_edge:             ; preds = %if.end.1.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i134

hfs_ext_find_block.exit146:                       ; preds = %if.end.1.i144.hfs_ext_find_block.exit146_crit_edge, %if.then.i134
  %retval.0.i145 = phi i16 [ %add.i133, %if.then.i134 ], [ 0, %if.end.1.i144.hfs_ext_find_block.exit146_crit_edge ]
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  br label %done

if.else55:                                        ; preds = %hfs_ext_read_extent.exit.if.else55_crit_edge, %hfs_ext_read_extent.exit.thread149
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  br label %cleanup

done:                                             ; preds = %hfs_ext_find_block.exit146, %if.end.1.i.done_crit_edge, %if.then.i124
  %dblock.0 = phi i16 [ %retval.0.i145, %hfs_ext_find_block.exit146 ], [ %add.i, %if.then.i124 ], [ 0, %if.end.1.i.done_crit_edge ]
  %41 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info, align 16
  %fs_start = getelementptr inbounds %struct.hfs_sb_info, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %fs_start to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fs_start, align 4
  %conv66 = zext i16 %dblock.0 to i32
  %fs_div68 = getelementptr inbounds %struct.hfs_sb_info, ptr %42, i32 0, i32 32
  %45 = ptrtoint ptr %fs_div68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fs_div68, align 4
  %mul = mul i32 %46, %conv66
  %add = add i32 %mul, %44
  %rem = urem i32 %conv, %46
  %add72 = add i32 %add, %rem
  %conv73 = zext i32 %add72 to i64
  %47 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bh_result, align 4
  %49 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %done.map_bh.exit_crit_edge

done.map_bh.exit_crit_edge:                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #5
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %done.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %52 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %53 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv73, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %56 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %b_size.i, align 8
  br i1 %cmp.not, label %map_bh.exit.cleanup_crit_edge, label %if.then75

map_bh.exit.cleanup_crit_edge:                    ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then75:                                        ; preds = %map_bh.exit
  %57 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bh_result, align 4
  %59 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then75.set_buffer_new.exit_crit_edge

if.then75.set_buffer_new.exit_crit_edge:          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #5
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.then75.set_buffer_new.exit_crit_edge
  %60 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i, align 16
  %conv76 = zext i32 %61 to i64
  %phys_size = getelementptr i8, ptr %inode, i32 -8
  %62 = ptrtoint ptr %phys_size to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %phys_size, align 8
  %add80 = add i64 %63, %conv76
  store i64 %add80, ptr %phys_size, align 8
  %64 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %fs_blocks, align 8
  %inc = add i64 %65, 1
  store i64 %inc, ptr %fs_blocks, align 8
  %66 = load i32, ptr %s_blocksize.i, align 16
  %conv86 = zext i32 %66 to i64
  call void @inode_add_bytes(ptr noundef %inode, i64 noundef %conv86) #5
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_new.exit, %map_bh.exit.cleanup_crit_edge, %if.else55, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.else55 ], [ 0, %if.then.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call, %if.then19.cleanup_crit_edge ], [ 0, %set_buffer_new.exit ], [ 0, %map_bh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_extend_file(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %fd.i320 = alloca %struct.hfs_find_data, align 4
  %fd.i = alloca %struct.hfs_find_data, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !9
  %extents_lock = getelementptr i8, ptr %inode, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #5
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -56
  %3 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %alloc_blocks, align 8
  %first_blocks = getelementptr i8, ptr %inode, i32 -28
  %5 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp = icmp eq i16 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -32
  %count.i = getelementptr i8, ptr %inode, i32 -30
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.then.if.end25.sink.split_crit_edge, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then.if.end25.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.sink.split

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #5
  %9 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  %conv.i = zext i16 %4 to i32
  %cached_start.i = getelementptr i8, ptr %inode, i32 -14
  %10 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cached_start.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %4)
  %cmp.not.i = icmp ugt i16 %11, %4
  br i1 %cmp.not.i, label %if.else.if.end.i_crit_edge, label %land.lhs.true.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %conv1.i = zext i16 %11 to i32
  %cached_blocks.i = getelementptr i8, ptr %inode, i32 -12
  %12 = ptrtoint ptr %cached_blocks.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cached_blocks.i, align 4
  %conv12.i = zext i16 %13 to i32
  %add.i260 = add nuw nsw i32 %conv12.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i260, i32 %conv.i)
  %cmp13.i = icmp ugt i32 %add.i260, %conv.i
  br i1 %cmp13.i, label %hfs_ext_read_extent.exit.thread, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

hfs_ext_read_extent.exit.thread:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree.i = getelementptr inbounds %struct.hfs_sb_info, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext_tree.i, align 4
  %call.i = call i32 @hfs_find_init(ptr noundef %19, ptr noundef nonnull %fd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i261 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i261, label %hfs_ext_read_extent.exit, label %hfs_ext_read_extent.exit.thread331

hfs_ext_read_extent.exit.thread331:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  br label %out.thread

hfs_ext_read_extent.exit:                         ; preds = %if.end.i
  %call17.i = call fastcc i32 @__hfs_ext_cache_extent(ptr noundef nonnull %fd.i, ptr noundef %inode, i32 noundef %conv.i) #5
  call void @hfs_find_exit(ptr noundef nonnull %fd.i) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %hfs_ext_read_extent.exit.if.end_crit_edge, label %hfs_ext_read_extent.exit.out.thread_crit_edge

hfs_ext_read_extent.exit.out.thread_crit_edge:    ; preds = %hfs_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

hfs_ext_read_extent.exit.if.end_crit_edge:        ; preds = %hfs_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %hfs_ext_read_extent.exit.if.end_crit_edge, %hfs_ext_read_extent.exit.thread
  %add.ptr.i262 = getelementptr i8, ptr %inode, i32 -18
  %count.i263 = getelementptr i8, ptr %inode, i32 -16
  %20 = ptrtoint ptr %count.i263 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %count.i263, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i264 = icmp eq i16 %21, 0
  br i1 %tobool.not.i264, label %if.end.if.end25.sink.split_crit_edge, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end.if.end25.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.end.if.end25.sink.split_crit_edge, %if.then.if.end25.sink.split_crit_edge
  %.sink354 = phi i32 [ -40, %if.then.if.end25.sink.split_crit_edge ], [ -26, %if.end.if.end25.sink.split_crit_edge ]
  %.sink = phi i32 [ -34, %if.then.if.end25.sink.split_crit_edge ], [ -20, %if.end.if.end25.sink.split_crit_edge ]
  %cached_extents = getelementptr i8, ptr %inode, i32 %.sink354
  %count.1.i265 = getelementptr i8, ptr %inode, i32 %.sink
  %22 = ptrtoint ptr %count.1.i265 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count.1.i265, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.1.i266 = icmp ne i16 %23, 0
  %spec.select.idx.i267 = zext i1 %tobool.not.1.i266 to i32
  %spec.select.i268 = getelementptr %struct.hfs_extent, ptr %cached_extents, i32 %spec.select.idx.i267
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.end.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %ext.addr.0.lcssa.i270.sink353 = phi ptr [ %add.ptr.i, %if.then.if.end25_crit_edge ], [ %add.ptr.i262, %if.end.if.end25_crit_edge ], [ %spec.select.i268, %if.end25.sink.split ]
  %24 = ptrtoint ptr %ext.addr.0.lcssa.i270.sink353 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ext.addr.0.lcssa.i270.sink353, align 2
  %count1.i271 = getelementptr inbounds %struct.hfs_extent, ptr %ext.addr.0.lcssa.i270.sink353, i32 0, i32 1
  %26 = ptrtoint ptr %count1.i271 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %count1.i271, align 2
  %add.i272 = add i16 %27, %25
  %goal.0 = zext i16 %add.i272 to i32
  %clump_blocks = getelementptr i8, ptr %inode, i32 -54
  %28 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %clump_blocks, align 2
  %conv29 = zext i16 %29 to i32
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv29, ptr %len, align 4
  %call30 = call i32 @hfs_vbm_search_free(ptr noundef %1, i32 noundef %goal.0, ptr noundef nonnull %len) #5
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool31.not = icmp eq i32 %32, 0
  br i1 %tobool31.not, label %if.end25.out.thread_crit_edge, label %do.end

if.end25.out.thread_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

do.end:                                           ; preds = %if.end25
  %33 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %alloc_blocks, align 8
  %35 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp44 = icmp eq i16 %34, %36
  br i1 %cmp44, label %if.then46, label %if.else99

if.then46:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool51.not = icmp eq i16 %34, 0
  br i1 %tobool51.not, label %if.end84.thread, label %if.else67

if.end84.thread:                                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %conv56 = trunc i32 %call30 to i16
  %first_extents60 = getelementptr i8, ptr %inode, i32 -40
  %37 = ptrtoint ptr %first_extents60 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv56, ptr %first_extents60, align 8
  %conv61 = trunc i32 %32 to i16
  %count = getelementptr i8, ptr %inode, i32 -38
  %38 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv61, ptr %count, align 2
  br label %if.then86

if.else67:                                        ; preds = %if.then46
  %first_extents71 = getelementptr i8, ptr %inode, i32 -40
  %conv77 = trunc i32 %call30 to i16
  %conv78 = trunc i32 %32 to i16
  %count1.i274 = getelementptr i8, ptr %inode, i32 -38
  %39 = ptrtoint ptr %count1.i274 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count1.i274, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %40)
  %cmp3.i = icmp eq i16 %34, %40
  br i1 %cmp3.i, label %if.else67.if.then.i_crit_edge, label %if.else21.i

if.else67.if.then.i_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.end28.i.if.then.i_crit_edge, %if.else67.if.then.i_crit_edge
  %extent.addr.054.lcssa.i = phi ptr [ %incdec.ptr32.i, %if.end28.i.if.then.i_crit_edge ], [ %first_extents71, %if.else67.if.then.i_crit_edge ]
  %.lcssa.i = phi i16 [ %sub.i, %if.end28.i.if.then.i_crit_edge ], [ %34, %if.else67.if.then.i_crit_edge ]
  %conv2.i = zext i16 %.lcssa.i to i32
  %41 = ptrtoint ptr %extent.addr.054.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %extent.addr.054.lcssa.i, align 2
  %conv5.i = and i32 %call30, 65535
  %conv6.i = zext i16 %42 to i32
  %add.i275 = add nuw nsw i32 %conv6.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i275, i32 %conv5.i)
  %cmp8.not.i = icmp eq i32 %add.i275, %conv5.i
  br i1 %cmp8.not.i, label %if.then.i.if.else.i_crit_edge, label %if.end.i276

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.thread.i:                                 ; preds = %if.end28.1.i
  %incdec.ptr32.1.i = getelementptr i8, ptr %inode, i32 -32
  %conv263.i = zext i16 %sub.1.i to i32
  %43 = ptrtoint ptr %incdec.ptr32.1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %incdec.ptr32.1.i, align 2
  %conv564.i = and i32 %call30, 65535
  %conv665.i = zext i16 %44 to i32
  %add66.i = add nuw nsw i32 %conv665.i, %conv263.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add66.i, i32 %conv564.i)
  %cmp8.not67.i = icmp eq i32 %add66.i, %conv564.i
  br i1 %cmp8.not67.i, label %if.then.thread.i.if.else.i_crit_edge, label %if.then.thread.i.do.end164_crit_edge

if.then.thread.i.do.end164_crit_edge:             ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end164

if.then.thread.i.if.else.i_crit_edge:             ; preds = %if.then.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.end.i276:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr %struct.hfs_extent, ptr %extent.addr.054.lcssa.i, i32 1
  %45 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv77, ptr %incdec.ptr.i, align 2
  br label %if.end84

if.else.i:                                        ; preds = %if.then.thread.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %.lcssa71.i = phi i16 [ %sub.1.i, %if.then.thread.i.if.else.i_crit_edge ], [ %.lcssa.i, %if.then.i.if.else.i_crit_edge ]
  %extent.addr.054.lcssa69.i = phi ptr [ %incdec.ptr32.1.i, %if.then.thread.i.if.else.i_crit_edge ], [ %extent.addr.054.lcssa.i, %if.then.i.if.else.i_crit_edge ]
  %add17.i = add i16 %.lcssa71.i, %conv78
  br label %if.end84

if.else21.i:                                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %40)
  %cmp24.i = icmp ult i16 %34, %40
  br i1 %cmp24.i, label %if.else21.i.out.thread_crit_edge, label %if.end28.i

if.else21.i.out.thread_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end28.i:                                       ; preds = %if.else21.i
  %sub.i = sub i16 %34, %40
  %incdec.ptr32.i = getelementptr i8, ptr %inode, i32 -36
  %count1.1.i = getelementptr i8, ptr %inode, i32 -34
  %46 = ptrtoint ptr %count1.1.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %count1.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %47)
  %cmp3.1.i = icmp eq i16 %sub.i, %47
  br i1 %cmp3.1.i, label %if.end28.i.if.then.i_crit_edge, label %if.else21.1.i

if.end28.i.if.then.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.else21.1.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %47)
  %cmp24.1.i = icmp ult i16 %sub.i, %47
  br i1 %cmp24.1.i, label %if.else21.1.i.out.thread_crit_edge, label %if.end28.1.i

if.else21.1.i.out.thread_crit_edge:               ; preds = %if.else21.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end28.1.i:                                     ; preds = %if.else21.1.i
  %sub.1.i = sub i16 %sub.i, %47
  %count1.2.i = getelementptr i8, ptr %inode, i32 -30
  %48 = ptrtoint ptr %count1.2.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %count1.2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i, i16 %49)
  %cmp3.2.i = icmp eq i16 %sub.1.i, %49
  br i1 %cmp3.2.i, label %if.then.thread.i, label %if.end28.1.i.out.thread_crit_edge

if.end28.1.i.out.thread_crit_edge:                ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end84:                                         ; preds = %if.else.i, %if.end.i276
  %extent.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end.i276 ], [ %extent.addr.054.lcssa69.i, %if.else.i ]
  %block_count.addr.0.i = phi i16 [ %conv78, %if.end.i276 ], [ %add17.i, %if.else.i ]
  %count20.i = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.i, i32 0, i32 1
  %50 = ptrtoint ptr %count20.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %block_count.addr.0.i, ptr %count20.i, align 2
  br label %if.then86

if.then86:                                        ; preds = %if.end84, %if.end84.thread
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %53 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %first_blocks, align 4
  %55 = trunc i32 %52 to i16
  %conv97 = add i16 %54, %55
  store i16 %conv97, ptr %first_blocks, align 4
  br label %if.then146

if.else99:                                        ; preds = %do.end
  %cached_extents103 = getelementptr i8, ptr %inode, i32 -26
  %cached_start = getelementptr i8, ptr %inode, i32 -14
  %56 = ptrtoint ptr %cached_start to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cached_start, align 2
  %sub = sub i16 %34, %57
  %conv115 = trunc i32 %call30 to i16
  %conv116 = trunc i32 %32 to i16
  %count1.i278 = getelementptr i8, ptr %inode, i32 -24
  %58 = ptrtoint ptr %count1.i278 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count1.i278, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %59)
  %cmp3.i279 = icmp eq i16 %sub, %59
  br i1 %cmp3.i279, label %if.else99.if.then.i287_crit_edge, label %if.else21.i306

if.else99.if.then.i287_crit_edge:                 ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i287

if.then.i287:                                     ; preds = %if.end28.i311.if.then.i287_crit_edge, %if.else99.if.then.i287_crit_edge
  %extent.addr.054.lcssa.i280 = phi ptr [ %incdec.ptr32.i308, %if.end28.i311.if.then.i287_crit_edge ], [ %cached_extents103, %if.else99.if.then.i287_crit_edge ]
  %.lcssa.i281 = phi i16 [ %sub.i307, %if.end28.i311.if.then.i287_crit_edge ], [ %sub, %if.else99.if.then.i287_crit_edge ]
  %conv2.i282 = zext i16 %.lcssa.i281 to i32
  %60 = ptrtoint ptr %extent.addr.054.lcssa.i280 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %extent.addr.054.lcssa.i280, align 2
  %conv5.i283 = and i32 %call30, 65535
  %conv6.i284 = zext i16 %61 to i32
  %add.i285 = add nuw nsw i32 %conv6.i284, %conv2.i282
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i285, i32 %conv5.i283)
  %cmp8.not.i286 = icmp eq i32 %add.i285, %conv5.i283
  br i1 %cmp8.not.i286, label %if.then.i287.if.else.i300_crit_edge, label %if.end.i296

if.then.i287.if.else.i300_crit_edge:              ; preds = %if.then.i287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i300

if.then.thread.i294:                              ; preds = %if.end28.1.i317
  %incdec.ptr32.1.i288 = getelementptr i8, ptr %inode, i32 -18
  %conv263.i289 = zext i16 %sub.1.i314 to i32
  %62 = ptrtoint ptr %incdec.ptr32.1.i288 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %incdec.ptr32.1.i288, align 2
  %conv564.i290 = and i32 %call30, 65535
  %conv665.i291 = zext i16 %63 to i32
  %add66.i292 = add nuw nsw i32 %conv665.i291, %conv263.i289
  call void @__sanitizer_cov_trace_cmp4(i32 %add66.i292, i32 %conv564.i290)
  %cmp8.not67.i293 = icmp eq i32 %add66.i292, %conv564.i290
  br i1 %cmp8.not67.i293, label %if.then.thread.i294.if.else.i300_crit_edge, label %if.then.thread.i294.do.end164_crit_edge

if.then.thread.i294.do.end164_crit_edge:          ; preds = %if.then.thread.i294
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end164

if.then.thread.i294.if.else.i300_crit_edge:       ; preds = %if.then.thread.i294
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i300

if.end.i296:                                      ; preds = %if.then.i287
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i295 = getelementptr %struct.hfs_extent, ptr %extent.addr.054.lcssa.i280, i32 1
  %64 = ptrtoint ptr %incdec.ptr.i295 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv115, ptr %incdec.ptr.i295, align 2
  br label %if.then119

if.else.i300:                                     ; preds = %if.then.thread.i294.if.else.i300_crit_edge, %if.then.i287.if.else.i300_crit_edge
  %.lcssa71.i297 = phi i16 [ %sub.1.i314, %if.then.thread.i294.if.else.i300_crit_edge ], [ %.lcssa.i281, %if.then.i287.if.else.i300_crit_edge ]
  %extent.addr.054.lcssa69.i298 = phi ptr [ %incdec.ptr32.1.i288, %if.then.thread.i294.if.else.i300_crit_edge ], [ %extent.addr.054.lcssa.i280, %if.then.i287.if.else.i300_crit_edge ]
  %add17.i299 = add i16 %.lcssa71.i297, %conv116
  br label %if.then119

if.else21.i306:                                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %59)
  %cmp24.i305 = icmp ult i16 %sub, %59
  br i1 %cmp24.i305, label %if.else21.i306.out.thread_crit_edge, label %if.end28.i311

if.else21.i306.out.thread_crit_edge:              ; preds = %if.else21.i306
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end28.i311:                                    ; preds = %if.else21.i306
  %sub.i307 = sub i16 %sub, %59
  %incdec.ptr32.i308 = getelementptr i8, ptr %inode, i32 -22
  %count1.1.i309 = getelementptr i8, ptr %inode, i32 -20
  %65 = ptrtoint ptr %count1.1.i309 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count1.1.i309, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i307, i16 %66)
  %cmp3.1.i310 = icmp eq i16 %sub.i307, %66
  br i1 %cmp3.1.i310, label %if.end28.i311.if.then.i287_crit_edge, label %if.else21.1.i313

if.end28.i311.if.then.i287_crit_edge:             ; preds = %if.end28.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i287

if.else21.1.i313:                                 ; preds = %if.end28.i311
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i307, i16 %66)
  %cmp24.1.i312 = icmp ult i16 %sub.i307, %66
  br i1 %cmp24.1.i312, label %if.else21.1.i313.out.thread_crit_edge, label %if.end28.1.i317

if.else21.1.i313.out.thread_crit_edge:            ; preds = %if.else21.1.i313
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end28.1.i317:                                  ; preds = %if.else21.1.i313
  %sub.1.i314 = sub i16 %sub.i307, %66
  %count1.2.i315 = getelementptr i8, ptr %inode, i32 -16
  %67 = ptrtoint ptr %count1.2.i315 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %count1.2.i315, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i314, i16 %68)
  %cmp3.2.i316 = icmp eq i16 %sub.1.i314, %68
  br i1 %cmp3.2.i316, label %if.then.thread.i294, label %if.end28.1.i317.out.thread_crit_edge

if.end28.1.i317.out.thread_crit_edge:             ; preds = %if.end28.1.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.then119:                                       ; preds = %if.else.i300, %if.end.i296
  %extent.addr.1.i301 = phi ptr [ %incdec.ptr.i295, %if.end.i296 ], [ %extent.addr.054.lcssa69.i298, %if.else.i300 ]
  %block_count.addr.0.i302 = phi i16 [ %conv116, %if.end.i296 ], [ %add17.i299, %if.else.i300 ]
  %count20.i303 = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.i301, i32 0, i32 1
  %69 = ptrtoint ptr %count20.i303 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %block_count.addr.0.i302, ptr %count20.i303, align 2
  %flags = getelementptr i8, ptr %inode, i32 -252
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 4
  %or = or i32 %71, 2
  store i32 %or, ptr %flags, align 4
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %cached_blocks = getelementptr i8, ptr %inode, i32 -12
  %74 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cached_blocks, align 4
  %76 = trunc i32 %73 to i16
  %conv133 = add i16 %75, %76
  store i16 %conv133, ptr %cached_blocks, align 4
  br label %if.then146

out.thread:                                       ; preds = %hfs_ext_write_extent.exit.out.thread_crit_edge, %hfs_ext_write_extent.exit.thread349, %if.end28.1.i317.out.thread_crit_edge, %if.else21.1.i313.out.thread_crit_edge, %if.else21.i306.out.thread_crit_edge, %if.end28.1.i.out.thread_crit_edge, %if.else21.1.i.out.thread_crit_edge, %if.else21.i.out.thread_crit_edge, %if.end25.out.thread_crit_edge, %hfs_ext_read_extent.exit.out.thread_crit_edge, %hfs_ext_read_extent.exit.thread331
  %res.1.ph = phi i32 [ %call.i, %hfs_ext_read_extent.exit.thread331 ], [ -28, %if.end25.out.thread_crit_edge ], [ %call17.i, %hfs_ext_read_extent.exit.out.thread_crit_edge ], [ %call3.i, %hfs_ext_write_extent.exit.out.thread_crit_edge ], [ %call.i325, %hfs_ext_write_extent.exit.thread349 ], [ -5, %if.end28.1.i.out.thread_crit_edge ], [ -5, %if.else21.i.out.thread_crit_edge ], [ -5, %if.else21.1.i.out.thread_crit_edge ], [ -5, %if.else21.1.i313.out.thread_crit_edge ], [ -5, %if.else21.i306.out.thread_crit_edge ], [ -5, %if.end28.1.i317.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  br label %if.end161

if.then146:                                       ; preds = %if.end168, %if.then119, %if.then86
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %79 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %alloc_blocks, align 8
  %81 = trunc i32 %78 to i16
  %conv153 = add i16 %80, %81
  store i16 %conv153, ptr %alloc_blocks, align 8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %82 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %83)
  %cmp154 = icmp ult i32 %83, 16
  br i1 %cmp154, label %if.then156, label %if.then146.if.end158_crit_edge

if.then146.if.end158_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then156:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #7
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %84 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info, align 16
  %flags157 = getelementptr inbounds %struct.hfs_sb_info, ptr %85, i32 0, i32 30
  call void @_set_bit(i32 noundef 2, ptr noundef %flags157) #5
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.then146.if.end158_crit_edge
  %s_fs_info159 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %s_fs_info159 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info159, align 16
  %flags160 = getelementptr inbounds %struct.hfs_sb_info, ptr %87, i32 0, i32 30
  call void @_set_bit(i32 noundef 1, ptr noundef %flags160) #5
  call void @hfs_mark_mdb_dirty(ptr noundef %1) #5
  br label %if.end161

if.end161:                                        ; preds = %if.end158, %out.thread
  %res.1346 = phi i32 [ %res.1.ph, %out.thread ], [ 0, %if.end158 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  ret i32 %res.1346

do.end164:                                        ; preds = %if.then.thread.i294.do.end164_crit_edge, %if.then.thread.i.do.end164_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i320) #5
  %88 = call ptr @memset(ptr %fd.i320, i32 255, i32 36)
  %flags.i = getelementptr i8, ptr %inode, i32 -252
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i321 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i321, label %hfs_ext_write_extent.exit.thread, label %if.then.i326

hfs_ext_write_extent.exit.thread:                 ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i320) #5
  br label %if.end168

if.then.i326:                                     ; preds = %do.end164
  %91 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i323 = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i323 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i323, align 16
  %ext_tree.i324 = getelementptr inbounds %struct.hfs_sb_info, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %ext_tree.i324 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ext_tree.i324, align 4
  %call.i325 = call i32 @hfs_find_init(ptr noundef %96, ptr noundef nonnull %fd.i320) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %tobool1.not.i = icmp eq i32 %call.i325, 0
  br i1 %tobool1.not.i, label %hfs_ext_write_extent.exit, label %hfs_ext_write_extent.exit.thread349

hfs_ext_write_extent.exit.thread349:              ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i320) #5
  br label %out.thread

hfs_ext_write_extent.exit:                        ; preds = %if.then.i326
  %call3.i = call fastcc i32 @__hfs_ext_write_extent(ptr noundef %inode, ptr noundef nonnull %fd.i320) #5
  call void @hfs_find_exit(ptr noundef nonnull %fd.i320) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i320) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool166.not = icmp eq i32 %call3.i, 0
  br i1 %tobool166.not, label %hfs_ext_write_extent.exit.if.end168_crit_edge, label %hfs_ext_write_extent.exit.out.thread_crit_edge

hfs_ext_write_extent.exit.out.thread_crit_edge:   ; preds = %hfs_ext_write_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

hfs_ext_write_extent.exit.if.end168_crit_edge:    ; preds = %hfs_ext_write_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

if.end168:                                        ; preds = %hfs_ext_write_extent.exit.if.end168_crit_edge, %hfs_ext_write_extent.exit.thread
  %cached_extents172 = getelementptr i8, ptr %inode, i32 -26
  %97 = getelementptr i8, ptr %inode, i32 -22
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 0, ptr %97, align 2
  %conv174 = trunc i32 %call30 to i16
  %99 = ptrtoint ptr %cached_extents172 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv174, ptr %cached_extents172, align 2
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %conv181 = trunc i32 %101 to i16
  %count187 = getelementptr i8, ptr %inode, i32 -24
  %102 = ptrtoint ptr %count187 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv181, ptr %count187, align 2
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i, align 4
  %or197 = or i32 %104, 6
  store i32 %or197, ptr %flags.i, align 4
  %105 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %alloc_blocks, align 8
  %cached_start205 = getelementptr i8, ptr %inode, i32 -14
  %107 = ptrtoint ptr %cached_start205 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %cached_start205, align 2
  %cached_blocks210 = getelementptr i8, ptr %inode, i32 -12
  %108 = ptrtoint ptr %cached_blocks210 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv181, ptr %cached_blocks210, align 4
  br label %if.then146
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_vbm_search_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mark_mdb_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_file_truncate(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %fsdata = alloca ptr, align 4
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #5
  %2 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_size, align 8
  %phys_size = getelementptr i8, ptr %inode, i32 -8
  %5 = ptrtoint ptr %phys_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %phys_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp = icmp sgt i64 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #5
  %9 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #5
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !9
  %conv2 = and i64 %4, 4294967295
  %call = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %8, i64 noundef %conv2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.then8_crit_edge

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %13 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsdata, align 4
  %call6 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %8, i64 noundef %conv2, i32 noundef 0, i32 noundef 0, ptr noundef %12, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %15 = ptrtoint ptr %phys_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %phys_size, align 8
  %17 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %i_size, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp20 = icmp eq i64 %4, %6
  br i1 %cmp20, label %if.else.cleanup_crit_edge, label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_blksz, align 4
  %22 = trunc i64 %4 to i32
  %23 = add i32 %22, -1
  %conv29 = add i32 %23, %21
  %div = udiv i32 %conv29, %21
  %conv32 = trunc i32 %div to i16
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -56
  %24 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %alloc_blocks, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %conv32)
  %cmp38 = icmp eq i16 %25, %conv32
  br i1 %cmp38, label %if.end24.out_crit_edge, label %if.end41

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end41:                                         ; preds = %if.end24
  %extents_lock = getelementptr i8, ptr %inode, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #5
  %26 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ext_tree, align 4
  %call46 = call i32 @hfs_find_init(ptr noundef %29, ptr noundef nonnull %fd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %while.cond.preheader, label %if.then48

while.cond.preheader:                             ; preds = %if.end41
  %first_blocks = getelementptr i8, ptr %inode, i32 -28
  %30 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %31)
  %cmp59229 = icmp eq i16 %25, %31
  br i1 %cmp59229, label %while.cond.preheader.if.then61_crit_edge, label %if.end79.lr.ph

while.cond.preheader.if.then61_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

if.end79.lr.ph:                                   ; preds = %while.cond.preheader
  %cached_start = getelementptr i8, ptr %inode, i32 -14
  %cached_extents = getelementptr i8, ptr %inode, i32 -26
  %count1.i = getelementptr i8, ptr %inode, i32 -24
  %incdec.ptr.i = getelementptr i8, ptr %inode, i32 -22
  %count1.1.i = getelementptr i8, ptr %inode, i32 -20
  %incdec.ptr.1.i = getelementptr i8, ptr %inode, i32 -18
  %count1.2.i = getelementptr i8, ptr %inode, i32 -16
  %cached_blocks = getelementptr i8, ptr %inode, i32 -12
  %flags125 = getelementptr i8, ptr %inode, i32 -252
  %32 = trunc i32 %div to i16
  br label %if.end79

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  br label %cleanup

if.then61:                                        ; preds = %if.end114.if.then61_crit_edge, %while.cond.preheader.if.then61_crit_edge
  %alloc_cnt.0.lcssa = phi i16 [ %25, %while.cond.preheader.if.then61_crit_edge ], [ %35, %if.end114.if.then61_crit_edge ]
  %first_extents = getelementptr i8, ptr %inode, i32 -40
  %conv68 = sub i16 %alloc_cnt.0.lcssa, %conv32
  %call69 = call fastcc i32 @hfs_free_extents(ptr noundef %1, ptr noundef %first_extents, i16 noundef zeroext %alloc_cnt.0.lcssa, i16 noundef zeroext %conv68)
  %33 = ptrtoint ptr %first_blocks to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv32, ptr %first_blocks, align 4
  br label %while.end

if.end79:                                         ; preds = %if.end114.if.end79_crit_edge, %if.end79.lr.ph
  %alloc_cnt.0230 = phi i16 [ %25, %if.end79.lr.ph ], [ %35, %if.end114.if.end79_crit_edge ]
  %conv54 = zext i16 %alloc_cnt.0230 to i32
  %call81 = call fastcc i32 @__hfs_ext_cache_extent(ptr noundef nonnull %fd, ptr noundef %inode, i32 noundef %conv54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end79.while.end_crit_edge

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end84:                                         ; preds = %if.end79
  %34 = ptrtoint ptr %cached_start to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cached_start, align 2
  %sub94 = sub i16 %alloc_cnt.0230, %35
  %conv99 = sub i16 %alloc_cnt.0230, %conv32
  %36 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %count1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub94, i16 %37)
  %cmp3.i = icmp eq i16 %sub94, %37
  br i1 %cmp3.i, label %if.end84.for.cond14.preheader.i_crit_edge, label %if.else.i

if.end84.for.cond14.preheader.i_crit_edge:        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %if.end10.1.i.for.cond14.preheader.i_crit_edge, %if.end10.i.for.cond14.preheader.i_crit_edge, %if.end84.for.cond14.preheader.i_crit_edge
  %tobool37.not.i.1 = phi i1 [ false, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ true, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ false, %if.end84.for.cond14.preheader.i_crit_edge ]
  %tobool37.not.i.2 = phi i1 [ true, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ false, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ false, %if.end84.for.cond14.preheader.i_crit_edge ]
  %extent.addr.083.lcssa.i = phi ptr [ %incdec.ptr.1.i, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ %incdec.ptr.i, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ %cached_extents, %if.end84.for.cond14.preheader.i_crit_edge ]
  %.lcssa98.i = phi i16 [ %sub.1.i, %if.end10.1.i.for.cond14.preheader.i_crit_edge ], [ %sub.i, %if.end10.i.for.cond14.preheader.i_crit_edge ], [ %sub94, %if.end84.for.cond14.preheader.i_crit_edge ]
  %38 = ptrtoint ptr %extent.addr.083.lcssa.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %extent.addr.083.lcssa.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv99, i16 %.lcssa98.i)
  %cmp17.not86.i = icmp ult i16 %conv99, %.lcssa98.i
  br i1 %cmp17.not86.i, label %for.cond14.preheader.i.if.end36.thread.i_crit_edge, label %if.end36.i

for.cond14.preheader.i.if.end36.thread.i_crit_edge: ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.else.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_cmp2(i16 %sub94, i16 %37)
  %cmp7.i = icmp ult i16 %sub94, %37
  br i1 %cmp7.i, label %if.else.i.hfs_free_extents.exit_crit_edge, label %if.end10.i

if.else.i.hfs_free_extents.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end10.i:                                       ; preds = %if.else.i
  %sub.i = sub i16 %sub94, %37
  %40 = ptrtoint ptr %count1.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %count1.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %41)
  %cmp3.1.i = icmp eq i16 %sub.i, %41
  br i1 %cmp3.1.i, label %if.end10.i.for.cond14.preheader.i_crit_edge, label %if.else.1.i

if.end10.i.for.cond14.preheader.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

if.else.1.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %41)
  %cmp7.1.i = icmp ult i16 %sub.i, %41
  br i1 %cmp7.1.i, label %if.else.1.i.hfs_free_extents.exit_crit_edge, label %if.end10.1.i

if.else.1.i.hfs_free_extents.exit_crit_edge:      ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end10.1.i:                                     ; preds = %if.else.1.i
  %sub.1.i = sub i16 %sub.i, %41
  %42 = ptrtoint ptr %count1.2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %count1.2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.1.i, i16 %43)
  %cmp3.2.i = icmp eq i16 %sub.1.i, %43
  br i1 %cmp3.2.i, label %if.end10.1.i.for.cond14.preheader.i_crit_edge, label %if.end10.1.i.hfs_free_extents.exit_crit_edge

if.end10.1.i.hfs_free_extents.exit_crit_edge:     ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end10.1.i.for.cond14.preheader.i_crit_edge:    ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.i

if.end36.thread.i:                                ; preds = %if.end39.i.2, %if.end39.i.1.if.end36.thread.i_crit_edge, %if.end39.i.if.end36.thread.i_crit_edge, %for.cond14.preheader.i.if.end36.thread.i_crit_edge
  %extent.addr.1.lcssa.i = phi ptr [ %extent.addr.083.lcssa.i, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i, %if.end39.i.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i.1, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %incdec.ptr40.i.2, %if.end39.i.2 ]
  %block_nr.addr.0.lcssa.i = phi i16 [ %conv99, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %sub24.i, %if.end39.i.if.end36.thread.i_crit_edge ], [ %sub24.i.1, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %sub24.i.2, %if.end39.i.2 ]
  %count.0.lcssa.i = phi i16 [ %.lcssa98.i, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %48, %if.end39.i.if.end36.thread.i_crit_edge ], [ %54, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %60, %if.end39.i.2 ]
  %.lcssa.i = phi i16 [ %39, %for.cond14.preheader.i.if.end36.thread.i_crit_edge ], [ %50, %if.end39.i.if.end36.thread.i_crit_edge ], [ %56, %if.end39.i.1.if.end36.thread.i_crit_edge ], [ %62, %if.end39.i.2 ]
  %sub29.i = sub i16 %count.0.lcssa.i, %block_nr.addr.0.lcssa.i
  %add.i = add i16 %.lcssa.i, %sub29.i
  %call34.i = call i32 @hfs_clear_vbm_bits(ptr noundef %1, i16 noundef zeroext %add.i, i16 noundef zeroext %block_nr.addr.0.lcssa.i) #5
  %count35.i = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.1.lcssa.i, i32 0, i32 1
  %44 = ptrtoint ptr %count35.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %sub29.i, ptr %count35.i, align 2
  br label %hfs_free_extents.exit

if.end36.i:                                       ; preds = %for.cond14.preheader.i
  %call.i = call i32 @hfs_clear_vbm_bits(ptr noundef %1, i16 noundef zeroext %39, i16 noundef zeroext %.lcssa98.i) #5
  %45 = ptrtoint ptr %extent.addr.083.lcssa.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %extent.addr.083.lcssa.i, align 2
  %count21.i = getelementptr inbounds %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 0, i32 1
  %46 = ptrtoint ptr %count21.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %count21.i, align 2
  %sub24.i = sub i16 %conv99, %.lcssa98.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i)
  %tobool.not.i = icmp eq i16 %sub24.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %if.end36.i.hfs_free_extents.exit_crit_edge, label %if.end39.i

if.end36.i.hfs_free_extents.exit_crit_edge:       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end39.i:                                       ; preds = %if.end36.i
  %incdec.ptr40.i = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1
  %count41.i = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1, i32 1
  %47 = ptrtoint ptr %count41.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %count41.i, align 2
  %49 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %incdec.ptr40.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i, i16 %48)
  %cmp17.not.i = icmp ult i16 %sub24.i, %48
  br i1 %cmp17.not.i, label %if.end39.i.if.end36.thread.i_crit_edge, label %if.end36.i.1

if.end39.i.if.end36.thread.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.end36.i.1:                                     ; preds = %if.end39.i
  %call.i.1 = call i32 @hfs_clear_vbm_bits(ptr noundef %1, i16 noundef zeroext %50, i16 noundef zeroext %48) #5
  %51 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %incdec.ptr40.i, align 2
  %count21.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -1, i32 1
  %52 = ptrtoint ptr %count21.i.1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %count21.i.1, align 2
  %sub24.i.1 = sub i16 %sub24.i, %48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i.1)
  %tobool.not.i.1 = icmp eq i16 %sub24.i.1, 0
  %or.cond.i.1 = or i1 %tobool.not.i.1, %tobool37.not.i.1
  br i1 %or.cond.i.1, label %if.end36.i.1.hfs_free_extents.exit_crit_edge, label %if.end39.i.1

if.end36.i.1.hfs_free_extents.exit_crit_edge:     ; preds = %if.end36.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end39.i.1:                                     ; preds = %if.end36.i.1
  %incdec.ptr40.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2
  %count41.i.1 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2, i32 1
  %53 = ptrtoint ptr %count41.i.1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %count41.i.1, align 2
  %55 = ptrtoint ptr %incdec.ptr40.i.1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %incdec.ptr40.i.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub24.i.1, i16 %54)
  %cmp17.not.i.1 = icmp ult i16 %sub24.i.1, %54
  br i1 %cmp17.not.i.1, label %if.end39.i.1.if.end36.thread.i_crit_edge, label %if.end36.i.2

if.end39.i.1.if.end36.thread.i_crit_edge:         ; preds = %if.end39.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

if.end36.i.2:                                     ; preds = %if.end39.i.1
  %call.i.2 = call i32 @hfs_clear_vbm_bits(ptr noundef %1, i16 noundef zeroext %56, i16 noundef zeroext %54) #5
  %57 = ptrtoint ptr %incdec.ptr40.i.1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %incdec.ptr40.i.1, align 2
  %count21.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -2, i32 1
  %58 = ptrtoint ptr %count21.i.2 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %count21.i.2, align 2
  %sub24.i.2 = sub i16 %sub24.i.1, %54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub24.i.2)
  %tobool.not.i.2 = icmp eq i16 %sub24.i.2, 0
  %or.cond.i.2 = or i1 %tobool.not.i.2, %tobool37.not.i.2
  br i1 %or.cond.i.2, label %if.end36.i.2.hfs_free_extents.exit_crit_edge, label %if.end39.i.2

if.end36.i.2.hfs_free_extents.exit_crit_edge:     ; preds = %if.end36.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %hfs_free_extents.exit

if.end39.i.2:                                     ; preds = %if.end36.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr40.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -3
  %count41.i.2 = getelementptr %struct.hfs_extent, ptr %extent.addr.083.lcssa.i, i32 -3, i32 1
  %59 = ptrtoint ptr %count41.i.2 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %count41.i.2, align 2
  %61 = ptrtoint ptr %incdec.ptr40.i.2 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %incdec.ptr40.i.2, align 2
  br label %if.end36.thread.i

hfs_free_extents.exit:                            ; preds = %if.end36.i.2.hfs_free_extents.exit_crit_edge, %if.end36.i.1.hfs_free_extents.exit_crit_edge, %if.end36.i.hfs_free_extents.exit_crit_edge, %if.end36.thread.i, %if.end10.1.i.hfs_free_extents.exit_crit_edge, %if.else.1.i.hfs_free_extents.exit_crit_edge, %if.else.i.hfs_free_extents.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %32)
  %cmp108 = icmp ult i16 %35, %32
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %hfs_free_extents.exit
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags125, align 4
  %or = or i32 %64, 2
  store i32 %or, ptr %flags125, align 4
  br label %while.end

if.end114:                                        ; preds = %hfs_free_extents.exit
  %65 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %cached_blocks, align 4
  %66 = ptrtoint ptr %cached_start to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %cached_start, align 2
  %67 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags125, align 4
  %and = and i32 %68, -7
  store i32 %and, ptr %flags125, align 4
  %call126 = call i32 @hfs_brec_remove(ptr noundef nonnull %fd) #5
  %69 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %first_blocks, align 4
  %cmp59 = icmp eq i16 %35, %70
  br i1 %cmp59, label %if.end114.if.then61_crit_edge, label %if.end114.if.end79_crit_edge

if.end114.if.end79_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.end114.if.then61_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

while.end:                                        ; preds = %if.then110, %if.end79.while.end_crit_edge, %if.then61
  call void @hfs_find_exit(ptr noundef nonnull %fd) #5
  call void @mutex_unlock(ptr noundef %extents_lock) #5
  %71 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv32, ptr %alloc_blocks, align 8
  br label %out

out:                                              ; preds = %while.end, %if.end24.out_crit_edge
  %72 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %i_size, align 8
  %74 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %phys_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize, align 16
  %conv141 = zext i32 %76 to i64
  %add142 = add i64 %73, -1
  %sub143 = add i64 %add142, %conv141
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %78 to i64
  %shr = ashr i64 %sub143, %sh_prom
  %fs_blocks = getelementptr i8, ptr %inode, i32 -48
  %79 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %shr, ptr %fs_blocks, align 8
  %80 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom154 = zext i8 %80 to i64
  %shl = shl i64 %shr, %sh_prom154
  call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl) #5
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then48, %if.else.cleanup_crit_edge, %if.end14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hfs_ext_cache_extent(ptr noundef %fd, ptr noundef %inode, i32 noundef %block) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr i8, ptr %inode, i32 -252
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @__hfs_ext_write_extent(ptr noundef %inode, ptr noundef %fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %cached_extents = getelementptr i8, ptr %inode, i32 -26
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %conv = sub nsw i8 0, %7
  %search_key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %8 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %search_key.i, align 4
  %conv.i = trunc i32 %block to i16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %9, align 1
  %FkType.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %FkType.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %FkType.i.i, align 1
  %FNum.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %FNum.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %3, ptr %FNum.i.i, align 1
  %FABN.i.i = getelementptr inbounds %struct.hfs_ext_key, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %FABN.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %conv.i, ptr %FABN.i.i, align 1
  %14 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fd, align 4
  %FNum.i = getelementptr inbounds %struct.hfs_ext_key, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %FNum.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %FNum.i, align 1
  %call.i = tail call i32 @hfs_brec_find(ptr noundef %fd) #5
  %17 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call.i, label %if.end3.if.else_crit_edge [
    i32 0, label %if.end3.if.end.i_crit_edge
    i32 -2, label %if.end3.if.end.i_crit_edge66
  ]

if.end3.if.end.i_crit_edge66:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %if.end3.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge66
  %18 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fd, align 4
  %FNum3.i = getelementptr inbounds %struct.hfs_ext_key, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %FNum3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %FNum3.i, align 1
  %22 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %search_key.i, align 4
  %FNum5.i = getelementptr inbounds %struct.hfs_ext_key, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %FNum5.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %FNum5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp6.not.i = icmp eq i32 %21, %25
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false.i:                                  ; preds = %if.end.i
  %FkType.i = getelementptr inbounds %struct.hfs_ext_key, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %FkType.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %FkType.i, align 1
  %FkType11.i = getelementptr inbounds %struct.hfs_ext_key, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %FkType11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %FkType11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp13.not.i = icmp eq i8 %27, %29
  br i1 %cmp13.not.i, label %if.end16.i, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %entrylength.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %30 = ptrtoint ptr %entrylength.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entrylength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %31)
  %cmp17.not.i = icmp eq i32 %31, 12
  br i1 %cmp17.not.i, label %__hfs_ext_read_extent.exit.thread62, label %if.end16.i.if.else_crit_edge

if.end16.i.if.else_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

__hfs_ext_read_extent.exit.thread62:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %32 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %34 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entryoffset.i, align 4
  tail call void @hfs_bnode_read(ptr noundef %33, ptr noundef %cached_extents, i32 noundef %35, i32 noundef 12) #5
  %36 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fd, align 4
  %FABN = getelementptr inbounds %struct.hfs_ext_key, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %FABN to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %FABN, align 1
  %cached_start = getelementptr i8, ptr %inode, i32 -14
  %40 = ptrtoint ptr %cached_start to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %cached_start, align 2
  %count1.i = getelementptr i8, ptr %inode, i32 -24
  %41 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count1.i, align 2
  %count1.1.i = getelementptr i8, ptr %inode, i32 -20
  %43 = ptrtoint ptr %count1.1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count1.1.i, align 2
  %add.1.i = add i16 %44, %42
  %count1.2.i = getelementptr i8, ptr %inode, i32 -16
  %45 = ptrtoint ptr %count1.2.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %count1.2.i, align 2
  %add.2.i = add i16 %add.1.i, %46
  %cached_blocks = getelementptr i8, ptr %inode, i32 -12
  %47 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add.2.i, ptr %cached_blocks, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end3.if.else_crit_edge
  %retval.0.i61 = phi i32 [ -5, %if.end16.i.if.else_crit_edge ], [ -2, %if.end.i.if.else_crit_edge ], [ -2, %lor.lhs.false.i.if.else_crit_edge ], [ %call.i, %if.end3.if.else_crit_edge ]
  %cached_blocks32 = getelementptr i8, ptr %inode, i32 -12
  %48 = ptrtoint ptr %cached_blocks32 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %cached_blocks32, align 4
  %cached_start36 = getelementptr i8, ptr %inode, i32 -14
  %49 = ptrtoint ptr %cached_start36 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %cached_start36, align 2
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and41 = and i32 %51, -7
  store i32 %and41, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %__hfs_ext_read_extent.exit.thread62, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %retval.0.i61, %if.else ], [ 0, %__hfs_ext_read_extent.exit.thread62 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_bmap_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_clear_vbm_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
