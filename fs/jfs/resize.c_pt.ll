; ModuleID = '/llk/IR_all_yes/fs/jfs/resize.c_pt.bc'
source_filename = "../fs/jfs/resize.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.jfs_superblock = type { [4 x i8], i32, i64, i32, i16, i16, i32, i16, i16, i32, i32, i32, i32, %struct.pxd_t, %struct.pxd_t, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.timestruc_t, i32, i8, [11 x i8], i64, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, [16 x i8], %struct.uuid_t }
%struct.timestruc_t = type { i32, i32 }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }

@jfs_extendfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014jfs_extendfs: volume hasn't grown, returning\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jfs_extendfs\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/jfs/resize.c\00", [16 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr = internal global ptr @jfs_extendfs._entry, section ".printk_index", align 4
@jfs_extendfs._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014jfs_extendfs: invalid size\0A\00", [34 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr.5 = internal global ptr @jfs_extendfs._entry.3, section ".printk_index", align 4
@jfs_extendfs._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr.7 = internal global ptr @jfs_extendfs._entry.6, section ".printk_index", align 4
@jfs_extendfs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014jfs_extendfs: read-only file system\0A\00", [57 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr.10 = internal global ptr @jfs_extendfs._entry.8, section ".printk_index", align 4
@jfs_extendfs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013jfs_extendfs: mapSize (0x%Lx) > t64 (0x%Lx)\0A\00", [49 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr.13 = internal global ptr @jfs_extendfs._entry.11, section ".printk_index", align 4
@jfs_extendfs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013jfs_extendfs: diReadSpecial(bmap) failed\0A\00", [52 x i8] zeroinitializer }, align 32
@jfs_extendfs._entry_ptr.16 = internal global ptr @jfs_extendfs._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 84, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 92, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 100, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 110, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 308, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 469, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [19 x i8] c"../fs/jfs/resize.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 526, i32 16 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @jfs_extendfs._entry, ptr @jfs_extendfs._entry.11, ptr @jfs_extendfs._entry.14, ptr @jfs_extendfs._entry.3, ptr @jfs_extendfs._entry.6, ptr @jfs_extendfs._entry.8, ptr @jfs_extendfs._entry_ptr, ptr @jfs_extendfs._entry_ptr.10, ptr @jfs_extendfs._entry_ptr.13, ptr @jfs_extendfs._entry_ptr.16, ptr @jfs_extendfs._entry_ptr.5, ptr @jfs_extendfs._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_extendfs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_extendfs(ptr noundef %sb, i64 noundef %newLVSize, i32 noundef %newLogSize) local_unnamed_addr #0 align 64 {
entry:
  %xaddr = alloca i64, align 8
  %xlen = alloca i32, align 4
  %iplist = alloca [1 x ptr], align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %ipbmap1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ipbmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipbmap1, align 4
  %ipimap2 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ipimap2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipimap2, align 4
  %log3 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %log3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log3, align 4
  %bmap = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmap, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #5
  %10 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %xaddr, align 8, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #5
  %11 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %xlen, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iplist) #5
  %12 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %iplist, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #5
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !36
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mntflag, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %fsckpxd = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 16
  %addr2.i469 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 16, i32 1
  %logpxd = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 15
  %addr2.i = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 15, i32 1
  %addr2.i469.sink = select i1 %tobool.not, ptr %addr2.i469, ptr %addr2.i
  %.sink.in = select i1 %tobool.not, ptr %fsckpxd, ptr %logpxd
  %16 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.sink = load i32, ptr %.sink.in, align 4
  %shl.i468.sink.in.in = shl i32 %.sink, 24
  %shl.i468.sink.in = zext i32 %shl.i468.sink.in.in to i64
  %shl.i468.sink = shl nuw nsw i64 %shl.i468.sink.in, 8
  %17 = ptrtoint ptr %addr2.i469.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr2.i469.sink, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %conv1.i470 = zext i32 %19 to i64
  %add.i471 = or i64 %shl.i468.sink, %conv1.i470
  %20 = and i32 %.sink, -256
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %conv10 = zext i32 %21 to i64
  %add11 = add nuw nsw i64 %add.i471, %conv10
  call void @__sanitizer_cov_trace_cmp8(i64 %add11, i64 %newLVSize)
  %cmp.not = icmp slt i64 %add11, %newLVSize
  br i1 %cmp.not, label %if.end15, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %out

