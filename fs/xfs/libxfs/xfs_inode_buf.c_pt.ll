; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_inode_buf.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_inode_buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.timespec64 = type { i64, i32 }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xfs_inode\00", [22 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str, { [2 x i16], [4 x i8] } { [2 x i16] [i16 18766, i16 18766], [4 x i8] undef }, ptr @xfs_inode_buf_read_verify, ptr @xfs_inode_buf_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_inode_ra\00", [19 x i8] zeroinitializer }, align 32
@xfs_inode_buf_ra_ops = dso_local constant { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr }, [40 x i8] } { { ptr, { [2 x i16], [4 x i8] }, ptr, ptr, ptr } { ptr @.str.1, { [2 x i16], [4 x i8] } { [2 x i16] [i16 18766, i16 18766], [4 x i8] undef }, ptr @xfs_inode_buf_readahead_verify, ptr @xfs_inode_buf_write_verify, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip->i_cowfp == NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/xfs/libxfs/xfs_inode_buf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip->i_afp == NULL\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dinode\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfs_has_crc(mp)\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"!di_ok\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad inode magic/vsn daddr %lld #%d (magic=%x)\00", [50 x i8] zeroinitializer }, align 32
@__func__.xfs_inode_buf_verify = private unnamed_addr constant [21 x i8] c"xfs_inode_buf_verify\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 108, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"xfs_inode_buf_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 107, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 116, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"xfs_inode_buf_ra_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 115, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 180, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 181, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 185, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 553, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 63, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [33 x i8] c"../fs/xfs/libxfs/xfs_inode_buf.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 73, i32 5 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @xfs_inode_buf_ops, ptr @.str.1, ptr @xfs_inode_buf_ra_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_buf_ra_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_buf_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_inode_buf_verify(ptr noundef %bp, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_buf_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_inode_buf_verify(ptr noundef %bp, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_buf_readahead_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_inode_buf_verify(ptr noundef %bp, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_imap_to_bp(ptr noundef %mp, ptr noundef %tp, ptr nocapture noundef readonly %imap, ptr noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %0 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ddev_targp, align 8
  %2 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %imap, align 8
  %im_len = getelementptr inbounds %struct.xfs_imap, ptr %imap, i32 0, i32 1
  %4 = ptrtoint ptr %im_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %im_len, align 8
  %conv = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #5
  %6 = getelementptr inbounds i8, ptr %map.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %6, align 8
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %3, ptr %map.i, align 8
  store i32 %conv, ptr %6, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %mp, ptr noundef %tp, ptr noundef %1, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef -2147483648, ptr noundef %bpp, ptr noundef nonnull @xfs_inode_buf_ops) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_from_disk_ts(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, ptr nocapture noundef readonly %dip, i64 noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %di_version.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %0 = ptrtoint ptr %di_version.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp ugt i8 %1, 2
  br i1 %cmp.i, label %xfs_dinode_has_bigtime.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

xfs_dinode_has_bigtime.exit:                      ; preds = %entry
  %di_flags2.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 30
  %2 = ptrtoint ptr %di_flags2.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %di_flags2.i, align 8
  %and.i = and i64 %3, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %xfs_dinode_has_bigtime.exit.if.end_crit_edge, label %if.then

xfs_dinode_has_bigtime.exit.if.end_crit_edge:     ; preds = %xfs_dinode_has_bigtime.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %xfs_dinode_has_bigtime.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8, !alias.scope !32
  %conv14.i.i = trunc i64 %ts to i32
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %ts, i32 0) #8, !srcloc !35
  %asmresult.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %ts, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #8, !srcloc !36
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %conv159.i.i = trunc i64 %div1581.i.i to i32
  %mul160.neg.i.i = mul i32 %conv159.i.i, -1000000000
  %sub161.i.i = add i32 %mul160.neg.i.i, %conv14.i.i
  %sub.i.i = add nsw i64 %div1581.i.i, -2147483648
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub.i.i, ptr %agg.result, align 8, !alias.scope !32
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub161.i.i, ptr %4, align 8, !alias.scope !32
  br label %cleanup

if.end:                                           ; preds = %xfs_dinode_has_bigtime.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ts.addr.sroa.3.0.extract.trunc = trunc i64 %ts to i32
  %conv = ashr i64 %ts, 32
  %10 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %agg.result, align 8
  %tv.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %11 = ptrtoint ptr %tv.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ts.addr.sroa.3.0.extract.trunc, ptr %tv.sroa.5.0.agg.result.sroa_idx, align 8
  %tv.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 12
  %12 = ptrtoint ptr %tv.sroa.6.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tv.sroa.6.0.agg.result.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inode_from_disk(ptr noundef %ip, ptr noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %0 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_cowfp, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !37

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 180) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !37

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 181) #5
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino, align 8
  %call12 = tail call ptr @xfs_dinode_verify(ptr noundef %5, i64 noundef %7, ptr noundef %from)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xfs_inode_verifier_error(ptr noundef %ip, i32 noundef -117, ptr noundef nonnull @.str.5, ptr noundef %from, i32 noundef 176, ptr noundef nonnull %call12) #5
  br label %cleanup

if.end:                                           ; preds = %cond.end11
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then16, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %di_flushiter = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 11
  %12 = ptrtoint ptr %di_flushiter to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %di_flushiter, align 2
  %14 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %14, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %di_gen = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 25
  %16 = ptrtoint ptr %di_gen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %di_gen, align 4
  %i_generation = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 49
  %18 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_generation, align 8
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 1
  %19 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %di_mode, align 2
  %21 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool19.not = icmp eq i16 %20, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 2
  %22 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp22 = icmp eq i8 %23, 1
  br i1 %cmp22, label %if.then30, label %if.else, !prof !38

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %di_onlink = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 4
  %24 = ptrtoint ptr %di_onlink to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %di_onlink, align 2
  %conv31 = zext i16 %25 to i32
  tail call void @set_nlink(ptr noundef %i_vnode.i, i32 noundef %conv31) #5
  br label %if.end35

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %di_nlink = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 7
  %26 = ptrtoint ptr %di_nlink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %di_nlink, align 8
  tail call void @set_nlink(ptr noundef %i_vnode.i, i32 noundef %27) #5
  %di_projid_hi = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 9
  %28 = ptrtoint ptr %di_projid_hi to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %di_projid_hi, align 2
  %conv32 = zext i16 %29 to i32
  %shl = shl nuw i32 %conv32, 16
  %di_projid_lo = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 8
  %30 = ptrtoint ptr %di_projid_lo to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %di_projid_lo, align 4
  %conv33 = zext i16 %31 to i32
  %or = or i32 %shl, %conv33
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %or.sink = phi i32 [ 0, %if.then30 ], [ %or, %if.else ]
  %32 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.sink, ptr %32, align 8
  %di_uid = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 5
  %34 = ptrtoint ptr %di_uid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %di_uid, align 8
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %36 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %39, i32 noundef %35) #5
  %40 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %di_gid = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 6
  %41 = ptrtoint ptr %di_gid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %di_gid, align 4
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %43 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i136 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %s_user_ns.i.i136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_user_ns.i.i136, align 8
  %call1.i137 = tail call i32 @make_kgid(ptr noundef %46, i32 noundef %42) #5
  %47 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call1.i137, ptr %i_gid.i, align 8
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15
  %di_atime = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 12
  %48 = ptrtoint ptr %di_atime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %di_atime, align 8
  %50 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %di_version, align 4, !noalias !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp.i.i = icmp ugt i8 %51, 2
  br i1 %cmp.i.i, label %xfs_dinode_has_bigtime.exit.i, label %if.end35.if.end.i_crit_edge

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

xfs_dinode_has_bigtime.exit.i:                    ; preds = %if.end35
  %di_flags2.i.i = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 30
  %52 = ptrtoint ptr %di_flags2.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %di_flags2.i.i, align 8, !noalias !39
  %and.i.i = and i64 %53, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %xfs_dinode_has_bigtime.exit.i.if.end.i_crit_edge, label %if.then.i

xfs_dinode_has_bigtime.exit.i.if.end.i_crit_edge: ; preds = %xfs_dinode_has_bigtime.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %xfs_dinode_has_bigtime.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i.i = trunc i64 %49 to i32
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %49, i32 0) #8, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %54, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %54, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %49, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #8, !srcloc !36
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %55, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %conv159.i.i.i = trunc i64 %div1581.i.i.i to i32
  %mul160.neg.i.i.i = mul i32 %conv159.i.i.i, -1000000000
  %sub161.i.i.i = add i32 %mul160.neg.i.i.i, %conv14.i.i.i
  %sub.i.i.i = add nsw i64 %div1581.i.i.i, -2147483648
  %tmp.sroa.5.8.insert.ext225 = zext i32 %sub161.i.i.i to i64
  br label %xfs_inode_from_disk_ts.exit

if.end.i:                                         ; preds = %xfs_dinode_has_bigtime.exit.i.if.end.i_crit_edge, %if.end35.if.end.i_crit_edge
  %conv.i = ashr i64 %49, 32
  br label %xfs_inode_from_disk_ts.exit

xfs_inode_from_disk_ts.exit:                      ; preds = %if.end.i, %if.then.i
  %tmp.sroa.5.0.in.in = phi i64 [ %49, %if.end.i ], [ %tmp.sroa.5.8.insert.ext225, %if.then.i ]
  %tmp.sroa.0.0 = phi i64 [ %conv.i, %if.end.i ], [ %sub.i.i.i, %if.then.i ]
  %tmp.sroa.5.0.in = shl i64 %tmp.sroa.5.0.in.in, 32
  %tmp.sroa.5.0 = or i64 %tmp.sroa.5.0.in, 4294967295
  %56 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %tmp.sroa.0.0, ptr %i_atime, align 8
  %tmp.sroa.5.0.i_atime.sroa_idx = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15, i32 1
  %57 = ptrtoint ptr %tmp.sroa.5.0.i_atime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %tmp.sroa.5.0, ptr %tmp.sroa.5.0.i_atime.sroa_idx, align 8
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %di_mtime = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 13
  %58 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %di_mtime, align 8
  %60 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %di_version, align 4, !noalias !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp.i.i139 = icmp ugt i8 %61, 2
  br i1 %cmp.i.i139, label %xfs_dinode_has_bigtime.exit.i143, label %xfs_inode_from_disk_ts.exit.if.end.i158_crit_edge

xfs_inode_from_disk_ts.exit.if.end.i158_crit_edge: ; preds = %xfs_inode_from_disk_ts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i158

xfs_dinode_has_bigtime.exit.i143:                 ; preds = %xfs_inode_from_disk_ts.exit
  %di_flags2.i.i140 = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 30
  %62 = ptrtoint ptr %di_flags2.i.i140 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %di_flags2.i.i140, align 8, !noalias !42
  %and.i.i141 = and i64 %63, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i141)
  %tobool.i.not.i142 = icmp eq i64 %and.i.i141, 0
  br i1 %tobool.i.not.i142, label %xfs_dinode_has_bigtime.exit.i143.if.end.i158_crit_edge, label %if.then.i153

