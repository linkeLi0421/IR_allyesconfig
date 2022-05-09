; ModuleID = '/llk/IR_all_yes/fs/ext4/move_extent.c_pt.bc'
source_filename = "../fs/ext4/move_extent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }
%struct.ext4_extent = type { i32, i16, i16, i32 }
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
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Online defrag not supported with data journaling\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Online defrag not supported for encrypted files\00", [48 x i8] zeroinitializer }, align 32
@__func__.move_extent_per_page = private unnamed_addr constant [21 x i8] c"move_extent_per_page\00", align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to copy data block, data will be lost.\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 591, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 597, i32 3 }
@___asan_gen_.20 = private constant [25 x i8] c"../fs/ext4/move_extent.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 425, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 414, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 260, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 416, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 452, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 717, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_double_down_write_data_sem(ptr noundef %first, ptr noundef %second) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp ult ptr %first, %second
  %first.second = select i1 %cmp, ptr %first, ptr %second
  %second.first = select i1 %cmp, ptr %second, ptr %first
  %i_data_sem4 = getelementptr i8, ptr %first.second, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem4) #7
  %i_data_sem6 = getelementptr i8, ptr %second.first, i32 -96
  tail call void @down_write_nested(ptr noundef %i_data_sem6, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_double_up_write_data_sem(ptr noundef %orig_inode, ptr noundef %donor_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data_sem = getelementptr i8, ptr %orig_inode, i32 -96
  tail call void @up_write(ptr noundef %i_data_sem) #7
  %i_data_sem2 = getelementptr i8, ptr %donor_inode, i32 -96
  tail call void @up_write(ptr noundef %i_data_sem2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_move_extents(ptr nocapture noundef readonly %o_filp, ptr nocapture noundef readonly %d_filp, i64 noundef %orig_blk, i64 noundef %donor_blk, i64 noundef %len, ptr nocapture noundef %moved_len) local_unnamed_addr #0 align 64 {
entry:
  %len.addr = alloca i64, align 8
  %path = alloca ptr, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %o_filp, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i207 = getelementptr inbounds %struct.file, ptr %d_filp, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i207 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i207, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #7
  %5 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %path, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %shr = lshr i32 4096, %conv
  %conv2 = trunc i64 %orig_blk to i32
  %conv3 = trunc i64 %donor_blk to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb4, align 4
  %cmp.not = icmp ne ptr %9, %11
  %cmp6 = icmp eq ptr %2, %4
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %entry.cleanup120_crit_edge, label %if.end10

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

if.end10:                                         ; preds = %entry
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %2, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp12 = icmp eq i16 %14, -32768
  br i1 %cmp12, label %lor.lhs.false, label %if.end10.cleanup120_crit_edge

if.end10.cleanup120_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

lor.lhs.false:                                    ; preds = %if.end10
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %4, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp17 = icmp eq i16 %17, -32768
  br i1 %cmp17, label %if.end21, label %lor.lhs.false.cleanup120_crit_edge

lor.lhs.false.cleanup120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

if.end21:                                         ; preds = %lor.lhs.false
  %call.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %2) #7
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false23, label %if.end21.if.then26_crit_edge

if.end21.if.then26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false23:                                  ; preds = %if.end21
  %call.i208 = tail call i32 @ext4_inode_journal_mode(ptr noundef %4) #7
  %and.i209 = and i32 %call.i208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool25.not = icmp eq i32 %and.i209, 0
  br i1 %tobool25.not, label %if.end28, label %lor.lhs.false23.if.then26_crit_edge

lor.lhs.false23.if.then26_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false23.if.then26_crit_edge, %if.end21.if.then26_crit_edge
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %cleanup120

if.end28:                                         ; preds = %lor.lhs.false23
  %i_flags = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and29 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end28.if.then35_crit_edge

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

lor.lhs.false31:                                  ; preds = %if.end28
  %i_flags32 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags32, align 4
  %and33 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end37, label %lor.lhs.false31.if.then35_crit_edge

lor.lhs.false31.if.then35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false31.if.then35_crit_edge, %if.end28.if.then35_crit_edge
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #7
  br label %cleanup120

if.end37:                                         ; preds = %lor.lhs.false31
  tail call void @lock_two_nondirectories(ptr noundef %2, ptr noundef %4) #7
  tail call void @inode_dio_wait(ptr noundef %2) #7
  tail call void @inode_dio_wait(ptr noundef %4) #7
  tail call void @ext4_double_down_write_data_sem(ptr noundef %2, ptr noundef %4)
  %call38 = call fastcc i32 @mext_check_arguments(ptr noundef %2, ptr noundef %4, i64 noundef %orig_blk, i64 noundef %donor_blk, ptr noundef nonnull %len.addr)
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call38, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.outthread-pre-split_crit_edge

if.end37.outthread-pre-split_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %outthread-pre-split

if.end41:                                         ; preds = %if.end37
  %27 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %len.addr, align 8
  %add = add i64 %28, %orig_blk
  %conv43 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv43)
  %cmp44232 = icmp ult i32 %conv2, %conv43
  br i1 %cmp44232, label %while.body.lr.ph, label %if.end41.while.end_crit_edge

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end41
  %eh_depth.i.i = getelementptr i8, ptr %2, i32 -458
  %i_blkbits87 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 20
  %29 = add nsw i32 %shr, -1
  %i_data_sem.i = getelementptr i8, ptr %2, i32 -96
  %i_data_sem2.i = getelementptr i8, ptr %4, i32 -96
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %d_start.0234 = phi i32 [ %conv3, %while.body.lr.ph ], [ %d_start.2, %cleanup.while.body_crit_edge ]
  %o_start.0233 = phi i32 [ %conv2, %while.body.lr.ph ], [ %o_start.2, %cleanup.while.body_crit_edge ]
  %call.i210 = call ptr @ext4_find_extent(ptr noundef %2, i32 noundef %o_start.0233, ptr noundef nonnull %path, i32 noundef 1073741824) #7
  %cmp.i.i = icmp ugt ptr %call.i210, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_ext_path.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %30 = ptrtoint ptr %eh_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %eh_depth.i.i, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31) #7
  %idxprom.i = zext i16 %32 to i32
  %p_ext.i = getelementptr %struct.ext4_ext_path, ptr %call.i210, i32 %idxprom.i, i32 3
  %33 = ptrtoint ptr %p_ext.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_ext.i, align 4
  %cmp.i = icmp eq ptr %34, null
  br i1 %cmp.i, label %get_ext_path.exit.thread218, label %get_ext_path.exit.thread

get_ext_path.exit.thread218:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ext4_ext_drop_refs(ptr noundef %call.i210) #7
  call void @kfree(ptr noundef %call.i210) #7
  %35 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %path, align 4
  %36 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -61, ptr %ret, align 4
  br label %outthread-pre-split

get_ext_path.exit.thread:                         ; preds = %if.end.i
  %37 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i210, ptr %path, align 4
  %38 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ret, align 4
  %p_depth = getelementptr inbounds %struct.ext4_ext_path, ptr %call.i210, i32 0, i32 1
  %39 = ptrtoint ptr %p_depth to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %p_depth, align 8
  %idxprom = zext i16 %40 to i32
  %p_ext = getelementptr %struct.ext4_ext_path, ptr %call.i210, i32 %idxprom, i32 3
  %41 = ptrtoint ptr %p_ext to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_ext, align 4
  %call50 = call i32 @ext4_ext_next_allocated_block(ptr noundef %call.i210) #7
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %ee_len.i = getelementptr inbounds %struct.ext4_extent, ptr %42, i32 0, i32 1
  %46 = ptrtoint ptr %ee_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ee_len.i, align 4
  %48 = call i16 @llvm.bswap.i16(i16 %47) #7
  %conv.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %48)
  %cmp.i211 = icmp ult i16 %48, -32767
  %sub.i = add nsw i32 %conv.i, -32768
  %cond.i = select i1 %cmp.i211, i32 %conv.i, i32 %sub.i
  %add52 = add i32 %45, -1
  %sub = add i32 %add52, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %o_start.0233)
  %cmp53 = icmp ult i32 %sub, %o_start.0233
  br i1 %cmp53, label %if.then55, label %if.else

get_ext_path.exit:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call.i210 to i32
  %50 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ret, align 4
  br label %outthread-pre-split

if.then55:                                        ; preds = %get_ext_path.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call50)
  %cmp56 = icmp eq i32 %call50, -1
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -61, ptr %ret, align 4
  br label %outthread-pre-split

if.end59:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %sub60 = sub i32 %d_start.0234, %o_start.0233
  %add61 = add i32 %sub60, %call50
  br label %cleanup

if.else:                                          ; preds = %get_ext_path.exit.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %o_start.0233)
  %cmp62 = icmp ugt i32 %45, %o_start.0233
  br i1 %cmp62, label %if.then64, label %if.else71

if.then64:                                        ; preds = %if.else
  %sub65 = sub i32 %d_start.0234, %o_start.0233
  %add66 = add i32 %sub65, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv43)
  %cmp67.not = icmp ult i32 %45, %conv43
  br i1 %cmp67.not, label %if.then64.if.end75_crit_edge, label %if.then64.outthread-pre-split_crit_edge