if.end15:                                         ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %22 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %26 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i472 = zext i8 %27 to i32
  %sub.i = add nsw i32 %conv.i472, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %25, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %tobool17.not = icmp eq i64 %shr.i, 0
  br i1 %tobool17.not, label %if.else28, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %newLVSize)
  %cmp19 = icmp slt i64 %shr.i, %newLVSize
  br i1 %cmp19, label %do.end24, label %if.then18.if.end38_crit_edge

if.then18.if.end38_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %out

if.else28:                                        ; preds = %if.end15
  %sub = add nsw i64 %newLVSize, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %23, i64 noundef %sub, i32 noundef %29, i32 noundef 8) #5
  %30 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %bh, align 4
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %do.end34, label %bforget.exit

do.end34:                                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %out

bforget.exit:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__bforget(ptr noundef nonnull %call.i) #5
  br label %if.end38

if.end38:                                         ; preds = %bforget.exit, %if.then18.if.end38_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %log.i, align 4
  %tobool.not.i474.not = icmp eq ptr %36, null
  br i1 %tobool.not.i474.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %out

if.end47:                                         ; preds = %if.end38
  %37 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mntflag, align 4
  %and49 = and i32 %38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end73_crit_edge, label %if.then51

if.end47.if.end73_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %newLogSize)
  %cmp52 = icmp eq i32 %newLogSize, 0
  br i1 %cmp52, label %if.then54, label %if.else67

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %39 = lshr i64 %newLVSize, 8
  %conv55 = trunc i64 %39 to i32
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %l2bsize, align 2
  %conv56 = sext i16 %41 to i32
  %sub57 = sub nsw i32 20, %conv56
  %notmask = shl nsw i32 -1, %sub57
  %sub58 = xor i32 %notmask, -1
  %add59 = add i32 %sub58, %conv55
  %and60 = and i32 %add59, %notmask
  %shr63 = lshr i32 33554432, %conv56
  %42 = tail call i32 @llvm.smin.i32(i32 %and60, i32 %shr63)
  br label %if.end73

if.else67:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %newLogSize, 20
  %l2bsize68 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %l2bsize68 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %l2bsize68, align 2
  %conv69466 = zext i16 %44 to i32
  %shr70 = ashr i32 %mul, %conv69466
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then54, %if.end47.if.end73_crit_edge
  %newLogSize.addr.0 = phi i32 [ %42, %if.then54 ], [ %shr70, %if.else67 ], [ 0, %if.end47.if.end73_crit_edge ]
  %conv74 = sext i32 %newLogSize.addr.0 to i64
  %sub75 = sub i64 %newLVSize, %conv74
  %45 = add i64 %sub75, 40959
  %add82 = and i64 %45, -8192
  %sub83 = add i64 %add82, -1
  %div = sdiv i64 %sub83, 32768
  %46 = trunc i64 %div to i32
  %conv86 = add i32 %46, 51
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %l2nbperpage, align 2
  %conv87463 = zext i16 %48 to i32
  %shl88 = shl i32 %conv86, %conv87463
  %conv89 = sext i32 %shl88 to i64
  %sub90 = sub i64 %sub75, %conv89
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub90, i64 %50)
  %cmp95 = icmp slt i64 %sub90, %50
  br i1 %cmp95, label %if.end73.out_crit_edge, label %if.end98

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end98:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool101.not = icmp ne i32 %and49, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub75, i64 %add11)
  %cmp102 = icmp sgt i64 %sub75, %add11
  %or.cond = select i1 %tobool101.not, i1 %cmp102, i1 false
  br i1 %or.cond, label %if.then104, label %if.end98.if.end109_crit_edge

