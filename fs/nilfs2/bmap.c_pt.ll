; ModuleID = '/llk/IR_all_yes/fs/nilfs2/bmap.c_pt.bc'
source_filename = "../fs/nilfs2/bmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nilfs_bmap = type { %union.anon.82, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon.82 = type { [7 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_bmap_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.nilfs_bmap_store = type { [7 x i64], i64, i64, i32 }

@__func__.nilfs_bmap_lookup_at_level = private unnamed_addr constant [27 x i8] c"nilfs_bmap_lookup_at_level\00", align 1
@__func__.nilfs_bmap_lookup_contig = private unnamed_addr constant [25 x i8] c"nilfs_bmap_lookup_contig\00", align 1
@__func__.nilfs_bmap_insert = private unnamed_addr constant [18 x i8] c"nilfs_bmap_insert\00", align 1
@__func__.nilfs_bmap_seek_key = private unnamed_addr constant [20 x i8] c"nilfs_bmap_seek_key\00", align 1
@__func__.nilfs_bmap_last_key = private unnamed_addr constant [20 x i8] c"nilfs_bmap_last_key\00", align 1
@__func__.nilfs_bmap_delete = private unnamed_addr constant [18 x i8] c"nilfs_bmap_delete\00", align 1
@__func__.nilfs_bmap_truncate = private unnamed_addr constant [20 x i8] c"nilfs_bmap_truncate\00", align 1
@__func__.nilfs_bmap_propagate = private unnamed_addr constant [21 x i8] c"nilfs_bmap_propagate\00", align 1
@__func__.nilfs_bmap_assign = private unnamed_addr constant [18 x i8] c"nilfs_bmap_assign\00", align 1
@__func__.nilfs_bmap_mark = private unnamed_addr constant [16 x i8] c"nilfs_bmap_mark\00", align 1
@nilfs_bmap_read.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bmap->b_sem\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&nilfs_bmap_dat_lock_key\00", [39 x i8] zeroinitializer }, align 32
@nilfs_bmap_dat_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&nilfs_bmap_mdt_lock_key\00", [39 x i8] zeroinitializer }, align 32
@nilfs_bmap_mdt_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nilfs_bmap_init_gc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"broken bmap (inode number=%lu)\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 503, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 511, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"nilfs_bmap_dat_lock_key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 481, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 518, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"nilfs_bmap_mdt_lock_key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 482, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 555, i32 2 }
@___asan_gen_.29 = private constant [20 x i8] c"../fs/nilfs2/bmap.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 36, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 260, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 452, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nilfs_bmap_read.__key, ptr @.str, ptr @.str.1, ptr @nilfs_bmap_dat_lock_key, ptr @.str.2, ptr @nilfs_bmap_mdt_lock_key, ptr @nilfs_bmap_init_gc.__key, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_bmap_read.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_bmap_dat_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_bmap_mdt_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_bmap_init_gc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nilfs_bmap_get_dat(ptr nocapture noundef readonly %bmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %0 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_dat, align 4
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_lookup_at_level(ptr noundef %bmap, i64 noundef %key, i32 noundef %level, ptr noundef %ptrp) local_unnamed_addr #2 align 64 {
entry:
  %blocknr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #7
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blocknr, align 8, !annotation !50
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_read(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %1 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call i32 %4(ptr noundef %bmap, i64 noundef %key, i32 noundef %level, ptr noundef %ptrp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %5 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %8, ptr noundef nonnull @__func__.nilfs_bmap_lookup_at_level, ptr noundef nonnull @.str.3, i32 noundef %10) #7
  br label %out

if.end:                                           ; preds = %entry
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %11 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp sgt i32 %12, 0
  br i1 %cmp2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.end
  %b_inode.i21 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %13 = ptrtoint ptr %b_inode.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_inode.i21, align 8
  %i_sb.i22 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i22, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %18, i32 0, i32 29
  %19 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns_dat.i, align 4
  %21 = ptrtoint ptr %ptrp to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ptrp, align 8
  %call5 = call i32 @nilfs_dat_translate(ptr noundef %20, i64 noundef %22, ptr noundef nonnull %blocknr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.then3.out_crit_edge

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %blocknr, align 8
  %25 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %ptrp, align 8
  br label %out

out:                                              ; preds = %if.then6, %if.then3.out_crit_edge, %if.end.out_crit_edge, %if.then.i, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then3.out_crit_edge ], [ 0, %if.then6 ], [ %call, %if.end.out_crit_edge ], [ -5, %if.then.i ], [ %call, %if.then.out_crit_edge ]
  call void @up_read(ptr noundef %b_sem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_translate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_lookup_contig(ptr noundef %bmap, i64 noundef %key, ptr noundef %ptrp, i32 noundef %maxblocks) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_read(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_lookup_contig = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bop_lookup_contig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_lookup_contig, align 4
  %call = tail call i32 %3(ptr noundef %bmap, i64 noundef %key, ptr noundef %ptrp, i32 noundef %maxblocks) #7
  tail call void @up_read(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_bmap_convert_error.exit_crit_edge

entry.nilfs_bmap_convert_error.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %4 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %7, ptr noundef nonnull @__func__.nilfs_bmap_lookup_contig, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i, %entry.nilfs_bmap_convert_error.exit_crit_edge
  %err.addr.0.i = phi i32 [ -5, %if.then.i ], [ %call, %entry.nilfs_bmap_convert_error.exit_crit_edge ]
  ret i32 %err.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_insert(ptr noundef %bmap, i64 noundef %key, i32 noundef %rec) local_unnamed_addr #2 align 64 {
entry:
  %keys.i = alloca [6 x i64], align 8
  %ptrs.i = alloca [6 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %conv = zext i32 %rec to i64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %keys.i) #7
  %0 = call ptr @memset(ptr %keys.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptrs.i) #7
  %b_ops.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %1 = call ptr @memset(ptr %ptrs.i, i32 255, i32 48)
  %2 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_ops.i, align 4
  %bop_check_insert.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %bop_check_insert.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bop_check_insert.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %entry.if.end22.i_crit_edge, label %if.then.i

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %bmap, i64 noundef %key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp sgt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %6 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_ops.i, align 4
  %bop_gather_data.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %bop_gather_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bop_gather_data.i, align 4
  %call7.i = call i32 %9(ptr noundef %bmap, ptr noundef nonnull %keys.i, ptr noundef nonnull %ptrs.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then4.i.nilfs_bmap_do_insert.exit_crit_edge, label %if.end.i

if.then4.i.nilfs_bmap_do_insert.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_insert.exit

if.end.i:                                         ; preds = %if.then4.i
  %call12.i = call i32 @nilfs_btree_convert_and_insert(ptr noundef %bmap, i64 noundef %key, i64 noundef %conv, ptr noundef nonnull %keys.i, ptr noundef nonnull %ptrs.i, i32 noundef %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %nilfs_bmap_do_insert.exit.thread, label %if.end.i.nilfs_bmap_do_insert.exit_crit_edge

if.end.i.nilfs_bmap_do_insert.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_insert.exit

nilfs_bmap_do_insert.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bmap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmap, align 8
  %12 = or i8 %11, 1
  store i8 %12, ptr %bmap, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptrs.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %keys.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  br label %nilfs_bmap_convert_error.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  br i1 %cmp17.i, label %if.else.i.nilfs_bmap_do_insert.exit_crit_edge, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else.i.nilfs_bmap_do_insert.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_insert.exit

if.end22.i:                                       ; preds = %if.else.i.if.end22.i_crit_edge, %entry.if.end22.i_crit_edge
  %13 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_ops.i, align 4
  %bop_insert.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bop_insert.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bop_insert.i, align 4
  %call24.i = tail call i32 %16(ptr noundef %bmap, i64 noundef %key, i64 noundef %conv) #7
  br label %nilfs_bmap_do_insert.exit

nilfs_bmap_do_insert.exit:                        ; preds = %if.end22.i, %if.else.i.nilfs_bmap_do_insert.exit_crit_edge, %if.end.i.nilfs_bmap_do_insert.exit_crit_edge, %if.then4.i.nilfs_bmap_do_insert.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end22.i ], [ %call7.i, %if.then4.i.nilfs_bmap_do_insert.exit_crit_edge ], [ %call12.i, %if.end.i.nilfs_bmap_do_insert.exit_crit_edge ], [ %call.i, %if.else.i.nilfs_bmap_do_insert.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptrs.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %keys.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -22
  br i1 %cmp.i, label %if.then.i6, label %nilfs_bmap_do_insert.exit.nilfs_bmap_convert_error.exit_crit_edge

nilfs_bmap_do_insert.exit.nilfs_bmap_convert_error.exit_crit_edge: ; preds = %nilfs_bmap_do_insert.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i6:                                       ; preds = %nilfs_bmap_do_insert.exit
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %17 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %20, ptr noundef nonnull @__func__.nilfs_bmap_insert, ptr noundef nonnull @.str.3, i32 noundef %22) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i6, %nilfs_bmap_do_insert.exit.nilfs_bmap_convert_error.exit_crit_edge, %nilfs_bmap_do_insert.exit.thread
  %err.addr.0.i = phi i32 [ -5, %if.then.i6 ], [ %retval.0.i, %nilfs_bmap_do_insert.exit.nilfs_bmap_convert_error.exit_crit_edge ], [ 0, %nilfs_bmap_do_insert.exit.thread ]
  ret i32 %err.addr.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_seek_key(ptr noundef %bmap, i64 noundef %start, ptr noundef %keyp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_read(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_seek_key = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %bop_seek_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_seek_key, align 4
  %call = tail call i32 %3(ptr noundef %bmap, i64 noundef %start, ptr noundef %keyp) #7
  tail call void @up_read(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %4 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %7, ptr noundef nonnull @__func__.nilfs_bmap_seek_key, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ -5, %if.then.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_last_key(ptr noundef %bmap, ptr noundef %keyp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_read(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_last_key = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bop_last_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_last_key, align 4
  %call = tail call i32 %3(ptr noundef %bmap, ptr noundef %keyp) #7
  tail call void @up_read(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %4 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %7, ptr noundef nonnull @__func__.nilfs_bmap_last_key, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ -5, %if.then.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_delete(ptr noundef %bmap, i64 noundef %key) local_unnamed_addr #2 align 64 {
entry:
  %keys.i = alloca [4 x i64], align 8
  %ptrs.i = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %keys.i) #7
  %0 = call ptr @memset(ptr %keys.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptrs.i) #7
  %b_ops.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %1 = call ptr @memset(ptr %ptrs.i, i32 255, i32 32)
  %2 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_ops.i, align 4
  %bop_check_delete.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bop_check_delete.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bop_check_delete.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %entry.if.end22.i_crit_edge, label %if.then.i

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %bmap, i64 noundef %key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp sgt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  %6 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_ops.i, align 4
  %bop_gather_data.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %bop_gather_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bop_gather_data.i, align 4
  %call7.i = call i32 %9(ptr noundef %bmap, ptr noundef nonnull %keys.i, ptr noundef nonnull %ptrs.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then4.i.nilfs_bmap_do_delete.exit_crit_edge, label %if.end.i

if.then4.i.nilfs_bmap_do_delete.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit

if.end.i:                                         ; preds = %if.then4.i
  %call12.i = call i32 @nilfs_direct_delete_and_convert(ptr noundef %bmap, i64 noundef %key, ptr noundef nonnull %keys.i, ptr noundef nonnull %ptrs.i, i32 noundef %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.i, label %nilfs_bmap_do_delete.exit.thread, label %if.end.i.nilfs_bmap_do_delete.exit_crit_edge

if.end.i.nilfs_bmap_do_delete.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit

nilfs_bmap_do_delete.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bmap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmap, align 8
  %12 = and i8 %11, -2
  store i8 %12, ptr %bmap, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptrs.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  br label %nilfs_bmap_convert_error.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  br i1 %cmp17.i, label %if.else.i.nilfs_bmap_do_delete.exit_crit_edge, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else.i.nilfs_bmap_do_delete.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit

if.end22.i:                                       ; preds = %if.else.i.if.end22.i_crit_edge, %entry.if.end22.i_crit_edge
  %13 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_ops.i, align 4
  %bop_delete.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bop_delete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bop_delete.i, align 4
  %call24.i = tail call i32 %16(ptr noundef %bmap, i64 noundef %key) #7
  br label %nilfs_bmap_do_delete.exit

nilfs_bmap_do_delete.exit:                        ; preds = %if.end22.i, %if.else.i.nilfs_bmap_do_delete.exit_crit_edge, %if.end.i.nilfs_bmap_do_delete.exit_crit_edge, %if.then4.i.nilfs_bmap_do_delete.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end22.i ], [ %call7.i, %if.then4.i.nilfs_bmap_do_delete.exit_crit_edge ], [ %call12.i, %if.end.i.nilfs_bmap_do_delete.exit_crit_edge ], [ %call.i, %if.else.i.nilfs_bmap_do_delete.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptrs.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -22
  br i1 %cmp.i, label %if.then.i6, label %nilfs_bmap_do_delete.exit.nilfs_bmap_convert_error.exit_crit_edge

nilfs_bmap_do_delete.exit.nilfs_bmap_convert_error.exit_crit_edge: ; preds = %nilfs_bmap_do_delete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i6:                                       ; preds = %nilfs_bmap_do_delete.exit
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %17 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %20, ptr noundef nonnull @__func__.nilfs_bmap_delete, ptr noundef nonnull @.str.3, i32 noundef %22) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i6, %nilfs_bmap_do_delete.exit.nilfs_bmap_convert_error.exit_crit_edge, %nilfs_bmap_do_delete.exit.thread
  %err.addr.0.i = phi i32 [ -5, %if.then.i6 ], [ %retval.0.i, %nilfs_bmap_do_delete.exit.nilfs_bmap_convert_error.exit_crit_edge ], [ 0, %nilfs_bmap_do_delete.exit.thread ]
  ret i32 %err.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_truncate(ptr noundef %bmap, i64 noundef %key) local_unnamed_addr #2 align 64 {
entry:
  %keys.i.i = alloca [4 x i64], align 8
  %ptrs.i.i = alloca [4 x i64], align 8
  %lastkey.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastkey.i) #7
  %0 = ptrtoint ptr %lastkey.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lastkey.i, align 8, !annotation !50
  %b_ops.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %1 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_ops.i, align 4
  %bop_last_key.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %bop_last_key.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bop_last_key.i, align 4
  %call.i = call i32 %4(ptr noundef %bmap, ptr noundef nonnull %lastkey.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, -2
  br i1 %cmp1.i, label %if.then.i.nilfs_bmap_do_truncate.exit.thread_crit_edge, label %if.then.i.nilfs_bmap_do_truncate.exit_crit_edge

if.then.i.nilfs_bmap_do_truncate.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit

if.then.i.nilfs_bmap_do_truncate.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit.thread

while.cond.i:                                     ; preds = %if.end8.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %5 = ptrtoint ptr %lastkey.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lastkey.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %key)
  %cmp4.not.i = icmp ult i64 %6, %key
  br i1 %cmp4.not.i, label %while.cond.i.nilfs_bmap_do_truncate.exit.thread_crit_edge, label %while.body.i

while.cond.i.nilfs_bmap_do_truncate.exit.thread_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit.thread

while.body.i:                                     ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %keys.i.i) #7
  %7 = call ptr @memset(ptr %keys.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ptrs.i.i) #7
  %8 = call ptr @memset(ptr %ptrs.i.i, i32 255, i32 32)
  %9 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_ops.i, align 4
  %bop_check_delete.i.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %bop_check_delete.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bop_check_delete.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, null
  br i1 %cmp.not.i.i, label %while.body.i.if.end22.i.i_crit_edge, label %if.then.i.i

while.body.i.if.end22.i.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then.i.i:                                      ; preds = %while.body.i
  %call.i.i = call i32 %12(ptr noundef %bmap, i64 noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %13 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_ops.i, align 4
  %bop_gather_data.i.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %bop_gather_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bop_gather_data.i.i, align 4
  %call7.i.i = call i32 %16(ptr noundef %bmap, ptr noundef nonnull %keys.i.i, ptr noundef nonnull %ptrs.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %if.then4.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge, label %if.end.i.i

if.then4.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit.thread.i

if.end.i.i:                                       ; preds = %if.then4.i.i
  %call12.i.i = call i32 @nilfs_direct_delete_and_convert(ptr noundef %bmap, i64 noundef %6, ptr noundef nonnull %keys.i.i, ptr noundef nonnull %ptrs.i.i, i32 noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %nilfs_bmap_do_delete.exit.thread33.i, label %if.end.i.i.nilfs_bmap_do_delete.exit.i_crit_edge

if.end.i.i.nilfs_bmap_do_delete.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit.i

nilfs_bmap_do_delete.exit.thread33.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %bmap to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmap, align 8
  %19 = and i8 %18, -2
  store i8 %19, ptr %bmap, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptrs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys.i.i) #7
  br label %if.end8.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp17.i.i, label %if.else.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge, label %if.else.i.i.if.end22.i.i_crit_edge

if.else.i.i.if.end22.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.else.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_delete.exit.thread.i

if.end22.i.i:                                     ; preds = %if.else.i.i.if.end22.i.i_crit_edge, %while.body.i.if.end22.i.i_crit_edge
  %20 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_ops.i, align 4
  %bop_delete.i.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %bop_delete.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bop_delete.i.i, align 4
  %call24.i.i = call i32 %23(ptr noundef %bmap, i64 noundef %6) #7
  br label %nilfs_bmap_do_delete.exit.i

nilfs_bmap_do_delete.exit.thread.i:               ; preds = %if.else.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge, %if.then4.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.else.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge ], [ %call7.i.i, %if.then4.i.i.nilfs_bmap_do_delete.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptrs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys.i.i) #7
  br label %nilfs_bmap_do_truncate.exit

nilfs_bmap_do_delete.exit.i:                      ; preds = %if.end22.i.i, %if.end.i.i.nilfs_bmap_do_delete.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call24.i.i, %if.end22.i.i ], [ %call12.i.i, %if.end.i.i.nilfs_bmap_do_delete.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ptrs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %keys.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp6.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp6.i, label %nilfs_bmap_do_delete.exit.i.nilfs_bmap_do_truncate.exit_crit_edge, label %nilfs_bmap_do_delete.exit.i.if.end8.i_crit_edge

nilfs_bmap_do_delete.exit.i.if.end8.i_crit_edge:  ; preds = %nilfs_bmap_do_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

nilfs_bmap_do_delete.exit.i.nilfs_bmap_do_truncate.exit_crit_edge: ; preds = %nilfs_bmap_do_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit

if.end8.i:                                        ; preds = %nilfs_bmap_do_delete.exit.i.if.end8.i_crit_edge, %nilfs_bmap_do_delete.exit.thread33.i
  %24 = ptrtoint ptr %b_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_ops.i, align 4
  %bop_last_key10.i = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %bop_last_key10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bop_last_key10.i, align 4
  %call11.i = call i32 %27(ptr noundef %bmap, ptr noundef nonnull %lastkey.i) #7
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.end8.i.while.cond.i_crit_edge

if.end8.i.while.cond.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call11.i)
  %cmp14.i = icmp eq i32 %call11.i, -2
  br i1 %cmp14.i, label %if.then13.i.nilfs_bmap_do_truncate.exit.thread_crit_edge, label %if.then13.i.nilfs_bmap_do_truncate.exit_crit_edge

if.then13.i.nilfs_bmap_do_truncate.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit

if.then13.i.nilfs_bmap_do_truncate.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_do_truncate.exit.thread

nilfs_bmap_do_truncate.exit.thread:               ; preds = %if.then13.i.nilfs_bmap_do_truncate.exit.thread_crit_edge, %while.cond.i.nilfs_bmap_do_truncate.exit.thread_crit_edge, %if.then.i.nilfs_bmap_do_truncate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastkey.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_do_truncate.exit:                      ; preds = %if.then13.i.nilfs_bmap_do_truncate.exit_crit_edge, %nilfs_bmap_do_delete.exit.i.nilfs_bmap_do_truncate.exit_crit_edge, %nilfs_bmap_do_delete.exit.thread.i, %if.then.i.nilfs_bmap_do_truncate.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i.nilfs_bmap_do_truncate.exit_crit_edge ], [ %call11.i, %if.then13.i.nilfs_bmap_do_truncate.exit_crit_edge ], [ %retval.0.i.ph.i, %nilfs_bmap_do_delete.exit.thread.i ], [ %retval.0.i.i, %nilfs_bmap_do_delete.exit.i.nilfs_bmap_do_truncate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastkey.i) #7
  call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %retval.0.i)
  %cmp.i6 = icmp eq i32 %retval.0.i, -22
  br i1 %cmp.i6, label %if.then.i7, label %nilfs_bmap_do_truncate.exit.nilfs_bmap_convert_error.exit_crit_edge

nilfs_bmap_do_truncate.exit.nilfs_bmap_convert_error.exit_crit_edge: ; preds = %nilfs_bmap_do_truncate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i7:                                       ; preds = %nilfs_bmap_do_truncate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %28 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %31, ptr noundef nonnull @__func__.nilfs_bmap_truncate, ptr noundef nonnull @.str.3, i32 noundef %33) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i7, %nilfs_bmap_do_truncate.exit.nilfs_bmap_convert_error.exit_crit_edge, %nilfs_bmap_do_truncate.exit.thread
  %err.addr.0.i = phi i32 [ -5, %if.then.i7 ], [ %retval.0.i, %nilfs_bmap_do_truncate.exit.nilfs_bmap_convert_error.exit_crit_edge ], [ 0, %nilfs_bmap_do_truncate.exit.thread ]
  ret i32 %err.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_bmap_clear(ptr noundef %bmap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_clear = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bop_clear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_clear, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %bmap) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %b_sem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_propagate(ptr noundef %bmap, ptr noundef %bh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_propagate = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bop_propagate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_propagate, align 4
  %call = tail call i32 %3(ptr noundef %bmap, ptr noundef %bh) #7
  tail call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_bmap_convert_error.exit_crit_edge

entry.nilfs_bmap_convert_error.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %4 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %7, ptr noundef nonnull @__func__.nilfs_bmap_propagate, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i, %entry.nilfs_bmap_convert_error.exit_crit_edge
  %err.addr.0.i = phi i32 [ -5, %if.then.i ], [ %call, %entry.nilfs_bmap_convert_error.exit_crit_edge ]
  ret i32 %err.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_bmap_lookup_dirty_buffers(ptr noundef %bmap, ptr noundef %listp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_lookup_dirty_buffers = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bop_lookup_dirty_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_lookup_dirty_buffers, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %bmap, ptr noundef %listp) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_assign(ptr noundef %bmap, ptr noundef %bh, i32 noundef %blocknr, ptr noundef %binfo) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_assign = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bop_assign to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_assign, align 4
  %conv = zext i32 %blocknr to i64
  %call = tail call i32 %3(ptr noundef %bmap, ptr noundef %bh, i64 noundef %conv, ptr noundef %binfo) #7
  tail call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %entry.nilfs_bmap_convert_error.exit_crit_edge

entry.nilfs_bmap_convert_error.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_bmap_convert_error.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %4 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %7, ptr noundef nonnull @__func__.nilfs_bmap_assign, ptr noundef nonnull @.str.3, i32 noundef %9) #7
  br label %nilfs_bmap_convert_error.exit

nilfs_bmap_convert_error.exit:                    ; preds = %if.then.i, %entry.nilfs_bmap_convert_error.exit_crit_edge
  %err.addr.0.i = phi i32 [ -5, %if.then.i ], [ %call, %entry.nilfs_bmap_convert_error.exit_crit_edge ]
  ret i32 %err.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_mark(ptr noundef %bmap, i64 noundef %key, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_mark = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bop_mark to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_mark, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_ops, align 4
  %bop_mark2 = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %bop_mark2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bop_mark2, align 4
  %call = tail call i32 %7(ptr noundef %bmap, i64 noundef %key, i32 noundef %level) #7
  tail call void @up_write(ptr noundef %b_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp.i = icmp eq i32 %call, -22
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %8 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %11, ptr noundef nonnull @__func__.nilfs_bmap_mark, ptr noundef nonnull @.str.3, i32 noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %if.then.i ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_test_and_clear_dirty(ptr noundef %bmap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %b_state.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %0 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_state.i, align 4
  %and.i = and i32 %1, 1
  %and.i6 = and i32 %1, -2
  store i32 %and.i6, ptr %b_state.i, align 4
  tail call void @up_write(ptr noundef %b_sem) #7
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nilfs_bmap_data_get_key(ptr nocapture noundef readonly %bmap, ptr noundef readonly %bh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !51

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %4, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %5, %if.end.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.4) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !51

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.4) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %6, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i20, !prof !51

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i20:                                      ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @__page_file_index(ptr noundef %1) #7
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i20
  %retval.0.i = phi i32 [ %call2.i, %if.then.i20 ], [ %19, %if.end.i ]
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %20 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_inode, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_blkbits, align 2
  %24 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_page, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !53

if.then.i:                                        ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

PagePrivate.exit:                                 ; preds = %page_index.exit
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %25, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %do.body7, label %do.end12, !prof !53

do.body7:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #7, !srcloc !55
  unreachable

do.end12:                                         ; preds = %PagePrivate.exit
  %conv = zext i8 %23 to i32
  %sub = sub nsw i32 12, %conv
  %shl = shl i32 %retval.0.i, %sub
  %conv1 = zext i32 %shl to i64
  %private = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %private, align 4
  %33 = inttoptr i32 %32 to ptr
  %cmp.not21 = icmp eq ptr %33, %bh
  br i1 %cmp.not21, label %do.end12.for.end_crit_edge, label %do.end12.for.body_crit_edge

do.end12.for.body_crit_edge:                      ; preds = %do.end12
  br label %for.body

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end12.for.body_crit_edge
  %pbh.023 = phi ptr [ %35, %for.body.for.body_crit_edge ], [ %33, %do.end12.for.body_crit_edge ]
  %key.022 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ %conv1, %do.end12.for.body_crit_edge ]
  %inc = add i64 %key.022, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %pbh.023, i32 0, i32 1
  %34 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %35, %bh
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end12.for.end_crit_edge
  %key.0.lcssa = phi i64 [ %conv1, %do.end12.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i64 %key.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nilfs_bmap_find_target_seq(ptr nocapture noundef readonly %bmap, i64 noundef %key) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_last_allocated_key = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %0 = ptrtoint ptr %b_last_allocated_key to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_last_allocated_key, align 8
  %sub = sub i64 %key, %1
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %2)
  %cmp2 = icmp slt i64 %2, 7
  br i1 %cmp2, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %b_last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %3 = ptrtoint ptr %b_last_allocated_ptr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b_last_allocated_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp3.not = icmp eq i64 %4, 0
  %add = add i64 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp6.not = icmp eq i64 %add, 0
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.else ], [ %add, %land.lhs.true.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @nilfs_bmap_find_target_in_group(ptr nocapture noundef readonly %bmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_inode.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %0 = ptrtoint ptr %b_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_dat.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl i32 8, %conv.i
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %.not = sub i32 0, %shl.i
  %mul = and i32 %11, %.not
  %rem = and i32 %11, 7
  %div410 = lshr exact i32 %shl.i, 3
  %mul5 = mul nuw i32 %div410, %rem
  %add = add i32 %mul5, %mul
  %conv = zext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_bmap_read(ptr noundef %bmap, ptr noundef readonly %raw_inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %raw_inode, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memset(ptr %bmap, i32 0, i32 56)
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_bmap = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 11
  %1 = call ptr @memcpy(ptr %bmap, ptr %i_bmap, i32 56)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %b_sem, ptr noundef nonnull @.str, ptr noundef nonnull @nilfs_bmap_read.__key) #7
  %b_state = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %2 = ptrtoint ptr %b_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %b_state, align 4
  %vfs_inode = getelementptr i8, ptr %bmap, i32 576
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %3 = ptrtoint ptr %b_inode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vfs_inode, ptr %b_inode, align 8
  %i_ino = getelementptr i8, ptr %bmap, i32 616
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body.sw.default_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %do.body.sw.bb10_crit_edge
    i32 5, label %do.body.sw.bb10_crit_edge65
    i32 6, label %sw.bb22
  ]

do.body.sw.bb10_crit_edge65:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

do.body.sw.bb10_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

do.body.sw.default_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %7 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %b_ptr_type, align 8
  %b_last_allocated_key = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %8 = ptrtoint ptr %b_last_allocated_key to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %b_last_allocated_key, align 8
  %b_last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %9 = ptrtoint ptr %b_last_allocated_ptr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 2147483648, ptr %b_last_allocated_ptr, align 8
  %dep_map = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6
  %wait_type_inner = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6, i32 4
  %10 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @nilfs_bmap_dat_lock_key, i32 noundef 0, i8 noundef zeroext %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body.sw.bb10_crit_edge, %do.body.sw.bb10_crit_edge65
  %b_ptr_type11 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %12 = ptrtoint ptr %b_ptr_type11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %b_ptr_type11, align 8
  %b_last_allocated_key12 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %dep_map15 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6
  %wait_type_inner18 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6, i32 4
  %13 = call ptr @memset(ptr %b_last_allocated_key12, i32 0, i32 16)
  %14 = ptrtoint ptr %wait_type_inner18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait_type_inner18, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map15, ptr noundef nonnull @.str.2, ptr noundef nonnull @nilfs_bmap_mdt_lock_key, i32 noundef 0, i8 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map24 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6
  %wait_type_inner27 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1, i32 6, i32 4
  %16 = ptrtoint ptr %wait_type_inner27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wait_type_inner27, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map24, ptr noundef nonnull @.str.2, ptr noundef nonnull @nilfs_bmap_mdt_lock_key, i32 noundef 0, i8 noundef zeroext %17, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %sw.default

sw.default:                                       ; preds = %sw.bb22, %do.body.sw.default_crit_edge
  %b_ptr_type31 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %18 = ptrtoint ptr %b_ptr_type31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %b_ptr_type31, align 8
  %b_last_allocated_key32 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %19 = call ptr @memset(ptr %b_last_allocated_key32, i32 0, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  %20 = ptrtoint ptr %bmap to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmap, align 8
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 @nilfs_btree_init(ptr noundef %bmap) #7
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 @nilfs_direct_init(ptr noundef %bmap) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call35, %cond.true ], [ %call36, %cond.false ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btree_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_direct_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_bmap_write(ptr noundef %bmap, ptr nocapture noundef writeonly %raw_inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @down_write(ptr noundef %b_sem) #7
  %i_bmap = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 11
  %0 = call ptr @memcpy(ptr %i_bmap, ptr %bmap, i32 56)
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %1 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_inode, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %b_last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %5 = ptrtoint ptr %b_last_allocated_ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2147483648, ptr %b_last_allocated_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %b_sem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_bmap_init_gc(ptr noundef %bmap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %bmap, i32 0, i32 56)
  %b_sem = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %b_sem, ptr noundef nonnull @.str, ptr noundef nonnull @nilfs_bmap_init_gc.__key) #7
  %vfs_inode = getelementptr i8, ptr %bmap, i32 576
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %1 = ptrtoint ptr %b_inode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vfs_inode, ptr %b_inode, align 8
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %2 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %b_ptr_type, align 8
  %b_last_allocated_key = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %b_state = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %3 = ptrtoint ptr %b_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %b_state, align 4
  %4 = call ptr @memset(ptr %b_last_allocated_key, i32 0, i32 16)
  tail call void @nilfs_btree_init_gc(ptr noundef %bmap) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btree_init_gc(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_bmap_save(ptr nocapture noundef readonly %bmap, ptr nocapture noundef writeonly %store) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %store, ptr %bmap, i32 56)
  %b_last_allocated_key = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %1 = ptrtoint ptr %b_last_allocated_key to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %b_last_allocated_key, align 8
  %last_allocated_key = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 1
  %3 = ptrtoint ptr %last_allocated_key to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %last_allocated_key, align 8
  %b_last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %4 = ptrtoint ptr %b_last_allocated_ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_last_allocated_ptr, align 8
  %last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 2
  %6 = ptrtoint ptr %last_allocated_ptr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %last_allocated_ptr, align 8
  %b_state = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %7 = ptrtoint ptr %b_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_state, align 4
  %state = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %state, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_bmap_restore(ptr nocapture noundef writeonly %bmap, ptr nocapture noundef readonly %store) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %bmap, ptr %store, i32 56)
  %last_allocated_key = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 1
  %1 = ptrtoint ptr %last_allocated_key to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %last_allocated_key, align 8
  %b_last_allocated_key = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %3 = ptrtoint ptr %b_last_allocated_key to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %b_last_allocated_key, align 8
  %last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 2
  %4 = ptrtoint ptr %last_allocated_ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_allocated_ptr, align 8
  %b_last_allocated_ptr = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %6 = ptrtoint ptr %b_last_allocated_ptr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %b_last_allocated_ptr, align 8
  %state = getelementptr inbounds %struct.nilfs_bmap_store, ptr %store, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %b_state = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %9 = ptrtoint ptr %b_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %b_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btree_convert_and_insert(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_direct_delete_and_convert(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__func__.nilfs_bmap_lookup_at_level, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/bmap.c", i32 71, i32 40}
!2 = !{ptr @__func__.nilfs_bmap_lookup_contig, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/bmap.c", i32 95, i32 40}
!4 = !{ptr @__func__.nilfs_bmap_insert, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/bmap.c", i32 150, i32 40}
!6 = !{ptr @__func__.nilfs_bmap_seek_key, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/bmap.c", i32 206, i32 40}
!8 = !{ptr @__func__.nilfs_bmap_last_key, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/bmap.c", i32 219, i32 40}
!10 = !{ptr @__func__.nilfs_bmap_delete, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/bmap.c", i32 248, i32 40}
!12 = !{ptr @__func__.nilfs_bmap_truncate, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nilfs2/bmap.c", i32 300, i32 40}
!14 = !{ptr @__func__.nilfs_bmap_propagate, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nilfs2/bmap.c", i32 340, i32 40}
!16 = !{ptr @__func__.nilfs_bmap_assign, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/nilfs2/bmap.c", i32 385, i32 40}
!18 = !{ptr @__func__.nilfs_bmap_mark, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nilfs2/bmap.c", i32 415, i32 40}
!20 = !{ptr @nilfs_bmap_read.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/nilfs2/bmap.c", i32 503, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nilfs2/bmap.c", i32 511, i32 3}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nilfs2/bmap.c", i32 518, i32 3}
!27 = !{ptr @nilfs_bmap_init_gc.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../fs/nilfs2/bmap.c", i32 555, i32 2}
!29 = !{ptr @nilfs_bmap_dat_lock_key, !30, !"nilfs_bmap_dat_lock_key", i1 false, i1 false}
!30 = !{!"../fs/nilfs2/bmap.c", i32 481, i32 30}
!31 = !{ptr @nilfs_bmap_mdt_lock_key, !32, !"nilfs_bmap_mdt_lock_key", i1 false, i1 false}
!32 = !{!"../fs/nilfs2/bmap.c", i32 482, i32 30}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nilfs2/bmap.c", i32 36, i32 10}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2150573790, i64 2150574281, i64 2150573827, i64 2150573883, i64 2150573917, i64 2150573941, i64 2150573982, i64 2150574003, i64 2150574031, i64 2150574065}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2151032496, i64 2151032987, i64 2151032533, i64 2151032589, i64 2151032623, i64 2151032647, i64 2151032688, i64 2151032709, i64 2151032737, i64 2151032771}
!55 = !{i64 2154940964, i64 2154941445, i64 2154941001, i64 2154941057, i64 2154941091, i64 2154941115, i64 2154941156, i64 2154941177, i64 2154941205, i64 2154941239}
