; ModuleID = '/llk/IR_all_yes/fs/ext4/verity.c_pt.bc'
source_filename = "../fs/ext4/verity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsverity_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }

@ext4_verityops = dso_local constant { %struct.fsverity_operations, [44 x i8] } { %struct.fsverity_operations { ptr @ext4_begin_enable_verity, ptr @ext4_end_enable_verity, ptr @ext4_get_verity_descriptor, ptr @ext4_read_merkle_tree_page, ptr @ext4_write_merkle_tree_block }, [44 x i8] zeroinitializer }, align 32
@__func__.ext4_begin_enable_verity = private unnamed_addr constant [25 x i8] c"ext4_begin_enable_verity\00", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"verity is only allowed on extent-based files\00", [51 x i8] zeroinitializer }, align 32
@__func__.ext4_end_enable_verity = private unnamed_addr constant [23 x i8] c"ext4_end_enable_verity\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.ext4_get_verity_descriptor_location = private unnamed_addr constant [36 x i8] c"ext4_get_verity_descriptor_location\00", align 1
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"verity file doesn't use extents\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"verity file has no extents\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"verity file corrupted; can't find descriptor\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"ext4_verityops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 391, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 135, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 289, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 299, i32 3 }
@___asan_gen_.20 = private constant [20 x i8] c"../fs/ext4/verity.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 338, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 260, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ext4_verityops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_verityops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_begin_enable_verity(ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_flags.i = getelementptr i8, ptr %1, i32 -380
  %2 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_flags.i, align 4
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state_flags.i.i = getelementptr i8, ptr %1, i32 -384
  %5 = ptrtoint ptr %i_state_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state_flags.i.i, align 4
  %7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ext4_inode_attach_jinode(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @dquot_initialize(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @ext4_convert_inline_data(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_flags.i, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_begin_enable_verity, i32 noundef 136, ptr noundef nonnull @.str) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @ext4_truncate(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %16, 3
  %call.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %12, i32 noundef 148, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call32 = tail call i32 @ext4_orphan_add(ptr noundef %call.i, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp eq i32 %call32, 0
  br i1 %cmp, label %if.then33, label %if.end31.if.end34_crit_edge

if.end31.if.end34_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 10, ptr noundef %i_state_flags.i.i) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31.if.end34_crit_edge
  %call35 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_begin_enable_verity, i32 noundef 156, ptr noundef %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29, %if.end21.cleanup_crit_edge, %if.then20, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then29 ], [ %call32, %if.end34 ], [ -95, %if.then20 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_end_enable_verity(ptr nocapture noundef readonly %filp, ptr noundef readonly %desc, i32 noundef %desc_size, i64 noundef %merkle_tree_size) #0 align 64 {
entry:
  %desc_size_disk.i = alloca i32, align 4
  %iloc = alloca %struct.ext4_iloc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc) #5
  %2 = ptrtoint ptr %iloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc, align 4, !annotation !29
  %3 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !29
  %5 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !29
  %cmp = icmp eq ptr %desc, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size.i.i, align 8
  %sub.i.i = add i64 %8, -1
  %or.i.i = or i64 %sub.i.i, 65535
  %sub.i = add i64 %or.i.i, %merkle_tree_size
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv.i.i
  %sub2.i = xor i32 %notmask.i, -1
  %conv.i = zext i32 %sub2.i to i64
  %or.i = or i64 %sub.i, %conv.i
  %add3.i = add i64 %or.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %desc_size) #5
  %12 = ptrtoint ptr %desc_size_disk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %desc_size_disk.i, align 4
  %call14.i = tail call fastcc i32 @pagecache_write(ptr noundef %1, ptr noundef nonnull %desc, i32 noundef %desc_size, i64 noundef %add3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %ext4_write_verity_descriptor.exit, label %ext4_write_verity_descriptor.exit.thread

ext4_write_verity_descriptor.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  br label %cleanup

ext4_write_verity_descriptor.exit:                ; preds = %if.end
  %conv4.i = zext i32 %desc_size to i64
  %add5.i = add nuw nsw i64 %conv4.i, 3
  %sub7.i = add i64 %add5.i, %add3.i
  %or11.i = or i64 %sub7.i, %conv.i
  %sub13.i = add i64 %or11.i, -3
  %call15.i = call fastcc i32 @pagecache_write(ptr noundef %1, ptr noundef nonnull %desc_size_disk.i, i32 noundef 4, i64 noundef %sub13.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not = icmp eq i32 %call15.i, 0
  br i1 %tobool.not, label %if.end3, label %ext4_write_verity_descriptor.exit.cleanup_crit_edge

ext4_write_verity_descriptor.exit.cleanup_crit_edge: ; preds = %ext4_write_verity_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %ext4_write_verity_descriptor.exit
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %14, i64 noundef 0, i64 noundef 9223372036854775807) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %20, 3
  %call.i62 = tail call ptr @__ext4_journal_start_sb(ptr noundef %16, i32 noundef 229, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i) #5
  %cmp.i = icmp ugt ptr %call.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i62 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = tail call i32 @ext4_orphan_del(ptr noundef %call.i62, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.stop_and_cleanup_crit_edge

if.end13.stop_and_cleanup_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop_and_cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @ext4_reserve_inode_write(ptr noundef %call.i62, ptr noundef %1, ptr noundef nonnull %iloc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.stop_and_cleanup_crit_edge

if.end17.stop_and_cleanup_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop_and_cleanup

if.end21:                                         ; preds = %if.end17
  %i_flags.i = getelementptr i8, ptr %1, i32 -380
  call void @_set_bit(i32 noundef 20, ptr noundef %i_flags.i) #5
  call void @ext4_set_inode_flags(ptr noundef %1, i1 noundef zeroext false) #5
  %call22 = call i32 @ext4_mark_iloc_dirty(ptr noundef %call.i62, ptr noundef %1, ptr noundef nonnull %iloc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.stop_and_cleanup_crit_edge

if.end21.stop_and_cleanup_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop_and_cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_end_enable_verity, i32 noundef 249, ptr noundef %call.i62) #5
  br label %cleanup31

stop_and_cleanup:                                 ; preds = %if.end21.stop_and_cleanup_crit_edge, %if.end17.stop_and_cleanup_crit_edge, %if.end13.stop_and_cleanup_crit_edge
  %err.0 = phi i32 [ %call14, %if.end13.stop_and_cleanup_crit_edge ], [ %call18, %if.end17.stop_and_cleanup_crit_edge ], [ %call22, %if.end21.stop_and_cleanup_crit_edge ]
  %call27 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_end_enable_verity, i32 noundef 255, ptr noundef %call.i62) #5
  br label %cleanup

cleanup:                                          ; preds = %stop_and_cleanup, %if.then11, %if.end3.cleanup_crit_edge, %ext4_write_verity_descriptor.exit.cleanup_crit_edge, %ext4_write_verity_descriptor.exit.thread, %entry.cleanup_crit_edge
  %err.1 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call15.i, %ext4_write_verity_descriptor.exit.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %21, %if.then11 ], [ %err.0, %stop_and_cleanup ], [ %call14.i, %ext4_write_verity_descriptor.exit.thread ]
  %i_mapping28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping28, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size, align 8
  call void @truncate_inode_pages(ptr noundef %23, i64 noundef %25) #5
  %call29 = call i32 @ext4_truncate(ptr noundef %1) #5
  %call30 = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %1) #5
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup, %if.end25
  %retval.0 = phi i32 [ %err.1, %cleanup ], [ 0, %if.end25 ]
  %i_state_flags.i63 = getelementptr i8, ptr %1, i32 -384
  call void @_clear_bit(i32 noundef 10, ptr noundef %i_state_flags.i63) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_get_verity_descriptor(ptr noundef %inode, ptr nocapture noundef writeonly %buf, i32 noundef %buf_size) #0 align 64 {
entry:
  %desc_size_disk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  %0 = ptrtoint ptr %desc_size_disk.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc_size_disk.i, align 4, !annotation !29
  %i_flags.i.i = getelementptr i8, ptr %inode, i32 -380
  %1 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %i_flags.i.i, align 4
  %3 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_get_verity_descriptor_location, i32 noundef 289, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.1) #5
  br label %ext4_get_verity_descriptor_location.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @ext4_find_extent(ptr noundef %inode, i32 noundef -2, ptr noundef null, i32 noundef 0) #5
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ext4_get_verity_descriptor_location.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %p_depth.i = getelementptr inbounds %struct.ext4_ext_path, ptr %call1.i, i32 0, i32 1
  %4 = ptrtoint ptr %p_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %p_depth.i, align 8
  %idxprom.i = zext i16 %5 to i32
  %p_ext.i = getelementptr %struct.ext4_ext_path, ptr %call1.i, i32 %idxprom.i, i32 3
  %6 = ptrtoint ptr %p_ext.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_ext.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_get_verity_descriptor_location, i32 noundef 299, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2) #5
  tail call void @ext4_ext_drop_refs(ptr noundef %call1.i) #5
  tail call void @kfree(ptr noundef %call1.i) #5
  br label %ext4_get_verity_descriptor_location.exit.thread