if.end98.if.end109_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then104:                                       ; preds = %if.end98
  %call105 = tail call i32 @lmLogFormat(ptr noundef %7, i64 noundef %sub75, i32 noundef %newLogSize.addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then104.if.end109_crit_edge, label %if.then104.out_crit_edge

if.then104.out_crit_edge:                         ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.end109:                                        ; preds = %if.then104.if.end109_crit_edge, %if.end98.if.end109_crit_edge
  tail call void @txQuiesce(ptr noundef %sb) #5
  %51 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i475 = getelementptr inbounds %struct.block_device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %bd_nr_sectors.i.i475 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bd_nr_sectors.i.i475, align 8
  %shl.i476 = shl i64 %54, 9
  %direct_inode = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 25
  %55 = ptrtoint ptr %direct_inode to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %direct_inode, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %shl.i476, ptr %i_size, align 8
  %58 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mntflag, align 4
  %and112 = and i32 %59, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end109.if.end137_crit_edge, label %if.then114

if.end109.if.end137_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.then114:                                       ; preds = %if.end109
  %call115 = tail call i32 @lmLogShutdown(ptr noundef %7) #5
  %call116 = call i32 @readSuper(ptr noundef %sb, ptr noundef nonnull %bh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.then114.error_out_crit_edge

if.then114.error_out_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end119:                                        ; preds = %if.then114
  %60 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data, align 4
  %s_state = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %s_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_state, align 8
  %or = or i32 %65, 134217728
  store i32 %or, ptr %s_state, align 8
  %66 = call i64 @llvm.bswap.i64(i64 %sub90)
  %s_xsize = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 23
  %67 = ptrtoint ptr %s_xsize to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %s_xsize, align 8
  %s_xfsckpxd = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 24
  %sum.shift.i = lshr i64 %sub90, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i477 = and i32 %conv7.i, 255
  %conv3.i = trunc i64 %sub90 to i32
  %68 = call i32 @llvm.bswap.i32(i32 %conv3.i) #5
  %addr2.i478 = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 24, i32 1
  %69 = ptrtoint ptr %addr2.i478 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %addr2.i478, align 4
  %and1.i = and i32 %shl88, 16777215
  %70 = call i32 @llvm.bswap.i32(i32 %and1.i) #5
  %or.i480 = or i32 %conv.i477, %70
  %71 = ptrtoint ptr %s_xfsckpxd to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or.i480, ptr %s_xfsckpxd, align 4
  %s_xlogpxd = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 25
  %sum.shift.i482 = lshr i64 %sub75, 32
  %conv7.i483 = trunc i64 %sum.shift.i482 to i32
  %conv.i484 = and i32 %conv7.i483, 255
  %conv3.i486 = trunc i64 %sub75 to i32
  %72 = call i32 @llvm.bswap.i32(i32 %conv3.i486) #5
  %addr2.i487 = getelementptr inbounds %struct.jfs_superblock, ptr %63, i32 0, i32 25, i32 1
  %73 = ptrtoint ptr %addr2.i487 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %addr2.i487, align 4
  %and1.i489 = and i32 %newLogSize.addr.0, 16777215
  %74 = call i32 @llvm.bswap.i32(i32 %and1.i489) #5
  %or.i490 = or i32 %conv.i484, %74
  %75 = ptrtoint ptr %s_xlogpxd to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i490, ptr %s_xlogpxd, align 4
  call void @mark_buffer_dirty(ptr noundef %61) #5
  %76 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh, align 4
  %call122 = call i32 @sync_dirty_buffer(ptr noundef %77) #5
  %78 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bh, align 4
  %tobool.not.i491 = icmp eq ptr %79, null
  br i1 %tobool.not.i491, label %if.end119.brelse.exit_crit_edge, label %if.then.i492

if.end119.brelse.exit_crit_edge:                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i492:                                     ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %79) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i492, %if.end119.brelse.exit_crit_edge
  br i1 %or.cond, label %brelse.exit.if.end129_crit_edge, label %if.then124

brelse.exit.if.end129_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then124:                                       ; preds = %brelse.exit
  %call125 = call i32 @lmLogFormat(ptr noundef %7, i64 noundef %sub75, i32 noundef %newLogSize.addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then124.if.end129_crit_edge, label %if.then124.error_out_crit_edge

if.then124.error_out_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.then124.if.end129_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.end129:                                        ; preds = %if.then124.if.end129_crit_edge, %brelse.exit.if.end129_crit_edge
  %base = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 4
  %80 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %sub75, ptr %base, align 8
  %81 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv130 = zext i8 %82 to i32
  %sub131 = sub nsw i32 12, %conv130
  %shr132 = ashr i32 %newLogSize.addr.0, %sub131
  %size = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 5
  %83 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shr132, ptr %size, align 8
  %call133 = call i32 @lmLogInit(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end129.if.end137_crit_edge, label %if.end129.error_out_crit_edge

if.end129.error_out_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.end137:                                        ; preds = %if.end129.if.end137_crit_edge, %if.end109.if.end137_crit_edge
  %add139 = add i64 %sub90, 8191
  %84 = lshr i64 %add139, 13
  %85 = lshr i64 %add139, 23
  %add142 = add nuw nsw i64 %84, %85
  %shr143 = ashr i64 %add139, 33
  %add144 = add nsw i64 %add142, %shr143
  %86 = trunc i64 %add144 to i32
  %conv148 = add i32 %86, 5
  %dn_agsize = getelementptr inbounds %struct.dbmap, ptr %9, i32 0, i32 13
  %i_size181 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 10
  %l2bsize226 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 9
  br label %extendBmap

extendBmap:                                       ; preds = %if.end242.extendBmap_crit_edge, %if.end137
  %agsizechanged.0 = phi i32 [ 0, %if.end137 ], [ %or179, %if.end242.extendBmap_crit_edge ]
  %87 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %9, align 8
  %sub151 = sub i64 %sub90, %88
  %89 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %dn_agsize, align 8
  %call153 = call i64 @dbMapFileSizeToMapSize(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call153, i64 %88)
  %cmp154 = icmp slt i64 %call153, %88
  br i1 %cmp154, label %do.end159, label %if.end162

do.end159:                                        ; preds = %extendBmap
  call void @__sanitizer_cov_trace_pc() #7
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %88, i64 noundef %call153) #8
  br label %error_out

if.end162:                                        ; preds = %extendBmap
  %sub163 = sub i64 %call153, %88
  %91 = call i64 @llvm.smin.i64(i64 %sub163, i64 %sub151)
  %call171 = call i32 @dbExtendFS(ptr noundef %3, i64 noundef %88, i64 noundef %91) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end162.error_out_crit_edge

if.end162.error_out_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end174:                                        ; preds = %if.end162
  %92 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %dn_agsize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %90)
  %cmp177 = icmp ne i64 %93, %90
  %conv178 = zext i1 %cmp177 to i32
  %or179 = or i32 %agsizechanged.0, %conv178
  %94 = ptrtoint ptr %i_size181 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %i_size181, align 8
  %96 = lshr i64 %95, 12
  %conv183 = trunc i64 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv148, i32 %conv183)
  %cmp184 = icmp eq i32 %conv148, %conv183
  br i1 %cmp184, label %if.end174.finalizeBmap_crit_edge, label %if.end187

