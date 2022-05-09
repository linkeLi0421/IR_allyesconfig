; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_fshead.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_fshead.c"
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
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.vxfs_inode_info = type { %struct.inode, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8, %union.anon.70, i32, i32, %union.anon.71 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%union.anon.70 = type { i32 }
%union.anon.71 = type { [6 x %struct.vxfs_typed] }
%struct.vxfs_typed = type { i64, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.vxfs_fsh = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }

@vxfs_read_fshead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013vxfs: unable to read fsh inode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vxfs_read_fshead\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/freevxfs/vxfs_fshead.c\00", [38 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr = internal global ptr @vxfs_read_fshead._entry, section ".printk_index", align 4
@vxfs_read_fshead._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013vxfs: fsh list inode is of wrong type (%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.5 = internal global ptr @vxfs_read_fshead._entry.3, section ".printk_index", align 4
@vxfs_read_fshead._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013vxfs: unable to get structural fsh\0A\00", [58 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.8 = internal global ptr @vxfs_read_fshead._entry.6, section ".printk_index", align 4
@vxfs_read_fshead._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013vxfs: unable to get primary fsh\0A\00", [61 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.11 = internal global ptr @vxfs_read_fshead._entry.9, section ".printk_index", align 4
@vxfs_read_fshead._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013vxfs: unable to get structural list inode\0A\00", [51 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.14 = internal global ptr @vxfs_read_fshead._entry.12, section ".printk_index", align 4
@vxfs_read_fshead._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013vxfs: structural list inode is of wrong type (%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.17 = internal global ptr @vxfs_read_fshead._entry.15, section ".printk_index", align 4
@vxfs_read_fshead._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013vxfs: unable to get inode list inode\0A\00", [56 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.20 = internal global ptr @vxfs_read_fshead._entry.18, section ".printk_index", align 4
@vxfs_read_fshead._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013vxfs: inode list inode is of wrong type (%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@vxfs_read_fshead._entry_ptr.23 = internal global ptr @vxfs_read_fshead._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 116, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 122, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 134, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 144, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 155, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 159, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 166, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [29 x i8] c"../fs/freevxfs/vxfs_fshead.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 170, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @vxfs_read_fshead._entry, ptr @vxfs_read_fshead._entry.12, ptr @vxfs_read_fshead._entry.15, ptr @vxfs_read_fshead._entry.18, ptr @vxfs_read_fshead._entry.21, ptr @vxfs_read_fshead._entry.3, ptr @vxfs_read_fshead._entry.6, ptr @vxfs_read_fshead._entry.9, ptr @vxfs_read_fshead._entry_ptr, ptr @vxfs_read_fshead._entry_ptr.11, ptr @vxfs_read_fshead._entry_ptr.14, ptr @vxfs_read_fshead._entry_ptr.17, ptr @vxfs_read_fshead._entry_ptr.20, ptr @vxfs_read_fshead._entry_ptr.23, ptr @vxfs_read_fshead._entry_ptr.5, ptr @vxfs_read_fshead._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_read_fshead._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxfs_read_fshead(ptr noundef %sbp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %vsi_iext = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vsi_iext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsi_iext, align 4
  %vsi_fshino = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vsi_fshino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsi_fshino, align 4
  %call = tail call ptr @vxfs_blkiget(ptr noundef %sbp, i32 noundef %3, i32 noundef %5) #6
  %vsi_fship = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vsi_fship to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %vsi_fship, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vii_mode = getelementptr inbounds %struct.vxfs_inode_info, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %vii_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vii_mode, align 8
  %and = and i32 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and)
  %cmp = icmp eq i32 %and, 268435456
  br i1 %cmp, label %if.end13, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %and) #9
  br label %out_iput_fship

if.end13:                                         ; preds = %if.end
  %call.i = tail call ptr @vxfs_bread(ptr noundef nonnull %call, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end13.do.end20_crit_edge, label %if.then.i

if.end13.do.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.then.i:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 60) #10
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.i, label %if.end23

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then.i.i, %if.end13.do.end20_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %out_iput_fship

if.end23:                                         ; preds = %if.then.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = call ptr @memcpy(ptr %call7.i.i, ptr %11, i32 60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #6, !srcloc !44
  %14 = ptrtoint ptr %vsi_fship to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsi_fship, align 4
  %call.i127 = tail call ptr @vxfs_bread(ptr noundef %15, i32 noundef 1) #6
  %tobool.not.i128 = icmp eq ptr %call.i127, null
  br i1 %tobool.not.i128, label %if.end23.do.end30_crit_edge, label %if.then.i131

if.end23.do.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

if.then.i131:                                     ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 60) #10
  %tobool2.not.i130 = icmp eq ptr %call7.i.i129, null
  br i1 %tobool2.not.i130, label %if.then.i.i136, label %if.end33

if.then.i.i136:                                   ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %call.i127) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then.i.i136, %if.end23.do.end30_crit_edge
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %out_free_sfp

if.end33:                                         ; preds = %if.then.i131
  %b_data.i132 = getelementptr inbounds %struct.buffer_head, ptr %call.i127, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i132 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i132, align 4
  %19 = call ptr @memcpy(ptr %call7.i.i129, ptr %18, i32 60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  %b_count.i.i133 = getelementptr inbounds %struct.buffer_head, ptr %call.i127, i32 0, i32 11
  %call.i.i.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i133, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i133, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i133, ptr %b_count.i.i133, i32 1, ptr elementtype(i32) %b_count.i.i133) #6, !srcloc !44
  %21 = ptrtoint ptr %vsi_iext to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vsi_iext, align 4
  %fsh_ilistino = getelementptr inbounds %struct.vxfs_fsh, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %fsh_ilistino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fsh_ilistino, align 8
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %retval.0.i = select i1 %cmp.i, i32 %24, i32 %27
  %call36 = tail call ptr @vxfs_blkiget(ptr noundef %sbp, i32 noundef %22, i32 noundef %retval.0.i) #6
  %vsi_stilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %vsi_stilist to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call36, ptr %vsi_stilist, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %out_free_pfp

if.end45:                                         ; preds = %if.end33
  %vii_mode48 = getelementptr inbounds %struct.vxfs_inode_info, ptr %call36, i32 0, i32 1
  %29 = ptrtoint ptr %vii_mode48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vii_mode48, align 8
  %and49 = and i32 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and49)
  %cmp50 = icmp eq i32 %and49, 536870912
  br i1 %cmp50, label %if.end61, label %do.end54

