; ModuleID = '/llk/IR_all_yes/fs/hfsplus/extents.c_pt.bc'
source_filename = "../fs/hfsplus/extents.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hfsplus_ext_key = type { i16, i8, i8, i32, i32 }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.hfsplus_extent = type { i32, i32 }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }

@hfsplus_file_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013hfsplus: extend alloc file! (%llu,%u,%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hfsplus_file_extend\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/hfsplus/extents.c\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_file_extend._entry_ptr = internal global ptr @hfsplus_file_extend._entry, section ".printk_index", align 4
@hfsplus_free_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013hfsplus: can't free extent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hfsplus_free_extents\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_free_extents._entry_ptr = internal global ptr @hfsplus_free_extents._entry, section ".printk_index", align 4
@hfsplus_free_extents._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfsplus_free_extents._entry_ptr.6 = internal global ptr @hfsplus_free_extents._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 451, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 365, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private constant [24 x i8] c"../fs/hfsplus/extents.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 376, i32 5 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @hfsplus_file_extend._entry, ptr @hfsplus_file_extend._entry_ptr, ptr @hfsplus_free_extents._entry, ptr @hfsplus_free_extents._entry.5, ptr @hfsplus_free_extents._entry_ptr, ptr @hfsplus_free_extents._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_file_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_free_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_free_extents._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hfsplus_ext_cmp_key(ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cnid = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k1, i32 0, i32 3
  %0 = ptrtoint ptr %cnid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cnid, align 1
  %cnid1 = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k2, i32 0, i32 3
  %2 = ptrtoint ptr %cnid1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cnid1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %cond = select i1 %cmp2, i32 -1, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %fork_type = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %fork_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fork_type, align 1
  %fork_type3 = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %fork_type3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fork_type3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5.not = icmp eq i8 %5, %7
  br i1 %cmp5.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp12 = icmp ult i8 %5, %7
  %cond14 = select i1 %cmp12, i32 -1, i32 1
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %start_block = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k1, i32 0, i32 4
  %8 = ptrtoint ptr %start_block to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %start_block, align 1
  %start_block16 = getelementptr inbounds %struct.hfsplus_ext_key, ptr %k2, i32 0, i32 4
  %10 = ptrtoint ptr %start_block16 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %start_block16, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp17 = icmp eq i32 %9, %11
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp21 = icmp ult i32 %9, %11
  %cond23 = select i1 %cmp21, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond14, %if.then7 ], [ %cond23, %if.end20 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_ext_write_extent(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #7
  %extent_state.i = getelementptr i8, ptr %inode, i32 -192
  %0 = ptrtoint ptr %extent_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extent_state.i, align 8
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hfsplus_ext_write_extent_locked.exit_crit_edge, label %if.then.i

entry.hfsplus_ext_write_extent_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfsplus_ext_write_extent_locked.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #7
  %2 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %ext_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_tree.i, align 8
  %call2.i = call i32 @hfsplus_find_init(ptr noundef %8, ptr noundef nonnull %fd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call fastcc i32 @__hfsplus_ext_write_extent(ptr noundef %inode, ptr noundef nonnull %fd.i) #7
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %hfsplus_ext_write_extent_locked.exit

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %hfsplus_ext_write_extent_locked.exit

hfsplus_ext_write_extent_locked.exit:             ; preds = %cleanup.i, %cleanup.thread.i, %entry.hfsplus_ext_write_extent_locked.exit_crit_edge
  %retval.1.i = phi i32 [ %call2.i, %cleanup.i ], [ 0, %entry.hfsplus_ext_write_extent_locked.exit_crit_edge ], [ %call5.i, %cleanup.thread.i ]
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) local_unnamed_addr #2 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %fs_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %fs_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fs_shift, align 8
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %iblock, %sh_prom
  %conv = trunc i64 %shr to i32
  %fs_blocks = getelementptr i8, ptr %inode, i32 -80
  %6 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fs_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %iblock)
  %cmp.not = icmp ugt i64 %7, %iblock
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %iblock)
  %cmp5 = icmp ult i64 %7, %iblock
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -332
  %8 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp9.not = icmp ugt i32 %9, %conv
  br i1 %cmp9.not, label %if.end8.if.end17_crit_edge, label %if.then11

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @hfsplus_file_extend(ptr noundef %inode, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end17_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end8.if.end17_crit_edge, %entry.if.end17_crit_edge
  %first_blocks = getelementptr i8, ptr %inode, i32 -340
  %10 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp18 = icmp ugt i32 %11, %conv
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %first_extents = getelementptr i8, ptr %inode, i32 -320
  %block_count.i = getelementptr i8, ptr %inode, i32 -316
  %12 = ptrtoint ptr %block_count.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %block_count.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp1.i = icmp ugt i32 %13, %conv
  br i1 %cmp1.i, label %if.then20.if.then.i101_crit_edge, label %if.end.i

if.then20.if.then.i101_crit_edge:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.then.i101:                                     ; preds = %if.end.6.i.if.then.i101_crit_edge, %if.end.5.i.if.then.i101_crit_edge, %if.end.4.i.if.then.i101_crit_edge, %if.end.3.i.if.then.i101_crit_edge, %if.end.2.i.if.then.i101_crit_edge, %if.end.1.i.if.then.i101_crit_edge, %if.end.i.if.then.i101_crit_edge, %if.then20.if.then.i101_crit_edge
  %off.addr.012.lcssa.i = phi i32 [ %conv, %if.then20.if.then.i101_crit_edge ], [ %sub.i, %if.end.i.if.then.i101_crit_edge ], [ %sub.1.i, %if.end.1.i.if.then.i101_crit_edge ], [ %sub.2.i, %if.end.2.i.if.then.i101_crit_edge ], [ %sub.3.i, %if.end.3.i.if.then.i101_crit_edge ], [ %sub.4.i, %if.end.4.i.if.then.i101_crit_edge ], [ %sub.5.i, %if.end.5.i.if.then.i101_crit_edge ], [ %sub.6.i, %if.end.6.i.if.then.i101_crit_edge ]
  %ext.addr.011.lcssa.i = phi ptr [ %first_extents, %if.then20.if.then.i101_crit_edge ], [ %incdec.ptr.i, %if.end.i.if.then.i101_crit_edge ], [ %incdec.ptr.1.i, %if.end.1.i.if.then.i101_crit_edge ], [ %incdec.ptr.2.i, %if.end.2.i.if.then.i101_crit_edge ], [ %incdec.ptr.3.i, %if.end.3.i.if.then.i101_crit_edge ], [ %incdec.ptr.4.i, %if.end.4.i.if.then.i101_crit_edge ], [ %incdec.ptr.5.i, %if.end.5.i.if.then.i101_crit_edge ], [ %incdec.ptr.6.i, %if.end.6.i.if.then.i101_crit_edge ]
  %14 = ptrtoint ptr %ext.addr.011.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ext.addr.011.lcssa.i, align 1
  %add.i = add i32 %15, %off.addr.012.lcssa.i
  br label %do.end

if.end.i:                                         ; preds = %if.then20
  %sub.i = sub i32 %conv, %13
  %incdec.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %block_count.1.i = getelementptr i8, ptr %inode, i32 -308
  %16 = ptrtoint ptr %block_count.1.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %block_count.1.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %17)
  %cmp1.1.i = icmp ult i32 %sub.i, %17
  br i1 %cmp1.1.i, label %if.end.i.if.then.i101_crit_edge, label %if.end.1.i

if.end.i.if.then.i101_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.1.i:                                       ; preds = %if.end.i
  %sub.1.i = sub i32 %sub.i, %17
  %incdec.ptr.1.i = getelementptr i8, ptr %inode, i32 -304
  %block_count.2.i = getelementptr i8, ptr %inode, i32 -300
  %18 = ptrtoint ptr %block_count.2.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %block_count.2.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %19)
  %cmp1.2.i = icmp ult i32 %sub.1.i, %19
  br i1 %cmp1.2.i, label %if.end.1.i.if.then.i101_crit_edge, label %if.end.2.i

if.end.1.i.if.then.i101_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.2.i:                                       ; preds = %if.end.1.i
  %sub.2.i = sub i32 %sub.1.i, %19
  %incdec.ptr.2.i = getelementptr i8, ptr %inode, i32 -296
  %block_count.3.i = getelementptr i8, ptr %inode, i32 -292
  %20 = ptrtoint ptr %block_count.3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %block_count.3.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %21)
  %cmp1.3.i = icmp ult i32 %sub.2.i, %21
  br i1 %cmp1.3.i, label %if.end.2.i.if.then.i101_crit_edge, label %if.end.3.i

if.end.2.i.if.then.i101_crit_edge:                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.3.i:                                       ; preds = %if.end.2.i
  %sub.3.i = sub i32 %sub.2.i, %21
  %incdec.ptr.3.i = getelementptr i8, ptr %inode, i32 -288
  %block_count.4.i = getelementptr i8, ptr %inode, i32 -284
  %22 = ptrtoint ptr %block_count.4.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %block_count.4.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i, i32 %23)
  %cmp1.4.i = icmp ult i32 %sub.3.i, %23
  br i1 %cmp1.4.i, label %if.end.3.i.if.then.i101_crit_edge, label %if.end.4.i

if.end.3.i.if.then.i101_crit_edge:                ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.4.i:                                       ; preds = %if.end.3.i
  %sub.4.i = sub i32 %sub.3.i, %23
  %incdec.ptr.4.i = getelementptr i8, ptr %inode, i32 -280
  %block_count.5.i = getelementptr i8, ptr %inode, i32 -276
  %24 = ptrtoint ptr %block_count.5.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %block_count.5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4.i, i32 %25)
  %cmp1.5.i = icmp ult i32 %sub.4.i, %25
  br i1 %cmp1.5.i, label %if.end.4.i.if.then.i101_crit_edge, label %if.end.5.i

if.end.4.i.if.then.i101_crit_edge:                ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.5.i:                                       ; preds = %if.end.4.i
  %sub.5.i = sub i32 %sub.4.i, %25
  %incdec.ptr.5.i = getelementptr i8, ptr %inode, i32 -272
  %block_count.6.i = getelementptr i8, ptr %inode, i32 -268
  %26 = ptrtoint ptr %block_count.6.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %block_count.6.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5.i, i32 %27)
  %cmp1.6.i = icmp ult i32 %sub.5.i, %27
  br i1 %cmp1.6.i, label %if.end.5.i.if.then.i101_crit_edge, label %if.end.6.i

if.end.5.i.if.then.i101_crit_edge:                ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end.6.i:                                       ; preds = %if.end.5.i
  %sub.6.i = sub i32 %sub.5.i, %27
  %incdec.ptr.6.i = getelementptr i8, ptr %inode, i32 -264
  %block_count.7.i = getelementptr i8, ptr %inode, i32 -260
  %28 = ptrtoint ptr %block_count.7.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %block_count.7.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.6.i, i32 %29)
  %cmp1.7.i = icmp ult i32 %sub.6.i, %29
  br i1 %cmp1.7.i, label %if.end.6.i.if.then.i101_crit_edge, label %if.end.6.i.do.end_crit_edge

if.end.6.i.do.end_crit_edge:                      ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.6.i.if.then.i101_crit_edge:                ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i101

if.end22:                                         ; preds = %if.end17
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp23 = icmp eq i32 %31, 3
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #7
  %extent_state = getelementptr i8, ptr %inode, i32 -192
  %32 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extent_state, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #7
  %34 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  %cached_start.i = getelementptr i8, ptr %inode, i32 -328
  %35 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cached_start.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv)
  %cmp.not.i = icmp ugt i32 %36, %conv
  br i1 %cmp.not.i, label %if.end26.if.end.i104_crit_edge, label %land.lhs.true.i