if.then64.outthread-pre-split_crit_edge:          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %outthread-pre-split

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub72 = sub i32 %45, %o_start.0233
  %add73 = add i32 %sub72, %cond.i
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then64.if.end75_crit_edge
  %o_start.1 = phi i32 [ %45, %if.then64.if.end75_crit_edge ], [ %o_start.0233, %if.else71 ]
  %d_start.1 = phi i32 [ %add66, %if.then64.if.end75_crit_edge ], [ %d_start.0234, %if.else71 ]
  %cur_len.0 = phi i32 [ %cond.i, %if.then64.if.end75_crit_edge ], [ %add73, %if.else71 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %48)
  %cmp.i213 = icmp ugt i16 %48, -32768
  %conv1.i = zext i1 %cmp.i213 to i32
  %sub77 = sub i32 %conv43, %o_start.1
  %52 = call i32 @llvm.umin.i32(i32 %sub77, i32 %cur_len.0)
  %53 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %i_blkbits, align 2
  %conv84 = zext i8 %54 to i32
  %sub85 = sub nsw i32 12, %conv84
  %shr86 = lshr i32 %o_start.1, %sub85
  %55 = ptrtoint ptr %i_blkbits87 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %i_blkbits87, align 2
  %conv88 = zext i8 %56 to i32
  %sub89 = sub nsw i32 12, %conv88
  %shr90 = lshr i32 %d_start.1, %sub89
  %rem = and i32 %o_start.1, %29
  %sub91 = sub i32 %shr, %rem
  %57 = call i32 @llvm.smin.i32(i32 %52, i32 %sub91)
  call void @up_write(ptr noundef %i_data_sem.i) #7
  call void @up_write(ptr noundef %i_data_sem2.i) #7
  call fastcc void @move_extent_per_page(ptr noundef %o_filp, ptr noundef %4, i32 noundef %shr86, i32 noundef %shr90, i32 noundef %rem, i32 noundef %57, i32 noundef %conv1.i, ptr noundef nonnull %ret)
  call void @ext4_double_down_write_data_sem(ptr noundef %2, ptr noundef %4)
  %58 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp98 = icmp slt i32 %59, 0
  br i1 %cmp98, label %if.end75.while.end_crit_edge, label %if.end101

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end101:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %add102 = add i32 %57, %o_start.1
  %add103 = add i32 %57, %d_start.1
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end59
  %o_start.2 = phi i32 [ %call50, %if.end59 ], [ %add102, %if.end101 ]
  %d_start.2 = phi i32 [ %add61, %if.end59 ], [ %add103, %if.end101 ]
  %cmp44 = icmp ult i32 %o_start.2, %conv43
  br i1 %cmp44, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end75.while.end_crit_edge, %if.end41.while.end_crit_edge
  %o_start.3 = phi i32 [ %conv2, %if.end41.while.end_crit_edge ], [ %o_start.1, %if.end75.while.end_crit_edge ], [ %o_start.2, %cleanup.while.end_crit_edge ]
  %conv111 = zext i32 %o_start.3 to i64
  %sub112 = sub i64 %conv111, %orig_blk
  %60 = call i64 @llvm.umin.i64(i64 %sub112, i64 %28)
  %61 = ptrtoint ptr %moved_len to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %moved_len, align 8
  br label %out

outthread-pre-split:                              ; preds = %if.then64.outthread-pre-split_crit_edge, %if.then58, %get_ext_path.exit, %get_ext_path.exit.thread218, %if.end37.outthread-pre-split_crit_edge
  %62 = ptrtoint ptr %moved_len to i32
  call void @__asan_load8_noabort(i32 %62)
  %.pr = load i64, ptr %moved_len, align 8
  br label %out

out:                                              ; preds = %outthread-pre-split, %while.end
  %63 = phi i64 [ %.pr, %outthread-pre-split ], [ %60, %while.end ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool117.not = icmp eq i64 %63, 0
  br i1 %tobool117.not, label %out.if.end119_crit_edge, label %if.then118

out.if.end119_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then118:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @ext4_discard_preallocations(ptr noundef %2, i32 noundef 0) #7
  call void @ext4_discard_preallocations(ptr noundef %4, i32 noundef 0) #7
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %out.if.end119_crit_edge
  %64 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %path, align 4
  call void @ext4_ext_drop_refs(ptr noundef %65) #7
  %66 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %path, align 4
  call void @kfree(ptr noundef %67) #7
  %i_data_sem.i214 = getelementptr i8, ptr %2, i32 -96
  call void @up_write(ptr noundef %i_data_sem.i214) #7
  %i_data_sem2.i215 = getelementptr i8, ptr %4, i32 -96
  call void @up_write(ptr noundef %i_data_sem2.i215) #7
  call void @unlock_two_nondirectories(ptr noundef %2, ptr noundef %4) #7
  %68 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ret, align 4
  br label %cleanup120

cleanup120:                                       ; preds = %if.end119, %if.then35, %if.then26, %lor.lhs.false.cleanup120_crit_edge, %if.end10.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.0 = phi i32 [ -95, %if.then26 ], [ -95, %if.then35 ], [ %69, %if.end119 ], [ -22, %entry.cleanup120_crit_edge ], [ -22, %lor.lhs.false.cleanup120_crit_edge ], [ -22, %if.end10.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mext_check_arguments(ptr noundef %orig_inode, ptr noundef %donor_inode, i64 noundef %orig_start, i64 noundef %donor_start, ptr nocapture noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %orig_inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %call = tail call fastcc i64 @i_size_read(ptr noundef %orig_inode)
  %conv1 = zext i32 %shl to i64
  %add = add nsw i64 %conv1, -1
  %sub = add i64 %add, %call
  %sh_prom = zext i8 %1 to i64
  %shr = ashr i64 %sub, %sh_prom
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %donor_inode)
  %sub5 = add i64 %add, %call2
  %shr7 = ashr i64 %sub5, %sh_prom
  %2 = ptrtoint ptr %donor_inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %donor_inode, align 8
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %donor_inode, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %7 = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %i_flags16 = getelementptr inbounds %struct.inode, ptr %orig_inode, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags16, align 4
  %and17 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and21 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond155 = select i1 %tobool18.not, i1 %tobool22.not, i1 false
  br i1 %or.cond155, label %if.end25, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %and.i = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end25.if.end32_crit_edge, label %ext4_is_quota_file.exit

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

ext4_is_quota_file.exit:                          ; preds = %if.end25
  %i_flags1.i = getelementptr i8, ptr %orig_inode, i32 -380
  %11 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags1.i, align 4
  %and2.i = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp ne i32 %and2.i, 0
  %and.i159 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  %or.cond170 = select i1 %tobool3.not.i, i1 true, i1 %tobool.not.i160
  br i1 %or.cond170, label %ext4_is_quota_file.exit.if.end32_crit_edge, label %ext4_is_quota_file.exit165

ext4_is_quota_file.exit.if.end32_crit_edge:       ; preds = %ext4_is_quota_file.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

ext4_is_quota_file.exit165:                       ; preds = %ext4_is_quota_file.exit
  %i_flags1.i161 = getelementptr i8, ptr %donor_inode, i32 -380
  %13 = ptrtoint ptr %i_flags1.i161 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags1.i161, align 4
  %and2.i162 = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i162)
  %tobool3.not.i163 = icmp eq i32 %and2.i162, 0
  br i1 %tobool3.not.i163, label %ext4_is_quota_file.exit165.cleanup_crit_edge, label %ext4_is_quota_file.exit165.if.end32_crit_edge

ext4_is_quota_file.exit165.if.end32_crit_edge:    ; preds = %ext4_is_quota_file.exit165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

ext4_is_quota_file.exit165.cleanup_crit_edge:     ; preds = %ext4_is_quota_file.exit165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %ext4_is_quota_file.exit165.if.end32_crit_edge, %ext4_is_quota_file.exit.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %i_flags.i166 = getelementptr i8, ptr %orig_inode, i32 -380
  %15 = ptrtoint ptr %i_flags.i166 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_flags.i166, align 4
  %17 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.else

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end32
  %i_flags.i167 = getelementptr i8, ptr %donor_inode, i32 -380
  %18 = ptrtoint ptr %i_flags.i167 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_flags.i167, align 4
  %20 = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %if.else.cleanup_crit_edge, label %if.end42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.else
  %i_size = getelementptr inbounds %struct.inode, ptr %orig_inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool43.not = icmp eq i64 %22, 0
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %lor.lhs.false44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false44:                                  ; preds = %if.end42
  %i_size45 = getelementptr inbounds %struct.inode, ptr %donor_inode, i32 0, i32 14
  %23 = ptrtoint ptr %i_size45 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size45, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool46.not = icmp eq i64 %24, 0
  br i1 %tobool46.not, label %lor.lhs.false44.cleanup_crit_edge, label %if.end49

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false44
  %25 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i_blkbits, align 2
  %conv51 = zext i8 %26 to i32
  %neg = lshr i32 4095, %conv51
  %27 = zext i32 %neg to i64
  %28 = xor i64 %donor_start, %orig_start
  %29 = and i64 %28, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp.not = icmp eq i64 %29, 0
  br i1 %cmp.not, label %if.end64, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %orig_start)
  %cmp65 = icmp ugt i64 %orig_start, 4294967294
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %donor_start)
  %cmp68 = icmp ugt i64 %donor_start, 4294967294
  %or.cond156 = or i1 %cmp65, %cmp68
  br i1 %or.cond156, label %if.end64.cleanup_crit_edge, label %lor.lhs.false70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false70:                                  ; preds = %if.end64
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %31)
  %cmp71 = icmp ugt i64 %31, 4294967295
  %add74 = add i64 %31, %donor_start
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %add74)
  %cmp75 = icmp ugt i64 %add74, 4294967294
  %or.cond157 = or i1 %cmp71, %cmp75
  br i1 %or.cond157, label %lor.lhs.false70.cleanup_crit_edge, label %lor.lhs.false77