if.end174.finalizeBmap_crit_edge:                 ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %finalizeBmap

if.end187:                                        ; preds = %if.end174
  %97 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_mapping, align 8
  %call.i493 = call i32 @filemap_fdatawait_range(ptr noundef %98, i64 noundef 0, i64 noundef 9223372036854775807) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i493)
  %tobool189.not = icmp eq i32 %call.i493, 0
  br i1 %tobool189.not, label %if.end191, label %if.end187.error_out_crit_edge

if.end187.error_out_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end191:                                        ; preds = %if.end187
  %99 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_mapping, align 8
  %call.i494 = call i32 @filemap_write_and_wait_range(ptr noundef %100, i64 noundef 0, i64 noundef 9223372036854775807) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i494)
  %tobool194.not = icmp eq i32 %call.i494, 0
  br i1 %tobool194.not, label %if.end196, label %if.end191.error_out_crit_edge

if.end191.error_out_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end196:                                        ; preds = %if.end191
  call void @diWriteSpecial(ptr noundef %3, i32 noundef 0) #5
  %101 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %l2nbperpage, align 2
  %conv198 = sext i16 %102 to i32
  %shl199 = shl i32 %conv183, %conv198
  %conv200 = sext i32 %shl199 to i64
  %sub201 = sub i32 %conv148, %conv183
  %shl204 = shl i32 %sub201, %conv198
  %conv205 = trunc i64 %91 to i32
  %103 = call i32 @llvm.smin.i32(i32 %shl204, i32 %conv205)
  %104 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %nbperpage, align 4
  %conv213 = sext i16 %105 to i32
  %neg215 = sub nsw i32 0, %conv213
  %and216 = and i32 %103, %neg215
  %106 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and216, ptr %xlen, align 4
  %107 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %88, ptr %xaddr, align 8
  %call217 = call zeroext i16 @txBegin(ptr noundef %sb, i32 noundef 2) #5
  %call221 = call i32 @xtAppend(i16 noundef zeroext %call217, ptr noundef %3, i32 noundef 0, i64 noundef %conv200, i32 noundef %conv205, ptr noundef nonnull %xlen, ptr noundef nonnull %xaddr, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end225, label %if.then223

if.then223:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  call void @txEnd(i16 noundef zeroext %call217) #5
  br label %error_out

if.end225:                                        ; preds = %if.end196
  %108 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xlen, align 4
  %110 = ptrtoint ptr %l2bsize226 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %l2bsize226, align 2
  %conv227464 = zext i16 %111 to i32
  %shl228 = shl i32 %109, %conv227464
  %conv229 = sext i32 %shl228 to i64
  %112 = ptrtoint ptr %i_size181 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_size181, align 8
  %add231 = add i64 %113, %conv229
  store i64 %add231, ptr %i_size181, align 8
  %114 = load i16, ptr %l2bsize226, align 2
  %conv233465 = zext i16 %114 to i32
  %shl234 = shl i32 %109, %conv233465
  %conv235 = sext i32 %shl234 to i64
  call void @inode_add_bytes(ptr noundef %3, i64 noundef %conv235) #5
  %115 = ptrtoint ptr %iplist to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %3, ptr %iplist, align 4
  %call238 = call i32 @txCommit(i16 noundef zeroext %call217, i32 noundef 1, ptr noundef nonnull %iplist, i32 noundef 2) #5
  call void @txEnd(i16 noundef zeroext %call217) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool240.not = icmp eq i32 %call238, 0
  br i1 %tobool240.not, label %if.end242, label %if.end225.error_out_crit_edge

if.end225.error_out_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end242:                                        ; preds = %if.end225
  %tobool243.not.not = icmp sgt i64 %sub151, %sub163
  br i1 %tobool243.not.not, label %if.end242.extendBmap_crit_edge, label %if.end242.finalizeBmap_crit_edge

if.end242.finalizeBmap_crit_edge:                 ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %finalizeBmap

if.end242.extendBmap_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %extendBmap

finalizeBmap:                                     ; preds = %if.end242.finalizeBmap_crit_edge, %if.end174.finalizeBmap_crit_edge
  call void @dbFinalizeBmap(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or179)
  %tobool246.not = icmp eq i32 %or179, 0
  br i1 %tobool246.not, label %finalizeBmap.if.end256_crit_edge, label %if.then247

finalizeBmap.if.end256_crit_edge:                 ; preds = %finalizeBmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end256

if.then247:                                       ; preds = %finalizeBmap
  %call248 = call i32 @diExtendFS(ptr noundef %5, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end251, label %if.then247.error_out_crit_edge

if.then247.error_out_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end251:                                        ; preds = %if.then247
  %call252 = call i32 @diSync(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end251.if.end256_crit_edge, label %if.end251.error_out_crit_edge

if.end251.error_out_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end251.if.end256_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end256

if.end256:                                        ; preds = %if.end251.if.end256_crit_edge, %finalizeBmap.if.end256_crit_edge
  %call257 = call i32 @dbSync(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.end260, label %if.end256.error_out_crit_edge

if.end256.error_out_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end260:                                        ; preds = %if.end256
  %call261 = call ptr @diReadSpecial(ptr noundef %sb, i32 noundef 2, i32 noundef 1) #5
  %cmp262 = icmp eq ptr %call261, null
  br i1 %cmp262, label %do.end267, label %if.end270

do.end267:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #7
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  br label %error_out

if.end270:                                        ; preds = %if.end260
  %u = getelementptr i8, ptr %call261, i32 -400
  %u273 = getelementptr i8, ptr %3, i32 -400
  %116 = call ptr @memcpy(ptr %u, ptr %u273, i32 288)
  %117 = ptrtoint ptr %i_size181 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %i_size181, align 8
  %i_size276 = getelementptr inbounds %struct.inode, ptr %call261, i32 0, i32 14
  %119 = ptrtoint ptr %i_size276 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %i_size276, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %120 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %i_blocks, align 8
  %i_blocks277 = getelementptr inbounds %struct.inode, ptr %call261, i32 0, i32 22
  %122 = ptrtoint ptr %i_blocks277 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %i_blocks277, align 8
  call void @diWriteSpecial(ptr noundef nonnull %call261, i32 noundef 1) #5
  call void @diFreeSpecial(ptr noundef nonnull %call261) #5
  %call278 = call i32 @readSuper(ptr noundef %sb, ptr noundef nonnull %bh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end281, label %if.end270.error_out_crit_edge

if.end270.error_out_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end281:                                        ; preds = %if.end270
  %123 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bh, align 4
  %b_data282 = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %b_data282 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data282, align 4
  %s_state283 = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %s_state283 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_state283, align 8
  %and284 = and i32 %128, -134217729
  store i32 %and284, ptr %s_state283, align 8
  %129 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %9, align 8
  %s_l2bfactor = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 5
  %131 = ptrtoint ptr %s_l2bfactor to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %s_l2bfactor, align 2
  %133 = call i16 @llvm.bswap.i16(i16 %132)
  %sh_prom = zext i16 %133 to i64
  %shl288 = shl i64 %130, %sh_prom
  %134 = call i64 @llvm.bswap.i64(i64 %shl288)
  %s_size = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 2
  %135 = ptrtoint ptr %s_size to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %s_size, align 8
  %136 = ptrtoint ptr %dn_agsize to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %dn_agsize, align 8
  %conv291 = trunc i64 %137 to i32
  %138 = call i32 @llvm.bswap.i32(i32 %conv291)
  %s_agsize = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 9
  %139 = ptrtoint ptr %s_agsize to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %s_agsize, align 8
  %140 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mntflag, align 4
  %and293 = and i32 %141, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %if.end281.if.end297_crit_edge, label %if.then295

if.end281.if.end297_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

if.then295:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #7
  %s_logpxd = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 17
  %sum.shift.i497 = lshr i64 %sub75, 32
  %conv7.i498 = trunc i64 %sum.shift.i497 to i32
  %conv.i499 = and i32 %conv7.i498, 255
  %conv3.i501 = trunc i64 %sub75 to i32
  %142 = call i32 @llvm.bswap.i32(i32 %conv3.i501) #5
  %addr2.i502 = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 17, i32 1
  %143 = ptrtoint ptr %addr2.i502 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %addr2.i502, align 4
  %and1.i504 = and i32 %newLogSize.addr.0, 16777215
  %144 = call i32 @llvm.bswap.i32(i32 %and1.i504) #5
  %or.i505 = or i32 %conv.i499, %144
  %145 = ptrtoint ptr %s_logpxd to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or.i505, ptr %s_logpxd, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then295, %if.end281.if.end297_crit_edge
  %serial = getelementptr inbounds %struct.jfs_log, ptr %7, i32 0, i32 3
  %146 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %serial, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147)
  %s_logserial = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 16
  %149 = ptrtoint ptr %s_logserial to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %s_logserial, align 4
  %s_fsckpxd = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 18
  %sum.shift.i507 = lshr i64 %sub90, 32
  %conv7.i508 = trunc i64 %sum.shift.i507 to i32
  %conv.i509 = and i32 %conv7.i508, 255
  %conv3.i511 = trunc i64 %sub90 to i32
  %150 = call i32 @llvm.bswap.i32(i32 %conv3.i511) #5
  %addr2.i512 = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 18, i32 1
  %151 = ptrtoint ptr %addr2.i512 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %addr2.i512, align 4
  %and1.i514 = and i32 %shl88, 16777215
  %152 = call i32 @llvm.bswap.i32(i32 %and1.i514) #5
  %or.i515 = or i32 %conv.i509, %152
  %153 = ptrtoint ptr %s_fsckpxd to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i515, ptr %s_fsckpxd, align 4
  %s_fscklog = getelementptr inbounds %struct.jfs_superblock, ptr %126, i32 0, i32 21
  %154 = ptrtoint ptr %s_fscklog to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %s_fscklog, align 4
  %155 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv300 = zext i8 %156 to i32
  %shr301 = lshr i32 61440, %conv300
  %157 = zext i32 %shr301 to i64
  %158 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i517 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %160 = ptrtoint ptr %s_blocksize.i517 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_blocksize.i517, align 16
  %call.i518 = call ptr @__bread_gfp(ptr noundef %159, i64 noundef %157, i32 noundef %161, i32 noundef 8) #5
  %tobool304.not = icmp eq ptr %call.i518, null
  br i1 %tobool304.not, label %if.end297.if.end308_crit_edge, label %brelse.exit521

if.end297.if.end308_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end308

brelse.exit521:                                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #7
  %b_data306 = getelementptr inbounds %struct.buffer_head, ptr %call.i518, i32 0, i32 5
  %162 = ptrtoint ptr %b_data306 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %b_data306, align 4
  %164 = call ptr @memcpy(ptr %163, ptr %126, i32 184)
  %165 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %166) #5
  %call307 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i518) #5
  call void @__brelse(ptr noundef nonnull %call.i518) #5
  br label %if.end308

if.end308:                                        ; preds = %brelse.exit521, %if.end297.if.end308_crit_edge
  %167 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %168) #5
  %169 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bh, align 4
  %call309 = call i32 @sync_dirty_buffer(ptr noundef %170) #5
  %171 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh, align 4
  %tobool.not.i522 = icmp eq ptr %172, null
  br i1 %tobool.not.i522, label %if.end308.resume_crit_edge, label %if.then.i523

if.end308.resume_crit_edge:                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #7
  br label %resume

if.then.i523:                                     ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %172) #5
  br label %resume

