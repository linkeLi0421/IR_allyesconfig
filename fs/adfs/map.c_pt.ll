; ModuleID = '/llk/IR_all_yes/fs/adfs/map.c_pt.bc'
source_filename = "../fs/adfs/map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.adfs_sb_info = type { %union.anon.70, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.adfs_discmap = type { ptr, i32, i32, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.adfs_discrecord = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i16, [10 x i8], i32, i32, i16, i8, i8, i32, i32, [8 x i8] }

@adfs_map_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__func__.adfs_map_lookup = private unnamed_addr constant [16 x i8] c"adfs_map_lookup\00", align 1
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fragment 0x%04x at offset %d not found in map\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid fragment 0x%04x (zone = %d, max = %d)\00", [50 x i8] zeroinitializer }, align 32
@__func__.adfs_read_map = private unnamed_addr constant [14 x i8] c"adfs_read_map\00", align 1
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"not enough memory\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unable to read map\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"map corrupted\00", [18 x i8] zeroinitializer }, align 32
@scan_free_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013adfs: undersized free fragment\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scan_free_map\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/adfs/map.c\00", [18 x i8] zeroinitializer }, align 32
@scan_free_map._entry_ptr = internal global ptr @scan_free_map._entry, section ".printk_index", align 4
@scan_free_map._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013adfs: oversized free fragment\0A\00", [63 x i8] zeroinitializer }, align 32
@scan_free_map._entry_ptr.10 = internal global ptr @scan_free_map._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adfs_map_lock\00", [18 x i8] zeroinitializer }, align 32
@lookup_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013adfs: oversized fragment 0x%x at 0x%x-0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lookup_zone\00", [20 x i8] zeroinitializer }, align 32
@lookup_zone._entry_ptr = internal global ptr @lookup_zone._entry, section ".printk_index", align 4
@__func__.adfs_checkmap = private unnamed_addr constant [14 x i8] c"adfs_checkmap\00", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"zone %d fails zonecheck\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"crosscheck != 0xff\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"adfs_map_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 250, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 255, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 378, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 386, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 393, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 151, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 155, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 48, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 103, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 295, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [17 x i8] c"../fs/adfs/map.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 301, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @lookup_zone._entry, ptr @lookup_zone._entry_ptr, ptr @scan_free_map._entry, ptr @scan_free_map._entry.8, ptr @scan_free_map._entry_ptr, ptr @scan_free_map._entry_ptr.10, ptr @adfs_map_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_map_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_free_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_free_map._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adfs_map_statfs(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data.i, align 4
  %s_map_size = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %s_map_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_map_size, align 4
  %s_idlen.i = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %scan_free_map.exit.do.body_crit_edge, %entry
  %dm.0 = phi ptr [ %3, %entry ], [ %incdec.ptr, %scan_free_map.exit.do.body_crit_edge ]
  %total.0 = phi i32 [ 0, %entry ], [ %add, %scan_free_map.exit.do.body_crit_edge ]
  %zone.0 = phi i32 [ %9, %entry ], [ %dec, %scan_free_map.exit.do.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.adfs_discmap, ptr %dm.0, i32 1
  %dm_endbit.i = getelementptr inbounds %struct.adfs_discmap, ptr %dm.0, i32 0, i32 3
  %10 = ptrtoint ptr %dm_endbit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dm_endbit.i, align 4
  %12 = ptrtoint ptr %s_idlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_idlen.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 15) #5
  %notmask.i = shl nsw i32 -1, %14
  %sub.i = xor i32 %notmask.i, -1
  %15 = ptrtoint ptr %dm.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dm.0, align 4
  %b_data.i20 = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i21, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %and2.i = and i32 %21, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp eq i32 %and2.i, 0
  br i1 %cmp3.i, label %do.body.scan_free_map.exit_crit_edge, label %do.body.preheader.i

do.body.scan_free_map.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %scan_free_map.exit

do.body.preheader.i:                              ; preds = %do.body
  %add21.i = add i32 %13, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i.do.body.i_crit_edge, %do.body.preheader.i
  %frag.0.i = phi i32 [ %and12.i, %if.end17.i.do.body.i_crit_edge ], [ %and2.i, %do.body.preheader.i ]
  %total.0.i = phi i32 [ %add20.i, %if.end17.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %start.0.i = phi i32 [ %add.i, %if.end17.i.do.body.i_crit_edge ], [ 8, %do.body.preheader.i ]
  %add.i = add i32 %start.0.i, %frag.0.i
  %shr5.i = lshr i32 %add.i, 3
  %add.ptr6.i = getelementptr i8, ptr %18, i32 %shr5.i
  %22 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr6.i, align 1
  %add13.i = add i32 %add.i, %13
  %call.i.i = tail call i32 @_find_next_bit_le(ptr noundef %18, i32 noundef %11, i32 noundef %add13.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %11)
  %cmp15.not.i = icmp ult i32 %call.i.i, %11
  br i1 %cmp15.not.i, label %if.end17.i, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end17.i:                                       ; preds = %do.body.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %and9.i = and i32 %add.i, 7
  %shr10.i = lshr i32 %24, %and9.i
  %and12.i = and i32 %shr10.i, %sub.i
  %add18.i = add i32 %total.0.i, 1
  %sub19.i = sub i32 %add18.i, %add.i
  %add20.i = add i32 %sub19.i, %call.i.i
  %cmp22.not.i = icmp ult i32 %and12.i, %add21.i
  br i1 %cmp22.not.i, label %do.end.i, label %if.end17.i.do.body.i_crit_edge

if.end17.i.do.body.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp23.not.i = icmp eq i32 %and12.i, 0
  br i1 %cmp23.not.i, label %do.end.i.scan_free_map.exit_crit_edge, label %do.end.i.cleanup.sink.split.i_crit_edge

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

do.end.i.scan_free_map.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %scan_free_map.exit

cleanup.sink.split.i:                             ; preds = %do.end.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %.str.5.sink.i = phi ptr [ @.str.5, %do.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.9, %do.body.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %add20.i, %do.end.i.cleanup.sink.split.i_crit_edge ], [ 0, %do.body.i.cleanup.sink.split.i_crit_edge ]
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink.i) #8
  br label %scan_free_map.exit

scan_free_map.exit:                               ; preds = %cleanup.sink.split.i, %do.end.i.scan_free_map.exit_crit_edge, %do.body.scan_free_map.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.scan_free_map.exit_crit_edge ], [ %add20.i, %do.end.i.scan_free_map.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %add = add i32 %retval.0.i, %total.0
  %dec = add i32 %zone.0, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.end, label %scan_free_map.exit.do.body_crit_edge

scan_free_map.exit.do.body_crit_edge:             ; preds = %scan_free_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %scan_free_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  %disc_size_high.i = getelementptr i8, ptr %7, i32 40
  %25 = ptrtoint ptr %disc_size_high.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disc_size_high.i, align 4
  %disc_size.i = getelementptr i8, ptr %7, i32 20
  %27 = ptrtoint ptr %disc_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disc_size.i, align 4
  %29 = zext i32 %26 to i64
  %30 = zext i32 %28 to i64
  %31 = shl nuw i64 %30, 32
  %32 = or i64 %31, %29
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #5
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %34 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %35 to i64
  %shr = lshr i64 %33, %sh_prom
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %36 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shr, ptr %f_blocks, align 8
  %s_ids_per_zone = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %s_ids_per_zone to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_ids_per_zone, align 4
  %39 = ptrtoint ptr %s_map_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_map_size, align 4
  %mul = mul i32 %40, %38
  %conv6 = zext i32 %mul to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %41 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv6, ptr %f_files, align 8
  %s_map2blk = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %s_map2blk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_map2blk, align 4
  %shl.i = shl i32 %add, %43
  %sub.i22 = sub i32 0, %43
  %shr.i = lshr i32 %add, %sub.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.i = icmp slt i32 %43, 0
  %val.addr.0.i = select i1 %cmp5.i, i32 %shr.i, i32 %shl.i
  %conv8 = zext i32 %val.addr.0.i to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %44 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv8, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %45 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv8, ptr %f_bavail, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfs_map_lookup(ptr noundef %sb, i32 noundef %frag_id, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %frag_id)
  %cmp = icmp eq i32 %frag_id, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %s_map_size = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_map_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_map_size, align 4
  %shr = lshr i32 %3, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %s_ids_per_zone = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %s_ids_per_zone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_ids_per_zone, align 4
  %div = udiv i32 %frag_id, %5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %zone.0 = phi i32 [ %shr, %if.then ], [ %div, %if.else ]
  %s_map_size1 = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %s_map_size1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_map_size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %zone.0, i32 %7)
  %cmp2.not = icmp ult i32 %zone.0, %7
  br i1 %cmp2.not, label %if.end4, label %bad_fragment