if.end26.if.end.i104_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i104

land.lhs.true.i:                                  ; preds = %if.end26
  %cached_blocks.i = getelementptr i8, ptr %inode, i32 -324
  %37 = ptrtoint ptr %cached_blocks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cached_blocks.i, align 4
  %add.i102 = add i32 %38, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i102, i32 %conv)
  %cmp2.i = icmp ugt i32 %add.i102, %conv
  br i1 %cmp2.i, label %hfsplus_ext_read_extent.exit.thread, label %land.lhs.true.i.if.end.i104_crit_edge

land.lhs.true.i.if.end.i104_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i104

hfsplus_ext_read_extent.exit.thread:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %if.end31

if.end.i104:                                      ; preds = %land.lhs.true.i.if.end.i104_crit_edge, %if.end26.if.end.i104_crit_edge
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i.i, align 16
  %ext_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ext_tree.i, align 8
  %call4.i = call i32 @hfsplus_find_init(ptr noundef %44, ptr noundef nonnull %fd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i103 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i103, label %hfsplus_ext_read_extent.exit, label %hfsplus_ext_read_extent.exit.thread151

hfsplus_ext_read_extent.exit.thread151:           ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %if.then29

hfsplus_ext_read_extent.exit:                     ; preds = %if.end.i104
  %call6.i = call fastcc i32 @__hfsplus_ext_cache_extent(ptr noundef nonnull %fd.i, ptr noundef %inode, i32 noundef %conv) #7
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool28.not = icmp eq i32 %call6.i, 0
  br i1 %tobool28.not, label %hfsplus_ext_read_extent.exit.if.end31_crit_edge, label %hfsplus_ext_read_extent.exit.if.then29_crit_edge

hfsplus_ext_read_extent.exit.if.then29_crit_edge: ; preds = %hfsplus_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

hfsplus_ext_read_extent.exit.if.end31_crit_edge:  ; preds = %hfsplus_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %hfsplus_ext_read_extent.exit.if.then29_crit_edge, %hfsplus_ext_read_extent.exit.thread151
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  br label %cleanup

if.end31:                                         ; preds = %hfsplus_ext_read_extent.exit.if.end31_crit_edge, %hfsplus_ext_read_extent.exit.thread
  %and = and i32 %33, 1
  %cached_extents = getelementptr i8, ptr %inode, i32 -256
  %45 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cached_start.i, align 8
  %sub = sub i32 %conv, %46
  %block_count.i106 = getelementptr i8, ptr %inode, i32 -252
  %47 = ptrtoint ptr %block_count.i106 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %block_count.i106, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %48)
  %cmp1.i107 = icmp ult i32 %sub, %48
  br i1 %cmp1.i107, label %if.end31.if.then.i111_crit_edge, label %if.end.i116

if.end31.if.then.i111_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.then.i111:                                     ; preds = %if.end.6.i146.if.then.i111_crit_edge, %if.end.5.i141.if.then.i111_crit_edge, %if.end.4.i136.if.then.i111_crit_edge, %if.end.3.i131.if.then.i111_crit_edge, %if.end.2.i126.if.then.i111_crit_edge, %if.end.1.i121.if.then.i111_crit_edge, %if.end.i116.if.then.i111_crit_edge, %if.end31.if.then.i111_crit_edge
  %off.addr.012.lcssa.i108 = phi i32 [ %sub, %if.end31.if.then.i111_crit_edge ], [ %sub.i112, %if.end.i116.if.then.i111_crit_edge ], [ %sub.1.i117, %if.end.1.i121.if.then.i111_crit_edge ], [ %sub.2.i122, %if.end.2.i126.if.then.i111_crit_edge ], [ %sub.3.i127, %if.end.3.i131.if.then.i111_crit_edge ], [ %sub.4.i132, %if.end.4.i136.if.then.i111_crit_edge ], [ %sub.5.i137, %if.end.5.i141.if.then.i111_crit_edge ], [ %sub.6.i142, %if.end.6.i146.if.then.i111_crit_edge ]
  %ext.addr.011.lcssa.i109 = phi ptr [ %cached_extents, %if.end31.if.then.i111_crit_edge ], [ %incdec.ptr.i113, %if.end.i116.if.then.i111_crit_edge ], [ %incdec.ptr.1.i118, %if.end.1.i121.if.then.i111_crit_edge ], [ %incdec.ptr.2.i123, %if.end.2.i126.if.then.i111_crit_edge ], [ %incdec.ptr.3.i128, %if.end.3.i131.if.then.i111_crit_edge ], [ %incdec.ptr.4.i133, %if.end.4.i136.if.then.i111_crit_edge ], [ %incdec.ptr.5.i138, %if.end.5.i141.if.then.i111_crit_edge ], [ %incdec.ptr.6.i143, %if.end.6.i146.if.then.i111_crit_edge ]
  %49 = ptrtoint ptr %ext.addr.011.lcssa.i109 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ext.addr.011.lcssa.i109, align 1
  %add.i110 = add i32 %50, %off.addr.012.lcssa.i108
  br label %hfsplus_ext_find_block.exit148

if.end.i116:                                      ; preds = %if.end31
  %sub.i112 = sub i32 %sub, %48
  %incdec.ptr.i113 = getelementptr i8, ptr %inode, i32 -248
  %block_count.1.i114 = getelementptr i8, ptr %inode, i32 -244
  %51 = ptrtoint ptr %block_count.1.i114 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %block_count.1.i114, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i112, i32 %52)
  %cmp1.1.i115 = icmp ult i32 %sub.i112, %52
  br i1 %cmp1.1.i115, label %if.end.i116.if.then.i111_crit_edge, label %if.end.1.i121

if.end.i116.if.then.i111_crit_edge:               ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.1.i121:                                    ; preds = %if.end.i116
  %sub.1.i117 = sub i32 %sub.i112, %52
  %incdec.ptr.1.i118 = getelementptr i8, ptr %inode, i32 -240
  %block_count.2.i119 = getelementptr i8, ptr %inode, i32 -236
  %53 = ptrtoint ptr %block_count.2.i119 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %block_count.2.i119, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i117, i32 %54)
  %cmp1.2.i120 = icmp ult i32 %sub.1.i117, %54
  br i1 %cmp1.2.i120, label %if.end.1.i121.if.then.i111_crit_edge, label %if.end.2.i126

if.end.1.i121.if.then.i111_crit_edge:             ; preds = %if.end.1.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.2.i126:                                    ; preds = %if.end.1.i121
  %sub.2.i122 = sub i32 %sub.1.i117, %54
  %incdec.ptr.2.i123 = getelementptr i8, ptr %inode, i32 -232
  %block_count.3.i124 = getelementptr i8, ptr %inode, i32 -228
  %55 = ptrtoint ptr %block_count.3.i124 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %block_count.3.i124, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i122, i32 %56)
  %cmp1.3.i125 = icmp ult i32 %sub.2.i122, %56
  br i1 %cmp1.3.i125, label %if.end.2.i126.if.then.i111_crit_edge, label %if.end.3.i131

if.end.2.i126.if.then.i111_crit_edge:             ; preds = %if.end.2.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.3.i131:                                    ; preds = %if.end.2.i126
  %sub.3.i127 = sub i32 %sub.2.i122, %56
  %incdec.ptr.3.i128 = getelementptr i8, ptr %inode, i32 -224
  %block_count.4.i129 = getelementptr i8, ptr %inode, i32 -220
  %57 = ptrtoint ptr %block_count.4.i129 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %block_count.4.i129, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i127, i32 %58)
  %cmp1.4.i130 = icmp ult i32 %sub.3.i127, %58
  br i1 %cmp1.4.i130, label %if.end.3.i131.if.then.i111_crit_edge, label %if.end.4.i136

if.end.3.i131.if.then.i111_crit_edge:             ; preds = %if.end.3.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.4.i136:                                    ; preds = %if.end.3.i131
  %sub.4.i132 = sub i32 %sub.3.i127, %58
  %incdec.ptr.4.i133 = getelementptr i8, ptr %inode, i32 -216
  %block_count.5.i134 = getelementptr i8, ptr %inode, i32 -212
  %59 = ptrtoint ptr %block_count.5.i134 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %block_count.5.i134, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4.i132, i32 %60)
  %cmp1.5.i135 = icmp ult i32 %sub.4.i132, %60
  br i1 %cmp1.5.i135, label %if.end.4.i136.if.then.i111_crit_edge, label %if.end.5.i141

if.end.4.i136.if.then.i111_crit_edge:             ; preds = %if.end.4.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.5.i141:                                    ; preds = %if.end.4.i136
  %sub.5.i137 = sub i32 %sub.4.i132, %60
  %incdec.ptr.5.i138 = getelementptr i8, ptr %inode, i32 -208
  %block_count.6.i139 = getelementptr i8, ptr %inode, i32 -204
  %61 = ptrtoint ptr %block_count.6.i139 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %block_count.6.i139, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5.i137, i32 %62)
  %cmp1.6.i140 = icmp ult i32 %sub.5.i137, %62
  br i1 %cmp1.6.i140, label %if.end.5.i141.if.then.i111_crit_edge, label %if.end.6.i146

if.end.5.i141.if.then.i111_crit_edge:             ; preds = %if.end.5.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

if.end.6.i146:                                    ; preds = %if.end.5.i141
  %sub.6.i142 = sub i32 %sub.5.i137, %62
  %incdec.ptr.6.i143 = getelementptr i8, ptr %inode, i32 -200
  %block_count.7.i144 = getelementptr i8, ptr %inode, i32 -196
  %63 = ptrtoint ptr %block_count.7.i144 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %block_count.7.i144, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.6.i142, i32 %64)
  %cmp1.7.i145 = icmp ult i32 %sub.6.i142, %64
  br i1 %cmp1.7.i145, label %if.end.6.i146.if.then.i111_crit_edge, label %if.end.6.i146.hfsplus_ext_find_block.exit148_crit_edge

if.end.6.i146.hfsplus_ext_find_block.exit148_crit_edge: ; preds = %if.end.6.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %hfsplus_ext_find_block.exit148

if.end.6.i146.if.then.i111_crit_edge:             ; preds = %if.end.6.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i111

hfsplus_ext_find_block.exit148:                   ; preds = %if.end.6.i146.hfsplus_ext_find_block.exit148_crit_edge, %if.then.i111
  %retval.0.i147 = phi i32 [ %add.i110, %if.then.i111 ], [ 0, %if.end.6.i146.hfsplus_ext_find_block.exit148_crit_edge ]
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  br label %do.end

do.end:                                           ; preds = %hfsplus_ext_find_block.exit148, %if.end.6.i.do.end_crit_edge, %if.then.i101
  %dblock.0 = phi i32 [ %retval.0.i147, %hfsplus_ext_find_block.exit148 ], [ %add.i, %if.then.i101 ], [ 0, %if.end.6.i.do.end_crit_edge ]
  %was_dirty.0 = phi i32 [ %and, %hfsplus_ext_find_block.exit148 ], [ 0, %if.then.i101 ], [ 0, %if.end.6.i.do.end_crit_edge ]
  %65 = ptrtoint ptr %fs_shift to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fs_shift, align 8
  %notmask = shl nsw i32 -1, %66
  %sub36 = xor i32 %notmask, -1
  %conv37 = zext i32 %dblock.0 to i64
  %sh_prom39 = zext i32 %66 to i64
  %shl40 = shl i64 %conv37, %sh_prom39
  %blockoffset = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 11
  %67 = ptrtoint ptr %blockoffset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %blockoffset, align 4
  %conv41 = zext i32 %68 to i64
  %add = add i64 %shl40, %conv41
  %conv42 = zext i32 %sub36 to i64
  %and43 = and i64 %conv42, %iblock
  %add44 = add i64 %add, %and43
  %69 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %bh_result, align 4
  %71 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end.map_bh.exit_crit_edge