error_out:                                        ; preds = %if.end270.error_out_crit_edge, %do.end267, %if.end256.error_out_crit_edge, %if.end251.error_out_crit_edge, %if.then247.error_out_crit_edge, %if.end225.error_out_crit_edge, %if.then223, %if.end191.error_out_crit_edge, %if.end187.error_out_crit_edge, %if.end162.error_out_crit_edge, %do.end159, %if.end129.error_out_crit_edge, %if.then124.error_out_crit_edge, %if.then114.error_out_crit_edge
  %rc.0 = phi i32 [ %call116, %if.then114.error_out_crit_edge ], [ %call133, %if.end129.error_out_crit_edge ], [ -5, %do.end159 ], [ %call248, %if.then247.error_out_crit_edge ], [ %call252, %if.end251.error_out_crit_edge ], [ %call257, %if.end256.error_out_crit_edge ], [ 0, %do.end267 ], [ %call278, %if.end270.error_out_crit_edge ], [ %call221, %if.then223 ], [ %call125, %if.then124.error_out_crit_edge ], [ %call238, %if.end225.error_out_crit_edge ], [ %call.i494, %if.end191.error_out_crit_edge ], [ %call.i493, %if.end187.error_out_crit_edge ], [ %call171, %if.end162.error_out_crit_edge ]
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %sb, ptr noundef nonnull @.str.17) #5
  br label %resume