if.end4:                                          ; preds = %if.end
  %s_map2blk = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %s_map2blk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_map2blk, align 4
  %sub = sub i32 0, %9
  %shl.i = shl i32 %offset, %sub
  %shr.i = lshr i32 %offset, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5.i = icmp slt i32 %sub, 0
  %val.addr.0.i = select i1 %cmp5.i, i32 %shr.i, i32 %shl.i
  tail call void @_raw_read_lock(ptr noundef nonnull @adfs_map_lock) #5
  %s_idlen.i = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %s_idlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_idlen.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr %struct.adfs_discmap, ptr %13, i32 %zone.0
  %14 = ptrtoint ptr %s_map_size1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_map_size1, align 4
  %add.ptr2.i = getelementptr %struct.adfs_discmap, ptr %13, i32 %15
  %notmask.i.i = shl nsw i32 -1, %11
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %sub.i.i, 32767
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end4
  %mapoff.addr.0.i = phi i32 [ %val.addr.0.i, %if.end4 ], [ %mapoff.addr.327.i, %do.cond.i.do.body.i_crit_edge ]
  %zone.addr.0.i = phi i32 [ %15, %if.end4 ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %dm.0.i = phi ptr [ %add.ptr.i, %if.end4 ], [ %dm.1.i, %do.cond.i.do.body.i_crit_edge ]
  %dm_endbit.i.i = getelementptr inbounds %struct.adfs_discmap, ptr %dm.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %dm_endbit.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dm_endbit.i.i, align 4
  %18 = ptrtoint ptr %dm.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dm.0.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i.i, align 4
  %dm_startbit.i.i = getelementptr inbounds %struct.adfs_discmap, ptr %dm.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %dm_startbit.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dm_startbit.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 1
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr.i.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %and1.i.i = and i32 %and.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %add.i.i = add nuw nsw i32 %and1.i.i, 8
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 %add.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end27.i.i.do.body.i.i_crit_edge, %do.body.i
  %mapoff.addr.1.i = phi i32 [ %mapoff.addr.0.i, %do.body.i ], [ %mapoff.addr.2.i, %if.end27.i.i.do.body.i.i_crit_edge ]
  %freelink.0.i.i = phi i32 [ %spec.select.i.i, %do.body.i ], [ %freelink.1.i.i, %if.end27.i.i.do.body.i.i_crit_edge ]
  %start.0.i.i = phi i32 [ %23, %do.body.i ], [ %add28.i.i, %if.end27.i.i.do.body.i.i_crit_edge ]
  %shr3.i.i = lshr i32 %start.0.i.i, 3
  %add.ptr4.i.i = getelementptr i8, ptr %21, i32 %shr3.i.i
  %27 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr4.i.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %and7.i.i = and i32 %start.0.i.i, 7
  %shr8.i.i = lshr i32 %29, %and7.i.i
  %and10.i.i = and i32 %shr8.i.i, %sub.i.i
  %add11.i.i = add i32 %start.0.i.i, %11
  %call.i.i.i = tail call i32 @_find_next_bit_le(ptr noundef %21, i32 noundef %17, i32 noundef %add11.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %17)
  %cmp.not.i.i = icmp ult i32 %call.i.i.i, %17
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end32.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0.i.i, i32 %freelink.0.i.i)
  %cmp13.i.i = icmp eq i32 %start.0.i.i, %freelink.0.i.i
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and15.i.i = and i32 %and10.i.i, 32767
  %add16.i.i = add i32 %and15.i.i, %freelink.0.i.i
  br label %if.end27.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i.i, i32 %frag_id)
  %cmp17.i.i = icmp eq i32 %and10.i.i, %frag_id
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.else.i.i.if.end27.i.i_crit_edge