do.end.map_bh.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %do.end.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %72 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %74 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %75 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add44, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %78 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %b_size.i, align 8
  br i1 %cmp.not, label %lor.lhs.false.critedge, label %if.then46

if.then46:                                        ; preds = %map_bh.exit
  %79 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %bh_result, align 4
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then46.set_buffer_new.exit_crit_edge

if.then46.set_buffer_new.exit_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #7
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.then46.set_buffer_new.exit_crit_edge
  %82 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_blocksize.i, align 16
  %conv47 = zext i32 %83 to i64
  %phys_size = getelementptr i8, ptr %inode, i32 -8
  %84 = ptrtoint ptr %phys_size to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %phys_size, align 8
  %add48 = add i64 %85, %conv47
  store i64 %add48, ptr %phys_size, align 8
  %86 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %fs_blocks, align 8
  %inc = add i64 %87, 1
  store i64 %inc, ptr %fs_blocks, align 8
  %88 = load i32, ptr %s_blocksize.i, align 16
  %conv51 = zext i32 %88 to i64
  call void @inode_add_bytes(ptr noundef %inode, i64 noundef %conv51) #7
  br label %if.then55

lor.lhs.false.critedge:                           ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %was_dirty.0)
  %tobool54.not = icmp eq i32 %was_dirty.0, 0
  br i1 %tobool54.not, label %lor.lhs.false.critedge.cleanup_crit_edge, label %lor.lhs.false.critedge.if.then55_crit_edge

lor.lhs.false.critedge.if.then55_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %lor.lhs.false.critedge.if.then55_crit_edge, %set_buffer_new.exit
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %lor.lhs.false.critedge.cleanup_crit_edge, %if.then29, %if.end22.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then29 ], [ 0, %if.then.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call12, %if.then11.cleanup_crit_edge ], [ -5, %if.end22.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %lor.lhs.false.critedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_file_extend(ptr noundef %inode, i1 noundef zeroext %zeroout) local_unnamed_addr #2 align 64 {
entry:
  %fd.i227 = alloca %struct.hfs_find_data, align 4
  %fd.i = alloca %struct.hfs_find_data, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !23
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_file, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  %mul = shl i64 %8, 3
  %total_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_blocks, align 4
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %3, i32 0, i32 20
  %11 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %free_blocks, align 8
  %sub = add i32 %10, 8
  %add = sub i32 %sub, %12
  %conv = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv)
  %cmp = icmp slt i64 %mul, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i64 noundef %mul, i32 noundef %10, i32 noundef %12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #7
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -332
  %13 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alloc_blocks, align 4
  %first_blocks = getelementptr i8, ptr %inode, i32 -340
  %15 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp9 = icmp eq i32 %14, %16
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %add.ptr.i192 = getelementptr i8, ptr %inode, i32 -264
  %block_count.i = getelementptr i8, ptr %inode, i32 -260
  %17 = ptrtoint ptr %block_count.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %block_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.i:                                        ; preds = %if.then11
  %incdec.ptr.i = getelementptr i8, ptr %inode, i32 -272
  %block_count.1.i = getelementptr i8, ptr %inode, i32 -268
  %19 = ptrtoint ptr %block_count.1.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %block_count.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end19_crit_edge

for.inc.i.if.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr i8, ptr %inode, i32 -280
  %block_count.2.i = getelementptr i8, ptr %inode, i32 -276
  %21 = ptrtoint ptr %block_count.2.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %block_count.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2.i = icmp eq i32 %22, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end19_crit_edge

for.inc.1.i.if.end19_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr i8, ptr %inode, i32 -288
  %block_count.3.i = getelementptr i8, ptr %inode, i32 -284
  %23 = ptrtoint ptr %block_count.3.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %block_count.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.3.i = icmp eq i32 %24, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end19_crit_edge

for.inc.2.i.if.end19_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %incdec.ptr.3.i = getelementptr i8, ptr %inode, i32 -296
  %block_count.4.i = getelementptr i8, ptr %inode, i32 -292
  %25 = ptrtoint ptr %block_count.4.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %block_count.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.4.i = icmp eq i32 %26, 0
  br i1 %tobool.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end19_crit_edge

for.inc.3.i.if.end19_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %incdec.ptr.4.i = getelementptr i8, ptr %inode, i32 -304
  %block_count.5.i = getelementptr i8, ptr %inode, i32 -300
  %27 = ptrtoint ptr %block_count.5.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %block_count.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.5.i = icmp eq i32 %28, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end19.sink.split_crit_edge, label %for.inc.4.i.if.end19_crit_edge

for.inc.4.i.if.end19_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.4.i.if.end19.sink.split_crit_edge:        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #7
  %29 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  %cached_start.i = getelementptr i8, ptr %inode, i32 -328
  %30 = ptrtoint ptr %cached_start.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cached_start.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %14)
  %cmp.not.i = icmp ugt i32 %31, %14
  br i1 %cmp.not.i, label %if.else.if.end.i_crit_edge, label %land.lhs.true.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %cached_blocks.i = getelementptr i8, ptr %inode, i32 -324
  %32 = ptrtoint ptr %cached_blocks.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cached_blocks.i, align 4
  %add.i193 = add i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i193, i32 %14)
  %cmp2.i = icmp ugt i32 %add.i193, %14
  br i1 %cmp2.i, label %hfsplus_ext_read_extent.exit.thread, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

hfsplus_ext_read_extent.exit.thread:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %if.end16

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i.i, align 16
  %ext_tree.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ext_tree.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ext_tree.i, align 8
  %call4.i = call i32 @hfsplus_find_init(ptr noundef %39, ptr noundef nonnull %fd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i194 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i194, label %hfsplus_ext_read_extent.exit, label %hfsplus_ext_read_extent.exit.thread234

hfsplus_ext_read_extent.exit.thread234:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  br label %if.end98

hfsplus_ext_read_extent.exit:                     ; preds = %if.end.i
  %call6.i = call fastcc i32 @__hfsplus_ext_cache_extent(ptr noundef nonnull %fd.i, ptr noundef %inode, i32 noundef %14) #7
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %hfsplus_ext_read_extent.exit.if.end16_crit_edge, label %hfsplus_ext_read_extent.exit.if.end98_crit_edge

hfsplus_ext_read_extent.exit.if.end98_crit_edge:  ; preds = %hfsplus_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

hfsplus_ext_read_extent.exit.if.end16_crit_edge:  ; preds = %hfsplus_ext_read_extent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %hfsplus_ext_read_extent.exit.if.end16_crit_edge, %hfsplus_ext_read_extent.exit.thread
  %add.ptr.i195 = getelementptr i8, ptr %inode, i32 -200
  %block_count.i196 = getelementptr i8, ptr %inode, i32 -196
  %40 = ptrtoint ptr %block_count.i196 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %block_count.i196, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i197 = icmp eq i32 %41, 0
  br i1 %tobool.not.i197, label %for.inc.i201, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.i201:                                     ; preds = %if.end16
  %incdec.ptr.i198 = getelementptr i8, ptr %inode, i32 -208
  %block_count.1.i199 = getelementptr i8, ptr %inode, i32 -204
  %42 = ptrtoint ptr %block_count.1.i199 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %block_count.1.i199, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.1.i200 = icmp eq i32 %43, 0
  br i1 %tobool.not.1.i200, label %for.inc.1.i205, label %for.inc.i201.if.end19_crit_edge

for.inc.i201.if.end19_crit_edge:                  ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.1.i205:                                   ; preds = %for.inc.i201
  %incdec.ptr.1.i202 = getelementptr i8, ptr %inode, i32 -216
  %block_count.2.i203 = getelementptr i8, ptr %inode, i32 -212
  %44 = ptrtoint ptr %block_count.2.i203 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %block_count.2.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.2.i204 = icmp eq i32 %45, 0
  br i1 %tobool.not.2.i204, label %for.inc.2.i209, label %for.inc.1.i205.if.end19_crit_edge

for.inc.1.i205.if.end19_crit_edge:                ; preds = %for.inc.1.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.2.i209:                                   ; preds = %for.inc.1.i205
  %incdec.ptr.2.i206 = getelementptr i8, ptr %inode, i32 -224
  %block_count.3.i207 = getelementptr i8, ptr %inode, i32 -220
  %46 = ptrtoint ptr %block_count.3.i207 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %block_count.3.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.3.i208 = icmp eq i32 %47, 0
  br i1 %tobool.not.3.i208, label %for.inc.3.i213, label %for.inc.2.i209.if.end19_crit_edge

for.inc.2.i209.if.end19_crit_edge:                ; preds = %for.inc.2.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.3.i213:                                   ; preds = %for.inc.2.i209
  %incdec.ptr.3.i210 = getelementptr i8, ptr %inode, i32 -232
  %block_count.4.i211 = getelementptr i8, ptr %inode, i32 -228
  %48 = ptrtoint ptr %block_count.4.i211 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %block_count.4.i211, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.4.i212 = icmp eq i32 %49, 0
  br i1 %tobool.not.4.i212, label %for.inc.4.i217, label %for.inc.3.i213.if.end19_crit_edge

for.inc.3.i213.if.end19_crit_edge:                ; preds = %for.inc.3.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.4.i217:                                   ; preds = %for.inc.3.i213
  %incdec.ptr.4.i214 = getelementptr i8, ptr %inode, i32 -240
  %block_count.5.i215 = getelementptr i8, ptr %inode, i32 -236
  %50 = ptrtoint ptr %block_count.5.i215 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %block_count.5.i215, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.5.i216 = icmp eq i32 %51, 0
  br i1 %tobool.not.5.i216, label %for.inc.4.i217.if.end19.sink.split_crit_edge, label %for.inc.4.i217.if.end19_crit_edge

for.inc.4.i217.if.end19_crit_edge:                ; preds = %for.inc.4.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.inc.4.i217.if.end19.sink.split_crit_edge:     ; preds = %for.inc.4.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %for.inc.4.i217.if.end19.sink.split_crit_edge, %for.inc.4.i.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ -308, %for.inc.4.i.if.end19.sink.split_crit_edge ], [ -244, %for.inc.4.i217.if.end19.sink.split_crit_edge ]
  %52 = phi i32 [ -320, %for.inc.4.i.if.end19.sink.split_crit_edge ], [ -256, %for.inc.4.i217.if.end19.sink.split_crit_edge ]
  %53 = getelementptr i8, ptr %inode, i32 %52
  %block_count.6.i218 = getelementptr i8, ptr %inode, i32 %.sink
  %54 = ptrtoint ptr %block_count.6.i218 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %block_count.6.i218, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.6.i219 = icmp ne i32 %55, 0
  %spec.select.idx.i220 = zext i1 %tobool.not.6.i219 to i32
  %spec.select.i221 = getelementptr %struct.hfsplus_extent, ptr %53, i32 %spec.select.idx.i220
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %for.inc.4.i217.if.end19_crit_edge, %for.inc.3.i213.if.end19_crit_edge, %for.inc.2.i209.if.end19_crit_edge, %for.inc.1.i205.if.end19_crit_edge, %for.inc.i201.if.end19_crit_edge, %if.end16.if.end19_crit_edge, %for.inc.4.i.if.end19_crit_edge, %for.inc.3.i.if.end19_crit_edge, %for.inc.2.i.if.end19_crit_edge, %for.inc.1.i.if.end19_crit_edge, %for.inc.i.if.end19_crit_edge, %if.then11.if.end19_crit_edge
  %ext.addr.0.lcssa.i223.sink254 = phi ptr [ %add.ptr.i192, %if.then11.if.end19_crit_edge ], [ %incdec.ptr.i, %for.inc.i.if.end19_crit_edge ], [ %incdec.ptr.1.i, %for.inc.1.i.if.end19_crit_edge ], [ %incdec.ptr.2.i, %for.inc.2.i.if.end19_crit_edge ], [ %incdec.ptr.3.i, %for.inc.3.i.if.end19_crit_edge ], [ %incdec.ptr.4.i, %for.inc.4.i.if.end19_crit_edge ], [ %add.ptr.i195, %if.end16.if.end19_crit_edge ], [ %incdec.ptr.i198, %for.inc.i201.if.end19_crit_edge ], [ %incdec.ptr.1.i202, %for.inc.1.i205.if.end19_crit_edge ], [ %incdec.ptr.2.i206, %for.inc.2.i209.if.end19_crit_edge ], [ %incdec.ptr.3.i210, %for.inc.3.i213.if.end19_crit_edge ], [ %incdec.ptr.4.i214, %for.inc.4.i217.if.end19_crit_edge ], [ %spec.select.i221, %if.end19.sink.split ]
  %56 = ptrtoint ptr %ext.addr.0.lcssa.i223.sink254 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %ext.addr.0.lcssa.i223.sink254, align 1
  %block_count1.i224 = getelementptr inbounds %struct.hfsplus_extent, ptr %ext.addr.0.lcssa.i223.sink254, i32 0, i32 1
  %58 = ptrtoint ptr %block_count1.i224 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %block_count1.i224, align 1
  %add.i225 = add i32 %59, %57
  %clump_blocks = getelementptr i8, ptr %inode, i32 -336
  %60 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clump_blocks, align 8
  %62 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %len, align 4
  %63 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total_blocks, align 4
  %call21 = call i32 @hfsplus_block_allocate(ptr noundef %1, i32 noundef %64, i32 noundef %add.i225, ptr noundef nonnull %len) #7
  %65 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %total_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %66)
  %cmp23.not = icmp ult i32 %call21, %66
  br i1 %cmp23.not, label %if.end19.if.end31_crit_edge, label %if.then25

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then25:                                        ; preds = %if.end19
  %call26 = call i32 @hfsplus_block_allocate(ptr noundef %1, i32 noundef %add.i225, i32 noundef 0, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %add.i225)
  %cmp27.not = icmp ult i32 %call26, %add.i225
  br i1 %cmp27.not, label %if.then25.if.end31_crit_edge, label %if.then25.if.end98_crit_edge