if.end8.i:                                        ; preds = %if.end5.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %ee_len.i.i = getelementptr inbounds %struct.ext4_extent, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %ee_len.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ee_len.i.i, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #5
  %conv.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %13)
  %cmp.i69.i = icmp ult i16 %13, -32767
  %sub.i.i = add nsw i32 %conv.i.i, -32768
  %cond.i.i = select i1 %cmp.i69.i, i32 %conv.i.i, i32 %sub.i.i
  %add.i = add i32 %cond.i.i, %10
  %conv.i = zext i32 %add.i to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %14 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %15 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  tail call void @ext4_ext_drop_refs(ptr noundef %call1.i) #5
  tail call void @kfree(ptr noundef %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %shl.i)
  %cmp.i = icmp ult i64 %shl.i, 4
  br i1 %cmp.i, label %if.end8.i.bad.i_crit_edge, label %if.end13.i

if.end8.i.bad.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad.i

if.end13.i:                                       ; preds = %if.end8.i
  %sub.i = add i64 %shl.i, -4
  %call14.i = call fastcc i32 @pagecache_read(ptr noundef %inode, ptr noundef nonnull %desc_size_disk.i, i32 noundef 4, i64 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.ext4_get_verity_descriptor_location.exit.thread_crit_edge

if.end13.i.ext4_get_verity_descriptor_location.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ext4_get_verity_descriptor_location.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %16 = ptrtoint ptr %desc_size_disk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_size_disk.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.i = icmp slt i32 %18, 0
  br i1 %cmp18.i, label %if.end17.i.bad.i_crit_edge, label %lor.lhs.false.i

if.end17.i.bad.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %conv20.i = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv20.i)
  %cmp21.i = icmp ult i64 %sub.i, %conv20.i
  br i1 %cmp21.i, label %lor.lhs.false.i.bad.i_crit_edge, label %if.end24.i