xfs_dinode_has_bigtime.exit.i143.if.end.i158_crit_edge: ; preds = %xfs_dinode_has_bigtime.exit.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i158

if.then.i153:                                     ; preds = %xfs_dinode_has_bigtime.exit.i143
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i.i144 = trunc i64 %59 to i32
  %64 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %59, i32 0) #8, !srcloc !35
  %asmresult.i.i.i.i145 = extractvalue { i64, i32 } %64, 0
  %asmresult4.i.i.i.i146 = extractvalue { i64, i32 } %64, 1
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %59, i64 %asmresult.i.i.i.i145, i32 %asmresult4.i.i.i.i146) #8, !srcloc !36
  %asmresult10.i.i.i.i147 = extractvalue { i64, i32 } %65, 0
  %div1581.i.i.i148 = lshr i64 %asmresult10.i.i.i.i147, 29
  %conv159.i.i.i149 = trunc i64 %div1581.i.i.i148 to i32
  %mul160.neg.i.i.i150 = mul i32 %conv159.i.i.i149, -1000000000
  %sub161.i.i.i151 = add i32 %mul160.neg.i.i.i150, %conv14.i.i.i144
  %sub.i.i.i152 = add nsw i64 %div1581.i.i.i148, -2147483648
  %tmp36.sroa.5.8.insert.ext220 = zext i32 %sub161.i.i.i151 to i64
  br label %xfs_inode_from_disk_ts.exit159

if.end.i158:                                      ; preds = %xfs_dinode_has_bigtime.exit.i143.if.end.i158_crit_edge, %xfs_inode_from_disk_ts.exit.if.end.i158_crit_edge
  %conv.i155 = ashr i64 %59, 32
  br label %xfs_inode_from_disk_ts.exit159

xfs_inode_from_disk_ts.exit159:                   ; preds = %if.end.i158, %if.then.i153
  %tmp36.sroa.5.0.in.in = phi i64 [ %59, %if.end.i158 ], [ %tmp36.sroa.5.8.insert.ext220, %if.then.i153 ]
  %tmp36.sroa.0.0 = phi i64 [ %conv.i155, %if.end.i158 ], [ %sub.i.i.i152, %if.then.i153 ]
  %tmp36.sroa.5.0.in = shl i64 %tmp36.sroa.5.0.in.in, 32
  %tmp36.sroa.5.0 = or i64 %tmp36.sroa.5.0.in, 4294967295
  %66 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %tmp36.sroa.0.0, ptr %i_mtime, align 8
  %tmp36.sroa.5.0.i_mtime.sroa_idx = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16, i32 1
  %67 = ptrtoint ptr %tmp36.sroa.5.0.i_mtime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %tmp36.sroa.5.0, ptr %tmp36.sroa.5.0.i_mtime.sroa_idx, align 8
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %di_ctime = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 14
  %68 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %di_ctime, align 8
  %70 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %di_version, align 4, !noalias !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp.i.i161 = icmp ugt i8 %71, 2
  br i1 %cmp.i.i161, label %xfs_dinode_has_bigtime.exit.i165, label %xfs_inode_from_disk_ts.exit159.if.end.i180_crit_edge

xfs_inode_from_disk_ts.exit159.if.end.i180_crit_edge: ; preds = %xfs_inode_from_disk_ts.exit159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i180

xfs_dinode_has_bigtime.exit.i165:                 ; preds = %xfs_inode_from_disk_ts.exit159
  %di_flags2.i.i162 = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 30
  %72 = ptrtoint ptr %di_flags2.i.i162 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %di_flags2.i.i162, align 8, !noalias !45
  %and.i.i163 = and i64 %73, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i163)
  %tobool.i.not.i164 = icmp eq i64 %and.i.i163, 0
  br i1 %tobool.i.not.i164, label %xfs_dinode_has_bigtime.exit.i165.if.end.i180_crit_edge, label %if.then.i175

xfs_dinode_has_bigtime.exit.i165.if.end.i180_crit_edge: ; preds = %xfs_dinode_has_bigtime.exit.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i180

if.then.i175:                                     ; preds = %xfs_dinode_has_bigtime.exit.i165
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i.i166 = trunc i64 %69 to i32
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %69, i32 0) #8, !srcloc !35
  %asmresult.i.i.i.i167 = extractvalue { i64, i32 } %74, 0
  %asmresult4.i.i.i.i168 = extractvalue { i64, i32 } %74, 1
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %69, i64 %asmresult.i.i.i.i167, i32 %asmresult4.i.i.i.i168) #8, !srcloc !36
  %asmresult10.i.i.i.i169 = extractvalue { i64, i32 } %75, 0
  %div1581.i.i.i170 = lshr i64 %asmresult10.i.i.i.i169, 29
  %conv159.i.i.i171 = trunc i64 %div1581.i.i.i170 to i32
  %mul160.neg.i.i.i172 = mul i32 %conv159.i.i.i171, -1000000000
  %sub161.i.i.i173 = add i32 %mul160.neg.i.i.i172, %conv14.i.i.i166
  %sub.i.i.i174 = add nsw i64 %div1581.i.i.i170, -2147483648
  %tmp37.sroa.5.8.insert.ext215 = zext i32 %sub161.i.i.i173 to i64
  br label %xfs_inode_from_disk_ts.exit181

if.end.i180:                                      ; preds = %xfs_dinode_has_bigtime.exit.i165.if.end.i180_crit_edge, %xfs_inode_from_disk_ts.exit159.if.end.i180_crit_edge
  %conv.i177 = ashr i64 %69, 32
  br label %xfs_inode_from_disk_ts.exit181

xfs_inode_from_disk_ts.exit181:                   ; preds = %if.end.i180, %if.then.i175
  %tmp37.sroa.5.0.in.in = phi i64 [ %69, %if.end.i180 ], [ %tmp37.sroa.5.8.insert.ext215, %if.then.i175 ]
  %tmp37.sroa.0.0 = phi i64 [ %conv.i177, %if.end.i180 ], [ %sub.i.i.i174, %if.then.i175 ]
  %tmp37.sroa.5.0.in = shl i64 %tmp37.sroa.5.0.in.in, 32
  %tmp37.sroa.5.0 = or i64 %tmp37.sroa.5.0.in, 4294967295
  %76 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %tmp37.sroa.0.0, ptr %i_ctime, align 8
  %tmp37.sroa.5.0.i_ctime.sroa_idx = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17, i32 1
  %77 = ptrtoint ptr %tmp37.sroa.5.0.i_ctime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %tmp37.sroa.5.0, ptr %tmp37.sroa.5.0.i_ctime.sroa_idx, align 8
  %di_size = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 15
  %78 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %di_size, align 8
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %80 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %i_disk_size, align 8
  %di_nblocks = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 16
  %81 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %di_nblocks, align 8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %83 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %i_nblocks, align 8
  %di_extsize = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 17
  %84 = ptrtoint ptr %di_extsize to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %di_extsize, align 8
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %86 = ptrtoint ptr %i_extsize to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %i_extsize, align 4
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 20
  %87 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %di_forkoff, align 2
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %89 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %i_forkoff, align 4
  %di_flags = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 24
  %90 = ptrtoint ptr %di_flags to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %di_flags, align 2
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %92 = ptrtoint ptr %i_diflags to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %i_diflags, align 2
  %di_dmevmask = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 22
  %93 = ptrtoint ptr %di_dmevmask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %di_dmevmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool38.not = icmp eq i32 %94, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %xfs_inode_from_disk_ts.exit181.if.then41_crit_edge

xfs_inode_from_disk_ts.exit181.if.then41_crit_edge: ; preds = %xfs_inode_from_disk_ts.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

lor.lhs.false:                                    ; preds = %xfs_inode_from_disk_ts.exit181
  %di_dmstate = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 23
  %95 = ptrtoint ptr %di_dmstate to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %di_dmstate, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool40.not = icmp eq i16 %96, 0
  br i1 %tobool40.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %xfs_inode_from_disk_ts.exit181.if.then41_crit_edge
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #5
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %97 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_flags.i.i, align 8
  %or.i.i = or i32 %98, 16
  store i32 %or.i.i, ptr %i_flags.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false.if.end42_crit_edge
  %99 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ip, align 8
  %m_features.i182 = getelementptr inbounds %struct.xfs_mount, ptr %100, i32 0, i32 61
  %101 = ptrtoint ptr %m_features.i182 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %m_features.i182, align 8
  %and.i183 = and i64 %102, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i183)
  %tobool.i184.not = icmp eq i64 %and.i183, 0
  br i1 %tobool.i184.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  %di_changecount = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 28
  %103 = ptrtoint ptr %di_changecount to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %di_changecount, align 8
  %shl.i = shl i64 %104, 1
  %or.i = or i64 %shl.i, 1
  %i_version.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #5
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef %or.i) #5
  %i_crtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 26
  %di_crtime = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 33
  %105 = ptrtoint ptr %di_crtime to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %di_crtime, align 8
  %107 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %di_version, align 4, !noalias !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %108)
  %cmp.i.i186 = icmp ugt i8 %108, 2
  br i1 %cmp.i.i186, label %xfs_dinode_has_bigtime.exit.i190, label %if.then45.if.end.i205_crit_edge