if.then25.if.end98_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %start.0 = phi i32 [ %call26, %if.then25.if.end31_crit_edge ], [ %call21, %if.end19.if.end31_crit_edge ]
  br i1 %zeroout, label %if.then33, label %if.end31.do.end43_crit_edge

if.end31.do.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.then33:                                        ; preds = %if.end31
  %conv34 = zext i32 %start.0 to i64
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  %conv35 = zext i32 %68 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %72 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv34, %sh_prom.i
  %shl5.i = shl i64 %conv35, %sh_prom.i
  %call.i = call i32 @blkdev_issue_zeroout(ptr noundef %70, i64 noundef %shl.i, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.then33.do.end43_crit_edge, label %if.then33.if.end98_crit_edge

if.then33.if.end98_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then33.do.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end43:                                         ; preds = %if.then33.do.end43_crit_edge, %if.end31.do.end43_crit_edge
  %73 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %alloc_blocks, align 4
  %75 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp46.not = icmp ugt i32 %74, %76
  br i1 %cmp46.not, label %if.else75, label %if.then48

if.then48:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool50.not = icmp eq i32 %76, 0
  %first_extents55 = getelementptr i8, ptr %inode, i32 -320
  br i1 %tobool50.not, label %if.end67.thread, label %if.else58

if.end67.thread:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %first_extents55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %start.0, ptr %first_extents55, align 8
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %block_count = getelementptr i8, ptr %inode, i32 -316
  %80 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %block_count, align 4
  br label %if.then69

if.else58:                                        ; preds = %if.then48
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %call62 = call fastcc i32 @hfsplus_add_extent(ptr noundef %first_extents55, i32 noundef %74, i32 noundef %start.0, i32 noundef %82)
  %83 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call62, label %if.else58.if.end98_crit_edge [
    i32 -28, label %if.else58.do.end102_crit_edge
    i32 0, label %if.else58.if.then69_crit_edge
  ]

if.else58.if.then69_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

if.else58.do.end102_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

if.else58.if.end98_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then69:                                        ; preds = %if.else58.if.then69_crit_edge, %if.end67.thread
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %86 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %first_blocks, align 4
  %add73 = add i32 %87, %85
  store i32 %add73, ptr %first_blocks, align 4
  br label %if.then94

if.else75:                                        ; preds = %do.end43
  %cached_extents76 = getelementptr i8, ptr %inode, i32 -256
  %cached_start = getelementptr i8, ptr %inode, i32 -328
  %88 = ptrtoint ptr %cached_start to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cached_start, align 8
  %sub79 = sub i32 %74, %89
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %call80 = call fastcc i32 @hfsplus_add_extent(ptr noundef %cached_extents76, i32 noundef %sub79, i32 noundef %start.0, i32 noundef %91)
  %92 = zext i32 %call80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call80, label %if.else75.if.end98_crit_edge [
    i32 0, label %if.then82
    i32 -28, label %if.else75.do.end102_crit_edge
  ]

if.else75.do.end102_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

if.else75.if.end98_crit_edge:                     ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then82:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #9
  %extent_state = getelementptr i8, ptr %inode, i32 -192
  %93 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %extent_state, align 8
  %or = or i32 %94, 1
  store i32 %or, ptr %extent_state, align 8
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %cached_blocks = getelementptr i8, ptr %inode, i32 -324
  %97 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cached_blocks, align 4
  %add85 = add i32 %98, %96
  store i32 %add85, ptr %cached_blocks, align 4
  br label %if.then94

if.then94:                                        ; preds = %if.end106, %if.then82, %if.then69
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  %101 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %alloc_blocks, align 4
  %add96 = add i32 %102, %100
  store i32 %add96, ptr %alloc_blocks, align 4
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  %flags.i = getelementptr i8, ptr %inode, i32 -84
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #7
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup

if.end98:                                         ; preds = %hfsplus_ext_write_extent_locked.exit.if.end98_crit_edge, %hfsplus_ext_write_extent_locked.exit.thread248, %if.else75.if.end98_crit_edge, %if.else58.if.end98_crit_edge, %if.then33.if.end98_crit_edge, %if.then25.if.end98_crit_edge, %hfsplus_ext_read_extent.exit.if.end98_crit_edge, %hfsplus_ext_read_extent.exit.thread234
  %res.1241 = phi i32 [ %call4.i, %hfsplus_ext_read_extent.exit.thread234 ], [ -28, %if.then25.if.end98_crit_edge ], [ %call6.i, %hfsplus_ext_read_extent.exit.if.end98_crit_edge ], [ %call5.i, %hfsplus_ext_write_extent_locked.exit.if.end98_crit_edge ], [ %call.i, %if.then33.if.end98_crit_edge ], [ %call2.i, %hfsplus_ext_write_extent_locked.exit.thread248 ], [ %call62, %if.else58.if.end98_crit_edge ], [ %call80, %if.else75.if.end98_crit_edge ]
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  br label %cleanup

do.end102:                                        ; preds = %if.else75.do.end102_crit_edge, %if.else58.do.end102_crit_edge
  %extent_state.i = getelementptr i8, ptr %inode, i32 -192
  %103 = ptrtoint ptr %extent_state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %extent_state.i, align 8
  %and.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i228 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i228, label %do.end102.if.end106_crit_edge, label %if.then.i

do.end102.if.end106_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then.i:                                        ; preds = %do.end102
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i227) #7
  %105 = call ptr @memset(ptr %fd.i227, i32 255, i32 36)
  %106 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i230 = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i.i230 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i230, align 16
  %ext_tree.i231 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %ext_tree.i231 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ext_tree.i231, align 8
  %call2.i = call i32 @hfsplus_find_init(ptr noundef %111, ptr noundef nonnull %fd.i227) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %hfsplus_ext_write_extent_locked.exit, label %hfsplus_ext_write_extent_locked.exit.thread248

hfsplus_ext_write_extent_locked.exit.thread248:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i227) #7
  br label %if.end98

hfsplus_ext_write_extent_locked.exit:             ; preds = %if.then.i
  %call5.i = call fastcc i32 @__hfsplus_ext_write_extent(ptr noundef %inode, ptr noundef nonnull %fd.i227) #7
  call void @hfsplus_find_exit(ptr noundef nonnull %fd.i227) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i227) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool104.not = icmp eq i32 %call5.i, 0
  br i1 %tobool104.not, label %hfsplus_ext_write_extent_locked.exit.if.end106_crit_edge, label %hfsplus_ext_write_extent_locked.exit.if.end98_crit_edge

hfsplus_ext_write_extent_locked.exit.if.end98_crit_edge: ; preds = %hfsplus_ext_write_extent_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

hfsplus_ext_write_extent_locked.exit.if.end106_crit_edge: ; preds = %hfsplus_ext_write_extent_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %hfsplus_ext_write_extent_locked.exit.if.end106_crit_edge, %do.end102.if.end106_crit_edge
  %cached_extents107 = getelementptr i8, ptr %inode, i32 -256
  %112 = getelementptr i8, ptr %inode, i32 -248
  %113 = call ptr @memset(ptr %112, i32 0, i32 56)
  %114 = ptrtoint ptr %cached_extents107 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %start.0, ptr %cached_extents107, align 8
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  %block_count114 = getelementptr i8, ptr %inode, i32 -252
  %117 = ptrtoint ptr %block_count114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %block_count114, align 4
  %118 = ptrtoint ptr %extent_state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %extent_state.i, align 8
  %or118 = or i32 %119, 3
  store i32 %or118, ptr %extent_state.i, align 8
  %120 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %alloc_blocks, align 4
  %cached_start120 = getelementptr i8, ptr %inode, i32 -328
  %122 = ptrtoint ptr %cached_start120 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %cached_start120, align 8
  %cached_blocks121 = getelementptr i8, ptr %inode, i32 -324
  %123 = ptrtoint ptr %cached_blocks121 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %116, ptr %cached_blocks121, align 4
  br label %if.then94