lor.lhs.false70.cleanup_crit_edge:                ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %add78 = add nuw nsw i64 %31, %orig_start
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %add78)
  %cmp79 = icmp ugt i64 %add78, 4294967294
  br i1 %cmp79, label %lor.lhs.false77.cleanup_crit_edge, label %if.end83

lor.lhs.false77.cleanup_crit_edge:                ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %orig_start)
  %cmp84.not = icmp ugt i64 %shr, %orig_start
  br i1 %cmp84.not, label %if.else87, label %if.end83.if.end95.sink.split_crit_edge

if.end83.if.end95.sink.split_crit_edge:           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.sink.split

if.else87:                                        ; preds = %if.end83
  %sub89 = add nsw i64 %add78, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %sub89)
  %cmp90 = icmp ult i64 %shr, %sub89
  br i1 %cmp90, label %if.then92, label %if.else87.if.end95_crit_edge

if.else87.if.end95_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then92:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  %sub93 = sub i64 %shr, %orig_start
  br label %if.end95.sink.split

if.end95.sink.split:                              ; preds = %if.then92, %if.end83.if.end95.sink.split_crit_edge
  %sub93.sink = phi i64 [ %sub93, %if.then92 ], [ 0, %if.end83.if.end95.sink.split_crit_edge ]
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub93.sink, ptr %len, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %if.else87.if.end95_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %shr7, i64 %donor_start)
  %cmp96.not = icmp ugt i64 %shr7, %donor_start
  br i1 %cmp96.not, label %if.else99, label %if.end95.if.end107.sink.split_crit_edge

if.end95.if.end107.sink.split_crit_edge:          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.sink.split

if.else99:                                        ; preds = %if.end95
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %len, align 8
  %add100 = add nsw i64 %donor_start, -1
  %sub101 = add i64 %add100, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %shr7, i64 %sub101)
  %cmp102 = icmp ult i64 %shr7, %sub101
  br i1 %cmp102, label %if.then104, label %if.else99.if.end107_crit_edge

if.else99.if.end107_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then104:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  %sub105 = sub i64 %shr7, %donor_start
  br label %if.end107.sink.split

if.end107.sink.split:                             ; preds = %if.then104, %if.end95.if.end107.sink.split_crit_edge
  %sub105.sink = phi i64 [ %sub105, %if.then104 ], [ 0, %if.end95.if.end107.sink.split_crit_edge ]
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub105.sink, ptr %len, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %if.else99.if.end107_crit_edge
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool108.not = icmp eq i64 %37, 0
  %. = select i1 %tobool108.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %lor.lhs.false77.cleanup_crit_edge, %lor.lhs.false70.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %lor.lhs.false44.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %ext4_is_quota_file.exit165.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ], [ -16, %ext4_is_quota_file.exit165.cleanup_crit_edge ], [ -95, %if.end32.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ -22, %lor.lhs.false44.cleanup_crit_edge ], [ -22, %if.end42.cleanup_crit_edge ], [ -22, %if.end49.cleanup_crit_edge ], [ -22, %lor.lhs.false77.cleanup_crit_edge ], [ -22, %lor.lhs.false70.cleanup_crit_edge ], [ -22, %if.end64.cleanup_crit_edge ], [ %., %if.end107 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_next_allocated_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @move_extent_per_page(ptr nocapture noundef readonly %o_filp, ptr noundef %donor_inode, i32 noundef %orig_page_offset, i32 noundef %donor_page_offset, i32 noundef %data_offset_in_page, i32 noundef %block_len_in_page, i32 noundef %unwritten, ptr noundef %err) unnamed_addr #0 align 64 {
entry:
  %arr.i = alloca [8 x ptr], align 4
  %pagep = alloca [2 x ptr], align 8
  %err2 = alloca i32, align 4
  %retries = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %o_filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pagep) #7
  %2 = ptrtoint ptr %pagep to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pagep, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err2) #7
  %7 = ptrtoint ptr %err2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retries) #7
  %8 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %retries, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %10 to i32
  %shl = shl i32 %data_offset_in_page, %conv
  %shr = lshr i32 4096, %conv
  %mul10 = mul i32 %shr, %orig_page_offset
  %add = add i32 %mul10, %data_offset_in_page
  %mul11 = mul i32 %shr, %donor_page_offset
  %add12 = add i32 %mul11, %data_offset_in_page
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %sub22 = add i32 %6, -1
  %cmp.i6 = icmp ult ptr %1, %donor_inode
  %first.second.i = select i1 %cmp.i6, ptr %1, ptr %donor_inode
  %second.first.i = select i1 %cmp.i6, ptr %donor_inode, ptr %1
  %i_data_sem4.i = getelementptr i8, ptr %first.second.i, i32 -96
  %i_data_sem6.i = getelementptr i8, ptr %second.first.i, i32 -96
  %arrayidx63 = getelementptr inbounds [2 x ptr], ptr %pagep, i32 0, i32 1
  %i_data_sem.i10 = getelementptr i8, ptr %1, i32 -96
  %i_data_sem2.i11 = getelementptr i8, ptr %donor_inode, i32 -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_offset_in_page)
  %cmp137162 = icmp sgt i32 %data_offset_in_page, 0
  %conv170 = zext i32 %orig_page_offset to i64
  %shl171 = shl nuw nsw i64 %conv170, 12
  %jinode.i = getelementptr i8, ptr %1, i32 784
  %conv206 = zext i32 %add to i64
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  br label %again

again:                                            ; preds = %again.backedge, %entry
  %unwritten.addr.0 = phi i32 [ %unwritten, %entry ], [ %unwritten.addr.4, %again.backedge ]
  %block_len_in_page.addr.0 = phi i32 [ %block_len_in_page, %entry ], [ %block_len_in_page.addr.3, %again.backedge ]
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %err, align 4
  %call4 = call i32 @ext4_writepage_trans_blocks(ptr noundef %1) #7
  %mul = shl i32 %call4, 1
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %17, 3
  %call.i = call ptr @__ext4_journal_start_sb(ptr noundef %13, i32 noundef 272, i32 noundef 9, i32 noundef %mul, i32 noundef 0, i32 noundef %mul.i.i) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call.i to i32
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %again
  %add13 = add i32 %block_len_in_page.addr.0, -1
  %sub = add i32 %add13, %add
  %conv14 = zext i32 %sub to i64
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %sub15 = add i64 %21, -1
  %22 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %23 to i64
  %shr18 = ashr i64 %sub15, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr18, i64 %conv14)
  %cmp = icmp eq i64 %shr18, %conv14
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = trunc i64 %21 to i32
  %conv24 = and i32 %sub22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24)
  %cmp25 = icmp eq i32 %conv24, 0
  %spec.select = select i1 %cmp25, i32 %6, i32 %conv24
  %conv31 = zext i8 %23 to i32
  %shl32 = shl i32 %add13, %conv31
  %add33 = add i32 %spec.select, %shl32
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i8 %23 to i32
  %shl36 = shl i32 %block_len_in_page.addr.0, %conv17
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then20
  %data_size.0 = phi i32 [ %add33, %if.then20 ], [ %shl36, %if.else ]
  %call38 = call fastcc i32 @mext_page_double_lock(ptr noundef %1, ptr noundef %donor_inode, i32 noundef %orig_page_offset, i32 noundef %donor_page_offset, ptr noundef nonnull %pagep)
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call38, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.stop_journal_crit_edge, label %if.end43, !prof !31

if.end37.stop_journal_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_journal

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unwritten.addr.0)
  %tobool44.not = icmp eq i32 %unwritten.addr.0, 0
  br i1 %tobool44.not, label %if.end43.data_copy_crit_edge, label %if.then45

if.end43.data_copy_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %data_copy

if.then45:                                        ; preds = %if.end43
  call void @down_write(ptr noundef %i_data_sem4.i) #7
  call void @down_write_nested(ptr noundef %i_data_sem6.i, i32 noundef 1) #7
  %call46 = call fastcc i32 @mext_check_coverage(ptr noundef %1, i32 noundef %add, i32 noundef %block_len_in_page.addr.0, ptr noundef %err)
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  br i1 %tobool47.not, label %if.end49, label %if.then45.drop_data_sem_crit_edge

if.then45.drop_data_sem_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_data_sem

if.end49:                                         ; preds = %if.then45
  %call50 = call fastcc i32 @mext_check_coverage(ptr noundef %donor_inode, i32 noundef %add12, i32 noundef %block_len_in_page.addr.0, ptr noundef %err)
  %and51 = and i32 %call50, %call46
  %28 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool52.not = icmp eq i32 %29, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.drop_data_sem_crit_edge

if.end49.drop_data_sem_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_data_sem

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool55.not = icmp eq i32 %and51, 0
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @up_write(ptr noundef %i_data_sem.i10) #7
  call void @up_write(ptr noundef %i_data_sem2.i11) #7
  br label %data_copy

if.end57:                                         ; preds = %if.end54
  %30 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pagep, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %and.i = and i32 %33, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end57.lor.lhs.false_crit_edge, label %land.lhs.true