lor.lhs.false.i.bad.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad.i

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %sub26.i = sub i64 %sub.i, %conv20.i
  %19 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i_blkbits.i, align 2
  %conv.i70.i = zext i8 %20 to i32
  %notmask.i = shl nsw i32 -1, %conv.i70.i
  %conv29.i = zext i32 %notmask.i to i64
  %neg72.i = or i64 %conv29.i, -4294967296
  %and.i = and i64 %neg72.i, %sub26.i
  %i_size.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size.i.i, align 8
  %sub.i71.i = add i64 %22, -1
  %or.i.i = or i64 %sub.i71.i, 65535
  %add.i.i = add i64 %or.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %add.i.i)
  %cmp31.i = icmp ult i64 %and.i, %add.i.i
  br i1 %cmp31.i, label %if.end24.i.bad.i_crit_edge, label %ext4_get_verity_descriptor_location.exit.thread23

if.end24.i.bad.i_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bad.i

ext4_get_verity_descriptor_location.exit.thread23: ; preds = %if.end24.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_size)
  %tobool1.not = icmp eq i32 %buf_size, 0
  br i1 %tobool1.not, label %ext4_get_verity_descriptor_location.exit.thread23.if.end9_crit_edge, label %if.then2

ext4_get_verity_descriptor_location.exit.thread23.if.end9_crit_edge: ; preds = %ext4_get_verity_descriptor_location.exit.thread23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

bad.i:                                            ; preds = %if.end24.i.bad.i_crit_edge, %lor.lhs.false.i.bad.i_crit_edge, %if.end17.i.bad.i_crit_edge, %if.end8.i.bad.i_crit_edge
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef nonnull @__func__.ext4_get_verity_descriptor_location, i32 noundef 338, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.3) #5
  br label %ext4_get_verity_descriptor_location.exit.thread

ext4_get_verity_descriptor_location.exit.thread:  ; preds = %bad.i, %if.end13.i.ext4_get_verity_descriptor_location.exit.thread_crit_edge, %if.then7.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %call14.i, %if.end13.i.ext4_get_verity_descriptor_location.exit.thread_crit_edge ], [ -117, %if.then.i ], [ -117, %if.then7.i ], [ -117, %bad.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  br label %cleanup

ext4_get_verity_descriptor_location.exit:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call1.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_size_disk.i) #5
  br label %cleanup