cleanup:                                          ; preds = %if.end98, %if.then94, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ %res.1241, %if.end98 ], [ 0, %if.then94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_free_fork(ptr noundef %sb, i32 noundef %cnid, ptr nocapture noundef %fork, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %ext_entry = alloca [8 x %struct.hfsplus_extent], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ext_entry) #7
  %1 = call ptr @memset(ptr %ext_entry, i32 255, i32 64)
  %total_blocks1 = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 2
  %2 = ptrtoint ptr %total_blocks1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %total_blocks1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %block_count = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %block_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %block_count, align 1
  %block_count.1 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %block_count.1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %block_count.1, align 1
  %add.1 = add i32 %7, %5
  %block_count.2 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 2, i32 1
  %8 = ptrtoint ptr %block_count.2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %block_count.2, align 1
  %add.2 = add i32 %9, %add.1
  %block_count.3 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 3, i32 1
  %10 = ptrtoint ptr %block_count.3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %block_count.3, align 1
  %add.3 = add i32 %11, %add.2
  %block_count.4 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 4, i32 1
  %12 = ptrtoint ptr %block_count.4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %block_count.4, align 1
  %add.4 = add i32 %13, %add.3
  %block_count.5 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 5, i32 1
  %14 = ptrtoint ptr %block_count.5 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %block_count.5, align 1
  %add.5 = add i32 %15, %add.4
  %block_count.6 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 6, i32 1
  %16 = ptrtoint ptr %block_count.6 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %block_count.6, align 1
  %add.6 = add i32 %17, %add.5
  %block_count.7 = getelementptr %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3, i32 7, i32 1
  %18 = ptrtoint ptr %block_count.7 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %block_count.7, align 1
  %add.7 = add i32 %19, %add.6
  %extents2 = getelementptr inbounds %struct.hfsplus_fork_raw, ptr %fork, i32 0, i32 3
  %call = tail call fastcc i32 @hfsplus_free_extents(ptr noundef %sb, ptr noundef %extents2, i32 noundef %add.7, i32 noundef %add.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.7)
  %cmp6 = icmp eq i32 %3, %add.7
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ext_tree, align 8
  %call10 = call i32 @hfsplus_find_init(ptr noundef %23, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %if.end8
  %entrylength.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %conv = trunc i32 %type to i8
  %key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %__hfsplus_ext_read_extent.exit.thread57.do.body_crit_edge, %do.body.preheader
  %total_blocks.0 = phi i32 [ %56, %__hfsplus_ext_read_extent.exit.thread57.do.body_crit_edge ], [ %3, %do.body.preheader ]
  %24 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fd, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 10, ptr %25, align 1
  %cnid1.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %25, i32 0, i32 3
  %27 = ptrtoint ptr %cnid1.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %cnid, ptr %cnid1.i.i, align 1
  %start_block.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %start_block.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %total_blocks.0, ptr %start_block.i.i, align 1
  %fork_type.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %fork_type.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %fork_type.i.i, align 1
  %pad.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pad.i.i, align 1
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key.i, align 4
  %cnid1.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %cnid1.i, align 1
  %call.i = call i32 @hfsplus_brec_find(ptr noundef nonnull %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  %34 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call.i, label %do.body.do.end_crit_edge [
    i32 0, label %do.body.if.end.i_crit_edge
    i32 -2, label %do.body.if.end.i_crit_edge63
  ]

do.body.if.end.i_crit_edge63:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %do.body.if.end.i_crit_edge, %do.body.if.end.i_crit_edge63
  %35 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %key.i, align 4
  %cnid3.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cnid3.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %cnid3.i, align 1
  %39 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fd, align 4
  %cnid5.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cnid5.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %cnid5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp6.not.i = icmp eq i32 %38, %42
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end.i
  %fork_type.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %36, i32 0, i32 1
  %43 = ptrtoint ptr %fork_type.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fork_type.i, align 1
  %fork_type9.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %fork_type9.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fork_type9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp11.not.i = icmp eq i8 %44, %46
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %47 = ptrtoint ptr %entrylength.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %entrylength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %48)
  %cmp15.not.i = icmp eq i32 %48, 64
  br i1 %cmp15.not.i, label %__hfsplus_ext_read_extent.exit.thread57, label %if.end14.i.do.end_crit_edge

if.end14.i.do.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

__hfsplus_ext_read_extent.exit.thread57:          ; preds = %if.end14.i
  %49 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bnode.i, align 4
  %51 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %entryoffset.i, align 4
  call void @hfsplus_bnode_read(ptr noundef %50, ptr noundef nonnull %ext_entry, i32 noundef %52, i32 noundef 64) #7
  %53 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %key.i, align 4
  %start_block = getelementptr inbounds %struct.hfsplus_ext_key, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %start_block to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %start_block, align 1
  %call19 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %fd) #7
  %57 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tree, align 4
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %58, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %tree_lock) #7
  %sub = sub i32 %total_blocks.0, %56
  %call21 = call fastcc i32 @hfsplus_free_extents(ptr noundef %sb, ptr noundef nonnull %ext_entry, i32 noundef %sub, i32 noundef %total_blocks.0)
  %59 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tree, align 4
  %tree_lock23 = getelementptr inbounds %struct.hfs_btree, ptr %60, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %tree_lock23, i32 noundef 0) #7
  %cmp24 = icmp ugt i32 %56, %add.7
  br i1 %cmp24, label %__hfsplus_ext_read_extent.exit.thread57.do.body_crit_edge, label %__hfsplus_ext_read_extent.exit.thread57.do.end_crit_edge

__hfsplus_ext_read_extent.exit.thread57.do.end_crit_edge: ; preds = %__hfsplus_ext_read_extent.exit.thread57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

__hfsplus_ext_read_extent.exit.thread57.do.body_crit_edge: ; preds = %__hfsplus_ext_read_extent.exit.thread57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %__hfsplus_ext_read_extent.exit.thread57.do.end_crit_edge, %if.end14.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %do.body.do.end_crit_edge
  %retval.0.i56 = phi i32 [ 0, %__hfsplus_ext_read_extent.exit.thread57.do.end_crit_edge ], [ -5, %if.end14.i.do.end_crit_edge ], [ -2, %if.end.i.do.end_crit_edge ], [ -2, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i, %do.body.do.end_crit_edge ]
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i56, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %for.body.preheader.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ext_entry) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfsplus_free_extents(ptr noundef %sb, ptr nocapture noundef %extent, i32 noundef %offset, i32 noundef %block_nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_tree, align 8
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %3, i32 0, i32 15
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %tree_lock) #7
  br i1 %call1, label %do.end, label %entry.if.end_crit_edge, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %block_count = getelementptr inbounds %struct.hfsplus_extent, ptr %extent, i32 0, i32 1
  %4 = ptrtoint ptr %block_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %block_count, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset)
  %cmp20 = icmp eq i32 %5, %offset
  br i1 %cmp20, label %if.end.for.cond26.preheader_crit_edge, label %if.else

if.end.for.cond26.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %if.end25.6.for.cond26.preheader_crit_edge, %if.end25.5.for.cond26.preheader_crit_edge, %if.end25.4.for.cond26.preheader_crit_edge, %if.end25.3.for.cond26.preheader_crit_edge, %if.end25.2.for.cond26.preheader_crit_edge, %if.end25.1.for.cond26.preheader_crit_edge, %if.end25.for.cond26.preheader_crit_edge, %if.end.for.cond26.preheader_crit_edge
  %extent.addr.0115.lcssa = phi ptr [ %extent, %if.end.for.cond26.preheader_crit_edge ], [ %incdec.ptr, %if.end25.for.cond26.preheader_crit_edge ], [ %incdec.ptr.1, %if.end25.1.for.cond26.preheader_crit_edge ], [ %incdec.ptr.2, %if.end25.2.for.cond26.preheader_crit_edge ], [ %incdec.ptr.3, %if.end25.3.for.cond26.preheader_crit_edge ], [ %incdec.ptr.4, %if.end25.4.for.cond26.preheader_crit_edge ], [ %incdec.ptr.5, %if.end25.5.for.cond26.preheader_crit_edge ], [ %incdec.ptr.6, %if.end25.6.for.cond26.preheader_crit_edge ]
  %i.0113.lcssa = phi i32 [ 0, %if.end.for.cond26.preheader_crit_edge ], [ 1, %if.end25.for.cond26.preheader_crit_edge ], [ 2, %if.end25.1.for.cond26.preheader_crit_edge ], [ 3, %if.end25.2.for.cond26.preheader_crit_edge ], [ 4, %if.end25.3.for.cond26.preheader_crit_edge ], [ 5, %if.end25.4.for.cond26.preheader_crit_edge ], [ 6, %if.end25.5.for.cond26.preheader_crit_edge ], [ 7, %if.end25.6.for.cond26.preheader_crit_edge ]
  %.lcssa129 = phi i32 [ %offset, %if.end.for.cond26.preheader_crit_edge ], [ %sub, %if.end25.for.cond26.preheader_crit_edge ], [ %sub.1, %if.end25.1.for.cond26.preheader_crit_edge ], [ %sub.2, %if.end25.2.for.cond26.preheader_crit_edge ], [ %sub.3, %if.end25.3.for.cond26.preheader_crit_edge ], [ %sub.4, %if.end25.4.for.cond26.preheader_crit_edge ], [ %sub.5, %if.end25.5.for.cond26.preheader_crit_edge ], [ %sub.6, %if.end25.6.for.cond26.preheader_crit_edge ]
  %6 = ptrtoint ptr %extent.addr.0115.lcssa to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %extent.addr.0115.lcssa, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa129, i32 %block_nr)
  %cmp27.not116 = icmp ugt i32 %.lcssa129, %block_nr
  br i1 %cmp27.not116, label %for.cond26.preheader.if.else44_crit_edge, label %for.cond26.preheader.if.then28_crit_edge

for.cond26.preheader.if.then28_crit_edge:         ; preds = %for.cond26.preheader
  br label %if.then28

for.cond26.preheader.if.else44_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset)
  %cmp22 = icmp ugt i32 %5, %offset
  br i1 %cmp22, label %if.else.cleanup_crit_edge, label %if.end25

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %sub = sub i32 %offset, %5
  %incdec.ptr = getelementptr %struct.hfsplus_extent, ptr %extent, i32 1
  %block_count.1 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 1, i32 1
  %8 = ptrtoint ptr %block_count.1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %block_count.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp20.1 = icmp eq i32 %sub, %9
  br i1 %cmp20.1, label %if.end25.for.cond26.preheader_crit_edge, label %if.else.1

if.end25.for.cond26.preheader_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.1:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp22.1 = icmp ult i32 %sub, %9
  br i1 %cmp22.1, label %if.else.1.cleanup_crit_edge, label %if.end25.1

if.else.1.cleanup_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.1:                                       ; preds = %if.else.1
  %sub.1 = sub i32 %sub, %9
  %incdec.ptr.1 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 2
  %block_count.2 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 2, i32 1
  %10 = ptrtoint ptr %block_count.2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %block_count.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %11)
  %cmp20.2 = icmp eq i32 %sub.1, %11
  br i1 %cmp20.2, label %if.end25.1.for.cond26.preheader_crit_edge, label %if.else.2

if.end25.1.for.cond26.preheader_crit_edge:        ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.2:                                        ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %11)
  %cmp22.2 = icmp ult i32 %sub.1, %11
  br i1 %cmp22.2, label %if.else.2.cleanup_crit_edge, label %if.end25.2

if.else.2.cleanup_crit_edge:                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.2:                                       ; preds = %if.else.2
  %sub.2 = sub i32 %sub.1, %11
  %incdec.ptr.2 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 3
  %block_count.3 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 3, i32 1
  %12 = ptrtoint ptr %block_count.3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %block_count.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %13)
  %cmp20.3 = icmp eq i32 %sub.2, %13
  br i1 %cmp20.3, label %if.end25.2.for.cond26.preheader_crit_edge, label %if.else.3