if.end57.lor.lhs.false_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end57
  %call61 = call i32 @try_to_release_page(ptr noundef %31, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.if.then70_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true.if.then70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end57.lor.lhs.false_crit_edge
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx63, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %and.i7 = and i32 %37, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.i8.not = icmp eq i32 %and.i7, 0
  br i1 %tobool.i8.not, label %lor.lhs.false.if.end71_crit_edge, label %land.lhs.true66

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true66:                                  ; preds = %lor.lhs.false
  %call68 = call i32 @try_to_release_page(ptr noundef %35, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true66.if.then70_crit_edge, label %land.lhs.true66.if.end71_crit_edge

land.lhs.true66.if.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true66.if.then70_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

if.then70:                                        ; preds = %land.lhs.true66.if.then70_crit_edge, %land.lhs.true.if.then70_crit_edge
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -16, ptr %err, align 4
  br label %drop_data_sem

if.end71:                                         ; preds = %land.lhs.true66.if.end71_crit_edge, %lor.lhs.false.if.end71_crit_edge
  %call72 = call i32 @ext4_swap_extents(ptr noundef %call.i, ptr noundef %1, ptr noundef %donor_inode, i32 noundef %add, i32 noundef %add12, i32 noundef %block_len_in_page.addr.0, i32 noundef 1, ptr noundef %err) #7
  br label %drop_data_sem

drop_data_sem:                                    ; preds = %if.end71, %if.then70, %if.end49.drop_data_sem_crit_edge, %if.then45.drop_data_sem_crit_edge
  %unwritten.addr.1 = phi i32 [ %call46, %if.then45.drop_data_sem_crit_edge ], [ %and51, %if.end49.drop_data_sem_crit_edge ], [ %and51, %if.end71 ], [ %and51, %if.then70 ]
  call void @up_write(ptr noundef %i_data_sem.i10) #7
  call void @up_write(ptr noundef %i_data_sem2.i11) #7
  br label %unlock_pages

data_copy:                                        ; preds = %if.then56, %if.end43.data_copy_crit_edge
  %39 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pagep, align 8
  %add75 = add i32 %data_size.0, %shl
  %mapping.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mapping.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arr.i) #7
  %45 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %46 = call ptr @memset(ptr %arr.i, i32 255, i32 32)
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %45, align 4
  %and.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !32

if.then.i.i.i:                                    ; preds = %data_copy
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %48, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %data_copy
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %49, %if.end.i.i.i ]
  %50 = inttoptr i32 %retval.0.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.not.i.i = icmp eq i32 %52, -1
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %45, align 4
  %and.i16.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %do.end10.i.i, !prof !31

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !32

if.then.i19.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i.i = add i32 %54, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %55, %if.end.i20.i.i ]
  %56 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !32

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i.i = add i32 %54, -1
  br label %PageLocked.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %40 to i32
  br label %PageLocked.exit.i

PageLocked.exit.i:                                ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %57, %if.end.i27.i.i ]
  %58 = inttoptr i32 %retval.0.i28.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %and1.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !31

do.body4.i:                                       ; preds = %PageLocked.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #7, !srcloc !34
  unreachable

do.body10.i:                                      ; preds = %PageLocked.exit.i
  %61 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %45, align 4
  %and.i.i183.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i183.i)
  %tobool.not.i.i184.i = icmp eq i32 %and.i.i183.i, 0
  br i1 %tobool.not.i.i184.i, label %if.end.i.i187.i, label %if.then.i.i186.i, !prof !32

if.then.i.i186.i:                                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i185.i = add i32 %62, -1
  br label %_compound_head.exit.i192.i

if.end.i.i187.i:                                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i192.i

_compound_head.exit.i192.i:                       ; preds = %if.end.i.i187.i, %if.then.i.i186.i
  %retval.0.i.i188.i = phi i32 [ %sub.i.i185.i, %if.then.i.i186.i ], [ %63, %if.end.i.i187.i ]
  %64 = inttoptr i32 %retval.0.i.i188.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp.i.not.i189.i = icmp eq i32 %66, -1
  %67 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %45, align 4
  %and.i16.i190.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i190.i)
  %tobool.not.i17.i191.i = icmp eq i32 %and.i16.i190.i, 0
  br i1 %cmp.i.not.i189.i, label %if.then.i193.i, label %do.end10.i199.i, !prof !31

if.then.i193.i:                                   ; preds = %_compound_head.exit.i192.i
  br i1 %tobool.not.i17.i191.i, label %if.end.i20.i196.i, label %if.then.i19.i195.i, !prof !32

if.then.i19.i195.i:                               ; preds = %if.then.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i194.i = add i32 %68, -1
  br label %_compound_head.exit22.i198.i

if.end.i20.i196.i:                                ; preds = %if.then.i193.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit22.i198.i

_compound_head.exit22.i198.i:                     ; preds = %if.end.i20.i196.i, %if.then.i19.i195.i
  %retval.0.i21.i197.i = phi i32 [ %sub.i18.i194.i, %if.then.i19.i195.i ], [ %69, %if.end.i20.i196.i ]
  %70 = inttoptr i32 %retval.0.i21.i197.i to ptr
  call void @dump_page(ptr noundef %70, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

do.end10.i199.i:                                  ; preds = %_compound_head.exit.i192.i
  br i1 %tobool.not.i17.i191.i, label %if.end.i27.i202.i, label %if.then.i26.i201.i, !prof !32

if.then.i26.i201.i:                               ; preds = %do.end10.i199.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i200.i = add i32 %68, -1
  br label %PageWriteback.exit.i

if.end.i27.i202.i:                                ; preds = %do.end10.i199.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %40 to i32
  br label %PageWriteback.exit.i

PageWriteback.exit.i:                             ; preds = %if.end.i27.i202.i, %if.then.i26.i201.i
  %retval.0.i28.i203.i = phi i32 [ %sub.i25.i200.i, %if.then.i26.i201.i ], [ %71, %if.end.i27.i202.i ]
  %72 = inttoptr i32 %retval.0.i28.i203.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool12.not.i = icmp eq i32 %75, 0
  br i1 %tobool12.not.i, label %do.end28.i, label %do.body20.i, !prof !32

do.body20.i:                                      ; preds = %PageWriteback.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end28.i:                                       ; preds = %PageWriteback.exit.i
  %76 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %45, align 4
  %and.i.i232.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i232.i)
  %tobool.not.i.i233.i = icmp eq i32 %and.i.i232.i, 0
  br i1 %tobool.not.i.i233.i, label %if.end.i.i236.i, label %if.then.i.i235.i, !prof !32

if.then.i.i235.i:                                 ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i234.i = add i32 %77, -1
  br label %_compound_head.exit.i240.i

if.end.i.i236.i:                                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i240.i

_compound_head.exit.i240.i:                       ; preds = %if.end.i.i236.i, %if.then.i.i235.i
  %retval.0.i.i237.i = phi i32 [ %sub.i.i234.i, %if.then.i.i235.i ], [ %78, %if.end.i.i236.i ]
  %79 = inttoptr i32 %retval.0.i.i237.i to ptr
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and.i.i.i.i238.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i238.i)
  %tobool.not.i.i.i239.i = icmp eq i32 %and.i.i.i.i238.i, 0
  br i1 %tobool.not.i.i.i239.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i241.i, !prof !32

if.then.i.i.i241.i:                               ; preds = %_compound_head.exit.i240.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = inttoptr i32 %retval.0.i.i237.i to ptr
  call void @dump_page(ptr noundef %83, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i240.i
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %79, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i.i, label %if.end32.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  br label %if.end79

if.end32.i:                                       ; preds = %folio_flags.exit.i.i.i
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 20
  %87 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %88 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %89 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp.i.not.i205.i = icmp eq i32 %90, -1
  br i1 %cmp.i.not.i205.i, label %if.then.i206.i, label %PagePrivate.exit.i, !prof !31

if.then.i206.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.8) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end32.i
  %91 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %40, align 4
  %93 = and i32 %92, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool35.not.i = icmp eq i32 %93, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %PagePrivate.exit.i.do.body38.i_crit_edge

PagePrivate.exit.i.do.body38.i_crit_edge:         ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38.i

if.then36.i:                                      ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @create_empty_buffers(ptr noundef %40, i32 noundef %shl.i.i, i32 noundef 0) #7
  br label %do.body38.i

do.body38.i:                                      ; preds = %if.then36.i, %PagePrivate.exit.i.do.body38.i_crit_edge
  %94 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i.not.i209.i = icmp eq i32 %95, -1
  br i1 %cmp.i.not.i209.i, label %if.then.i210.i, label %PagePrivate.exit213.i, !prof !31

if.then.i210.i:                                   ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.8) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

PagePrivate.exit213.i:                            ; preds = %do.body38.i
  %96 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %40, align 4
  %98 = and i32 %97, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool40.not.i = icmp eq i32 %98, 0
  br i1 %tobool40.not.i, label %do.body50.i, label %do.end58.i, !prof !31

do.body50.i:                                      ; preds = %PagePrivate.exit213.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 184, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

do.end58.i:                                       ; preds = %PagePrivate.exit213.i
  %private.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1, i32 0, i32 3
  %99 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %private.i, align 4
  %101 = inttoptr i32 %100 to ptr
  %index.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1, i32 0, i32 2
  %102 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %103 to i64
  %104 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i_blkbits.i.i, align 2
  %conv59.i = zext i8 %105 to i32
  %sub.i = sub nsw i32 12, %conv59.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end58.i
  %partial.0257.i = phi i32 [ 0, %do.end58.i ], [ %partial.1.i, %for.inc.i.for.body.i_crit_edge ]
  %nr.0255.i = phi i32 [ 0, %do.end58.i ], [ %nr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %block_start.0254.i = phi i32 [ 0, %do.end58.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %bh.0251.i = phi ptr [ %101, %do.end58.i ], [ %132, %for.inc.i.for.body.i_crit_edge ]
  %block.0248.i = phi i64 [ %shl.i, %do.end58.i ], [ %inc109.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add i32 %block_start.0254.i, %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shl)
  %cmp64.not.i = icmp ugt i32 %add.i, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0254.i, i32 %add75)
  %cmp66.not.i = icmp ult i32 %block_start.0254.i, %add75
  %or.cond182.i = and i1 %cmp66.not.i, %cmp64.not.i
  %106 = ptrtoint ptr %bh.0251.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %bh.0251.i, align 4
  %and1.i.i215.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i215.i)
  %tobool75.not.i = icmp eq i32 %and1.i.i215.i, 0
  br i1 %or.cond182.i, label %if.end73.i, label %if.then68.i