if.else.i.i.if.end27.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i.i

if.then18.i.i:                                    ; preds = %if.else.i.i
  %add19.i.i = add nuw i32 %call.i.i.i, 1
  %sub20.i.i = sub i32 %add19.i.i, %start.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mapoff.addr.1.i, i32 %sub20.i.i)
  %cmp21.i.i = icmp ult i32 %mapoff.addr.1.i, %sub20.i.i
  br i1 %cmp21.i.i, label %lookup_zone.exit.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub25.i.i = sub i32 %mapoff.addr.1.i, %sub20.i.i
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %cleanup.i.i, %if.else.i.i.if.end27.i.i_crit_edge, %if.then14.i.i
  %mapoff.addr.2.i = phi i32 [ %mapoff.addr.1.i, %if.then14.i.i ], [ %sub25.i.i, %cleanup.i.i ], [ %mapoff.addr.1.i, %if.else.i.i.if.end27.i.i_crit_edge ]
  %freelink.1.i.i = phi i32 [ %add16.i.i, %if.then14.i.i ], [ %freelink.0.i.i, %cleanup.i.i ], [ %freelink.0.i.i, %if.else.i.i.if.end27.i.i_crit_edge ]
  %add28.i.i = add nuw i32 %call.i.i.i, 1
  %cmp29.i.i = icmp ult i32 %add28.i.i, %17
  br i1 %cmp29.i.i, label %if.end27.i.i.do.body.i.i_crit_edge, label %if.end27.i.i.if.end.i_crit_edge

if.end27.i.i.if.end.i_crit_edge:                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end27.i.i.do.body.i.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end32.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %and10.i.i, i32 noundef %start.0.i.i, i32 noundef %call.i.i.i) #8
  br label %if.end.i

lookup_zone.exit.i:                               ; preds = %if.then18.i.i
  %add23.i.i = add i32 %start.0.i.i, %mapoff.addr.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add23.i.i)
  %cmp.not.i = icmp eq i32 %add23.i.i, -1
  br i1 %cmp.not.i, label %lookup_zone.exit.i.if.end.i_crit_edge, label %scan_map.exit