if.end25.2.for.cond26.preheader_crit_edge:        ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.3:                                        ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %13)
  %cmp22.3 = icmp ult i32 %sub.2, %13
  br i1 %cmp22.3, label %if.else.3.cleanup_crit_edge, label %if.end25.3

if.else.3.cleanup_crit_edge:                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.3:                                       ; preds = %if.else.3
  %sub.3 = sub i32 %sub.2, %13
  %incdec.ptr.3 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 4
  %block_count.4 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 4, i32 1
  %14 = ptrtoint ptr %block_count.4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %block_count.4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %15)
  %cmp20.4 = icmp eq i32 %sub.3, %15
  br i1 %cmp20.4, label %if.end25.3.for.cond26.preheader_crit_edge, label %if.else.4

if.end25.3.for.cond26.preheader_crit_edge:        ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.4:                                        ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %15)
  %cmp22.4 = icmp ult i32 %sub.3, %15
  br i1 %cmp22.4, label %if.else.4.cleanup_crit_edge, label %if.end25.4

if.else.4.cleanup_crit_edge:                      ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.4:                                       ; preds = %if.else.4
  %sub.4 = sub i32 %sub.3, %15
  %incdec.ptr.4 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 5
  %block_count.5 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 5, i32 1
  %16 = ptrtoint ptr %block_count.5 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %block_count.5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4, i32 %17)
  %cmp20.5 = icmp eq i32 %sub.4, %17
  br i1 %cmp20.5, label %if.end25.4.for.cond26.preheader_crit_edge, label %if.else.5

if.end25.4.for.cond26.preheader_crit_edge:        ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.5:                                        ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4, i32 %17)
  %cmp22.5 = icmp ult i32 %sub.4, %17
  br i1 %cmp22.5, label %if.else.5.cleanup_crit_edge, label %if.end25.5

if.else.5.cleanup_crit_edge:                      ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.5:                                       ; preds = %if.else.5
  %sub.5 = sub i32 %sub.4, %17
  %incdec.ptr.5 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 6
  %block_count.6 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 6, i32 1
  %18 = ptrtoint ptr %block_count.6 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %block_count.6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5, i32 %19)
  %cmp20.6 = icmp eq i32 %sub.5, %19
  br i1 %cmp20.6, label %if.end25.5.for.cond26.preheader_crit_edge, label %if.else.6

if.end25.5.for.cond26.preheader_crit_edge:        ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.else.6:                                        ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5, i32 %19)
  %cmp22.6 = icmp ult i32 %sub.5, %19
  br i1 %cmp22.6, label %if.else.6.cleanup_crit_edge, label %if.end25.6

if.else.6.cleanup_crit_edge:                      ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.6:                                       ; preds = %if.else.6
  %sub.6 = sub i32 %sub.5, %19
  %incdec.ptr.6 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 7
  %block_count.7 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 7, i32 1
  %20 = ptrtoint ptr %block_count.7 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %block_count.7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.6, i32 %21)
  %cmp20.7 = icmp eq i32 %sub.6, %21
  br i1 %cmp20.7, label %if.end25.6.for.cond26.preheader_crit_edge, label %if.end25.6.cleanup_crit_edge

if.end25.6.cleanup_crit_edge:                     ; preds = %if.end25.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.6.for.cond26.preheader_crit_edge:        ; preds = %if.end25.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.preheader

if.then28:                                        ; preds = %if.end63.if.then28_crit_edge, %for.cond26.preheader.if.then28_crit_edge
  %22 = phi i32 [ %29, %if.end63.if.then28_crit_edge ], [ %7, %for.cond26.preheader.if.then28_crit_edge ]
  %extent.addr.1120 = phi ptr [ %incdec.ptr64, %if.end63.if.then28_crit_edge ], [ %extent.addr.0115.lcssa, %for.cond26.preheader.if.then28_crit_edge ]
  %i.1119 = phi i32 [ %dec, %if.end63.if.then28_crit_edge ], [ %i.0113.lcssa, %for.cond26.preheader.if.then28_crit_edge ]
  %count.0118 = phi i32 [ %27, %if.end63.if.then28_crit_edge ], [ %.lcssa129, %for.cond26.preheader.if.then28_crit_edge ]
  %block_nr.addr.0117 = phi i32 [ %sub43, %if.end63.if.then28_crit_edge ], [ %block_nr, %for.cond26.preheader.if.then28_crit_edge ]
  %call29 = tail call i32 @hfsplus_block_free(ptr noundef %sb, i32 noundef %22, i32 noundef %count.0118) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end59_crit_edge, label %do.end34

if.then28.if.end59_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %if.end59

if.else44:                                        ; preds = %if.end63.if.else44_crit_edge, %for.cond26.preheader.if.else44_crit_edge
  %block_nr.addr.0.lcssa = phi i32 [ %block_nr, %for.cond26.preheader.if.else44_crit_edge ], [ %sub43, %if.end63.if.else44_crit_edge ]
  %count.0.lcssa = phi i32 [ %.lcssa129, %for.cond26.preheader.if.else44_crit_edge ], [ %27, %if.end63.if.else44_crit_edge ]
  %extent.addr.1.lcssa = phi ptr [ %extent.addr.0115.lcssa, %for.cond26.preheader.if.else44_crit_edge ], [ %incdec.ptr64, %if.end63.if.else44_crit_edge ]
  %.lcssa = phi i32 [ %7, %for.cond26.preheader.if.else44_crit_edge ], [ %29, %if.end63.if.else44_crit_edge ]
  %sub45 = sub i32 %count.0.lcssa, %block_nr.addr.0.lcssa
  %add = add i32 %.lcssa, %sub45
  %call46 = tail call i32 @hfsplus_block_free(ptr noundef %sb, i32 noundef %add, i32 noundef %block_nr.addr.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else44.if.end59.thread_crit_edge, label %do.end51

if.else44.if.end59.thread_crit_edge:              ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.thread

do.end51:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %if.end59.thread

if.end59.thread:                                  ; preds = %do.end51, %if.else44.if.end59.thread_crit_edge
  %block_count58 = getelementptr inbounds %struct.hfsplus_extent, ptr %extent.addr.1.lcssa, i32 0, i32 1
  %23 = ptrtoint ptr %block_count58 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %sub45, ptr %block_count58, align 1
  br label %cleanup

if.end59:                                         ; preds = %do.end34, %if.then28.if.end59_crit_edge
  %block_count41 = getelementptr inbounds %struct.hfsplus_extent, ptr %extent.addr.1120, i32 0, i32 1
  %24 = ptrtoint ptr %block_count41 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %block_count41, align 1
  %25 = ptrtoint ptr %extent.addr.1120 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %extent.addr.1120, align 1
  %sub43 = sub i32 %block_nr.addr.0117, %count.0118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43)
  %tobool60.not = icmp eq i32 %sub43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1119)
  %tobool61.not = icmp eq i32 %i.1119, 0
  %or.cond = select i1 %tobool60.not, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %if.end59.cleanup_crit_edge, label %if.end63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %dec = add nsw i32 %i.1119, -1
  %incdec.ptr64 = getelementptr %struct.hfsplus_extent, ptr %extent.addr.1120, i32 -1
  %block_count65 = getelementptr %struct.hfsplus_extent, ptr %extent.addr.1120, i32 -1, i32 1
  %26 = ptrtoint ptr %block_count65 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %block_count65, align 1
  %28 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %incdec.ptr64, align 1
  %cmp27.not = icmp ugt i32 %27, %sub43
  br i1 %cmp27.not, label %if.end63.if.else44_crit_edge, label %if.end63.if.then28_crit_edge

if.end63.if.then28_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.end63.if.else44_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else44

cleanup:                                          ; preds = %if.end59.cleanup_crit_edge, %if.end59.thread, %if.end25.6.cleanup_crit_edge, %if.else.6.cleanup_crit_edge, %if.else.5.cleanup_crit_edge, %if.else.4.cleanup_crit_edge, %if.else.3.cleanup_crit_edge, %if.else.2.cleanup_crit_edge, %if.else.1.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end59.thread ], [ -5, %if.else.6.cleanup_crit_edge ], [ -5, %if.else.5.cleanup_crit_edge ], [ -5, %if.else.4.cleanup_crit_edge ], [ -5, %if.else.3.cleanup_crit_edge ], [ -5, %if.else.2.cleanup_crit_edge ], [ -5, %if.else.1.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %if.end25.6.cleanup_crit_edge ], [ %call29, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_find_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_find_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_block_allocate(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hfsplus_add_extent(ptr nocapture noundef %extent, i32 noundef %offset, i32 noundef %alloc_block, i32 noundef %block_count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %block_count1 = getelementptr inbounds %struct.hfsplus_extent, ptr %extent, i32 0, i32 1
  %0 = ptrtoint ptr %block_count1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %block_count1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp2 = icmp eq i32 %1, %offset
  br i1 %cmp2, label %entry.if.then_crit_edge, label %if.else11

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end15.5.if.then_crit_edge, %if.end15.4.if.then_crit_edge, %if.end15.3.if.then_crit_edge, %if.end15.2.if.then_crit_edge, %if.end15.1.if.then_crit_edge, %if.end15.if.then_crit_edge, %entry.if.then_crit_edge
  %extent.addr.038.lcssa = phi ptr [ %incdec.ptr16.5, %if.end15.5.if.then_crit_edge ], [ %incdec.ptr16.4, %if.end15.4.if.then_crit_edge ], [ %incdec.ptr16.3, %if.end15.3.if.then_crit_edge ], [ %incdec.ptr16.2, %if.end15.2.if.then_crit_edge ], [ %incdec.ptr16.1, %if.end15.1.if.then_crit_edge ], [ %incdec.ptr16, %if.end15.if.then_crit_edge ], [ %extent, %entry.if.then_crit_edge ]
  %.lcssa = phi i32 [ %sub.5, %if.end15.5.if.then_crit_edge ], [ %sub.4, %if.end15.4.if.then_crit_edge ], [ %sub.3, %if.end15.3.if.then_crit_edge ], [ %sub.2, %if.end15.2.if.then_crit_edge ], [ %sub.1, %if.end15.1.if.then_crit_edge ], [ %sub, %if.end15.if.then_crit_edge ], [ %offset, %entry.if.then_crit_edge ]
  %2 = ptrtoint ptr %extent.addr.038.lcssa to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %extent.addr.038.lcssa, align 1
  %add = add i32 %3, %.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %alloc_block)
  %cmp3.not = icmp eq i32 %add, %alloc_block
  br i1 %cmp3.not, label %if.then.if.else_crit_edge, label %if.end

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.thread:                                   ; preds = %if.end15.6
  %incdec.ptr16.6 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 7
  %4 = ptrtoint ptr %incdec.ptr16.6 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %incdec.ptr16.6, align 1
  %add47 = add i32 %5, %sub.6
  call void @__sanitizer_cov_trace_cmp4(i32 %add47, i32 %alloc_block)
  %cmp3.not48 = icmp eq i32 %add47, %alloc_block
  br i1 %cmp3.not48, label %if.then.thread.if.else_crit_edge, label %if.then.thread.cleanup_crit_edge

if.then.thread.cleanup_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.thread.if.else_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr %struct.hfsplus_extent, ptr %extent.addr.038.lcssa, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %alloc_block, ptr %incdec.ptr, align 1
  br label %if.end9

if.else:                                          ; preds = %if.then.thread.if.else_crit_edge, %if.then.if.else_crit_edge
  %.lcssa52 = phi i32 [ %sub.6, %if.then.thread.if.else_crit_edge ], [ %.lcssa, %if.then.if.else_crit_edge ]
  %extent.addr.038.lcssa50 = phi ptr [ %incdec.ptr16.6, %if.then.thread.if.else_crit_edge ], [ %extent.addr.038.lcssa, %if.then.if.else_crit_edge ]
  %add8 = add i32 %.lcssa52, %block_count
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %extent.addr.1 = phi ptr [ %incdec.ptr, %if.end ], [ %extent.addr.038.lcssa50, %if.else ]
  %block_count.addr.0 = phi i32 [ %block_count, %if.end ], [ %add8, %if.else ]
  %block_count10 = getelementptr inbounds %struct.hfsplus_extent, ptr %extent.addr.1, i32 0, i32 1
  %7 = ptrtoint ptr %block_count10 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %block_count.addr.0, ptr %block_count10, align 1
  br label %cleanup

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp12 = icmp ugt i32 %1, %offset
  br i1 %cmp12, label %if.else11.cleanup_crit_edge, label %if.end15

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.else11
  %sub = sub i32 %offset, %1
  %incdec.ptr16 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 1
  %block_count1.1 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 1, i32 1
  %8 = ptrtoint ptr %block_count1.1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %block_count1.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp2.1 = icmp eq i32 %sub, %9
  br i1 %cmp2.1, label %if.end15.if.then_crit_edge, label %if.else11.1

if.end15.if.then_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.1:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp12.1 = icmp ult i32 %sub, %9
  br i1 %cmp12.1, label %if.else11.1.cleanup_crit_edge, label %if.end15.1

if.else11.1.cleanup_crit_edge:                    ; preds = %if.else11.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.1:                                       ; preds = %if.else11.1
  %sub.1 = sub i32 %sub, %9
  %incdec.ptr16.1 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 2
  %block_count1.2 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 2, i32 1
  %10 = ptrtoint ptr %block_count1.2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %block_count1.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %11)
  %cmp2.2 = icmp eq i32 %sub.1, %11
  br i1 %cmp2.2, label %if.end15.1.if.then_crit_edge, label %if.else11.2

if.end15.1.if.then_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.2:                                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %11)
  %cmp12.2 = icmp ult i32 %sub.1, %11
  br i1 %cmp12.2, label %if.else11.2.cleanup_crit_edge, label %if.end15.2