if.then68.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select.i = select i1 %tobool75.not.i, i32 1, i32 %partial.0257.i
  br label %for.inc.i

if.end73.i:                                       ; preds = %for.body.i
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end73.i.for.inc.i_crit_edge

if.end73.i.for.inc.i_crit_edge:                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end77.i:                                       ; preds = %if.end73.i
  %108 = ptrtoint ptr %bh.0251.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %bh.0251.i, align 4
  %110 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool79.not.i = icmp eq i32 %110, 0
  br i1 %tobool79.not.i, label %if.then80.i, label %if.end77.i.do.body90.i_crit_edge

if.end77.i.do.body90.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90.i

if.then80.i:                                      ; preds = %if.end77.i
  %call81.i = call i32 @ext4_get_block(ptr noundef %44, i64 noundef %block.0248.i, ptr noundef %bh.0251.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then80.i
  %111 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %45, align 4
  %and.i.i218.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i218.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i218.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %if.then.i219.i, !prof !32

if.then.i219.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.7) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.body7.i.i:                                     ; preds = %if.then83.i
  %113 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %45, align 4
  %and.i31.i.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i220.i = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i220.i, label %if.end.i.i223.i, label %if.then.i.i222.i, !prof !32

if.then.i.i222.i:                                 ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i221.i = add i32 %114, -1
  br label %_compound_head.exit.i226.i

if.end.i.i223.i:                                  ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i226.i

_compound_head.exit.i226.i:                       ; preds = %if.end.i.i223.i, %if.then.i.i222.i
  %retval.0.i.i224.i = phi i32 [ %sub.i.i221.i, %if.then.i.i222.i ], [ %115, %if.end.i.i223.i ]
  %116 = inttoptr i32 %retval.0.i.i224.i to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i.not.i225.i = icmp eq i32 %118, -1
  %119 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %45, align 4
  %and.i32.i.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i225.i, label %if.then17.i.i, label %do.end24.i.i, !prof !31

if.then17.i.i:                                    ; preds = %_compound_head.exit.i226.i
  br i1 %tobool.not.i33.i.i, label %if.end.i36.i.i, label %if.then.i35.i.i, !prof !32

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i34.i.i = add i32 %120, -1
  br label %_compound_head.exit38.i.i

if.end.i36.i.i:                                   ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.end.i36.i.i, %if.then.i35.i.i
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %121, %if.end.i36.i.i ]
  %122 = inttoptr i32 %retval.0.i37.i.i to ptr
  call void @dump_page(ptr noundef %122, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i226.i
  br i1 %tobool.not.i33.i.i, label %if.end.i43.i.i, label %if.then.i42.i.i, !prof !32

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i41.i.i = add i32 %120, -1
  br label %SetPageError.exit.i

if.end.i43.i.i:                                   ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %40 to i32
  br label %SetPageError.exit.i

SetPageError.exit.i:                              ; preds = %if.end.i43.i.i, %if.then.i42.i.i
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %123, %if.end.i43.i.i ]
  %124 = inttoptr i32 %retval.0.i44.i.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %124) #7
  br label %mext_page_mkuptodate.exit

if.end84.i:                                       ; preds = %if.then80.i
  %125 = ptrtoint ptr %bh.0251.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %bh.0251.i, align 4
  %127 = and i32 %126, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool86.not.i = icmp eq i32 %127, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %if.end84.i.do.body90.i_crit_edge

if.end84.i.do.body90.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90.i

if.then87.i:                                      ; preds = %if.end84.i
  call void @zero_user_segments(ptr noundef %40, i32 noundef %block_start.0254.i, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #7
  %128 = ptrtoint ptr %bh.0251.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %bh.0251.i, align 4
  %and1.i.i229.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i229.i)
  %tobool.not.i230.i = icmp eq i32 %and1.i.i229.i, 0
  br i1 %tobool.not.i230.i, label %if.then.i231.i, label %if.then87.i.for.inc.i_crit_edge

if.then87.i.for.inc.i_crit_edge:                  ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i231.i:                                   ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0251.i) #7
  br label %for.inc.i

do.body90.i:                                      ; preds = %if.end84.i.do.body90.i_crit_edge, %if.end77.i.do.body90.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %nr.0255.i)
  %cmp91.i = icmp ugt i32 %nr.0255.i, 7
  br i1 %cmp91.i, label %do.body100.i, label %do.end108.i, !prof !31

do.body100.i:                                     ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

do.end108.i:                                      ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add nuw nsw i32 %nr.0255.i, 1
  %arrayidx.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %nr.0255.i
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %bh.0251.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end108.i, %if.then.i231.i, %if.then87.i.for.inc.i_crit_edge, %if.end73.i.for.inc.i_crit_edge, %if.then68.i
  %nr.1.i = phi i32 [ %nr.0255.i, %if.end73.i.for.inc.i_crit_edge ], [ %inc.i, %do.end108.i ], [ %nr.0255.i, %if.then68.i ], [ %nr.0255.i, %if.then87.i.for.inc.i_crit_edge ], [ %nr.0255.i, %if.then.i231.i ]
  %partial.1.i = phi i32 [ %partial.0257.i, %if.end73.i.for.inc.i_crit_edge ], [ %partial.0257.i, %do.end108.i ], [ %spec.select.i, %if.then68.i ], [ %partial.0257.i, %if.then87.i.for.inc.i_crit_edge ], [ %partial.0257.i, %if.then.i231.i ]
  %inc109.i = add i64 %block.0248.i, 1
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0251.i, i32 0, i32 1
  %131 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp ne ptr %132, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool61.not.i = icmp eq i32 %add.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool61.not.i
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.1.i)
  %cmp114259.i = icmp sgt i32 %nr.1.i, 0
  br i1 %cmp114259.i, label %for.end.i.for.body116.i_crit_edge, label %for.end.i.out.i_crit_edge

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.end.i.for.body116.i_crit_edge:                ; preds = %for.end.i
  br label %for.body116.i

for.body116.i:                                    ; preds = %for.inc126.i.for.body116.i_crit_edge, %for.end.i.for.body116.i_crit_edge
  %i.0260.i = phi i32 [ %inc127.i, %for.inc126.i.for.body116.i_crit_edge ], [ 0, %for.end.i.for.body116.i_crit_edge ]
  %arrayidx117.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %i.0260.i
  %133 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx117.i, align 4
  %call118.i = call i32 @bh_uptodate_or_lock(ptr noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.then120.i, label %for.body116.i.for.inc126.i_crit_edge

for.body116.i.for.inc126.i_crit_edge:             ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc126.i

if.then120.i:                                     ; preds = %for.body116.i
  %call121.i = call i32 @ext4_read_bh(ptr noundef %134, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %if.then120.i.for.inc126.i_crit_edge, label %if.then120.i.mext_page_mkuptodate.exit_crit_edge

if.then120.i.mext_page_mkuptodate.exit_crit_edge: ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mext_page_mkuptodate.exit

if.then120.i.for.inc126.i_crit_edge:              ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc126.i

for.inc126.i:                                     ; preds = %if.then120.i.for.inc126.i_crit_edge, %for.body116.i.for.inc126.i_crit_edge
  %inc127.i = add nuw nsw i32 %i.0260.i, 1
  %exitcond.not.i = icmp eq i32 %inc127.i, %nr.1.i
  br i1 %exitcond.not.i, label %for.inc126.i.out.i_crit_edge, label %for.inc126.i.for.body116.i_crit_edge

for.inc126.i.for.body116.i_crit_edge:             ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body116.i

for.inc126.i.out.i_crit_edge:                     ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.i:                                            ; preds = %for.inc126.i.out.i_crit_edge, %for.end.i.out.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %partial.1.i)
  %tobool129.not.i = icmp eq i32 %partial.1.i, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %out.i.if.end79_crit_edge

out.i.if.end79_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then130.i:                                     ; preds = %out.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  %135 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !32

if.then.i.i.i.i:                                  ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 2, ptr noundef %40) #7
  br label %if.end79

mext_page_mkuptodate.exit:                        ; preds = %if.then120.i.mext_page_mkuptodate.exit_crit_edge, %SetPageError.exit.i
  %retval.0.i = phi i32 [ %call81.i, %SetPageError.exit.i ], [ %call121.i, %if.then120.i.mext_page_mkuptodate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arr.i) #7
  %137 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %retval.0.i, ptr %err, align 4
  br label %unlock_pages

if.end79:                                         ; preds = %SetPageUptodate.exit.i, %out.i.if.end79_crit_edge, %PageUptodate.exit.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arr.i) #7
  %138 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %err, align 4
  %139 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %40, align 4
  %and.i12 = and i32 %140, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.i13.not = icmp eq i32 %and.i12, 0
  br i1 %tobool.i13.not, label %if.end79.lor.lhs.false87_crit_edge, label %land.lhs.true83

if.end79.lor.lhs.false87_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false87