do.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %and49) #9
  br label %out_iput_stilist

if.end61:                                         ; preds = %if.end45
  %fsh_ilistino62 = getelementptr inbounds %struct.vxfs_fsh, ptr %call7.i.i129, i32 0, i32 12
  %31 = ptrtoint ptr %fsh_ilistino62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fsh_ilistino62, align 8
  %33 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i140 = icmp eq i32 %34, 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %retval.0.i141 = select i1 %cmp.i140, i32 %32, i32 %35
  %call65 = tail call ptr @vxfs_stiget(ptr noundef %sbp, i32 noundef %retval.0.i141) #6
  %vsi_ilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %vsi_ilist to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call65, ptr %vsi_ilist, align 4
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %out_iput_stilist

if.end74:                                         ; preds = %if.end61
  %vii_mode77 = getelementptr inbounds %struct.vxfs_inode_info, ptr %call65, i32 0, i32 1
  %37 = ptrtoint ptr %vii_mode77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vii_mode77, align 8
  %and78 = and i32 %38, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and78)
  %cmp79 = icmp eq i32 %and78, 536870912
  br i1 %cmp79, label %if.end90, label %do.end83

do.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %and78) #9
  %39 = ptrtoint ptr %vsi_ilist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vsi_ilist, align 4
  tail call void @iput(ptr noundef %40) #6
  br label %out_iput_stilist

if.end90:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i129) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

out_iput_stilist:                                 ; preds = %do.end83, %do.end71, %do.end54
  %41 = ptrtoint ptr %vsi_stilist to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vsi_stilist, align 4
  tail call void @iput(ptr noundef %42) #6
  br label %out_free_pfp

out_free_pfp:                                     ; preds = %out_iput_stilist, %do.end42
  tail call void @kfree(ptr noundef nonnull %call7.i.i129) #6
  br label %out_free_sfp

out_free_sfp:                                     ; preds = %out_free_pfp, %do.end30
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out_iput_fship

out_iput_fship:                                   ; preds = %out_free_sfp, %do.end20, %do.end8
  %43 = ptrtoint ptr %vsi_fship to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vsi_fship, align 4
  tail call void @iput(ptr noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %out_iput_fship, %if.end90, %do.end
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -22, %out_iput_fship ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_blkiget(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_stiget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_bread(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vxfs_read_fshead._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vxfs_read_fshead._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 122, i32 3}
!8 = !{ptr @vxfs_read_fshead._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vxfs_read_fshead._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 134, i32 3}
!12 = !{ptr @vxfs_read_fshead._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @vxfs_read_fshead._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 144, i32 3}
!16 = !{ptr @vxfs_read_fshead._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vxfs_read_fshead._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 155, i32 3}
!20 = !{ptr @vxfs_read_fshead._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @vxfs_read_fshead._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 159, i32 3}
!24 = !{ptr @vxfs_read_fshead._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vxfs_read_fshead._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 166, i32 3}
!28 = !{ptr @vxfs_read_fshead._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vxfs_read_fshead._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/freevxfs/vxfs_fshead.c", i32 170, i32 3}
!32 = !{ptr @vxfs_read_fshead._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vxfs_read_fshead._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2153798874}
!44 = !{i64 2148658089, i64 2148658115, i64 2148658144, i64 2148658178, i64 2148658209, i64 2148658232}