lookup_zone.exit.i.if.end.i_crit_edge:            ; preds = %lookup_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %lookup_zone.exit.i.if.end.i_crit_edge, %do.end32.i.i, %if.end27.i.i.if.end.i_crit_edge
  %mapoff.addr.327.i = phi i32 [ %mapoff.addr.1.i, %lookup_zone.exit.i.if.end.i_crit_edge ], [ %mapoff.addr.1.i, %do.end32.i.i ], [ %mapoff.addr.2.i, %if.end27.i.i.if.end.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.adfs_discmap, ptr %dm.0.i, i32 1
  %cmp3.i = icmp eq ptr %incdec.ptr.i, %add.ptr2.i
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then4.i, %if.end.i.do.cond.i_crit_edge
  %dm.1.i = phi ptr [ %31, %if.then4.i ], [ %incdec.ptr.i, %if.end.i.do.cond.i_crit_edge ]
  %dec.i = add i32 %zone.addr.0.i, -1
  %cmp7.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.not.i, label %scan_map.exit.thread, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

scan_map.exit.thread:                             ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_read_unlock(ptr noundef nonnull @adfs_map_lock) #5
  br label %if.end14

scan_map.exit:                                    ; preds = %lookup_zone.exit.i
  %dm_startbit.i.i.le = getelementptr inbounds %struct.adfs_discmap, ptr %dm.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %dm_startbit.i.i.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dm_startbit.i.i.le, align 4
  %sub.i = sub i32 %add23.i.i, %33
  %dm_startblk.i = getelementptr inbounds %struct.adfs_discmap, ptr %dm.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %dm_startblk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dm_startblk.i, align 4
  %add.i = add i32 %sub.i, %35
  tail call void @_raw_read_unlock(ptr noundef nonnull @adfs_map_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp7 = icmp sgt i32 %add.i, 0
  br i1 %cmp7, label %if.then8, label %scan_map.exit.if.end14_crit_edge

scan_map.exit.if.end14_crit_edge:                 ; preds = %scan_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %scan_map.exit
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %s_map2blk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_map2blk, align 4
  %shl.i38 = shl i32 %val.addr.0.i, %37
  %sub.i39 = sub i32 0, %37
  %shr.i40 = lshr i32 %val.addr.0.i, %sub.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp5.i41 = icmp slt i32 %37, 0
  %val.addr.0.i42 = select i1 %cmp5.i41, i32 %shr.i40, i32 %shl.i38
  %sub11 = sub i32 %offset, %val.addr.0.i42
  %shl.i43 = shl i32 %add.i, %37
  %shr.i45 = lshr i32 %add.i, %sub.i39
  %val.addr.0.i47 = select i1 %cmp5.i41, i32 %shr.i45, i32 %shl.i43
  %add = add i32 %sub11, %val.addr.0.i47
  br label %cleanup

if.end14:                                         ; preds = %scan_map.exit.if.end14_crit_edge, %scan_map.exit.thread
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_map_lookup, ptr noundef nonnull @.str, i32 noundef %frag_id, i32 noundef %offset) #5
  br label %cleanup

bad_fragment:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_map_lookup, ptr noundef nonnull @.str.1, i32 noundef %frag_id, i32 noundef %zone.0, i32 noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %bad_fragment, %if.end14, %if.then8
  %retval.0 = phi i32 [ 0, %bad_fragment ], [ %add, %if.then8 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__adfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adfs_read_map(ptr noundef %sb, ptr nocapture noundef readonly %dr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %nzones1 = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 9
  %2 = ptrtoint ptr %nzones1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nzones1, align 1
  %conv = zext i8 %3 to i32
  %nzones_high = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 18
  %4 = ptrtoint ptr %nzones_high to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nzones_high, align 2
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %6 = ptrtoint ptr %dr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dr, align 4
  %conv3 = zext i8 %7 to i32
  %shl4 = shl i32 8, %conv3
  %zone_spare = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 10
  %8 = ptrtoint ptr %zone_spare to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %zone_spare, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv5 = zext i16 %10 to i32
  %sub = sub i32 %shl4, %conv5
  %idlen = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 4
  %11 = ptrtoint ptr %idlen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %idlen, align 4
  %conv6 = zext i8 %12 to i32
  %s_idlen = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %s_idlen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv6, ptr %s_idlen, align 4
  %s_map_size = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %s_map_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %s_map_size, align 4
  %log2bpmb = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 5
  %15 = ptrtoint ptr %log2bpmb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %log2bpmb, align 1
  %conv7 = zext i8 %16 to i32
  %17 = ptrtoint ptr %dr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dr, align 4
  %conv9 = zext i8 %18 to i32
  %sub10 = sub nsw i32 %conv7, %conv9
  %s_map2blk = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %s_map2blk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub10, ptr %s_map2blk, align 4
  %log2sharesize = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 17
  %20 = ptrtoint ptr %log2sharesize to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %log2sharesize, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext i16 %bf.lshr to i32
  %s_log2sharesize = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %s_log2sharesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.cast, ptr %s_log2sharesize, align 4
  %add = add nuw nsw i32 %conv6, 1
  %div = udiv i32 %sub, %add
  %s_ids_per_zone = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %s_ids_per_zone to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %s_ids_per_zone, align 4
  %shr = lshr i32 %or, 1
  %mul = mul i32 %sub, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or)
  %cmp = icmp ugt i32 %or, 1
  %cond.neg = select i1 %cmp, i32 -480, i32 0
  %sub14 = add i32 %mul, %cond.neg
  %shl.i = shl i32 %sub14, %sub10
  %sub.i = sub nsw i32 0, %sub10
  %shr.i = lshr i32 %sub14, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp5.i = icmp slt i32 %sub10, 0
  %val.addr.0.i = select i1 %cmp5.i, i32 %shr.i, i32 %shl.i
  %23 = shl nuw nsw i32 %or, 4
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #9
  %cmp18 = icmp eq ptr %call8.i, null
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_read_map, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %dr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dr, align 4
  %conv.i = zext i8 %25 to i32
  %shl.i67 = shl i32 8, %conv.i
  %26 = ptrtoint ptr %zone_spare to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %zone_spare, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #5
  %conv1.i = zext i16 %28 to i32
  %sub.i68 = sub i32 %shl.i67, %conv1.i
  %29 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call8.i, align 128
  %dm_startblk.i = getelementptr inbounds %struct.adfs_discmap, ptr %call8.i, i32 0, i32 1
  %30 = ptrtoint ptr %dm_startblk.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dm_startblk.i, align 4
  %dm_startbit.i = getelementptr inbounds %struct.adfs_discmap, ptr %call8.i, i32 0, i32 2
  %31 = ptrtoint ptr %dm_startbit.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %dm_startbit.i, align 8
  %add.i = add i32 %sub.i68, 32
  %dm_endbit.i = getelementptr inbounds %struct.adfs_discmap, ptr %call8.i, i32 0, i32 3
  %32 = ptrtoint ptr %dm_endbit.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %dm_endbit.i, align 4
  br i1 %cmp, label %if.end.for.body.i_crit_edge, label %if.end.adfs_map_layout.exit_crit_edge

if.end.adfs_map_layout.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_layout.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %zone.051.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.051.i
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx6.i, align 16
  %mul.i = mul i32 %zone.051.i, %sub.i68
  %sub8.i = add i32 %mul.i, -480
  %dm_startblk10.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.051.i, i32 1
  %34 = ptrtoint ptr %dm_startblk10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub8.i, ptr %dm_startblk10.i, align 4
  %dm_startbit12.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.051.i, i32 2
  %35 = ptrtoint ptr %dm_startbit12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %dm_startbit12.i, align 8
  %dm_endbit15.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.051.i, i32 3
  %36 = ptrtoint ptr %dm_endbit15.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %dm_endbit15.i, align 4
  %inc.i = add nuw nsw i32 %zone.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %or
  br i1 %exitcond.not.i, label %for.body.i.adfs_map_layout.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.adfs_map_layout.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_layout.exit

adfs_map_layout.exit:                             ; preds = %for.body.i.adfs_map_layout.exit_crit_edge, %if.end.adfs_map_layout.exit_crit_edge
  %disc_size_high.i.i = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 16
  %37 = ptrtoint ptr %disc_size_high.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %disc_size_high.i.i, align 4
  %disc_size.i.i = getelementptr inbounds %struct.adfs_discrecord, ptr %dr, i32 0, i32 12
  %39 = ptrtoint ptr %disc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %disc_size.i.i, align 4
  %41 = zext i32 %38 to i64
  %42 = zext i32 %40 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or i64 %43, %41
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #5
  %46 = ptrtoint ptr %log2bpmb to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %log2bpmb, align 1
  %sh_prom.i = zext i8 %47 to i64
  %shr.i69 = lshr i64 %45, %sh_prom.i
  %sub17.i = add nsw i32 %or, -1
  %mul18.i = mul i32 %sub.i68, %sub17.i
  %48 = trunc i64 %shr.i69 to i32
  %49 = sub i32 512, %mul18.i
  %conv23.i = add i32 %49, %48
  %dm_endbit26.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %sub17.i, i32 3
  %50 = ptrtoint ptr %dm_endbit26.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv23.i, ptr %dm_endbit26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp8.not.i = icmp eq i32 %or, 0
  br i1 %cmp8.not.i, label %adfs_map_layout.exit.if.end23_crit_edge, label %for.body.lr.ph.i

adfs_map_layout.exit.if.end23_crit_edge:          ; preds = %adfs_map_layout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %adfs_map_layout.exit
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body.i74

for.cond.i:                                       ; preds = %for.body.i74
  %inc.i70 = add nuw nsw i32 %zone.09.i, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %or
  br i1 %exitcond.not.i71, label %for.cond.i.if.end23_crit_edge, label %for.cond.i.for.body.i74_crit_edge

for.cond.i.for.body.i74_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i74

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

for.body.i74:                                     ; preds = %for.cond.i.for.body.i74_crit_edge, %for.body.lr.ph.i
  %zone.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i70, %for.cond.i.for.body.i74_crit_edge ]
  %add.i72 = add i32 %zone.09.i, %val.addr.0.i
  %conv.i73 = zext i32 %add.i72 to i64
  %51 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_bdev.i.i, align 4
  %53 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %52, i64 noundef %conv.i73, i32 noundef %54, i32 noundef 8) #5
  %arrayidx.i = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.09.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i, ptr %arrayidx.i, align 16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.i74.error_free_crit_edge, label %for.cond.i