land.lhs.true83:                                  ; preds = %if.end79
  %call85 = call i32 @try_to_release_page(ptr noundef %40, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true83.if.then95_crit_edge, label %land.lhs.true83.lor.lhs.false87_crit_edge

land.lhs.true83.lor.lhs.false87_crit_edge:        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false87

land.lhs.true83.if.then95_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

lor.lhs.false87:                                  ; preds = %land.lhs.true83.lor.lhs.false87_crit_edge, %if.end79.lor.lhs.false87_crit_edge
  %141 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx63, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %and.i15 = and i32 %144, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.i16.not = icmp eq i32 %and.i15, 0
  br i1 %tobool.i16.not, label %lor.lhs.false87.if.end96_crit_edge, label %land.lhs.true91

lor.lhs.false87.if.end96_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

land.lhs.true91:                                  ; preds = %lor.lhs.false87
  %call93 = call i32 @try_to_release_page(ptr noundef %142, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true91.if.then95_crit_edge, label %land.lhs.true91.if.end96_crit_edge

land.lhs.true91.if.end96_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

land.lhs.true91.if.then95_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

if.then95:                                        ; preds = %land.lhs.true91.if.then95_crit_edge, %land.lhs.true83.if.then95_crit_edge
  %145 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -16, ptr %err, align 4
  br label %unlock_pages

if.end96:                                         ; preds = %land.lhs.true91.if.end96_crit_edge, %lor.lhs.false87.if.end96_crit_edge
  call void @down_write(ptr noundef %i_data_sem4.i) #7
  call void @down_write_nested(ptr noundef %i_data_sem6.i, i32 noundef 1) #7
  %call97 = call i32 @ext4_swap_extents(ptr noundef %call.i, ptr noundef %1, ptr noundef %donor_inode, i32 noundef %add, i32 noundef %add12, i32 noundef %block_len_in_page.addr.0, i32 noundef 1, ptr noundef %err) #7
  call void @up_write(ptr noundef %i_data_sem.i10) #7
  call void @up_write(ptr noundef %i_data_sem2.i11) #7
  %146 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool98.not = icmp eq i32 %147, 0
  br i1 %tobool98.not, label %if.end96.if.end107_crit_edge, label %if.then99

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool100.not = icmp eq i32 %call97, 0
  br i1 %tobool100.not, label %if.then99.unlock_pages_crit_edge, label %if.then101

if.then99.unlock_pages_crit_edge:                 ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_pages

if.then101:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %i_blkbits, align 2
  %conv103 = zext i8 %149 to i32
  %shl104 = shl i32 %call97, %conv103
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %if.end96.if.end107_crit_edge
  %block_len_in_page.addr.1 = phi i32 [ %call97, %if.then101 ], [ %block_len_in_page.addr.0, %if.end96.if.end107_crit_edge ]
  %replaced_size.0 = phi i32 [ %shl104, %if.then101 ], [ %data_size.0, %if.end96.if.end107_crit_edge ]
  %150 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.i.not.i = icmp eq i32 %151, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !31

if.then.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.8) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

PagePrivate.exit:                                 ; preds = %if.end107
  %152 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %40, align 4
  %154 = and i32 %153, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool110.not = icmp eq i32 %154, 0
  br i1 %tobool110.not, label %if.then111, label %PagePrivate.exit.do.body_crit_edge

PagePrivate.exit.do.body_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then111:                                       ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %i_blkbits, align 2
  %conv114 = zext i8 %156 to i32
  %shl115 = shl nuw i32 1, %conv114
  call void @create_empty_buffers(ptr noundef %40, i32 noundef %shl115, i32 noundef 0) #7
  br label %do.body

do.body:                                          ; preds = %if.then111, %PagePrivate.exit.do.body_crit_edge
  %157 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pagep, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %cmp.i.not.i1 = icmp eq i32 %160, -1
  br i1 %cmp.i.not.i1, label %if.then.i2, label %PagePrivate.exit5, !prof !31

if.then.i2:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %158, ptr noundef nonnull @.str.8) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

PagePrivate.exit5:                                ; preds = %do.body
  %161 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %158, align 4
  %163 = and i32 %162, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool119.not = icmp eq i32 %163, 0
  br i1 %tobool119.not, label %do.body129, label %do.end135, !prof !31

do.body129:                                       ; preds = %PagePrivate.exit5
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

do.end135:                                        ; preds = %PagePrivate.exit5
  %private = getelementptr inbounds %struct.page, ptr %158, i32 0, i32 1, i32 0, i32 3
  %164 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %private, align 4
  %166 = inttoptr i32 %165 to ptr
  br i1 %cmp137162, label %do.end135.for.body_crit_edge, label %do.end135.for.cond139.preheader_crit_edge

do.end135.for.cond139.preheader_crit_edge:        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond139.preheader

do.end135.for.body_crit_edge:                     ; preds = %do.end135
  br label %for.body

for.cond139.preheader:                            ; preds = %for.body.for.cond139.preheader_crit_edge, %do.end135.for.cond139.preheader_crit_edge
  %bh.0.lcssa = phi ptr [ %166, %do.end135.for.cond139.preheader_crit_edge ], [ %168, %for.body.for.cond139.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_len_in_page.addr.1)
  %cmp140165 = icmp sgt i32 %block_len_in_page.addr.1, 0
  br i1 %cmp140165, label %for.cond139.preheader.for.body142_crit_edge, label %for.cond139.preheader.for.end153_crit_edge

for.cond139.preheader.for.end153_crit_edge:       ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end153

for.cond139.preheader.for.body142_crit_edge:      ; preds = %for.cond139.preheader
  br label %for.body142

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end135.for.body_crit_edge
  %bh.0164 = phi ptr [ %168, %for.body.for.body_crit_edge ], [ %166, %do.end135.for.body_crit_edge ]
  %i.0163 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end135.for.body_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0164, i32 0, i32 1
  %167 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %b_this_page, align 4
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %data_offset_in_page
  br i1 %exitcond.not, label %for.body.for.cond139.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond139.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond139.preheader

for.body142:                                      ; preds = %if.end149.for.body142_crit_edge, %for.cond139.preheader.for.body142_crit_edge
  %bh.1167 = phi ptr [ %171, %if.end149.for.body142_crit_edge ], [ %bh.0.lcssa, %for.cond139.preheader.for.body142_crit_edge ]
  %i.1166 = phi i32 [ %inc152, %if.end149.for.body142_crit_edge ], [ 0, %for.cond139.preheader.for.body142_crit_edge ]
  %add143 = add i32 %i.1166, %add
  %conv144 = zext i32 %add143 to i64
  %call145 = call i32 @ext4_get_block(ptr noundef %1, i64 noundef %conv144, ptr noundef %bh.1167, i32 noundef 0) #7
  %169 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call145, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %for.body142.repair_branches_crit_edge, label %if.end149

for.body142.repair_branches_crit_edge:            ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #9
  br label %repair_branches

if.end149:                                        ; preds = %for.body142
  %b_this_page150 = getelementptr inbounds %struct.buffer_head, ptr %bh.1167, i32 0, i32 1
  %170 = ptrtoint ptr %b_this_page150 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %b_this_page150, align 4
  %inc152 = add nuw nsw i32 %i.1166, 1
  %exitcond269.not = icmp eq i32 %inc152, %block_len_in_page.addr.1
  br i1 %exitcond269.not, label %if.end149.for.end153_crit_edge, label %if.end149.for.body142_crit_edge

if.end149.for.body142_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body142

if.end149.for.end153_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end153

for.end153:                                       ; preds = %if.end149.for.end153_crit_edge, %for.cond139.preheader.for.end153_crit_edge
  %172 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool154.not = icmp eq i32 %.pr, 0
  br i1 %tobool154.not, label %if.then155, label %for.end153.if.end159_crit_edge