if.then45.if.end.i205_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i205

xfs_dinode_has_bigtime.exit.i190:                 ; preds = %if.then45
  %di_flags2.i.i187 = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 30
  %109 = ptrtoint ptr %di_flags2.i.i187 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %di_flags2.i.i187, align 8, !noalias !48
  %and.i.i188 = and i64 %110, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i188)
  %tobool.i.not.i189 = icmp eq i64 %and.i.i188, 0
  br i1 %tobool.i.not.i189, label %xfs_dinode_has_bigtime.exit.i190.if.end.i205_crit_edge, label %if.then.i200

xfs_dinode_has_bigtime.exit.i190.if.end.i205_crit_edge: ; preds = %xfs_dinode_has_bigtime.exit.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i205

if.then.i200:                                     ; preds = %xfs_dinode_has_bigtime.exit.i190
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i.i191 = trunc i64 %106 to i32
  %111 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %106, i32 0) #8, !srcloc !35
  %asmresult.i.i.i.i192 = extractvalue { i64, i32 } %111, 0
  %asmresult4.i.i.i.i193 = extractvalue { i64, i32 } %111, 1
  %112 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %106, i64 %asmresult.i.i.i.i192, i32 %asmresult4.i.i.i.i193) #8, !srcloc !36
  %asmresult10.i.i.i.i194 = extractvalue { i64, i32 } %112, 0
  %div1581.i.i.i195 = lshr i64 %asmresult10.i.i.i.i194, 29
  %conv159.i.i.i196 = trunc i64 %div1581.i.i.i195 to i32
  %mul160.neg.i.i.i197 = mul i32 %conv159.i.i.i196, -1000000000
  %sub161.i.i.i198 = add i32 %mul160.neg.i.i.i197, %conv14.i.i.i191
  %sub.i.i.i199 = add nsw i64 %div1581.i.i.i195, -2147483648
  %tmp46.sroa.5.8.insert.ext210 = zext i32 %sub161.i.i.i198 to i64
  br label %xfs_inode_from_disk_ts.exit206

if.end.i205:                                      ; preds = %xfs_dinode_has_bigtime.exit.i190.if.end.i205_crit_edge, %if.then45.if.end.i205_crit_edge
  %conv.i202 = ashr i64 %106, 32
  br label %xfs_inode_from_disk_ts.exit206

xfs_inode_from_disk_ts.exit206:                   ; preds = %if.end.i205, %if.then.i200
  %tmp46.sroa.5.0.in.in = phi i64 [ %106, %if.end.i205 ], [ %tmp46.sroa.5.8.insert.ext210, %if.then.i200 ]
  %tmp46.sroa.0.0 = phi i64 [ %conv.i202, %if.end.i205 ], [ %sub.i.i.i199, %if.then.i200 ]
  %tmp46.sroa.5.0.in = shl i64 %tmp46.sroa.5.0.in.in, 32
  %tmp46.sroa.5.0 = or i64 %tmp46.sroa.5.0.in, 4294967295
  %113 = ptrtoint ptr %i_crtime to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %tmp46.sroa.0.0, ptr %i_crtime, align 8
  %tmp46.sroa.5.0.i_crtime.sroa_idx = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 26, i32 1
  %114 = ptrtoint ptr %tmp46.sroa.5.0.i_crtime.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %tmp46.sroa.5.0, ptr %tmp46.sroa.5.0.i_crtime.sroa_idx, align 8
  %di_flags2 = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 30
  %115 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %di_flags2, align 8
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %117 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %i_diflags2, align 8
  %di_cowextsize = getelementptr inbounds %struct.xfs_dinode, ptr %from, i32 0, i32 31
  %118 = ptrtoint ptr %di_cowextsize to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %di_cowextsize, align 8
  %120 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %119, ptr %120, align 8
  br label %if.end47

if.end47:                                         ; preds = %xfs_inode_from_disk_ts.exit206, %if.end42.if.end47_crit_edge
  %call48 = tail call i32 @xfs_iformat_data_fork(ptr noundef %ip, ptr noundef %from) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %122 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool53.not = icmp eq i8 %123, 0
  br i1 %tobool53.not, label %if.end51.if.end59_crit_edge, label %if.then54

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  %call55 = tail call i32 @xfs_iformat_attr_fork(ptr noundef %ip, ptr noundef %from) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %out_destroy_data_fork

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.end59:                                         ; preds = %if.then54.if.end59_crit_edge, %if.end51.if.end59_crit_edge
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %124 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %i_diflags2.i, align 8
  %and.i207 = and i64 %125, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i207)
  %tobool.i208.not = icmp eq i64 %and.i207, 0
  br i1 %tobool.i208.not, label %if.end59.cleanup_crit_edge, label %if.then61

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xfs_ifork_init_cow(ptr noundef %ip) #5
  br label %cleanup

out_destroy_data_fork:                            ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  tail call void @xfs_idestroy_fork(ptr noundef %i_df) #5
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_data_fork, %if.then61, %if.end59.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ %call55, %out_destroy_data_fork ], [ 0, %if.end17.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_dinode_verify(ptr nocapture noundef readonly %mp, i64 noundef %ino, ptr noundef %dip) #0 align 64 {
entry:
  %zero.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dip to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dip, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18766, i16 %1)
  %cmp.not = icmp eq i16 %1, 18766
  br i1 %cmp.not, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !51
  br label %cleanup

if.end:                                           ; preds = %entry
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %2 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp ugt i8 %3, 2
  br i1 %cmp3, label %if.then5, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then5:                                         ; preds = %if.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %__here7, label %if.end9

__here7:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !52
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %6 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sb_inodesize, align 8
  %conv10 = zext i16 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i) #5
  %8 = ptrtoint ptr %zero.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i, align 4
  %call.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %dip, i32 noundef 100) #5
  %call1.i.i = call i32 @crc32c(i32 noundef %call.i.i, ptr noundef nonnull %zero.i.i, i32 noundef 4) #5
  %arrayidx.i.i = getelementptr i8, ptr %dip, i32 104
  %sub.i.i = add nsw i32 %conv10, -104
  %call3.i.i = call i32 @crc32c(i32 noundef %call1.i.i, ptr noundef %arrayidx.i.i, i32 noundef %sub.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i) #5
  %add.ptr.i = getelementptr i8, ptr %dip, i32 100
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = xor i32 %call3.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.not, label %if.end15, label %__here13

__here13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !53
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %di_ino = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 34
  %13 = ptrtoint ptr %di_ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %di_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %ino)
  %cmp16.not = icmp eq i64 %14, %ino
  br i1 %cmp16.not, label %if.end21, label %__here19

__here19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !54
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %di_uuid = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 35
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %di_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i254 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i254, label %if.end21.if.end28_crit_edge, label %__here25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

__here25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !55
  br label %cleanup

if.end28:                                         ; preds = %if.end21.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %di_size29 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 15
  %15 = ptrtoint ptr %di_size29 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %di_size29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %tobool30.not = icmp sgt i64 %16, -1
  br i1 %tobool30.not, label %if.end34, label %__here32

__here32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !56
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 1
  %17 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %di_mode, align 2
  %conv35 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool36.not = icmp eq i16 %18, 0
  br i1 %tobool36.not, label %if.end84.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %call38 = call zeroext i8 @xfs_mode_to_ftype(i32 noundef %conv35) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call38)
  %cmp40 = icmp eq i8 %call38, 0
  br i1 %cmp40, label %__here43, label %if.end45

__here43:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !57
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true
  %and47 = and i32 %conv35, 61440
  %trunc = trunc i32 %and47 to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end45.land.lhs.true63_crit_edge [
    i16 -24576, label %if.end45.land.lhs.true54_crit_edge
    i16 16384, label %if.end45.land.lhs.true54_crit_edge275
  ]

if.end45.land.lhs.true54_crit_edge275:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true54

if.end45.land.lhs.true54_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true54

if.end45.land.lhs.true63_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63

land.lhs.true54:                                  ; preds = %if.end45.land.lhs.true54_crit_edge, %if.end45.land.lhs.true54_crit_edge275
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp55 = icmp eq i64 %16, 0
  br i1 %cmp55, label %__here58, label %land.lhs.true54.land.lhs.true63_crit_edge

land.lhs.true54.land.lhs.true63_crit_edge:        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63

__here58:                                         ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !58
  br label %cleanup

if.end84.thread:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %di_flags270 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 24
  %20 = ptrtoint ptr %di_flags270 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %di_flags270, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool90.not271 = icmp eq i16 %22, 0
  br label %if.end96

land.lhs.true63:                                  ; preds = %land.lhs.true54.land.lhs.true63_crit_edge, %if.end45.land.lhs.true63_crit_edge
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %23 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %di_nextents, align 4
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %25 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %di_anextents, align 8
  %conv64 = zext i16 %26 to i32
  %add = add i32 %24, %conv64
  %conv65 = zext i32 %add to i64
  %di_nblocks = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 16
  %27 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %di_nblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv65)
  %cmp66 = icmp ult i64 %28, %conv65
  br i1 %cmp66, label %__here69, label %land.lhs.true74.critedge

__here69:                                         ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !59
  br label %cleanup