for.body.i74.error_free_crit_edge:                ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_free

if.end23:                                         ; preds = %for.cond.i.if.end23_crit_edge, %adfs_map_layout.exit.if.end23_crit_edge
  %56 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %s_map_size29.i = getelementptr inbounds %struct.adfs_sb_info, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %s_map_size29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_map_size29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp30.not.i = icmp eq i32 %59, 0
  br i1 %cmp30.not.i, label %if.end23.adfs_checkmap.exit.thread_crit_edge, label %for.body.lr.ph.i77

if.end23.adfs_checkmap.exit.thread_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_checkmap.exit.thread

for.body.lr.ph.i77:                               ; preds = %if.end23
  %s_blocksize.i.i76 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body.i79

for.body.i79:                                     ; preds = %if.end.i81.for.body.i79_crit_edge, %for.body.lr.ph.i77
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i77 ], [ %inc.i80, %if.end.i81.for.body.i79_crit_edge ]
  %zonecheck.032.i = phi i8 [ 1, %for.body.lr.ph.i77 ], [ %zonecheck.1.i, %if.end.i81.for.body.i79_crit_edge ]
  %crosscheck.031.i = phi i32 [ 0, %for.body.lr.ph.i77 ], [ %xor.i, %if.end.i81.for.body.i79_crit_edge ]
  %arrayidx.i78 = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %i.033.i
  %60 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i78, align 16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data.i, align 4
  %64 = ptrtoint ptr %s_blocksize.i.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_blocksize.i.i76, align 16
  %i.075.i.i = add i32 %65, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.075.i.i)
  %tobool.not76.i.i = icmp eq i32 %i.075.i.i, 0
  br i1 %tobool.not76.i.i, label %for.body.i79.adfs_calczonecheck.exit.i_crit_edge, label %for.body.i79.for.body.i.i_crit_edge