for.end153.if.end159_crit_edge:                   ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then155:                                       ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #9
  %add157 = add i32 %replaced_size.0, %shl
  %call158 = call i32 @block_commit_write(ptr noundef %158, i32 noundef %shl, i32 noundef %add157) #7
  %173 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call158, ptr %err, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %for.end153.if.end159_crit_edge
  %174 = phi i32 [ %call158, %if.then155 ], [ %.pr, %for.end153.if.end159_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp160 = icmp slt i32 %174, 0
  br i1 %cmp160, label %if.end159.repair_branches_crit_edge, label %if.end169, !prof !31

if.end159.repair_branches_crit_edge:              ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %repair_branches

if.end169:                                        ; preds = %if.end159
  %cmp.i.not.i25 = icmp ult ptr %call.i, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i25, label %if.end169.ext4_jbd2_inode_add_write.exit_crit_edge, label %if.then.i26

if.end169.ext4_jbd2_inode_add_write.exit_crit_edge: ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_jbd2_inode_add_write.exit

if.then.i26:                                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  %conv172 = zext i32 %replaced_size.0 to i64
  %175 = ptrtoint ptr %jinode.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %jinode.i, align 8
  %call2.i = call i32 @jbd2_journal_inode_ranged_write(ptr noundef %call.i, ptr noundef %176, i64 noundef %shl171, i64 noundef %conv172) #7
  br label %ext4_jbd2_inode_add_write.exit

ext4_jbd2_inode_add_write.exit:                   ; preds = %if.then.i26, %if.end169.ext4_jbd2_inode_add_write.exit_crit_edge
  %retval.0.i27 = phi i32 [ %call2.i, %if.then.i26 ], [ 0, %if.end169.ext4_jbd2_inode_add_write.exit_crit_edge ]
  %177 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %retval.0.i27, ptr %err, align 4
  br label %unlock_pages

unlock_pages:                                     ; preds = %if.then205, %repair_branches.unlock_pages_crit_edge, %ext4_jbd2_inode_add_write.exit, %if.then99.unlock_pages_crit_edge, %if.then95, %mext_page_mkuptodate.exit, %drop_data_sem
  %unwritten.addr.3 = phi i32 [ %unwritten.addr.1, %drop_data_sem ], [ 0, %mext_page_mkuptodate.exit ], [ 0, %ext4_jbd2_inode_add_write.exit ], [ 0, %if.then99.unlock_pages_crit_edge ], [ 0, %if.then95 ], [ 0, %if.then205 ], [ 0, %repair_branches.unlock_pages_crit_edge ]
  %block_len_in_page.addr.2 = phi i32 [ %block_len_in_page.addr.0, %drop_data_sem ], [ %block_len_in_page.addr.0, %mext_page_mkuptodate.exit ], [ %block_len_in_page.addr.1, %ext4_jbd2_inode_add_write.exit ], [ %block_len_in_page.addr.0, %if.then99.unlock_pages_crit_edge ], [ %block_len_in_page.addr.0, %if.then95 ], [ %block_len_in_page.addr.1, %if.then205 ], [ %block_len_in_page.addr.1, %repair_branches.unlock_pages_crit_edge ]
  %178 = ptrtoint ptr %pagep to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pagep, align 8
  call void @unlock_page(ptr noundef %179) #7
  %180 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %and.i.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i, label %if.then.i.i29, !prof !32

if.then.i.i29:                                    ; preds = %unlock_pages
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %182, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %unlock_pages
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %179 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i29
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i29 ], [ %183, %if.end.i.i ]
  %184 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %184, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %185 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i.i.i = icmp eq i32 %186, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i30, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i30:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %187, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %188 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %188, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@move_extent_per_page, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !50

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %184, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %184) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %189 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx63, align 4
  call void @unlock_page(ptr noundef %190) #7
  %191 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %191, align 4
  %and.i.i31 = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.end.i.i35, label %if.then.i.i34, !prof !32

if.then.i.i34:                                    ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i33 = add i32 %193, -1
  br label %_compound_head.exit.i40

if.end.i.i35:                                     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %190 to i32
  br label %_compound_head.exit.i40

_compound_head.exit.i40:                          ; preds = %if.end.i.i35, %if.then.i.i34
  %retval.0.i.i36 = phi i32 [ %sub.i.i33, %if.then.i.i34 ], [ %194, %if.end.i.i35 ]
  %195 = inttoptr i32 %retval.0.i.i36 to ptr
  %_refcount.i.i.i.i.i37 = getelementptr inbounds %struct.page, ptr %195, i32 0, i32 3
  %call.i.i.i.i.i.i.i38 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i37, i32 noundef 4) #7
  %196 = ptrtoint ptr %_refcount.i.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %_refcount.i.i.i.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.i.i.i.i39 = icmp eq i32 %197, 0
  br i1 %cmp.i.i.i.i39, label %if.then.i.i.i.i41, label %do.end5.i.i.i.i45, !prof !31

if.then.i.i.i.i41:                                ; preds = %_compound_head.exit.i40
  call void @__sanitizer_cov_trace_pc() #9
  %198 = inttoptr i32 %retval.0.i.i36 to ptr
  call void @dump_page(ptr noundef %198, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.end5.i.i.i.i45:                                ; preds = %_compound_head.exit.i40
  %call.i.i.i10.i.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i37, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i37, i32 1, i32 3, i32 1) #7
  %199 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i37, ptr %_refcount.i.i.i.i.i37, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i37) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i.i43 = extractvalue { i32, i32 } %199, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i.i.i.i44 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i43, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@move_extent_per_page, %if.then.i.i.i.i.i47)) #7
          to label %folio_put_testzero.exit.i.i48 [label %if.then.i.i.i.i.i47], !srcloc !50

if.then.i.i.i.i.i47:                              ; preds = %do.end5.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i46 = zext i1 %cmp.i.i.i.i.i.i.i44 to i32
  call void @__page_ref_mod_and_test(ptr noundef %195, i32 noundef -1, i32 noundef %conv.i.i.i.i.i46) #7
  br label %folio_put_testzero.exit.i.i48

folio_put_testzero.exit.i.i48:                    ; preds = %if.then.i.i.i.i.i47, %do.end5.i.i.i.i45
  br i1 %cmp.i.i.i.i.i.i.i44, label %if.then.i4.i49, label %folio_put_testzero.exit.i.i48.stop_journal_crit_edge

folio_put_testzero.exit.i.i48.stop_journal_crit_edge: ; preds = %folio_put_testzero.exit.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_journal

if.then.i4.i49:                                   ; preds = %folio_put_testzero.exit.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %195) #7
  br label %stop_journal

stop_journal:                                     ; preds = %if.then.i4.i49, %folio_put_testzero.exit.i.i48.stop_journal_crit_edge, %if.end37.stop_journal_crit_edge
  %unwritten.addr.4 = phi i32 [ %unwritten.addr.0, %if.end37.stop_journal_crit_edge ], [ %unwritten.addr.3, %folio_put_testzero.exit.i.i48.stop_journal_crit_edge ], [ %unwritten.addr.3, %if.then.i4.i49 ]
  %block_len_in_page.addr.3 = phi i32 [ %block_len_in_page.addr.0, %if.end37.stop_journal_crit_edge ], [ %block_len_in_page.addr.2, %folio_put_testzero.exit.i.i48.stop_journal_crit_edge ], [ %block_len_in_page.addr.2, %if.then.i4.i49 ]
  %call178 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.move_extent_per_page, i32 noundef 402, ptr noundef %call.i) #7
  %200 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %201)
  %cmp179 = icmp eq i32 %201, -28
  br i1 %cmp179, label %land.lhs.true181, label %stop_journal.if.end185_crit_edge

stop_journal.if.end185_crit_edge:                 ; preds = %stop_journal
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

land.lhs.true181:                                 ; preds = %stop_journal
  %call182 = call i32 @ext4_should_retry_alloc(ptr noundef %4, ptr noundef nonnull %retries) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185thread-pre-split, label %land.lhs.true181.again.backedge_crit_edge

land.lhs.true181.again.backedge_crit_edge:        ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

again.backedge:                                   ; preds = %land.lhs.true195.again.backedge_crit_edge, %land.lhs.true181.again.backedge_crit_edge
  br label %again

if.end185thread-pre-split:                        ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  %202 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pr58 = load i32, ptr %err, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.end185thread-pre-split, %stop_journal.if.end185_crit_edge
  %203 = phi i32 [ %.pr58, %if.end185thread-pre-split ], [ %201, %stop_journal.if.end185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %203)
  %cmp186 = icmp eq i32 %203, -16
  br i1 %cmp186, label %land.lhs.true188, label %if.end185.cleanup_crit_edge

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true188:                                 ; preds = %if.end185
  %204 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %retries, align 4
  %inc189 = add i32 %205, 1
  store i32 %inc189, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %205)
  %cmp190 = icmp slt i32 %205, 4
  br i1 %cmp190, label %land.lhs.true192, label %land.lhs.true188.cleanup_crit_edge

land.lhs.true188.cleanup_crit_edge:               ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true192:                                 ; preds = %land.lhs.true188
  %206 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.ext4_sb_info, ptr %207, i32 0, i32 47
  %208 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %s_journal, align 8
  %tobool194.not = icmp eq ptr %209, null
  br i1 %tobool194.not, label %land.lhs.true192.cleanup_crit_edge, label %land.lhs.true195

land.lhs.true192.cleanup_crit_edge:               ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true195:                                 ; preds = %land.lhs.true192
  %call198 = call i32 @jbd2_journal_force_commit_nested(ptr noundef nonnull %209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %land.lhs.true195.cleanup_crit_edge, label %land.lhs.true195.again.backedge_crit_edge

land.lhs.true195.again.backedge_crit_edge:        ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

land.lhs.true195.cleanup_crit_edge:               ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

repair_branches:                                  ; preds = %if.end159.repair_branches_crit_edge, %for.body142.repair_branches_crit_edge
  call void @ext4_double_down_write_data_sem(ptr noundef %1, ptr noundef %donor_inode)
  %call202 = call i32 @ext4_swap_extents(ptr noundef %call.i, ptr noundef %donor_inode, ptr noundef %1, i32 noundef %add, i32 noundef %add12, i32 noundef %block_len_in_page.addr.1, i32 noundef 0, ptr noundef nonnull %err2) #7
  call void @up_write(ptr noundef %i_data_sem.i10) #7
  call void @up_write(ptr noundef %i_data_sem2.i11) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call202, i32 %block_len_in_page.addr.1)
  %cmp203.not = icmp eq i32 %call202, %block_len_in_page.addr.1
  br i1 %cmp203.not, label %repair_branches.unlock_pages_crit_edge, label %if.then205

repair_branches.unlock_pages_crit_edge:           ; preds = %repair_branches
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock_pages

if.then205:                                       ; preds = %repair_branches
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.move_extent_per_page, i32 noundef 427, i64 noundef %conv206, i32 noundef 5, ptr noundef nonnull @.str.3) #7
  %210 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -5, ptr %err, align 4
  br label %unlock_pages