land.lhs.true74.critedge:                         ; preds = %land.lhs.true63
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %29 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %di_forkoff, align 2
  %conv75 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv75, 3
  %sb_inodesize77 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %31 = ptrtoint ptr %sb_inodesize77 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sb_inodesize77, align 8
  %conv78 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv78)
  %cmp79 = icmp ugt i32 %shl, %conv78
  br i1 %cmp79, label %__here82, label %if.end84

__here82:                                         ; preds = %land.lhs.true74.critedge
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !60
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true74.critedge
  %di_flags = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 24
  %33 = ptrtoint ptr %di_flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %di_flags, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool90.not = icmp eq i16 %35, 0
  br i1 %tobool90.not, label %if.end84.if.end96_crit_edge, label %land.lhs.true91

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

land.lhs.true91:                                  ; preds = %if.end84
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %36 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool92.not = icmp eq ptr %37, null
  br i1 %tobool92.not, label %__here94, label %land.lhs.true91.if.end96_crit_edge

land.lhs.true91.if.end96_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

__here94:                                         ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !61
  br label %cleanup

if.end96:                                         ; preds = %land.lhs.true91.if.end96_crit_edge, %if.end84.if.end96_crit_edge, %if.end84.thread
  %tobool90.not274 = phi i1 [ %tobool90.not271, %if.end84.thread ], [ false, %land.lhs.true91.if.end96_crit_edge ], [ true, %if.end84.if.end96_crit_edge ]
  %38 = phi i16 [ %21, %if.end84.thread ], [ %34, %land.lhs.true91.if.end96_crit_edge ], [ %34, %if.end84.if.end96_crit_edge ]
  %and47265268273 = phi i32 [ 0, %if.end84.thread ], [ %and47, %land.lhs.true91.if.end96_crit_edge ], [ %and47, %if.end84.if.end96_crit_edge ]
  %call97 = call fastcc ptr @xfs_dinode_verify_forkoff(ptr noundef %dip, ptr noundef %mp)
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  %39 = lshr i32 %conv35, 12
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %39, label %__here115 [
    i32 1, label %if.end100.sw.bb_crit_edge
    i32 2, label %if.end100.sw.bb_crit_edge276
    i32 6, label %if.end100.sw.bb_crit_edge277
    i32 12, label %if.end100.sw.bb_crit_edge278
    i32 8, label %if.end100.sw.bb110_crit_edge
    i32 10, label %if.end100.sw.bb110_crit_edge279
    i32 4, label %if.end100.sw.bb110_crit_edge280
    i32 0, label %if.end100.sw.epilog_crit_edge
  ]

if.end100.sw.epilog_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end100.sw.bb110_crit_edge280:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb110

if.end100.sw.bb110_crit_edge279:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb110

if.end100.sw.bb110_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb110

if.end100.sw.bb_crit_edge278:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end100.sw.bb_crit_edge277:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end100.sw.bb_crit_edge276:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end100.sw.bb_crit_edge:                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end100.sw.bb_crit_edge, %if.end100.sw.bb_crit_edge276, %if.end100.sw.bb_crit_edge277, %if.end100.sw.bb_crit_edge278
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 3
  %41 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %di_format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp104.not = icmp eq i8 %42, 0
  br i1 %cmp104.not, label %sw.bb.sw.epilog_crit_edge, label %__here107

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

__here107:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !62
  br label %cleanup

sw.bb110:                                         ; preds = %if.end100.sw.bb110_crit_edge, %if.end100.sw.bb110_crit_edge279, %if.end100.sw.bb110_crit_edge280
  %call111 = call fastcc ptr @xfs_dinode_verify_fork(ptr noundef %dip, ptr noundef %mp, i32 noundef 0)
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %sw.bb110.sw.epilog_crit_edge, label %sw.bb110.cleanup_crit_edge

sw.bb110.cleanup_crit_edge:                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb110.sw.epilog_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

__here115:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !63
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb110.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end100.sw.epilog_crit_edge
  %di_forkoff117 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %43 = ptrtoint ptr %di_forkoff117 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %di_forkoff117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool118.not = icmp eq i8 %44, 0
  br i1 %tobool118.not, label %if.else, label %if.then119

if.then119:                                       ; preds = %sw.epilog
  %call120 = call fastcc ptr @xfs_dinode_verify_fork(ptr noundef %dip, ptr noundef %mp, i32 noundef 1)
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.then119.if.end136_crit_edge, label %if.then119.cleanup_crit_edge

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then119.if.end136_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.else:                                          ; preds = %sw.epilog
  %di_aformat = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 21
  %45 = ptrtoint ptr %di_aformat to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %di_aformat, align 1
  %conv124 = sext i8 %46 to i32
  %47 = zext i32 %conv124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv124, label %__here127 [
    i32 0, label %if.else.sw.epilog129_crit_edge
    i32 2, label %if.else.sw.epilog129_crit_edge281
  ]

if.else.sw.epilog129_crit_edge281:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog129

if.else.sw.epilog129_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog129

__here127:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !64
  br label %cleanup

sw.epilog129:                                     ; preds = %if.else.sw.epilog129_crit_edge, %if.else.sw.epilog129_crit_edge281
  %di_anextents130 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %48 = ptrtoint ptr %di_anextents130 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %di_anextents130, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool131.not = icmp eq i16 %49, 0
  br i1 %tobool131.not, label %sw.epilog129.if.end136_crit_edge, label %__here133

sw.epilog129.if.end136_crit_edge:                 ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

__here133:                                        ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !65
  br label %cleanup

if.end136:                                        ; preds = %sw.epilog129.if.end136_crit_edge, %if.then119.if.end136_crit_edge
  %di_extsize = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 17
  %50 = ptrtoint ptr %di_extsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %di_extsize, align 8
  %call137 = call ptr @xfs_inode_validate_extsize(ptr noundef %mp, i32 noundef %51, i16 noundef zeroext %18, i16 noundef zeroext %38)
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %if.end140, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end140:                                        ; preds = %if.end136
  %52 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp143 = icmp ult i8 %53, 3
  br i1 %cmp143, label %if.end140.cleanup_crit_edge, label %if.end146

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end146:                                        ; preds = %if.end140
  %di_flags2 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 30
  %54 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %di_flags2, align 8
  %and147 = and i64 %55, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and147)
  %tobool148.not = icmp eq i64 %and147, 0
  br i1 %tobool148.not, label %if.end146.if.end154_crit_edge, label %land.lhs.true149

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

land.lhs.true149:                                 ; preds = %if.end146
  %m_features.i255 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %56 = ptrtoint ptr %m_features.i255 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %m_features.i255, align 8
  %and.i256 = and i64 %57, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i256)
  %tobool.i257.not = icmp eq i64 %and.i256, 0
  br i1 %tobool.i257.not, label %__here152, label %land.lhs.true149.if.end154_crit_edge

land.lhs.true149.if.end154_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

__here152:                                        ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !66
  br label %cleanup

if.end154:                                        ; preds = %land.lhs.true149.if.end154_crit_edge, %if.end146.if.end154_crit_edge
  %and155 = and i64 %55, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and155)
  %tobool156.not = icmp eq i64 %and155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and47265268273)
  %cmp160.not = icmp eq i32 %and47265268273, 32768
  %or.cond252 = select i1 %tobool156.not, i1 true, i1 %cmp160.not
  br i1 %or.cond252, label %if.end165, label %__here163

__here163:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !67
  br label %cleanup

if.end165:                                        ; preds = %if.end154
  %or.cond253 = select i1 %tobool156.not, i1 true, i1 %tobool90.not274
  br i1 %or.cond253, label %if.end175, label %__here173

__here173:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !68
  br label %cleanup

if.end175:                                        ; preds = %if.end165
  %di_cowextsize = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 31
  %58 = ptrtoint ptr %di_cowextsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %di_cowextsize, align 8
  %call176 = call ptr @xfs_inode_validate_cowextsize(ptr noundef %mp, i32 noundef %59, i16 noundef zeroext %18, i16 noundef zeroext %38, i64 noundef %55)
  %tobool177.not = icmp eq ptr %call176, null
  br i1 %tobool177.not, label %if.end179, label %if.end175.cleanup_crit_edge

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end179:                                        ; preds = %if.end175
  %60 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp.i258 = icmp ugt i8 %61, 2
  br i1 %cmp.i258, label %xfs_dinode_has_bigtime.exit, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfs_dinode_has_bigtime.exit:                      ; preds = %if.end179
  %62 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %di_flags2, align 8
  %and.i259 = and i64 %63, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i259)
  %tobool.i260.not = icmp eq i64 %and.i259, 0
  br i1 %tobool.i260.not, label %xfs_dinode_has_bigtime.exit.cleanup_crit_edge, label %land.lhs.true182

xfs_dinode_has_bigtime.exit.cleanup_crit_edge:    ; preds = %xfs_dinode_has_bigtime.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true182:                                 ; preds = %xfs_dinode_has_bigtime.exit
  %m_features.i261 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %64 = ptrtoint ptr %m_features.i261 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %m_features.i261, align 8
  %and.i262 = and i64 %65, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i262)
  %tobool.i263.not = icmp eq i64 %and.i262, 0
  br i1 %tobool.i263.not, label %__here185, label %land.lhs.true182.cleanup_crit_edge