for.body.i79.for.body.i.i_crit_edge:              ; preds = %for.body.i79
  br label %for.body.i.i

for.body.i79.adfs_calczonecheck.exit.i_crit_edge: ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_calczonecheck.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i79.for.body.i.i_crit_edge
  %i.082.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %i.075.i.i, %for.body.i79.for.body.i.i_crit_edge ]
  %i.0.in81.i.i = phi i32 [ %i.082.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %65, %for.body.i79.for.body.i.i_crit_edge ]
  %v3.080.i.i = phi i32 [ %add21.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i79.for.body.i.i_crit_edge ]
  %v2.079.i.i = phi i32 [ %and22.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i79.for.body.i.i_crit_edge ]
  %v1.078.i.i = phi i32 [ %and15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i79.for.body.i.i_crit_edge ]
  %v0.077.i.i = phi i32 [ %and8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i79.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %63, i32 %i.082.i.i
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %67 to i32
  %shr.i.i = lshr i32 %v3.080.i.i, 8
  %add.i.i = add nuw nsw i32 %v0.077.i.i, %shr.i.i
  %add1.i.i = add nuw nsw i32 %add.i.i, %conv.i.i
  %and.i.i = and i32 %v3.080.i.i, 255
  %add2.i.i = add i32 %i.0.in81.i.i, -3
  %arrayidx3.i.i = getelementptr i8, ptr %63, i32 %add2.i.i
  %68 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %69 to i32
  %shr5.i.i = lshr i32 %add1.i.i, 8
  %add6.i.i = add nuw nsw i32 %v1.078.i.i, %conv4.i.i
  %add7.i.i = add nuw nsw i32 %add6.i.i, %shr5.i.i
  %and8.i.i = and i32 %add1.i.i, 255
  %add9.i.i = add i32 %i.0.in81.i.i, -2
  %arrayidx10.i.i = getelementptr i8, ptr %63, i32 %add9.i.i
  %70 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %71 to i32
  %shr12.i.i = lshr i32 %add7.i.i, 8
  %add13.i.i = add nuw nsw i32 %v2.079.i.i, %conv11.i.i
  %add14.i.i = add nuw nsw i32 %add13.i.i, %shr12.i.i
  %and15.i.i = and i32 %add7.i.i, 255
  %add16.i.i = add i32 %i.0.in81.i.i, -1
  %arrayidx17.i.i = getelementptr i8, ptr %63, i32 %add16.i.i
  %72 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx17.i.i, align 1
  %conv18.i.i = zext i8 %73 to i32
  %shr19.i.i = lshr i32 %add14.i.i, 8
  %add20.i.i = add nuw nsw i32 %and.i.i, %conv18.i.i
  %add21.i.i = add nuw nsw i32 %add20.i.i, %shr19.i.i
  %and22.i.i = and i32 %add14.i.i, 255
  %i.0.i.i = add i32 %i.082.i.i, -4
  %tobool.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.adfs_calczonecheck.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_calczonecheck.exit.i

adfs_calczonecheck.exit.i:                        ; preds = %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge, %for.body.i79.adfs_calczonecheck.exit.i_crit_edge
  %v0.0.lcssa.i.i = phi i32 [ 0, %for.body.i79.adfs_calczonecheck.exit.i_crit_edge ], [ %and8.i.i, %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge ]
  %v1.0.lcssa.i.i = phi i32 [ 0, %for.body.i79.adfs_calczonecheck.exit.i_crit_edge ], [ %and15.i.i, %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge ]
  %v2.0.lcssa.i.i = phi i32 [ 0, %for.body.i79.adfs_calczonecheck.exit.i_crit_edge ], [ %and22.i.i, %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge ]
  %v3.0.lcssa.i.i = phi i32 [ 0, %for.body.i79.adfs_calczonecheck.exit.i_crit_edge ], [ %add21.i.i, %for.body.i.i.adfs_calczonecheck.exit.i_crit_edge ]
  %shr24.i.i = lshr i32 %v3.0.lcssa.i.i, 8
  %add25.i.i = add nuw nsw i32 %shr24.i.i, %v0.0.lcssa.i.i
  %arrayidx26.i.i = getelementptr i8, ptr %63, i32 1
  %74 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %75 to i32
  %shr28.i.i = lshr i32 %add25.i.i, 8
  %add29.i.i = add nuw nsw i32 %v1.0.lcssa.i.i, %conv27.i.i
  %add30.i.i = add nuw nsw i32 %add29.i.i, %shr28.i.i
  %arrayidx31.i.i = getelementptr i8, ptr %63, i32 2
  %76 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx31.i.i, align 1
  %conv32.i.i = zext i8 %77 to i32
  %shr33.i.i = lshr i32 %add30.i.i, 8
  %add34.i.i = add nuw nsw i32 %v2.0.lcssa.i.i, %conv32.i.i
  %add35.i.i = add nuw nsw i32 %add34.i.i, %shr33.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %63, i32 3
  %78 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx36.i.i, align 1
  %conv37.i.i = zext i8 %79 to i32
  %shr38.i.i = lshr i32 %add35.i.i, 8
  %add39.i.i = add nuw nsw i32 %v3.0.lcssa.i.i, %conv37.i.i
  %add40.i.i = add nuw nsw i32 %add39.i.i, %shr38.i.i
  %xor.i.i = xor i32 %add30.i.i, %add25.i.i
  %xor41.i.i = xor i32 %xor.i.i, %add35.i.i
  %xor42.i.i = xor i32 %xor41.i.i, %add40.i.i
  %conv43.i.i = trunc i32 %xor42.i.i to i8
  %80 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %63, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %conv43.i.i)
  %cmp4.not.i = icmp eq i8 %81, %conv43.i.i
  br i1 %cmp4.not.i, label %adfs_calczonecheck.exit.i.if.end.i81_crit_edge, label %if.then.i