if.else11.2.cleanup_crit_edge:                    ; preds = %if.else11.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.2:                                       ; preds = %if.else11.2
  %sub.2 = sub i32 %sub.1, %11
  %incdec.ptr16.2 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 3
  %block_count1.3 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 3, i32 1
  %12 = ptrtoint ptr %block_count1.3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %block_count1.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %13)
  %cmp2.3 = icmp eq i32 %sub.2, %13
  br i1 %cmp2.3, label %if.end15.2.if.then_crit_edge, label %if.else11.3

if.end15.2.if.then_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.3:                                      ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %13)
  %cmp12.3 = icmp ult i32 %sub.2, %13
  br i1 %cmp12.3, label %if.else11.3.cleanup_crit_edge, label %if.end15.3

if.else11.3.cleanup_crit_edge:                    ; preds = %if.else11.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.3:                                       ; preds = %if.else11.3
  %sub.3 = sub i32 %sub.2, %13
  %incdec.ptr16.3 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 4
  %block_count1.4 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 4, i32 1
  %14 = ptrtoint ptr %block_count1.4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %block_count1.4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %15)
  %cmp2.4 = icmp eq i32 %sub.3, %15
  br i1 %cmp2.4, label %if.end15.3.if.then_crit_edge, label %if.else11.4

if.end15.3.if.then_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.4:                                      ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %15)
  %cmp12.4 = icmp ult i32 %sub.3, %15
  br i1 %cmp12.4, label %if.else11.4.cleanup_crit_edge, label %if.end15.4

if.else11.4.cleanup_crit_edge:                    ; preds = %if.else11.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.4:                                       ; preds = %if.else11.4
  %sub.4 = sub i32 %sub.3, %15
  %incdec.ptr16.4 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 5
  %block_count1.5 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 5, i32 1
  %16 = ptrtoint ptr %block_count1.5 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %block_count1.5, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4, i32 %17)
  %cmp2.5 = icmp eq i32 %sub.4, %17
  br i1 %cmp2.5, label %if.end15.4.if.then_crit_edge, label %if.else11.5

if.end15.4.if.then_crit_edge:                     ; preds = %if.end15.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.5:                                      ; preds = %if.end15.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4, i32 %17)
  %cmp12.5 = icmp ult i32 %sub.4, %17
  br i1 %cmp12.5, label %if.else11.5.cleanup_crit_edge, label %if.end15.5

if.else11.5.cleanup_crit_edge:                    ; preds = %if.else11.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.5:                                       ; preds = %if.else11.5
  %sub.5 = sub i32 %sub.4, %17
  %incdec.ptr16.5 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 6
  %block_count1.6 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 6, i32 1
  %18 = ptrtoint ptr %block_count1.6 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %block_count1.6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5, i32 %19)
  %cmp2.6 = icmp eq i32 %sub.5, %19
  br i1 %cmp2.6, label %if.end15.5.if.then_crit_edge, label %if.else11.6

if.end15.5.if.then_crit_edge:                     ; preds = %if.end15.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else11.6:                                      ; preds = %if.end15.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5, i32 %19)
  %cmp12.6 = icmp ult i32 %sub.5, %19
  br i1 %cmp12.6, label %if.else11.6.cleanup_crit_edge, label %if.end15.6

if.else11.6.cleanup_crit_edge:                    ; preds = %if.else11.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.6:                                       ; preds = %if.else11.6
  %sub.6 = sub i32 %sub.5, %19
  %block_count1.7 = getelementptr %struct.hfsplus_extent, ptr %extent, i32 7, i32 1
  %20 = ptrtoint ptr %block_count1.7 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %block_count1.7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.6, i32 %21)
  %cmp2.7 = icmp eq i32 %sub.6, %21
  br i1 %cmp2.7, label %if.then.thread, label %if.end15.6.cleanup_crit_edge

if.end15.6.cleanup_crit_edge:                     ; preds = %if.end15.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.6.cleanup_crit_edge, %if.else11.6.cleanup_crit_edge, %if.else11.5.cleanup_crit_edge, %if.else11.4.cleanup_crit_edge, %if.else11.3.cleanup_crit_edge, %if.else11.2.cleanup_crit_edge, %if.else11.1.cleanup_crit_edge, %if.else11.cleanup_crit_edge, %if.end9, %if.then.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -5, %if.else11.6.cleanup_crit_edge ], [ -5, %if.else11.5.cleanup_crit_edge ], [ -5, %if.else11.4.cleanup_crit_edge ], [ -5, %if.else11.3.cleanup_crit_edge ], [ -5, %if.else11.2.cleanup_crit_edge ], [ -5, %if.else11.1.cleanup_crit_edge ], [ -5, %if.else11.cleanup_crit_edge ], [ -28, %if.then.thread.cleanup_crit_edge ], [ -5, %if.end15.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_file_truncate(ptr noundef %inode) local_unnamed_addr #2 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %page = alloca ptr, align 4
  %fsdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #7
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #7
  %9 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #7
  %10 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !23
  %call2 = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %8, i64 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %13 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fsdata, align 4
  %call4 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %8, i64 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %12, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #7
  br label %cleanup82

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %6)
  %cmp13 = icmp eq i64 %4, %6
  br i1 %cmp13, label %if.else.cleanup82_crit_edge, label %if.end16

if.else.cleanup82_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.end16:                                         ; preds = %if.else
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfsplus_sb_info, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alloc_blksz, align 4
  %conv = zext i32 %18 to i64
  %add = add i64 %4, -1
  %sub = add i64 %add, %conv
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %16, i32 0, i32 16
  %19 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alloc_blksz_shift, align 8
  %sh_prom = zext i32 %20 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv20 = trunc i64 %shr to i32
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %extents_lock, i32 noundef 0) #7
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -332
  %21 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alloc_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv20)
  %cmp21 = icmp eq i32 %22, %conv20
  br i1 %cmp21, label %if.end16.out_unlock_crit_edge, label %if.end24

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end24:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %ext_tree = getelementptr inbounds %struct.hfsplus_sb_info, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext_tree, align 8
  %call26 = call i32 @hfsplus_find_init(ptr noundef %26, ptr noundef nonnull %fd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %while.cond.preheader, label %if.then28

while.cond.preheader:                             ; preds = %if.end24
  %first_blocks = getelementptr i8, ptr %inode, i32 -340
  %27 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp31157 = icmp eq i32 %22, %28
  br i1 %cmp31157, label %while.cond.preheader.if.then33_crit_edge, label %if.end41.lr.ph

while.cond.preheader.if.then33_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.end41.lr.ph:                                   ; preds = %while.cond.preheader
  %cached_start = getelementptr i8, ptr %inode, i32 -328
  %tree51 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %cached_extents = getelementptr i8, ptr %inode, i32 -256
  %cached_blocks = getelementptr i8, ptr %inode, i32 -324
  %extent_state66 = getelementptr i8, ptr %inode, i32 -192
  br label %if.end41

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  br label %cleanup82

if.then33:                                        ; preds = %if.then48.if.then33_crit_edge, %while.cond.preheader.if.then33_crit_edge
  %alloc_cnt.0.lcssa = phi i32 [ %22, %while.cond.preheader.if.then33_crit_edge ], [ %35, %if.then48.if.then33_crit_edge ]
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %29 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tree, align 4
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %30, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %tree_lock) #7
  %first_extents = getelementptr i8, ptr %inode, i32 -320
  %sub34 = sub i32 %alloc_cnt.0.lcssa, %conv20
  %call35 = call fastcc i32 @hfsplus_free_extents(ptr noundef %1, ptr noundef %first_extents, i32 noundef %alloc_cnt.0.lcssa, i32 noundef %sub34)
  %31 = ptrtoint ptr %first_blocks to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv20, ptr %first_blocks, align 4
  %32 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tree, align 4
  %tree_lock40 = getelementptr inbounds %struct.hfs_btree, ptr %33, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %tree_lock40, i32 noundef 0) #7
  br label %while.end

if.end41:                                         ; preds = %if.then48.if.end41_crit_edge, %if.end41.lr.ph
  %alloc_cnt.0158 = phi i32 [ %22, %if.end41.lr.ph ], [ %35, %if.then48.if.end41_crit_edge ]
  %call42 = call fastcc i32 @__hfsplus_ext_cache_extent(ptr noundef nonnull %fd, ptr noundef %inode, i32 noundef %alloc_cnt.0158)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.while.end_crit_edge

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end45:                                         ; preds = %if.end41
  %34 = ptrtoint ptr %cached_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cached_start, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv20)
  %cmp46.not = icmp ult i32 %35, %conv20
  br i1 %cmp46.not, label %if.then63.critedge, label %if.then48