land.lhs.true182.cleanup_crit_edge:               ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here185:                                        ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %__here185, %land.lhs.true182.cleanup_crit_edge, %xfs_dinode_has_bigtime.exit.cleanup_crit_edge, %if.end179.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %__here173, %__here163, %__here152, %if.end140.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %__here133, %__here127, %if.then119.cleanup_crit_edge, %__here115, %sw.bb110.cleanup_crit_edge, %__here107, %if.end96.cleanup_crit_edge, %__here94, %__here82, %__here69, %__here58, %__here43, %__here32, %__here25, %__here19, %__here13, %__here7, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dinode_verify, %__here), %__here ], [ blockaddress(@xfs_dinode_verify, %__here19), %__here19 ], [ blockaddress(@xfs_dinode_verify, %__here32), %__here32 ], [ blockaddress(@xfs_dinode_verify, %__here43), %__here43 ], [ blockaddress(@xfs_dinode_verify, %__here58), %__here58 ], [ blockaddress(@xfs_dinode_verify, %__here69), %__here69 ], [ blockaddress(@xfs_dinode_verify, %__here82), %__here82 ], [ blockaddress(@xfs_dinode_verify, %__here115), %__here115 ], [ blockaddress(@xfs_dinode_verify, %__here163), %__here163 ], [ blockaddress(@xfs_dinode_verify, %__here173), %__here173 ], [ blockaddress(@xfs_dinode_verify, %__here185), %__here185 ], [ blockaddress(@xfs_dinode_verify, %__here152), %__here152 ], [ blockaddress(@xfs_dinode_verify, %__here127), %__here127 ], [ blockaddress(@xfs_dinode_verify, %__here133), %__here133 ], [ blockaddress(@xfs_dinode_verify, %__here107), %__here107 ], [ blockaddress(@xfs_dinode_verify, %__here94), %__here94 ], [ blockaddress(@xfs_dinode_verify, %__here25), %__here25 ], [ blockaddress(@xfs_dinode_verify, %__here13), %__here13 ], [ blockaddress(@xfs_dinode_verify, %__here7), %__here7 ], [ %call97, %if.end96.cleanup_crit_edge ], [ %call111, %sw.bb110.cleanup_crit_edge ], [ %call120, %if.then119.cleanup_crit_edge ], [ %call137, %if.end136.cleanup_crit_edge ], [ null, %if.end140.cleanup_crit_edge ], [ %call176, %if.end175.cleanup_crit_edge ], [ null, %land.lhs.true182.cleanup_crit_edge ], [ null, %xfs_dinode_has_bigtime.exit.cleanup_crit_edge ], [ null, %if.end179.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_verifier_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iformat_data_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iformat_attr_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ifork_init_cow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idestroy_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_to_disk(ptr noundef %ip, ptr noundef writeonly %to, i64 noundef %lsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %0 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 18766, ptr %to, align 8
  %di_onlink = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 4
  %1 = ptrtoint ptr %di_onlink to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %di_onlink, align 2
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %i_df, null
  br i1 %tobool.not.i, label %entry.xfs_ifork_format.exit_crit_edge, label %if.end.i

entry.xfs_ifork_format.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_format.i, align 2
  br label %xfs_ifork_format.exit

xfs_ifork_format.exit:                            ; preds = %if.end.i, %entry.xfs_ifork_format.exit_crit_edge
  %retval.0.i = phi i8 [ %3, %if.end.i ], [ 2, %entry.xfs_ifork_format.exit_crit_edge ]
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 3
  %4 = ptrtoint ptr %di_format to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %retval.0.i, ptr %di_format, align 1
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 8
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %9 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %8, [1 x i32] %10) #5
  %di_uid = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 5
  %11 = ptrtoint ptr %di_uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %di_uid, align 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i97 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i97 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i97, align 8
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %16 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i98 = load i32, ptr %i_gid.i, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i98, 0
  %call1.i99 = tail call i32 @from_kgid(ptr noundef %15, [1 x i32] %17) #5
  %di_gid = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 6
  %18 = ptrtoint ptr %di_gid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call1.i99, ptr %di_gid, align 4
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %19 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_projid, align 8
  %conv = trunc i32 %20 to i16
  %di_projid_lo = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 8
  %21 = ptrtoint ptr %di_projid_lo to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %di_projid_lo, align 4
  %22 = load i32, ptr %i_projid, align 8
  %shr = lshr i32 %22, 16
  %conv5 = trunc i32 %shr to i16
  %di_projid_hi = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 9
  %23 = ptrtoint ptr %di_projid_hi to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv5, ptr %di_projid_hi, align 2
  %di_pad = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 10
  %24 = call ptr @memset(ptr %di_pad, i32 0, i32 6)
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15
  %25 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack = load i64, ptr %i_atime, align 8
  %.elt85 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 15, i32 1
  %26 = ptrtoint ptr %.elt85 to i32
  call void @__asan_load8_noabort(i32 %26)
  %.unpack86 = load i64, ptr %.elt85, align 8
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %27 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %28, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i100, label %if.then.i

if.then.i:                                        ; preds = %xfs_ifork_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = mul i64 %.unpack, 1000000000
  %mul.i.i = add i64 %29, 2147483648000000000
  %conv.i.i = ashr i64 %.unpack86, 32
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %xfs_inode_to_disk_ts.exit

if.end.i100:                                      ; preds = %xfs_ifork_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ts.sroa.0.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %.unpack, i64 %.unpack86, i64 32) #5
  br label %xfs_inode_to_disk_ts.exit

xfs_inode_to_disk_ts.exit:                        ; preds = %if.end.i100, %if.then.i
  %retval.0.i101 = phi i64 [ %add.i.i, %if.then.i ], [ %ts.sroa.0.0.insert.insert.i, %if.end.i100 ]
  %di_atime = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 12
  %30 = ptrtoint ptr %di_atime to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %retval.0.i101, ptr %di_atime, align 8
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %31 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %31)
  %.unpack87 = load i64, ptr %i_mtime, align 8
  %.elt88 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16, i32 1
  %32 = ptrtoint ptr %.elt88 to i32
  call void @__asan_load8_noabort(i32 %32)
  %.unpack89 = load i64, ptr %.elt88, align 8
  %33 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i103 = and i64 %34, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i103)
  %tobool.i.not.i104 = icmp eq i64 %and.i.i103, 0
  br i1 %tobool.i.not.i104, label %if.end.i110, label %if.then.i108

if.then.i108:                                     ; preds = %xfs_inode_to_disk_ts.exit
  call void @__sanitizer_cov_trace_pc() #7
  %35 = mul i64 %.unpack87, 1000000000
  %mul.i.i105 = add i64 %35, 2147483648000000000
  %conv.i.i106 = ashr i64 %.unpack89, 32
  %add.i.i107 = add i64 %mul.i.i105, %conv.i.i106
  br label %xfs_inode_to_disk_ts.exit112

if.end.i110:                                      ; preds = %xfs_inode_to_disk_ts.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ts.sroa.0.0.insert.insert.i109 = tail call i64 @llvm.fshl.i64(i64 %.unpack87, i64 %.unpack89, i64 32) #5
  br label %xfs_inode_to_disk_ts.exit112

xfs_inode_to_disk_ts.exit112:                     ; preds = %if.end.i110, %if.then.i108
  %retval.0.i111 = phi i64 [ %add.i.i107, %if.then.i108 ], [ %ts.sroa.0.0.insert.insert.i109, %if.end.i110 ]
  %di_mtime = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 13
  %36 = ptrtoint ptr %di_mtime to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %retval.0.i111, ptr %di_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %37 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %37)
  %.unpack90 = load i64, ptr %i_ctime, align 8
  %.elt91 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17, i32 1
  %38 = ptrtoint ptr %.elt91 to i32
  call void @__asan_load8_noabort(i32 %38)
  %.unpack92 = load i64, ptr %.elt91, align 8
  %39 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i114 = and i64 %40, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i114)
  %tobool.i.not.i115 = icmp eq i64 %and.i.i114, 0
  br i1 %tobool.i.not.i115, label %if.end.i121, label %if.then.i119

if.then.i119:                                     ; preds = %xfs_inode_to_disk_ts.exit112
  call void @__sanitizer_cov_trace_pc() #7
  %41 = mul i64 %.unpack90, 1000000000
  %mul.i.i116 = add i64 %41, 2147483648000000000
  %conv.i.i117 = ashr i64 %.unpack92, 32
  %add.i.i118 = add i64 %mul.i.i116, %conv.i.i117
  br label %xfs_inode_to_disk_ts.exit123

if.end.i121:                                      ; preds = %xfs_inode_to_disk_ts.exit112
  call void @__sanitizer_cov_trace_pc() #7
  %ts.sroa.0.0.insert.insert.i120 = tail call i64 @llvm.fshl.i64(i64 %.unpack90, i64 %.unpack92, i64 32) #5
  br label %xfs_inode_to_disk_ts.exit123

xfs_inode_to_disk_ts.exit123:                     ; preds = %if.end.i121, %if.then.i119
  %retval.0.i122 = phi i64 [ %add.i.i118, %if.then.i119 ], [ %ts.sroa.0.0.insert.insert.i120, %if.end.i121 ]
  %di_ctime = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 14
  %42 = ptrtoint ptr %di_ctime to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %retval.0.i122, ptr %di_ctime, align 8
  %43 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 12
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %di_nlink = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 7
  %46 = ptrtoint ptr %di_nlink to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %di_nlink, align 8
  %i_generation = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 49
  %47 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_generation, align 8
  %di_gen = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 25
  %49 = ptrtoint ptr %di_gen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %di_gen, align 4
  %50 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %i_vnode.i, align 8
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 1
  %52 = ptrtoint ptr %di_mode to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %di_mode, align 2
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %53 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_disk_size, align 8
  %di_size = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 15
  %55 = ptrtoint ptr %di_size to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %di_size, align 8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %56 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_nblocks, align 8
  %di_nblocks = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 16
  %58 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %di_nblocks, align 8
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %59 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_extsize, align 4
  %di_extsize = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 17
  %61 = ptrtoint ptr %di_extsize to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %di_extsize, align 8
  br i1 %tobool.not.i, label %xfs_inode_to_disk_ts.exit123.xfs_ifork_nextents.exit_crit_edge, label %if.end.i125

xfs_inode_to_disk_ts.exit123.xfs_ifork_nextents.exit_crit_edge: ; preds = %xfs_inode_to_disk_ts.exit123
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_nextents.exit