adfs_calczonecheck.exit.i.if.end.i81_crit_edge:   ; preds = %adfs_calczonecheck.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i81

if.then.i:                                        ; preds = %adfs_calczonecheck.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_checkmap, ptr noundef nonnull @.str.14, i32 noundef %i.033.i) #5
  br label %if.end.i81

if.end.i81:                                       ; preds = %if.then.i, %adfs_calczonecheck.exit.i.if.end.i81_crit_edge
  %zonecheck.1.i = phi i8 [ 0, %if.then.i ], [ %zonecheck.032.i, %adfs_calczonecheck.exit.i.if.end.i81_crit_edge ]
  %82 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx36.i.i, align 1
  %conv7.i = zext i8 %83 to i32
  %xor.i = xor i32 %crosscheck.031.i, %conv7.i
  %inc.i80 = add nuw i32 %i.033.i, 1
  %84 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info.i, align 16
  %s_map_size.i = getelementptr inbounds %struct.adfs_sb_info, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %s_map_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %s_map_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i80, %87
  br i1 %cmp.i, label %if.end.i81.for.body.i79_crit_edge, label %for.end.i

if.end.i81.for.body.i79_crit_edge:                ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i79

for.end.i:                                        ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %xor.i)
  %phi.cmp.i = icmp eq i32 %xor.i, 255
  br i1 %phi.cmp.i, label %adfs_checkmap.exit, label %for.end.i.adfs_checkmap.exit.thread_crit_edge