resume:                                           ; preds = %error_out, %if.then.i523, %if.end308.resume_crit_edge
  %rc.1 = phi i32 [ %rc.0, %error_out ], [ 0, %if.end308.resume_crit_edge ], [ 0, %if.then.i523 ]
  call void @txResume(ptr noundef %sb) #5
  br label %out

out:                                              ; preds = %resume, %if.then104.out_crit_edge, %if.end73.out_crit_edge, %do.end44, %do.end34, %do.end24, %do.end
  %rc.2 = phi i32 [ 0, %do.end ], [ -22, %do.end24 ], [ -30, %do.end44 ], [ %call105, %if.then104.out_crit_edge ], [ %rc.1, %resume ], [ -22, %do.end34 ], [ -22, %if.end73.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iplist) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #5
  ret i32 %rc.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogFormat(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txQuiesce(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogShutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @readSuper(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lmLogInit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dbMapFileSizeToMapSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbExtendFS(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @diWriteSpecial(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @txBegin(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtAppend(i16 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txEnd(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @txCommit(i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbFinalizeBmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diExtendFS(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diSync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbSync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @diReadSpecial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @diFreeSpecial(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txResume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/resize.c", i32 84, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jfs_extendfs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jfs_extendfs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/resize.c", i32 92, i32 4}
!8 = !{ptr @jfs_extendfs._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jfs_extendfs._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @jfs_extendfs._entry.6, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../fs/jfs/resize.c", i32 100, i32 4}
!12 = !{ptr @jfs_extendfs._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/jfs/resize.c", i32 110, i32 3}
!15 = !{ptr @jfs_extendfs._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @jfs_extendfs._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/jfs/resize.c", i32 308, i32 3}
!19 = !{ptr @jfs_extendfs._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @jfs_extendfs._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/jfs/resize.c", i32 469, i32 3}
!23 = !{ptr @jfs_extendfs._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @jfs_extendfs._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jfs/resize.c", i32 526, i32 16}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