if.then2:                                         ; preds = %ext4_get_verity_descriptor_location.exit.thread23
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %buf_size)
  %cmp = icmp ugt i32 %18, %buf_size
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.end4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.then2
  %call5 = tail call fastcc i32 @pagecache_read(ptr noundef %inode, ptr noundef %buf, i32 noundef %18, i64 noundef %and.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %ext4_get_verity_descriptor_location.exit.thread23.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %ext4_get_verity_descriptor_location.exit, %ext4_get_verity_descriptor_location.exit.thread
  %retval.0 = phi i32 [ %18, %if.end9 ], [ %23, %ext4_get_verity_descriptor_location.exit ], [ -34, %if.then2.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %retval.0.i.ph, %ext4_get_verity_descriptor_location.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext4_read_merkle_tree_page(ptr nocapture noundef readonly %inode, i32 noundef %index, i32 noundef %num_ra_pages) #0 align 64 {
entry:
  %ractl = alloca %struct.readahead_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl) #5
  %0 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %2 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %3 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %4 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 5
  %5 = ptrtoint ptr %ractl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ractl, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %index, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %14, 17592186044415
  %or.i = or i64 %sub.i, 65535
  %add.i = add i64 %or.i, 1
  %15 = lshr exact i64 %add.i, 12
  %16 = trunc i64 %15 to i32
  %conv1 = add i32 %16, %index
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %7, i32 noundef %conv1, i32 noundef 1, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !30

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.5) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #5, !srcloc !31
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %if.then7.critedge, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  br label %if.end13

if.then7.critedge:                                ; preds = %folio_flags.exit.i.i
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %17, align 4
  %and.i.i25 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i.i26, label %if.end.i.i29, label %if.then.i.i28, !prof !30

if.then.i.i28:                                    ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i27 = add i32 %29, -1
  br label %_compound_head.exit.i31

if.end.i.i29:                                     ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i31

_compound_head.exit.i31:                          ; preds = %if.end.i.i29, %if.then.i.i28
  %retval.0.i.i30 = phi i32 [ %sub.i.i27, %if.then.i.i28 ], [ %30, %if.end.i.i29 ]
  %31 = inttoptr i32 %retval.0.i.i30 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.4) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !34
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i31
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_read_merkle_tree_page, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !38

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end10_crit_edge

folio_put_testzero.exit.i.i.if.end10_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %31) #5
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_ra_pages)
  %cmp = icmp ugt i32 %num_ra_pages, 1
  br i1 %cmp, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @page_cache_ra_unbounded(ptr noundef nonnull %ractl, i32 noundef %num_ra_pages, i32 noundef 0) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end10_crit_edge
  %35 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping, align 8
  %call.i32 = call ptr @read_cache_page(ptr noundef %36, i32 noundef %conv1, ptr noundef null, ptr noundef null) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %PageUptodate.exit
  %page.0 = phi ptr [ %call.i, %PageUptodate.exit ], [ %call.i32, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl) #5
  ret ptr %page.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_write_merkle_tree_block(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %buf, i64 noundef %index, i32 noundef %log_blocksize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %1, -1
  %or.i = or i64 %sub.i, 65535
  %sh_prom = zext i32 %log_blocksize to i64
  %shl = shl i64 %index, %sh_prom
  %add.i = add i64 %shl, 1
  %add = add i64 %add.i, %or.i
  %shl1 = shl nuw i32 1, %log_blocksize
  %call2 = tail call fastcc i32 @pagecache_write(ptr noundef %inode, ptr noundef %buf, i32 noundef %shl1, i64 noundef %add)
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_attach_jinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_inline_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_inode_flags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagecache_write(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %buf, i32 noundef %count, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %fsdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %count to i64
  %add = add i64 %conv, %pos
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp = icmp sgt i64 %add, %3
  br i1 %cmp, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not56 = icmp eq i32 %count, 0
  br i1 %tobool.not56, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.059 = phi i64 [ %pos, %while.body.lr.ph ], [ %add21, %cleanup.while.body_crit_edge ]
  %count.addr.058 = phi i32 [ %count, %while.body.lr.ph ], [ %sub22, %cleanup.while.body_crit_edge ]
  %buf.addr.057 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %conv2 = trunc i64 %pos.addr.059 to i32
  %and = and i32 %conv2, 4095
  %sub = sub nuw nsw i32 4096, %and
  %4 = call i32 @llvm.umin.i32(i32 %count.addr.058, i32 %sub)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #5
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #5
  %6 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !29
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %call = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %8, i64 noundef %pos.addr.059, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end7:                                          ; preds = %while.body
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %11, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i.i) #5
  %add.i = add nuw nsw i32 %4, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %memcpy_to_page.exit, !prof !33

do.body2.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #5, !srcloc !39
  unreachable

memcpy_to_page.exit:                              ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf.addr.057, i32 %4)
  call void @flush_dcache_page(ptr noundef %10) #5
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #5
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 4
  %17 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fsdata, align 4
  %call11 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %14, i64 noundef %pos.addr.059, i32 noundef %4, i32 noundef %4, ptr noundef %16, ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %memcpy_to_page.exit.cleanup.thread_crit_edge, label %if.end15