cleanup:                                          ; preds = %land.lhs.true195.cleanup_crit_edge, %land.lhs.true192.cleanup_crit_edge, %land.lhs.true188.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retries) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pagep) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !51
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %1 = tail call ptr @llvm.returnaddress(i32 0) #7
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call ptr @llvm.returnaddress(i32 0) #7
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #7
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !31

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !53
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !55
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mext_page_double_lock(ptr noundef readonly %inode1, ptr noundef readonly %inode2, i32 noundef %index1, i32 noundef %index2, ptr nocapture noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode1, null
  %tobool1.not = icmp eq ptr %inode2, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !31

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

do.end10:                                         ; preds = %entry
  %cmp = icmp ult ptr %inode1, %inode2
  %inode2.inode1 = select i1 %cmp, ptr %inode2, ptr %inode1
  %inode1.inode2 = select i1 %cmp, ptr %inode1, ptr %inode2
  %index1.index2 = select i1 %cmp, i32 %index1, i32 %index2
  %mapping.sroa.0.0.in = getelementptr inbounds %struct.inode, ptr %inode1.inode2, i32 0, i32 9
  %0 = ptrtoint ptr %mapping.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mapping.sroa.0.0 = load ptr, ptr %mapping.sroa.0.0.in, align 8
  %mapping.sroa.6.0.in = getelementptr inbounds %struct.inode, ptr %inode2.inode1, i32 0, i32 9
  %1 = ptrtoint ptr %mapping.sroa.6.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %mapping.sroa.6.0 = load ptr, ptr %mapping.sroa.6.0.in, align 8
  %call = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping.sroa.0.0, i32 noundef %index1.index2, i32 noundef 2) #7
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %page, align 4
  %tobool25.not = icmp eq ptr %call, null
  br i1 %tobool25.not, label %do.end10.cleanup_crit_edge, label %if.end27

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %do.end10
  %index2.index1 = select i1 %cmp, i32 %index2, i32 %index1
  %call29 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping.sroa.6.0, i32 noundef %index2.index1, i32 noundef 2) #7
  %arrayidx30 = getelementptr ptr, ptr %page, i32 1
  %3 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call29, ptr %arrayidx30, align 4
  %tobool32.not = icmp eq ptr %call29, null
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  br i1 %tobool32.not, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end27
  tail call void @unlock_page(ptr noundef %5) #7
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !32

if.then.i.i:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.9) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mext_page_double_lock, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !50

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %12) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  tail call void @wait_on_page_writeback(ptr noundef %5) #7
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx30, align 4
  tail call void @wait_on_page_writeback(ptr noundef %17) #7
  %cmp39 = icmp ugt ptr %inode1, %inode2
  br i1 %cmp39, label %do.body41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page, align 4
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  store ptr %21, ptr %page, align 4
  store ptr %19, ptr %arrayidx30, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %if.end36.cleanup_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end10.cleanup_crit_edge ], [ 0, %do.body41 ], [ 0, %if.end36.cleanup_crit_edge ], [ -12, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -12, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mext_check_coverage(ptr noundef %inode, i32 noundef %from, i32 noundef %count, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  %path = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #7
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %path, align 4
  %add = add i32 %count, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from)
  %cmp10 = icmp ugt i32 %add, %from
  br i1 %cmp10, label %while.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %eh_depth.i.i = getelementptr i8, ptr %inode, i32 -458
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %from.addr.011 = phi i32 [ %from, %while.body.lr.ph ], [ %add7, %if.end5.while.body_crit_edge ]
  %call.i = call ptr @ext4_find_extent(ptr noundef %inode, i32 noundef %from.addr.011, ptr noundef nonnull %path, i32 noundef 1073741824) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_ext_path.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %1 = ptrtoint ptr %eh_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %eh_depth.i.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #7
  %idxprom.i = zext i16 %3 to i32
  %p_ext.i = getelementptr %struct.ext4_ext_path, ptr %call.i, i32 %idxprom.i, i32 3
  %4 = ptrtoint ptr %p_ext.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_ext.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %get_ext_path.exit.thread6, label %get_ext_path.exit.thread

get_ext_path.exit.thread6:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ext4_ext_drop_refs(ptr noundef %call.i) #7
  call void @kfree(ptr noundef %call.i) #7
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %path, align 4
  br label %out.sink.split

get_ext_path.exit.thread:                         ; preds = %if.end.i
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %path, align 4
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err, align 4
  %9 = ptrtoint ptr %eh_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %eh_depth.i.i, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #7
  %idxprom = zext i16 %11 to i32
  %p_ext = getelementptr %struct.ext4_ext_path, ptr %call.i, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %p_ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_ext, align 4
  %ee_len.i = getelementptr inbounds %struct.ext4_extent, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ee_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ee_len.i, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp.i1 = icmp ugt i16 %16, -32768
  br i1 %cmp.i1, label %if.end5, label %get_ext_path.exit.thread.out_crit_edge

get_ext_path.exit.thread.out_crit_edge:           ; preds = %get_ext_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

get_ext_path.exit:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i to i32
  br label %out.sink.split

if.end5:                                          ; preds = %get_ext_path.exit.thread
  %conv.i = zext i16 %16 to i32
  %sub.i = add i32 %from.addr.011, -32768
  %add7 = add i32 %sub.i, %conv.i
  call void @ext4_ext_drop_refs(ptr noundef %call.i) #7
  %cmp = icmp ult i32 %add7, %add
  br i1 %cmp, label %if.end5.while.body_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out.sink.split:                                   ; preds = %get_ext_path.exit, %get_ext_path.exit.thread6
  %.sink = phi i32 [ %17, %get_ext_path.exit ], [ -61, %get_ext_path.exit.thread6 ]
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %err, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end5.out_crit_edge, %get_ext_path.exit.thread.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %entry.out_crit_edge ], [ 0, %out.sink.split ], [ 0, %get_ext_path.exit.thread.out_crit_edge ], [ 1, %if.end5.out_crit_edge ]
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  call void @ext4_ext_drop_refs(ptr noundef %20) #7
  %21 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %path, align 4
  call void @kfree(ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_swap_extents(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit_nested(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/move_extent.c", i32 591, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/move_extent.c", i32 597, i32 3}
!5 = !{ptr @__func__.move_extent_per_page, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/move_extent.c", i32 402, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/move_extent.c", i32 425, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/mm.h", i32 717, i32 2}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2150587733, i64 2150588224, i64 2150587770, i64 2150587826, i64 2150587860, i64 2150587884, i64 2150587925, i64 2150587946, i64 2150587974, i64 2150588008}
!34 = !{i64 2155121267, i64 2155121753, i64 2155121304, i64 2155121360, i64 2155121394, i64 2155121418, i64 2155121459, i64 2155121480, i64 2155121508, i64 2155121542}
!35 = !{i64 2151096154, i64 2151096645, i64 2151096191, i64 2151096247, i64 2151096281, i64 2151096305, i64 2151096346, i64 2151096367, i64 2151096395, i64 2151096429}
!36 = !{i64 2155122867, i64 2155123353, i64 2155122904, i64 2155122960, i64 2155122994, i64 2155123018, i64 2155123059, i64 2155123080, i64 2155123108, i64 2155123142}
!37 = !{i64 2150580300, i64 2150580791, i64 2150580337, i64 2150580393, i64 2150580427, i64 2150580451, i64 2150580492, i64 2150580513, i64 2150580541, i64 2150580575}
!38 = !{i64 2151330192}
!39 = !{i64 2151039006, i64 2151039497, i64 2151039043, i64 2151039099, i64 2151039133, i64 2151039157, i64 2151039198, i64 2151039219, i64 2151039247, i64 2151039281}
!40 = !{i64 2155124599, i64 2155125085, i64 2155124636, i64 2155124692, i64 2155124726, i64 2155124750, i64 2155124791, i64 2155124812, i64 2155124840, i64 2155124874}
!41 = !{i64 2150641890, i64 2150642063, i64 2150642078, i64 2150642130, i64 2150642189, i64 2150642213, i64 2150642254, i64 2150642275, i64 2150642303, i64 2150642335}
!42 = !{i64 2150642765, i64 2150642938, i64 2150642953, i64 2150643005, i64 2150643064, i64 2150643088, i64 2150643129, i64 2150643150, i64 2150643178, i64 2150643210}
!43 = !{i64 2155126329, i64 2155126815, i64 2155126366, i64 2155126422, i64 2155126456, i64 2155126480, i64 2155126521, i64 2155126542, i64 2155126570, i64 2155126604}
!44 = !{i64 2151331263}
!45 = !{i64 2155128419, i64 2155128905, i64 2155128456, i64 2155128512, i64 2155128546, i64 2155128570, i64 2155128611, i64 2155128632, i64 2155128660, i64 2155128694}
!46 = !{i64 2153316668, i64 2153317151, i64 2153316705, i64 2153316761, i64 2153316795, i64 2153316819, i64 2153316860, i64 2153316881, i64 2153316909, i64 2153316943}
!47 = !{i64 2148760031}
!48 = !{i64 2148674740, i64 2148674772, i64 2148674801, i64 2148674835, i64 2148674866, i64 2148674889}
!49 = !{i64 2148760260}
!50 = !{i64 2148496153, i64 2148496158, i64 2148496171, i64 2148496215, i64 2148496249, i64 2148496270}
!51 = !{i64 1076235, i64 1076296}
!52 = !{i64 1078967}
!53 = !{i64 1079252}
!54 = !{i64 2152514386}
!55 = !{i64 2152514228}
!56 = !{i64 2152514556}
!57 = !{i64 2150100370}
!58 = !{i64 2155119384, i64 2155119870, i64 2155119421, i64 2155119477, i64 2155119511, i64 2155119535, i64 2155119576, i64 2155119597, i64 2155119625, i64 2155119659}