if.then48:                                        ; preds = %if.end45
  %call49 = call i32 @hfsplus_brec_remove(ptr noundef nonnull %fd) #7
  %36 = ptrtoint ptr %tree51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tree51, align 4
  %tree_lock52.c = getelementptr inbounds %struct.hfs_btree, ptr %37, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %tree_lock52.c) #7
  %sub54.c = sub i32 %alloc_cnt.0158, %35
  %sub55.c = sub i32 %alloc_cnt.0158, %conv20
  %call56.c = call fastcc i32 @hfsplus_free_extents(ptr noundef %1, ptr noundef %cached_extents, i32 noundef %sub54.c, i32 noundef %sub55.c)
  %38 = ptrtoint ptr %tree51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tree51, align 4
  %tree_lock60.c = getelementptr inbounds %struct.hfs_btree, ptr %39, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %tree_lock60.c, i32 noundef 0) #7
  %40 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cached_blocks, align 4
  %41 = ptrtoint ptr %cached_start to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cached_start, align 8
  %42 = ptrtoint ptr %extent_state66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %extent_state66, align 8
  %and = and i32 %43, -4
  store i32 %and, ptr %extent_state66, align 8
  %44 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %first_blocks, align 4
  %cmp31 = icmp eq i32 %35, %45
  br i1 %cmp31, label %if.then48.if.then33_crit_edge, label %if.then48.if.end41_crit_edge

if.then48.if.end41_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then48.if.then33_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then63.critedge:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %tree51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tree51, align 4
  %tree_lock52.c159 = getelementptr inbounds %struct.hfs_btree, ptr %47, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %tree_lock52.c159) #7
  %sub54.c160 = sub i32 %alloc_cnt.0158, %35
  %sub55.c161 = sub i32 %alloc_cnt.0158, %conv20
  %call56.c162 = call fastcc i32 @hfsplus_free_extents(ptr noundef %1, ptr noundef %cached_extents, i32 noundef %sub54.c160, i32 noundef %sub55.c161)
  %48 = ptrtoint ptr %tree51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tree51, align 4
  %tree_lock60.c163 = getelementptr inbounds %struct.hfs_btree, ptr %49, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %tree_lock60.c163, i32 noundef 0) #7
  %50 = ptrtoint ptr %extent_state66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %extent_state66, align 8
  %or = or i32 %51, 1
  store i32 %or, ptr %extent_state66, align 8
  br label %while.end

while.end:                                        ; preds = %if.then63.critedge, %if.end41.while.end_crit_edge, %if.then33
  call void @hfsplus_find_exit(ptr noundef nonnull %fd) #7
  %52 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv20, ptr %alloc_blocks, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %while.end, %if.end16.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %extents_lock) #7
  %53 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_size, align 8
  %55 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %phys_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize, align 16
  %conv72 = zext i32 %57 to i64
  %add73 = add i64 %54, -1
  %sub74 = add i64 %add73, %conv72
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom76 = zext i8 %59 to i64
  %shr77 = ashr i64 %sub74, %sh_prom76
  %fs_blocks = getelementptr i8, ptr %inode, i32 -80
  %60 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %shr77, ptr %fs_blocks, align 8
  %61 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom81 = zext i8 %61 to i64
  %shl = shl i64 %shr77, %sh_prom81
  call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl) #7
  %flags.i = getelementptr i8, ptr %inode, i32 -84
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #7
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %cleanup82

cleanup82:                                        ; preds = %out_unlock, %if.then28, %if.else.cleanup82_crit_edge, %cleanup
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hfsplus_ext_cache_extent(ptr noundef %fd, ptr noundef %inode, i32 noundef %block) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %extents_lock) #7
  br i1 %call1, label %entry.if.end_crit_edge, label %do.end, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 183, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %extent_state = getelementptr i8, ptr %inode, i32 -192
  %0 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extent_state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end.if.end27_crit_edge, label %if.then22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end
  %call23 = tail call fastcc i32 @__hfsplus_ext_write_extent(ptr noundef %inode, ptr noundef %fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end27_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %cached_extents = getelementptr i8, ptr %inode, i32 -256
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %flags = getelementptr i8, ptr %inode, i32 -84
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %conv = sub nsw i8 0, %7
  %8 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 10, ptr %9, align 1
  %cnid1.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %cnid1.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %3, ptr %cnid1.i.i, align 1
  %start_block.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %start_block.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %block, ptr %start_block.i.i, align 1
  %fork_type.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fork_type.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %fork_type.i.i, align 1
  %pad.i.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pad.i.i, align 1
  %key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %15 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key.i, align 4
  %cnid1.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %cnid1.i, align 1
  %call.i = tail call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  %18 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call.i, label %if.end27.if.else_crit_edge [
    i32 0, label %if.end27.if.end.i_crit_edge
    i32 -2, label %if.end27.if.end.i_crit_edge68
  ]

if.end27.if.end.i_crit_edge68:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end27.if.else_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end.i:                                         ; preds = %if.end27.if.end.i_crit_edge, %if.end27.if.end.i_crit_edge68
  %19 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %key.i, align 4
  %cnid3.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cnid3.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %cnid3.i, align 1
  %23 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fd, align 4
  %cnid5.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cnid5.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %cnid5.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp6.not.i = icmp eq i32 %22, %26
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

lor.lhs.false.i:                                  ; preds = %if.end.i
  %fork_type.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %fork_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fork_type.i, align 1
  %fork_type9.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %fork_type9.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fork_type9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp11.not.i = icmp eq i8 %28, %30
  br i1 %cmp11.not.i, label %if.end14.i, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %entrylength.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %31 = ptrtoint ptr %entrylength.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entrylength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp15.not.i = icmp eq i32 %32, 64
  br i1 %cmp15.not.i, label %__hfsplus_ext_read_extent.exit.thread64, label %if.end14.i.if.else_crit_edge

if.end14.i.if.else_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

__hfsplus_ext_read_extent.exit.thread64:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %33 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %35 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %entryoffset.i, align 4
  tail call void @hfsplus_bnode_read(ptr noundef %34, ptr noundef %cached_extents, i32 noundef %36, i32 noundef 64) #7
  %37 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %key.i, align 4
  %start_block = getelementptr inbounds %struct.hfsplus_ext_key, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %start_block to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %start_block, align 1
  %cached_start = getelementptr i8, ptr %inode, i32 -328
  %41 = ptrtoint ptr %cached_start to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cached_start, align 8
  %block_count.i = getelementptr i8, ptr %inode, i32 -252
  %42 = ptrtoint ptr %block_count.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %block_count.i, align 1
  %block_count.1.i = getelementptr i8, ptr %inode, i32 -244
  %44 = ptrtoint ptr %block_count.1.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %block_count.1.i, align 1
  %add.1.i = add i32 %45, %43
  %block_count.2.i = getelementptr i8, ptr %inode, i32 -236
  %46 = ptrtoint ptr %block_count.2.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %block_count.2.i, align 1
  %add.2.i = add i32 %add.1.i, %47
  %block_count.3.i = getelementptr i8, ptr %inode, i32 -228
  %48 = ptrtoint ptr %block_count.3.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %block_count.3.i, align 1
  %add.3.i = add i32 %add.2.i, %49
  %block_count.4.i = getelementptr i8, ptr %inode, i32 -220
  %50 = ptrtoint ptr %block_count.4.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %block_count.4.i, align 1
  %add.4.i = add i32 %add.3.i, %51
  %block_count.5.i = getelementptr i8, ptr %inode, i32 -212
  %52 = ptrtoint ptr %block_count.5.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %block_count.5.i, align 1
  %add.5.i = add i32 %add.4.i, %53
  %block_count.6.i = getelementptr i8, ptr %inode, i32 -204
  %54 = ptrtoint ptr %block_count.6.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %block_count.6.i, align 1
  %add.6.i = add i32 %add.5.i, %55
  %block_count.7.i = getelementptr i8, ptr %inode, i32 -196
  %56 = ptrtoint ptr %block_count.7.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %block_count.7.i, align 1
  %add.7.i = add i32 %add.6.i, %57
  %cached_blocks = getelementptr i8, ptr %inode, i32 -324
  %58 = ptrtoint ptr %cached_blocks to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.7.i, ptr %cached_blocks, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end27.if.else_crit_edge
  %retval.0.i63 = phi i32 [ -5, %if.end14.i.if.else_crit_edge ], [ -2, %if.end.i.if.else_crit_edge ], [ -2, %lor.lhs.false.i.if.else_crit_edge ], [ %call.i, %if.end27.if.else_crit_edge ]
  %cached_blocks37 = getelementptr i8, ptr %inode, i32 -324
  %59 = ptrtoint ptr %cached_blocks37 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %cached_blocks37, align 4
  %cached_start38 = getelementptr i8, ptr %inode, i32 -328
  %60 = ptrtoint ptr %cached_start38 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cached_start38, align 8
  %61 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %extent_state, align 8
  %and40 = and i32 %62, -4
  store i32 %and40, ptr %extent_state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %__hfsplus_ext_read_extent.exit.thread64, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then22.cleanup_crit_edge ], [ %retval.0.i63, %if.else ], [ 0, %__hfsplus_ext_read_extent.exit.thread64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hfsplus_ext_write_extent(ptr noundef %inode, ptr noundef %fd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extents_lock = getelementptr i8, ptr %inode, i32 -188
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %extents_lock) #7
  br i1 %call1, label %entry.if.end_crit_edge, label %do.end, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %cached_start = getelementptr i8, ptr %inode, i32 -328
  %4 = ptrtoint ptr %cached_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached_start, align 8
  %flags = getelementptr i8, ptr %inode, i32 -84
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  %conv = sub nsw i8 0, %9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 10, ptr %1, align 1
  %cnid1.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %cnid1.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %3, ptr %cnid1.i, align 1
  %start_block.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %start_block.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %5, ptr %start_block.i, align 1
  %fork_type.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %fork_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %fork_type.i, align 1
  %pad.i = getelementptr inbounds %struct.hfsplus_ext_key, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pad.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pad.i, align 1
  %call24 = tail call i32 @hfsplus_brec_find(ptr noundef %fd, ptr noundef nonnull @hfs_find_rec_by_key) #7
  %extent_state = getelementptr i8, ptr %inode, i32 -192
  %15 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extent_state, align 8
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call24)
  %cmp.not = icmp eq i32 %call24, -2
  br i1 %cmp.not, label %if.end29, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.then26
  %tree = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 2
  %17 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tree, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %depth, align 4
  %add = add i32 %20, 1
  %call31 = tail call i32 @hfsplus_bmap_reserve(ptr noundef %18, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %cached_extents = getelementptr i8, ptr %inode, i32 -256
  %call35 = tail call i32 @hfsplus_brec_insert(ptr noundef %fd, ptr noundef %cached_extents, i32 noundef 64) #7
  br label %if.end45

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool38.not = icmp eq i32 %call24, 0
  br i1 %tobool38.not, label %if.end40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %21 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bnode, align 4
  %cached_extents41 = getelementptr i8, ptr %inode, i32 -256
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %23 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entryoffset, align 4
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %25 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entrylength, align 4
  tail call void @hfsplus_bnode_write(ptr noundef %22, ptr noundef %cached_extents41, i32 noundef %24, i32 noundef %26) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.end34
  %.sink71 = phi i32 [ -2, %if.end40 ], [ -4, %if.end34 ]
  %27 = ptrtoint ptr %extent_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %extent_state, align 8
  %and44 = and i32 %28, %.sink71
  store i32 %and44, ptr %extent_state, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.else.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ %call24, %if.then26.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ], [ %call24, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_rec_by_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_bmap_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_brec_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_block_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/extents.c", i32 451, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_file_extend._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_file_extend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/extents.c", i32 365, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hfsplus_free_extents._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hfsplus_free_extents._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @hfsplus_free_extents._entry.5, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../fs/hfsplus/extents.c", i32 376, i32 5}
!13 = !{ptr @hfsplus_free_extents._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