if.end.i125:                                      ; preds = %xfs_inode_to_disk_ts.exit123
  call void @__sanitizer_cov_trace_pc() #7
  %if_nextents.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %62 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %if_nextents.i, align 4
  br label %xfs_ifork_nextents.exit

xfs_ifork_nextents.exit:                          ; preds = %if.end.i125, %xfs_inode_to_disk_ts.exit123.xfs_ifork_nextents.exit_crit_edge
  %retval.0.i126 = phi i32 [ %63, %if.end.i125 ], [ 0, %xfs_inode_to_disk_ts.exit123.xfs_ifork_nextents.exit_crit_edge ]
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 18
  %64 = ptrtoint ptr %di_nextents to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i126, ptr %di_nextents, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %65 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_afp, align 8
  %tobool.not.i127 = icmp eq ptr %66, null
  br i1 %tobool.not.i127, label %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit131_crit_edge, label %if.end.i129

xfs_ifork_nextents.exit.xfs_ifork_nextents.exit131_crit_edge: ; preds = %xfs_ifork_nextents.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_nextents.exit131

if.end.i129:                                      ; preds = %xfs_ifork_nextents.exit
  call void @__sanitizer_cov_trace_pc() #7
  %if_nextents.i128 = getelementptr inbounds %struct.xfs_ifork, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %if_nextents.i128 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %if_nextents.i128, align 4
  %phi.cast = trunc i32 %68 to i16
  br label %xfs_ifork_nextents.exit131

xfs_ifork_nextents.exit131:                       ; preds = %if.end.i129, %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit131_crit_edge
  %retval.0.i130 = phi i16 [ %phi.cast, %if.end.i129 ], [ 0, %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit131_crit_edge ]
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 19
  %69 = ptrtoint ptr %di_anextents to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %retval.0.i130, ptr %di_anextents, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %70 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i_forkoff, align 4
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 20
  %72 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %di_forkoff, align 2
  %73 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_afp, align 8
  %tobool.not.i132 = icmp eq ptr %74, null
  br i1 %tobool.not.i132, label %xfs_ifork_nextents.exit131.xfs_ifork_format.exit136_crit_edge, label %if.end.i134

xfs_ifork_nextents.exit131.xfs_ifork_format.exit136_crit_edge: ; preds = %xfs_ifork_nextents.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_format.exit136

if.end.i134:                                      ; preds = %xfs_ifork_nextents.exit131
  call void @__sanitizer_cov_trace_pc() #7
  %if_format.i133 = getelementptr inbounds %struct.xfs_ifork, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %if_format.i133 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %if_format.i133, align 2
  br label %xfs_ifork_format.exit136

xfs_ifork_format.exit136:                         ; preds = %if.end.i134, %xfs_ifork_nextents.exit131.xfs_ifork_format.exit136_crit_edge
  %retval.0.i135 = phi i8 [ %76, %if.end.i134 ], [ 2, %xfs_ifork_nextents.exit131.xfs_ifork_format.exit136_crit_edge ]
  %di_aformat = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 21
  %77 = ptrtoint ptr %di_aformat to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %retval.0.i135, ptr %di_aformat, align 1
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %78 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %i_diflags, align 2
  %di_flags = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 24
  %80 = ptrtoint ptr %di_flags to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %di_flags, align 2
  %81 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %82, i32 0, i32 61
  %83 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %84, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %di_version20 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 2
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %xfs_ifork_format.exit136
  %85 = ptrtoint ptr %di_version20 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 3, ptr %di_version20, align 4
  %i_version.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #5
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #5
  %shr.i = lshr i64 %call.i.i.i, 1
  %di_changecount = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 28
  %86 = ptrtoint ptr %di_changecount to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shr.i, ptr %di_changecount, align 8
  %i_crtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 26
  %87 = ptrtoint ptr %i_crtime to i32
  call void @__asan_load8_noabort(i32 %87)
  %.unpack93 = load i64, ptr %i_crtime, align 8
  %.elt94 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 26, i32 1
  %88 = ptrtoint ptr %.elt94 to i32
  call void @__asan_load8_noabort(i32 %88)
  %.unpack95 = load i64, ptr %.elt94, align 8
  %89 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i138 = and i64 %90, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i138)
  %tobool.i.not.i139 = icmp eq i64 %and.i.i138, 0
  br i1 %tobool.i.not.i139, label %if.end.i145, label %if.then.i143

if.then.i143:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %91 = mul i64 %.unpack93, 1000000000
  %mul.i.i140 = add i64 %91, 2147483648000000000
  %conv.i.i141 = ashr i64 %.unpack95, 32
  %add.i.i142 = add i64 %mul.i.i140, %conv.i.i141
  br label %xfs_inode_to_disk_ts.exit147

if.end.i145:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %ts.sroa.0.0.insert.insert.i144 = tail call i64 @llvm.fshl.i64(i64 %.unpack93, i64 %.unpack95, i64 32) #5
  br label %xfs_inode_to_disk_ts.exit147

xfs_inode_to_disk_ts.exit147:                     ; preds = %if.end.i145, %if.then.i143
  %retval.0.i146 = phi i64 [ %add.i.i142, %if.then.i143 ], [ %ts.sroa.0.0.insert.insert.i144, %if.end.i145 ]
  %di_crtime = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 33
  %92 = ptrtoint ptr %di_crtime to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %retval.0.i146, ptr %di_crtime, align 8
  %93 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %i_diflags2.i.i, align 8
  %di_flags2 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 30
  %95 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %di_flags2, align 8
  %96 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 8
  %di_cowextsize = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 31
  %99 = ptrtoint ptr %di_cowextsize to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %di_cowextsize, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %100 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %i_ino, align 8
  %di_ino = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 34
  %102 = ptrtoint ptr %di_ino to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %di_ino, align 8
  %di_lsn = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 29
  %103 = ptrtoint ptr %di_lsn to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %lsn, ptr %di_lsn, align 8
  %di_pad2 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 32
  %104 = call ptr @memset(ptr %di_pad2, i32 0, i32 12)
  %di_uuid = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 35
  %105 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ip, align 8
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %106, i32 0, i32 54
  %107 = call ptr @memcpy(ptr %di_uuid, ptr %sb_meta_uuid, i32 16)
  br label %if.end

if.else:                                          ; preds = %xfs_ifork_format.exit136
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %di_version20 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %di_version20, align 4
  %109 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %109, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %xfs_inode_to_disk_ts.exit147
  %.sink = phi i16 [ %111, %if.else ], [ 0, %xfs_inode_to_disk_ts.exit147 ]
  %di_flushiter21 = getelementptr inbounds %struct.xfs_dinode, ptr %to, i32 0, i32 11
  %112 = ptrtoint ptr %di_flushiter21 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %.sink, ptr %di_flushiter21, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @xfs_mode_to_ftype(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dinode_verify_forkoff(ptr nocapture noundef readonly %dip, ptr nocapture noundef readonly %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %0 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 3
  %2 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %di_format, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %3, label %__here20 [
    i8 0, label %sw.bb
    i8 1, label %if.end.sw.bb7_crit_edge
    i8 2, label %if.end.sw.bb7_crit_edge28
    i8 3, label %if.end.sw.bb7_crit_edge29
  ]

if.end.sw.bb7_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end.sw.bb7_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %sw.bb.return_crit_edge, label %__here

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

__here:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !70
  br label %return

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge28, %if.end.sw.bb7_crit_edge29
  %conv9 = zext i8 %1 to i32
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %5 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sb_inodesize, align 8
  %conv10 = zext i16 %6 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %7 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub12 = add nsw i32 %cond.neg, %conv10
  %shr13 = lshr i32 %sub12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13, i32 %conv9)
  %cmp14.not = icmp ugt i32 %shr13, %conv9
  br i1 %cmp14.not, label %sw.bb7.return_crit_edge, label %__here17

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

__here17:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !71
  br label %return

__here20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !72
  br label %return

return:                                           ; preds = %__here20, %__here17, %sw.bb7.return_crit_edge, %__here, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ blockaddress(@xfs_dinode_verify_forkoff, %__here20), %__here20 ], [ blockaddress(@xfs_dinode_verify_forkoff, %__here17), %__here17 ], [ blockaddress(@xfs_dinode_verify_forkoff, %__here), %__here ], [ null, %entry.return_crit_edge ], [ null, %sw.bb7.return_crit_edge ], [ null, %sw.bb.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_dinode_verify_fork(ptr nocapture noundef readonly %dip, ptr nocapture noundef readonly %mp, i32 noundef %whichfork) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %di_nextents1 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %0 = ptrtoint ptr %di_nextents1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %di_nextents1, align 4
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 3
  %2 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %di_format, align 1
  %conv5 = zext i8 %3 to i32
  br label %cond.end8

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %4 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %di_anextents, align 8
  %conv = zext i16 %5 to i32
  %di_aformat = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 21
  %6 = ptrtoint ptr %di_aformat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %di_aformat, align 1
  %conv7 = sext i8 %7 to i32
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true4
  %cond166 = phi i32 [ %1, %cond.true4 ], [ %conv, %cond.false6 ]
  %cond9 = phi i32 [ %conv5, %cond.true4 ], [ %conv7, %cond.false6 ]
  %8 = zext i32 %cond9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %cond9, label %__here128 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb63
    i32 3, label %sw.bb111
  ]

sw.bb:                                            ; preds = %cond.end8
  br i1 %cmp, label %if.then, label %sw.bb.if.end57_crit_edge

sw.bb.if.end57_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then:                                          ; preds = %sw.bb
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 1
  %9 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %di_mode, align 2
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %11)
  %cmp13 = icmp eq i16 %11, -32768
  br i1 %cmp13, label %__here, label %if.end

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !73
  br label %cleanup

if.end:                                           ; preds = %if.then
  %di_size = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 15
  %12 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %di_size, align 8
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %14 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %cond.false23, label %cond.true20

cond.true20:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv19 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv19, 3
  br label %cond.end48