for.end.i.adfs_checkmap.exit.thread_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_checkmap.exit.thread

adfs_checkmap.exit.thread:                        ; preds = %for.end.i.adfs_checkmap.exit.thread_crit_edge, %if.end23.adfs_checkmap.exit.thread_crit_edge
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_checkmap, ptr noundef nonnull @.str.15) #5
  br label %error_free

adfs_checkmap.exit:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zonecheck.1.i)
  %tobool.i.not = icmp eq i8 %zonecheck.1.i, 0
  br i1 %tobool.i.not, label %adfs_checkmap.exit.error_free_crit_edge, label %adfs_checkmap.exit.cleanup_crit_edge

adfs_checkmap.exit.cleanup_crit_edge:             ; preds = %adfs_checkmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

adfs_checkmap.exit.error_free_crit_edge:          ; preds = %adfs_checkmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_free

error_free:                                       ; preds = %adfs_checkmap.exit.error_free_crit_edge, %adfs_checkmap.exit.thread, %for.body.i74.error_free_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %adfs_checkmap.exit.thread ], [ @.str.4, %adfs_checkmap.exit.error_free_crit_edge ], [ @.str.3, %for.body.i74.error_free_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_read_map, ptr noundef nonnull %.str.4.sink) #5
  br i1 %cmp8.not.i, label %error_free.adfs_map_relse.exit_crit_edge, label %error_free.for.body.i84_crit_edge

error_free.for.body.i84_crit_edge:                ; preds = %error_free
  br label %for.body.i84

error_free.adfs_map_relse.exit_crit_edge:         ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_relse.exit

for.body.i84:                                     ; preds = %brelse.exit.i.for.body.i84_crit_edge, %error_free.for.body.i84_crit_edge
  %zone.04.i = phi i32 [ %inc.i86, %brelse.exit.i.for.body.i84_crit_edge ], [ 0, %error_free.for.body.i84_crit_edge ]
  %arrayidx.i82 = getelementptr %struct.adfs_discmap, ptr %call8.i, i32 %zone.04.i
  %88 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i82, align 16
  %tobool.not.i.i83 = icmp eq ptr %89, null
  br i1 %tobool.not.i.i83, label %for.body.i84.brelse.exit.i_crit_edge, label %if.then.i.i85

for.body.i84.brelse.exit.i_crit_edge:             ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.i

if.then.i.i85:                                    ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %89) #5
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i85, %for.body.i84.brelse.exit.i_crit_edge
  %inc.i86 = add nuw nsw i32 %zone.04.i, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, %or
  br i1 %exitcond.not.i87, label %brelse.exit.i.adfs_map_relse.exit_crit_edge, label %brelse.exit.i.for.body.i84_crit_edge

brelse.exit.i.for.body.i84_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i84

brelse.exit.i.adfs_map_relse.exit_crit_edge:      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_relse.exit

adfs_map_relse.exit:                              ; preds = %brelse.exit.i.adfs_map_relse.exit_crit_edge, %error_free.adfs_map_relse.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #5
  br label %cleanup

cleanup:                                          ; preds = %adfs_map_relse.exit, %adfs_checkmap.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then ], [ inttoptr (i32 -5 to ptr), %adfs_map_relse.exit ], [ %call8.i, %adfs_checkmap.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adfs_free_map(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %s_map_size = getelementptr inbounds %struct.adfs_sb_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %s_map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 0
  br i1 %cmp3.not.i, label %entry.adfs_map_relse.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.adfs_map_relse.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_relse.exit

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %zone.04.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.adfs_discmap, ptr %3, i32 %zone.04.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %7) #5
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw i32 %zone.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %brelse.exit.i.adfs_map_relse.exit_crit_edge, label %brelse.exit.i.for.body.i_crit_edge

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

brelse.exit.i.adfs_map_relse.exit_crit_edge:      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adfs_map_relse.exit

adfs_map_relse.exit:                              ; preds = %brelse.exit.i.adfs_map_relse.exit_crit_edge, %entry.adfs_map_relse.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %9) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__func__.adfs_map_lookup, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/adfs/map.c", i32 250, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/adfs/map.c", i32 255, i32 2}
!5 = !{ptr @__func__.adfs_read_map, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/adfs/map.c", i32 378, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/adfs/map.c", i32 386, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/adfs/map.c", i32 393, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/adfs/map.c", i32 151, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @scan_free_map._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @scan_free_map._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/adfs/map.c", i32 155, i32 2}
!20 = !{ptr @scan_free_map._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @scan_free_map._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/adfs/map.c", i32 48, i32 8}
!24 = !{ptr @adfs_map_lock, !23, !"adfs_map_lock", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/adfs/map.c", i32 103, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lookup_zone._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @lookup_zone._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__func__.adfs_checkmap, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/adfs/map.c", i32 295, i32 4}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/adfs/map.c", i32 301, i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