memcpy_to_page.exit.cleanup.thread_crit_edge:     ; preds = %memcpy_to_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end15:                                         ; preds = %memcpy_to_page.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %4)
  %cmp16.not = icmp eq i32 %call11, %4
  br i1 %cmp16.not, label %cleanup, label %if.end15.cleanup.thread_crit_edge

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end15.cleanup.thread_crit_edge, %memcpy_to_page.exit.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -5, %if.end15.cleanup.thread_crit_edge ], [ %call11, %memcpy_to_page.exit.cleanup.thread_crit_edge ], [ %call, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #5
  br label %return

cleanup:                                          ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %buf.addr.057, i32 %4
  %conv20 = zext i32 %4 to i64
  %add21 = add i64 %pos.addr.059, %conv20
  %sub22 = sub i32 %count.addr.058, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #5
  %tobool.not = icmp eq i32 %sub22, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %while.cond.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ -27, %entry.return_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %while.cond.preheader.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagecache_read(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %buf, i32 noundef %count, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not32 = icmp eq i32 %count, 0
  br i1 %tobool.not32, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.addr.035 = phi i64 [ %pos, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %count.addr.034 = phi i32 [ %count, %while.body.lr.ph ], [ %sub8, %cleanup.while.body_crit_edge ]
  %buf.addr.033 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %conv = trunc i64 %pos.addr.035 to i32
  %and = and i32 %conv, 4095
  %sub = sub nuw nsw i32 4096, %and
  %0 = tail call i32 @llvm.umin.i32(i32 %count.addr.034, i32 %sub)
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %3 = lshr i64 %pos.addr.035, 12
  %conv2 = trunc i64 %3 to i32
  %call.i = tail call ptr @read_cache_page(ptr noundef %2, i32 noundef %conv2, ptr noundef null, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i to i32
  br label %return

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %5 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %5, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i.i) #5
  %add.i = add nuw nsw i32 %0, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i24 = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i24, label %do.body2.i, label %memcpy_from_page.exit, !prof !33

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #5, !srcloc !40
  unreachable

memcpy_from_page.exit:                            ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and
  %6 = call ptr @memcpy(ptr %buf.addr.033, ptr %add.ptr.i, i32 %0)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #5
  %7 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %memcpy_from_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %memcpy_from_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.4) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !34
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@pagecache_read, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !38

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge
  %add.ptr = getelementptr i8, ptr %buf.addr.033, i32 %0
  %conv7 = zext i32 %0 to i64
  %add = add i64 %pos.addr.035, %conv7
  %sub8 = sub i32 %count.addr.034, %0
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %entry.return_crit_edge
  %retval.2 = phi i32 [ %4, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_ra_unbounded(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @ext4_verityops, !1, !"ext4_verityops", i1 false, i1 false}
!1 = !{!"../fs/ext4/verity.c", i32 391, i32 34}
!2 = !{ptr @__func__.ext4_begin_enable_verity, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/verity.c", i32 135, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.ext4_end_enable_verity, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/verity.c", i32 249, i32 2}
!7 = !{ptr @__func__.ext4_get_verity_descriptor_location, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/verity.c", i32 289, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/verity.c", i32 299, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext4/verity.c", i32 338, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 717, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2150580544, i64 2150581035, i64 2150580581, i64 2150580637, i64 2150580671, i64 2150580695, i64 2150580736, i64 2150580757, i64 2150580785, i64 2150580819}
!32 = !{i64 2151330436}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2153373891, i64 2153374374, i64 2153373928, i64 2153373984, i64 2153374018, i64 2153374042, i64 2153374083, i64 2153374104, i64 2153374132, i64 2153374166}
!35 = !{i64 2148760275}
!36 = !{i64 2148674984, i64 2148675016, i64 2148675045, i64 2148675079, i64 2148675110, i64 2148675133}
!37 = !{i64 2148760504}
!38 = !{i64 2148496397, i64 2148496402, i64 2148496415, i64 2148496459, i64 2148496493, i64 2148496514}
!39 = !{i64 2153904844, i64 2153905332, i64 2153904881, i64 2153904937, i64 2153904971, i64 2153904995, i64 2153905036, i64 2153905057, i64 2153905085, i64 2153905119}
!40 = !{i64 2153897176, i64 2153897664, i64 2153897213, i64 2153897269, i64 2153897303, i64 2153897327, i64 2153897368, i64 2153897389, i64 2153897417, i64 2153897451}