cond.false23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %16 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_inodesize, align 8
  %conv24 = zext i16 %17 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond26.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond26.neg, %conv24
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false23, %cond.true20
  %cond49 = phi i32 [ %shl, %cond.true20 ], [ %sub, %cond.false23 ]
  %conv50 = zext i32 %cond49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv50)
  %cmp51 = icmp ugt i64 %13, %conv50
  br i1 %cmp51, label %__here54, label %cond.end48.if.end57_crit_edge

cond.end48.if.end57_crit_edge:                    ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

__here54:                                         ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !74
  br label %cleanup

if.end57:                                         ; preds = %cond.end48.if.end57_crit_edge, %sw.bb.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond166)
  %tobool58.not = icmp eq i32 %cond166, 0
  br i1 %tobool58.not, label %if.end57.cleanup_crit_edge, label %__here60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !75
  br label %cleanup

sw.bb63:                                          ; preds = %cond.end8
  %di_forkoff67 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %20 = ptrtoint ptr %di_forkoff67 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %di_forkoff67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool69.not = icmp eq i8 %21, 0
  br i1 %cmp, label %cond.true66, label %cond.false84

cond.true66:                                      ; preds = %sw.bb63
  br i1 %tobool69.not, label %cond.false74, label %cond.true70

cond.true70:                                      ; preds = %cond.true66
  call void @__sanitizer_cov_trace_pc() #7
  %conv68 = zext i8 %21 to i32
  %shl73 = shl nuw nsw i32 %conv68, 3
  br label %cond.end103

cond.false74:                                     ; preds = %cond.true66
  call void @__sanitizer_cov_trace_pc() #7
  %sb_inodesize76 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %22 = ptrtoint ptr %sb_inodesize76 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_inodesize76, align 8
  %conv77 = zext i16 %23 to i32
  %m_features.i159 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %24 = ptrtoint ptr %m_features.i159 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_features.i159, align 8
  %and.i160 = and i64 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i160)
  %tobool.i161.not = icmp eq i64 %and.i160, 0
  %cond80.neg = select i1 %tobool.i161.not, i32 -100, i32 -176
  %sub81 = add nsw i32 %cond80.neg, %conv77
  br label %cond.end103

cond.false84:                                     ; preds = %sw.bb63
  br i1 %tobool69.not, label %cond.false84.cond.end103_crit_edge, label %cond.true88

cond.false84.cond.end103_crit_edge:               ; preds = %cond.false84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end103

cond.true88:                                      ; preds = %cond.false84
  call void @__sanitizer_cov_trace_pc() #7
  %sb_inodesize90 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %26 = ptrtoint ptr %sb_inodesize90 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_inodesize90, align 8
  %conv91 = zext i16 %27 to i32
  %m_features.i162 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i162 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i162, align 8
  %and.i163 = and i64 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i163)
  %tobool.i164.not = icmp eq i64 %and.i163, 0
  %cond94.neg = select i1 %tobool.i164.not, i32 -100, i32 -176
  %conv97 = zext i8 %21 to i32
  %shl98.neg = mul nsw i32 %conv97, -8
  %sub95 = add nsw i32 %shl98.neg, %conv91
  %sub99 = add nsw i32 %sub95, %cond94.neg
  br label %cond.end103

cond.end103:                                      ; preds = %cond.true88, %cond.false84.cond.end103_crit_edge, %cond.false74, %cond.true70
  %cond104 = phi i32 [ %shl73, %cond.true70 ], [ %sub81, %cond.false74 ], [ %sub99, %cond.true88 ], [ 0, %cond.false84.cond.end103_crit_edge ]
  %div158 = lshr i32 %cond104, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond166, i32 %div158)
  %cmp105 = icmp ugt i32 %cond166, %div158
  br i1 %cmp105, label %__here108, label %cond.end103.cleanup_crit_edge

cond.end103.cleanup_crit_edge:                    ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here108:                                        ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !76
  br label %cleanup

sw.bb111:                                         ; preds = %cond.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp112 = icmp eq i32 %whichfork, 1
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %cond166)
  %cmp115 = icmp ugt i32 %cond166, 32767
  br i1 %cmp115, label %__here118, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here118:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !77
  br label %cleanup

if.else:                                          ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond166)
  %cmp121 = icmp slt i32 %cond166, 0
  br i1 %cmp121, label %__here124, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here124:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !78
  br label %cleanup

__here128:                                        ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %__here128, %__here124, %if.else.cleanup_crit_edge, %__here118, %if.then114.cleanup_crit_edge, %__here108, %cond.end103.cleanup_crit_edge, %__here60, %if.end57.cleanup_crit_edge, %__here54, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_dinode_verify_fork, %__here128), %__here128 ], [ blockaddress(@xfs_dinode_verify_fork, %__here118), %__here118 ], [ blockaddress(@xfs_dinode_verify_fork, %__here124), %__here124 ], [ blockaddress(@xfs_dinode_verify_fork, %__here108), %__here108 ], [ blockaddress(@xfs_dinode_verify_fork, %__here), %__here ], [ blockaddress(@xfs_dinode_verify_fork, %__here54), %__here54 ], [ blockaddress(@xfs_dinode_verify_fork, %__here60), %__here60 ], [ null, %if.then114.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ null, %cond.end103.cleanup_crit_edge ], [ null, %if.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_inode_validate_extsize(ptr nocapture noundef readonly %mp, i32 noundef %extsize, i16 noundef zeroext %mode, i16 noundef zeroext %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and6 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %conv9 = zext i32 %extsize to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %conv9, %sh_prom
  %conv11 = trunc i64 %shl to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 10
  %2 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_rextsize, align 16
  %conv14 = zext i32 %3 to i64
  %shl19 = shl i64 %conv14, %sh_prom
  %conv20 = trunc i64 %shl19 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %4 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_blocksize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %blocksize_bytes.0 = phi i32 [ %conv20, %if.then ], [ %5, %if.else ]
  %6 = and i32 %conv, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp ne i32 %6, 0
  %8 = and i16 %mode, -4096
  br i1 %7, label %land.lhs.true, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %8, label %__here [
    i16 16384, label %land.lhs.true.if.end35_crit_edge
    i16 -32768, label %land.lhs.true.if.end35_crit_edge141
  ]

land.lhs.true.if.end35_crit_edge141:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !80
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge141, %if.end.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp41 = icmp eq i16 %8, -32768
  %or.cond = or i1 %cmp41, %tobool3.not
  br i1 %or.cond, label %if.end46, label %__here44

__here44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !81
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp52 = icmp eq i16 %8, 16384
  %or.cond131 = or i1 %cmp52, %tobool7.not
  br i1 %or.cond131, label %if.end57, label %__here55

__here55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !82
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extsize)
  %cmp64 = icmp eq i32 %extsize, 0
  %or.cond135 = and i1 %cmp64, %7
  br i1 %or.cond135, label %__here67, label %if.end69

__here67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !83
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %tobool71.not = icmp eq i16 %mode, 0
  %brmerge139 = or i1 %tobool71.not, %7
  %or.cond140 = or i1 %cmp64, %brmerge139
  br i1 %or.cond140, label %if.end84, label %__here82

__here82:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !84
  br label %cleanup

if.end84:                                         ; preds = %if.end69
  %rem = urem i32 %conv11, %blocksize_bytes.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool85.not = icmp eq i32 %rem, 0
  br i1 %tobool85.not, label %if.end89, label %__here87

__here87:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !85
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %extsize)
  %cmp90 = icmp ugt i32 %extsize, 2097151
  br i1 %cmp90, label %__here93, label %if.end95

__here93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !86
  br label %cleanup

if.end95:                                         ; preds = %if.end89
  br i1 %tobool.not, label %land.lhs.true97, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true97:                                  ; preds = %if.end95
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %10 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_agblocks, align 4
  %div130 = lshr i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div130, i32 %extsize)
  %cmp99 = icmp ult i32 %div130, %extsize
  br i1 %cmp99, label %__here102, label %land.lhs.true97.cleanup_crit_edge

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here102:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %__here102, %land.lhs.true97.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %__here93, %__here87, %__here82, %__here67, %__here55, %__here44, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_inode_validate_extsize, %__here67), %__here67 ], [ blockaddress(@xfs_inode_validate_extsize, %__here87), %__here87 ], [ blockaddress(@xfs_inode_validate_extsize, %__here93), %__here93 ], [ blockaddress(@xfs_inode_validate_extsize, %__here102), %__here102 ], [ blockaddress(@xfs_inode_validate_extsize, %__here82), %__here82 ], [ blockaddress(@xfs_inode_validate_extsize, %__here55), %__here55 ], [ blockaddress(@xfs_inode_validate_extsize, %__here44), %__here44 ], [ blockaddress(@xfs_inode_validate_extsize, %__here), %__here ], [ null, %land.lhs.true97.cleanup_crit_edge ], [ null, %if.end95.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_inode_validate_cowextsize(ptr nocapture noundef readonly %mp, i32 noundef %cowextsize, i16 noundef zeroext %mode, i16 noundef zeroext %flags, i64 noundef %flags2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %and1 = and i64 %flags2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  %conv4 = zext i32 %cowextsize to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %1 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %2 to i64
  %shl = shl i64 %conv4, %sh_prom
  %conv6 = trunc i64 %shl to i32
  br i1 %tobool2.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %3 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %__here, label %land.lhs.true11.critedge

__here:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !88
  br label %cleanup

land.lhs.true11.critedge:                         ; preds = %land.lhs.true
  %5 = and i16 %mode, -4096
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %5, label %__here20 [
    i16 16384, label %land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge
    i16 -32768, label %land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge94
  ]

land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge94: ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true25.critedge

land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge: ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true25.critedge

__here20:                                         ; preds = %land.lhs.true11.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !89
  br label %cleanup

land.lhs.true25.critedge:                         ; preds = %land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge, %land.lhs.true11.critedge.land.lhs.true25.critedge_crit_edge94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cowextsize)
  %cmp26 = icmp eq i32 %cowextsize, 0
  br i1 %cmp26, label %__here29, label %if.end42

__here29:                                         ; preds = %land.lhs.true25.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !90
  br label %cleanup

if.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mode)
  %tobool33.not = icmp eq i16 %mode, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cowextsize)
  %cmp37.not = icmp eq i32 %cowextsize, 0
  %or.cond = or i1 %cmp37.not, %tobool33.not
  br i1 %or.cond, label %if.end31.if.end51_crit_edge, label %__here40

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

__here40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !91
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true25.critedge
  br i1 %tobool.not, label %if.end42.if.end51_crit_edge, label %__here49

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

__here49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !92
  br label %cleanup

if.end51:                                         ; preds = %if.end42.if.end51_crit_edge, %if.end31.if.end51_crit_edge
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %7 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_blocksize, align 4
  %rem = urem i32 %conv6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool53.not = icmp eq i32 %rem, 0
  br i1 %tobool53.not, label %if.end57, label %__here55

__here55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !93
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %cowextsize)
  %cmp58 = icmp ugt i32 %cowextsize, 2097151
  br i1 %cmp58, label %__here61, label %if.end63

__here61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !94
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %9 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks, align 4
  %div86 = lshr i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div86, i32 %cowextsize)
  %cmp65 = icmp ult i32 %div86, %cowextsize
  br i1 %cmp65, label %__here68, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

__here68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %__here68, %if.end63.cleanup_crit_edge, %__here61, %__here55, %__here49, %__here40, %__here29, %__here20, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_inode_validate_cowextsize, %__here29), %__here29 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here49), %__here49 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here55), %__here55 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here61), %__here61 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here68), %__here68 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here40), %__here40 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here20), %__here20 ], [ blockaddress(@xfs_inode_validate_cowextsize, %__here), %__here ], [ null, %if.end63.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_dinode_calc_crc(ptr nocapture noundef readonly %mp, ptr noundef %dip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %0 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !38

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 553) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %4 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sb_inodesize, align 8
  %conv3 = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %dip, i32 100
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %dip, i32 noundef %conv3) #5
  %7 = xor i32 %call.i, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inode_buf_verify(ptr noundef %bp, i1 noundef zeroext %readahead) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %2 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_maps.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %7 to i64
  %shr.i = ashr i64 %5, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !37

if.then172.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv173.i = trunc i64 %shr.i to i32
  %div176.i = udiv i32 %conv173.i, %9
  br label %xfs_daddr_to_agno.exit

if.else178.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %shr.i) #8, !srcloc !96
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t290.i = trunc i64 %asmresult1.i.i to i32
  br label %xfs_daddr_to_agno.exit

xfs_daddr_to_agno.exit:                           ; preds = %if.else178.i, %if.then172.i
  %ld.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t290.i, %if.else178.i ]
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %11 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_length, align 8
  %conv = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %add = add i32 %12, %sub
  %shr = ashr i32 %add, %conv
  %sb_inopblock = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %sb_inopblock to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sb_inopblock, align 2
  %conv4 = zext i16 %14 to i32
  %mul = mul i32 %shr, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp65 = icmp sgt i32 %mul, 0
  br i1 %cmp65, label %for.body.lr.ph, label %xfs_daddr_to_agno.exit.cleanup28_crit_edge

xfs_daddr_to_agno.exit.cleanup28_crit_edge:       ; preds = %xfs_daddr_to_agno.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

for.body.lr.ph:                                   ; preds = %xfs_daddr_to_agno.exit
  %sb_inodelog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 22
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  %15 = ptrtoint ptr %sb_inodelog to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_inodelog, align 2
  %conv7 = zext i8 %16 to i32
  %shl8 = shl i32 %i.066, %conv7
  %call9 = tail call ptr @xfs_buf_offset(ptr noundef %bp, i32 noundef %shl8) #5
  %di_next_unlinked = getelementptr inbounds %struct.xfs_dinode, ptr %call9, i32 0, i32 26
  %17 = ptrtoint ptr %di_next_unlinked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %di_next_unlinked, align 8
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call9, align 8
  %call10 = tail call zeroext i1 @xfs_verify_magic16(ptr noundef %bp, i16 noundef zeroext %20) #5
  br i1 %call10, label %land.lhs.true, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %for.body
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %call9, i32 0, i32 2
  %21 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %di_version, align 4
  %23 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i.i, align 8
  %and.i.i61 = and i64 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i61)
  %tobool.i.not.i = icmp eq i64 %and.i.i61, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i62 = icmp eq i8 %22, 3
  %25 = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %26 = icmp ult i8 %25, 2
  %retval.0.i = select i1 %tobool.i.not.i, i1 %26, i1 %cmp.i62
  br i1 %retval.0.i, label %land.rhs, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.rhs:                                         ; preds = %land.lhs.true
  %call14 = tail call zeroext i1 @xfs_verify_agino_or_null(ptr noundef %1, i32 noundef %ld.0.off0.i, i32 noundef %18) #5
  br i1 %call14, label %lor.rhs, label %land.rhs.if.then_crit_edge, !prof !37

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.rhs:                                          ; preds = %land.rhs
  %call16 = tail call zeroext i1 @xfs_errortag_test(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 64, i32 noundef 12) #5
  br i1 %call16, label %lor.rhs.if.then_crit_edge, label %for.inc.critedge, !prof !38

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %land.rhs.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  br i1 %readahead, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 5
  %27 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_flags, align 4
  %and = and i32 %28, -33
  store i32 %and, ptr %b_flags, align 4
  br label %__here

__here:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !97
  tail call void @__xfs_buf_ioerror(ptr noundef %bp, i32 noundef -5, ptr noundef blockaddress(@xfs_inode_buf_verify, %__here)) #5
  br label %cleanup28

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_maps.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %30, align 8
  %33 = ptrtoint ptr %call9 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call9, align 8
  %conv24 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.8, i64 noundef %32, i32 noundef %i.066, i32 noundef %conv24) #5
  tail call void @xfs_buf_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull @__func__.xfs_inode_buf_verify, ptr noundef %call9, i32 noundef 176, ptr noundef null) #5
  br label %cleanup28

for.inc.critedge:                                 ; preds = %lor.rhs
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.inc.critedge.cleanup28_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.critedge.cleanup28_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

cleanup28:                                        ; preds = %for.inc.critedge.cleanup28_crit_edge, %if.end, %__here, %xfs_daddr_to_agno.exit.cleanup28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_agino_or_null(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_buf_ioerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_verifier_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 108, i32 10}
!2 = !{ptr @xfs_inode_buf_ops, !3, !"xfs_inode_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 107, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 116, i32 10}
!6 = !{ptr @xfs_inode_buf_ra_ops, !7, !"xfs_inode_buf_ra_ops", i1 false, i1 false}
!7 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 115, i32 26}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 180, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 181, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 185, i32 47}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 553, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 63, i32 7}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 73, i32 5}
!21 = !{ptr @__func__.xfs_inode_buf_verify, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_inode_buf.c", i32 78, i32 6}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"xfs_inode_decode_bigtime: %agg.result"}
!34 = distinct !{!34, !"xfs_inode_decode_bigtime"}
!35 = !{i64 999009, i64 999036, i64 999058, i64 999086}
!36 = !{i64 999417, i64 999444, i64 999477, i64 999498, i64 999525, i64 999551}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!40}
!40 = distinct !{!40, !41, !"xfs_inode_from_disk_ts: %agg.result"}
!41 = distinct !{!41, !"xfs_inode_from_disk_ts"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"xfs_inode_from_disk_ts: %agg.result"}
!44 = distinct !{!44, !"xfs_inode_from_disk_ts"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"xfs_inode_from_disk_ts: %agg.result"}
!47 = distinct !{!47, !"xfs_inode_from_disk_ts"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"xfs_inode_from_disk_ts: %agg.result"}
!50 = distinct !{!50, !"xfs_inode_from_disk_ts"}
!51 = !{i64 2155799201}
!52 = !{i64 2155799292}
!53 = !{i64 2155799528}
!54 = !{i64 2155799674}
!55 = !{i64 2155799765}
!56 = !{i64 2155799912}
!57 = !{i64 2155800061}
!58 = !{i64 2155800252}
!59 = !{i64 2155800523}
!60 = !{i64 2155800650}
!61 = !{i64 2155800831}
!62 = !{i64 2155800963}
!63 = !{i64 2155801080}
!64 = !{i64 2155801173}
!65 = !{i64 2155801264}
!66 = !{i64 2155801553}
!67 = !{i64 2155801694}
!68 = !{i64 2155801851}
!69 = !{i64 2155802004}
!70 = !{i64 2155798596}
!71 = !{i64 2155798950}
!72 = !{i64 2155799041}
!73 = !{i64 2155795930}
!74 = !{i64 2155796930}
!75 = !{i64 2155797021}
!76 = !{i64 2155798041}
!77 = !{i64 2155798158}
!78 = !{i64 2155798276}
!79 = !{i64 2155798367}
!80 = !{i64 2155802782}
!81 = !{i64 2155802923}
!82 = !{i64 2155803064}
!83 = !{i64 2155803155}
!84 = !{i64 2155803246}
!85 = !{i64 2155803337}
!86 = !{i64 2155803455}
!87 = !{i64 2155803546}
!88 = !{i64 2155803781}
!89 = !{i64 2155803972}
!90 = !{i64 2155804063}
!91 = !{i64 2155804154}
!92 = !{i64 2155804245}
!93 = !{i64 2155804336}
!94 = !{i64 2155804454}
!95 = !{i64 2155804545}
!96 = !{i64 2148484553, i64 2148484833, i64 2148485167, i64 2148485501}
!97 = !{i64 2155791658}
