; ModuleID = '/llk/IR_all_yes/fs/hpfs/buffer.c_pt.bc'
source_filename = "../fs/hpfs/buffer.c"
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
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.quad_buffer_head = type { [4 x ptr], ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/hpfs/buffer.c\00", [47 x i8] zeroinitializer }, align 32
@hpfs_map_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013hpfs: %s(): read error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpfs_map_sector\00", [16 x i8] zeroinitializer }, align 32
@hpfs_map_sector._entry_ptr = internal global ptr @hpfs_map_sector._entry, section ".printk_index", align 4
@hpfs_get_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013hpfs: %s(): getblk failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpfs_get_sector\00", [16 x i8] zeroinitializer }, align 32
@hpfs_get_sector._entry_ptr = internal global ptr @hpfs_get_sector._entry, section ".printk_index", align 4
@hpfs_map_4sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013hpfs: %s(): unaligned read\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpfs_map_4sectors\00", [46 x i8] zeroinitializer }, align 32
@hpfs_map_4sectors._entry_ptr = internal global ptr @hpfs_map_4sectors._entry, section ".printk_index", align 4
@hpfs_map_4sectors._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013hpfs: %s(): out of memory\0A\00", [35 x i8] zeroinitializer }, align 32
@hpfs_map_4sectors._entry_ptr.9 = internal global ptr @hpfs_map_4sectors._entry.7, section ".printk_index", align 4
@hpfs_get_4sectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpfs_get_4sectors\00", [46 x i8] zeroinitializer }, align 32
@hpfs_get_4sectors._entry_ptr = internal global ptr @hpfs_get_4sectors._entry, section ".printk_index", align 4
@hpfs_get_4sectors._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hpfs_get_4sectors._entry_ptr.12 = internal global ptr @hpfs_get_4sectors._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/hpfs/hpfs_fn.h\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 80, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 86, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 107, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 124, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 143, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 176, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private constant [20 x i8] c"../fs/hpfs/buffer.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 192, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"../fs/hpfs/hpfs_fn.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 378, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 354, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @hpfs_get_4sectors._entry, ptr @hpfs_get_4sectors._entry.11, ptr @hpfs_get_4sectors._entry_ptr, ptr @hpfs_get_4sectors._entry_ptr.12, ptr @hpfs_get_sector._entry, ptr @hpfs_get_sector._entry_ptr, ptr @hpfs_map_4sectors._entry, ptr @hpfs_map_4sectors._entry.7, ptr @hpfs_map_4sectors._entry_ptr, ptr @hpfs_map_4sectors._entry_ptr.9, ptr @hpfs_map_sector._entry, ptr @hpfs_map_sector._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_map_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_get_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_map_4sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_map_4sectors._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_get_4sectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_get_4sectors._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_search_hotfix_map(ptr nocapture noundef readonly %s, i32 noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %n_hotfixes = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %n_hotfixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_hotfixes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not = icmp eq i32 %3, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge, !prof !41

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hpfs_sb_info, ptr %1, i32 0, i32 20, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sec)
  %cmp2 = icmp eq i32 %5, %sec
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx3 = getelementptr %struct.hpfs_sb_info, ptr %1, i32 0, i32 21, i32 %i.013
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge, !prof !41

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ %sec, %entry.cleanup_crit_edge ], [ %sec, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_search_hotfix_map_for_range(ptr nocapture noundef readonly %s, i32 noundef %sec, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %n_hotfixes = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %n_hotfixes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_hotfixes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !prof !41

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %n.addr.019 = phi i32 [ %n.addr.1, %for.body.for.body_crit_edge ], [ %n, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hpfs_sb_info, ptr %1, i32 0, i32 20, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sec)
  %cmp2.not = icmp uge i32 %5, %sec
  %add = add i32 %n.addr.019, %sec
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp5 = icmp ult i32 %5, %add
  %or.cond = select i1 %cmp2.not, i1 %cmp5, i1 false
  %sub = sub i32 %5, %sec
  %n.addr.1 = select i1 %or.cond, i32 %sub, i32 %n.addr.019
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !prof !41

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.addr.0.lcssa = phi i32 [ %n, %entry.for.end_crit_edge ], [ %n.addr.1, %for.body.for.end_crit_edge ]
  ret i32 %n.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_prefetch_sectors(ptr nocapture noundef readonly %s, i32 noundef %secno, i32 noundef %n) local_unnamed_addr #2 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #6
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_fs_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %secno)
  %cmp1.not = icmp ugt i32 %4, %secno
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge, !prof !41

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %n_hotfixes.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %2, i32 0, i32 19
  %5 = ptrtoint ptr %n_hotfixes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_hotfixes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18.not.i = icmp eq i32 %6, 0
  br i1 %cmp18.not.i, label %if.end.if.end12_crit_edge, label %if.end.for.body.i_crit_edge, !prof !41

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %n.addr.019.i = phi i32 [ %n.addr.1.i, %for.body.i.for.body.i_crit_edge ], [ %n, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hpfs_sb_info, ptr %2, i32 0, i32 20, i32 %i.020.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %secno)
  %cmp2.not.i = icmp uge i32 %8, %secno
  %add.i = add i32 %n.addr.019.i, %secno
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add.i)
  %cmp5.i = icmp ult i32 %8, %add.i
  %or.cond.i = select i1 %cmp2.not.i, i1 %cmp5.i, i1 false
  %sub.i = sub i32 %8, %secno
  %n.addr.1.i = select i1 %or.cond.i, i32 %sub.i, i32 %n.addr.019.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %hpfs_search_hotfix_map_for_range.exit, label %for.body.i.for.body.i_crit_edge, !prof !41

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hpfs_search_hotfix_map_for_range.exit:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.1.i, i32 %n)
  %cmp4.not = icmp eq i32 %n.addr.1.i, %n
  br i1 %cmp4.not, label %hpfs_search_hotfix_map_for_range.exit.if.end12_crit_edge, label %hpfs_search_hotfix_map_for_range.exit.cleanup_crit_edge, !prof !41

hpfs_search_hotfix_map_for_range.exit.cleanup_crit_edge: ; preds = %hpfs_search_hotfix_map_for_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hpfs_search_hotfix_map_for_range.exit.if.end12_crit_edge: ; preds = %hpfs_search_hotfix_map_for_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %hpfs_search_hotfix_map_for_range.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %conv = zext i32 %secno to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %9 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__find_get_block(ptr noundef %10, i64 noundef %conv, i32 noundef %12) #6
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool17.not = icmp eq i32 %and1.i.i, 0
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp2161 = icmp sgt i32 %n, 0
  br i1 %cmp2161, label %if.end20.while.body_crit_edge, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %if.end20.while.body_crit_edge
  %n.addr.063 = phi i32 [ %dec, %if.end34.while.body_crit_edge ], [ %n, %if.end20.while.body_crit_edge ]
  %secno.addr.062 = phi i32 [ %inc, %if.end34.while.body_crit_edge ], [ %secno, %if.end20.while.body_crit_edge ]
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size24 = getelementptr inbounds %struct.hpfs_sb_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %sb_fs_size24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_fs_size24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %secno.addr.062, i32 %18)
  %cmp25.not = icmp ult i32 %secno.addr.062, %18
  br i1 %cmp25.not, label %if.end34, label %while.body.while.end_crit_edge, !prof !41

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end34:                                         ; preds = %while.body
  %conv35 = zext i32 %secno.addr.062 to i64
  %19 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i, align 4
  %21 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize.i, align 16
  call void @__breadahead(ptr noundef %20, i64 noundef %conv35, i32 noundef %22) #6
  %inc = add nuw i32 %secno.addr.062, 1
  %dec = add nsw i32 %n.addr.063, -1
  %cmp21 = icmp sgt i32 %n.addr.063, 1
  br i1 %cmp21, label %if.end34.while.body_crit_edge, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end20.while.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then15.cleanup_crit_edge, %hpfs_search_hotfix_map_for_range.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_sector(ptr nocapture noundef readonly %s, i32 noundef %secno, ptr nocapture noundef writeonly %bhp, i32 noundef %ahead) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #6
  br i1 %call1.i, label %entry.hpfs_lock_assert.exit_crit_edge, label %do.end.i, !prof !41

entry.hpfs_lock_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_lock_assert.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 378, i32 noundef 9, ptr noundef null) #6
  br label %hpfs_lock_assert.exit

hpfs_lock_assert.exit:                            ; preds = %do.end.i, %entry.hpfs_lock_assert.exit_crit_edge
  tail call void @hpfs_prefetch_sectors(ptr noundef %s, i32 noundef %secno, i32 noundef %ahead)
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %n_hotfixes.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %n_hotfixes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_hotfixes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge, label %hpfs_lock_assert.exit.for.body.i_crit_edge, !prof !41

hpfs_lock_assert.exit.for.body.i_crit_edge:       ; preds = %hpfs_lock_assert.exit
  br label %for.body.i

hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge: ; preds = %hpfs_lock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_search_hotfix_map.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hpfs_lock_assert.exit.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %hpfs_lock_assert.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hpfs_sb_info, ptr %3, i32 0, i32 20, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %secno)
  %cmp2.i = icmp eq i32 %7, %secno
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx3.i = getelementptr %struct.hpfs_sb_info, ptr %3, i32 0, i32 21, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  br label %hpfs_search_hotfix_map.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !41

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.hpfs_search_hotfix_map.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_search_hotfix_map.exit

hpfs_search_hotfix_map.exit:                      ; preds = %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge, %if.then.i, %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %secno, %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge ], [ %secno, %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i12 = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %conv, i32 noundef %13, i32 noundef 8) #6
  %14 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i12, ptr %bhp, align 4
  %cmp.not = icmp eq ptr %call.i12, null
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %hpfs_search_hotfix_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i12, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  br label %cleanup

do.end:                                           ; preds = %hpfs_search_hotfix_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi ptr [ %16, %if.then ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_get_sector(ptr nocapture noundef readonly %s, i32 noundef %secno, ptr nocapture noundef writeonly %bhp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #6
  br i1 %call1.i, label %entry.hpfs_lock_assert.exit_crit_edge, label %do.end.i, !prof !41

entry.hpfs_lock_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_lock_assert.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 378, i32 noundef 9, ptr noundef null) #6
  br label %hpfs_lock_assert.exit

hpfs_lock_assert.exit:                            ; preds = %do.end.i, %entry.hpfs_lock_assert.exit_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %n_hotfixes.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %n_hotfixes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_hotfixes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12.not.i = icmp eq i32 %5, 0
  br i1 %cmp12.not.i, label %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge, label %hpfs_lock_assert.exit.for.body.i_crit_edge, !prof !41

hpfs_lock_assert.exit.for.body.i_crit_edge:       ; preds = %hpfs_lock_assert.exit
  br label %for.body.i

hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge: ; preds = %hpfs_lock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_search_hotfix_map.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hpfs_lock_assert.exit.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %hpfs_lock_assert.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hpfs_sb_info, ptr %3, i32 0, i32 20, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %secno)
  %cmp2.i = icmp eq i32 %7, %secno
  br i1 %cmp2.i, label %if.then.i15, label %for.inc.i

if.then.i15:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx3.i = getelementptr %struct.hpfs_sb_info, ptr %3, i32 0, i32 21, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  br label %hpfs_search_hotfix_map.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !prof !41

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.hpfs_search_hotfix_map.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_search_hotfix_map.exit

hpfs_search_hotfix_map.exit:                      ; preds = %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge, %if.then.i15, %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i15 ], [ %secno, %hpfs_lock_assert.exit.hpfs_search_hotfix_map.exit_crit_edge ], [ %secno, %for.inc.i.hpfs_search_hotfix_map.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i16 = tail call ptr @__getblk_gfp(ptr noundef %11, i64 noundef %conv, i32 noundef %13, i32 noundef 8) #6
  %14 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i16, ptr %bhp, align 4
  %cmp.not = icmp eq ptr %call.i16, null
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %hpfs_search_hotfix_map.exit
  %15 = ptrtoint ptr %call.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i16, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 354) #6
  %17 = ptrtoint ptr %call.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i16, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i17 = icmp eq i32 %19, 0
  br i1 %tobool.not.i17, label %if.then5.if.end_crit_edge, label %if.then.i18

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i18:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wait_on_buffer(ptr noundef nonnull %call.i16) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i18, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %call.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i16, align 4
  %and1.i.i13 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13)
  %tobool.not.i = icmp eq i32 %and1.i.i13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.set_buffer_uptodate.exit_crit_edge

if.end.set_buffer_uptodate.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i16) #6
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end.set_buffer_uptodate.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i16, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  br label %cleanup

do.end:                                           ; preds = %hpfs_search_hotfix_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %set_buffer_uptodate.exit
  %retval.0 = phi ptr [ %23, %set_buffer_uptodate.exit ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_map_4sectors(ptr nocapture noundef readonly %s, i32 noundef %secno, ptr nocapture noundef %qbh, i32 noundef %ahead) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #6
  br i1 %call1.i, label %entry.hpfs_lock_assert.exit_crit_edge, label %do.end.i, !prof !41

entry.hpfs_lock_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_lock_assert.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 378, i32 noundef 9, ptr noundef null) #6
  br label %hpfs_lock_assert.exit

hpfs_lock_assert.exit:                            ; preds = %do.end.i, %entry.hpfs_lock_assert.exit_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  %and = and i32 %secno, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %hpfs_lock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %hpfs_lock_assert.exit
  %add = add i32 %ahead, 4
  tail call void @hpfs_prefetch_sectors(ptr noundef %s, i32 noundef %secno, i32 noundef %add)
  %call4 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %secno, ptr noundef %qbh, i32 noundef 0)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add8 = add nuw i32 %secno, 1
  %arrayidx10 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 1
  %call11 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %add8, ptr noundef %arrayidx10, i32 noundef 0)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end7.bail1_crit_edge, label %if.end14

if.end7.bail1_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end14:                                         ; preds = %if.end7
  %add15 = add nuw i32 %secno, 2
  %arrayidx17 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 2
  %call18 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %add15, ptr noundef %arrayidx17, i32 noundef 0)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end14.bail2_crit_edge, label %if.end21

if.end14.bail2_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end21:                                         ; preds = %if.end14
  %add22 = add nuw i32 %secno, 3
  %arrayidx24 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 3
  %call25 = tail call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %add22, ptr noundef %arrayidx24, i32 noundef 0)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end21.bail3_crit_edge, label %if.end28

if.end21.bail3_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.end28:                                         ; preds = %if.end21
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx10, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qbh, align 4
  %b_data33 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data33, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %cmp = icmp eq ptr %5, %add.ptr
  br i1 %cmp, label %land.lhs.true, label %if.end28.if.end70_crit_edge, !prof !41

if.end28.if.end70_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end28
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx17, align 4
  %b_data38 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data38, align 4
  %add.ptr42 = getelementptr i8, ptr %9, i32 1024
  %cmp43 = icmp eq ptr %13, %add.ptr42
  br i1 %cmp43, label %land.lhs.true50, label %land.lhs.true.if.end70_crit_edge, !prof !41

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true50:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %b_data53 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data53, align 4
  %add.ptr57 = getelementptr i8, ptr %9, i32 1536
  %cmp58 = icmp eq ptr %17, %add.ptr57
  br i1 %cmp58, label %if.then65, label %land.lhs.true50.if.end70_crit_edge, !prof !41

land.lhs.true50.if.end70_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then65:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  %data69 = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %18 = ptrtoint ptr %data69 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %data69, align 4
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true50.if.end70_crit_edge, %land.lhs.true.if.end70_crit_edge, %if.end28.if.end70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3136, i32 noundef 2048) #10
  %data72 = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %20 = ptrtoint ptr %data72 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %data72, align 4
  %tobool73.not = icmp eq ptr %call7.i, null
  br i1 %tobool73.not, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end70
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #9
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx24, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end77.bail3_crit_edge, label %if.then.i

do.end77.bail3_crit_edge:                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.then.i:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %22) #6
  br label %bail3

if.end80:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qbh, align 4
  %b_data84 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data84, align 4
  %27 = call ptr @memcpy(ptr %call7.i, ptr %26, i32 512)
  %add.ptr85 = getelementptr i8, ptr %call7.i, i32 512
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx10, align 4
  %b_data88 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data88 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data88, align 4
  %32 = call ptr @memcpy(ptr %add.ptr85, ptr %31, i32 512)
  %add.ptr89 = getelementptr i8, ptr %call7.i, i32 1024
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx17, align 4
  %b_data92 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %b_data92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data92, align 4
  %37 = call ptr @memcpy(ptr %add.ptr89, ptr %36, i32 512)
  %add.ptr93 = getelementptr i8, ptr %call7.i, i32 1536
  %38 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx24, align 4
  %b_data96 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %b_data96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data96, align 4
  %42 = call ptr @memcpy(ptr %add.ptr93, ptr %41, i32 512)
  br label %cleanup

bail3:                                            ; preds = %if.then.i, %do.end77.bail3_crit_edge, %if.end21.bail3_crit_edge
  %43 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx17, align 4
  %tobool.not.i140 = icmp eq ptr %44, null
  br i1 %tobool.not.i140, label %bail3.bail2_crit_edge, label %if.then.i141

bail3.bail2_crit_edge:                            ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.then.i141:                                     ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %44) #6
  br label %bail2

bail2:                                            ; preds = %if.then.i141, %bail3.bail2_crit_edge, %if.end14.bail2_crit_edge
  %45 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx10, align 4
  %tobool.not.i143 = icmp eq ptr %46, null
  br i1 %tobool.not.i143, label %bail2.bail1_crit_edge, label %if.then.i144

bail2.bail1_crit_edge:                            ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.then.i144:                                     ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %46) #6
  br label %bail1

bail1:                                            ; preds = %if.then.i144, %bail2.bail1_crit_edge, %if.end7.bail1_crit_edge
  %47 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qbh, align 4
  %tobool.not.i146 = icmp eq ptr %48, null
  br i1 %tobool.not.i146, label %bail1.cleanup_crit_edge, label %if.then.i147

bail1.cleanup_crit_edge:                          ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i147:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i147, %bail1.cleanup_crit_edge, %if.end80, %if.then65, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %9, %if.then65 ], [ %call7.i, %if.end80 ], [ null, %if.end.cleanup_crit_edge ], [ null, %bail1.cleanup_crit_edge ], [ null, %if.then.i147 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_get_4sectors(ptr nocapture noundef readonly %s, i32 noundef %secno, ptr nocapture noundef %qbh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 171, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %1) #6
  br i1 %call1.i, label %entry.hpfs_lock_assert.exit_crit_edge, label %do.end.i, !prof !41

entry.hpfs_lock_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hpfs_lock_assert.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 378, i32 noundef 9, ptr noundef null) #6
  br label %hpfs_lock_assert.exit

hpfs_lock_assert.exit:                            ; preds = %do.end.i, %entry.hpfs_lock_assert.exit_crit_edge
  %and = and i32 %secno, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %hpfs_lock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #9
  br label %return

if.end:                                           ; preds = %hpfs_lock_assert.exit
  %call3 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %secno, ptr noundef %qbh)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6:                                          ; preds = %if.end
  %add7 = add nuw i32 %secno, 1
  %arrayidx9 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 1
  %call10 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %add7, ptr noundef %arrayidx9)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.bail1_crit_edge, label %if.end13

if.end6.bail1_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.end13:                                         ; preds = %if.end6
  %add14 = add nuw i32 %secno, 2
  %arrayidx16 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 2
  %call17 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %add14, ptr noundef %arrayidx16)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end13.bail2_crit_edge, label %if.end20

if.end13.bail2_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.end20:                                         ; preds = %if.end13
  %add21 = add nuw i32 %secno, 3
  %arrayidx23 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 3
  %call24 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %add21, ptr noundef %arrayidx23)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end20.bail3_crit_edge, label %if.end27

if.end20.bail3_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.end27:                                         ; preds = %if.end20
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx9, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %6 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qbh, align 4
  %b_data32 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data32, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %cmp = icmp eq ptr %5, %add.ptr
  br i1 %cmp, label %land.lhs.true, label %if.end27.if.end68_crit_edge, !prof !41

if.end27.if.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end27
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %b_data37 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data37, align 4
  %add.ptr41 = getelementptr i8, ptr %9, i32 1024
  %cmp42 = icmp eq ptr %13, %add.ptr41
  br i1 %cmp42, label %land.lhs.true49, label %land.lhs.true.if.end68_crit_edge, !prof !41

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true49:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx23, align 4
  %b_data52 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data52, align 4
  %add.ptr56 = getelementptr i8, ptr %9, i32 1536
  %cmp57 = icmp eq ptr %17, %add.ptr56
  br i1 %cmp57, label %if.then64, label %land.lhs.true49.if.end68_crit_edge, !prof !41

land.lhs.true49.if.end68_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then64:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %data, align 4
  br label %return

if.end68:                                         ; preds = %land.lhs.true49.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end27.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3136, i32 noundef 2048) #10
  %data70 = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %20 = ptrtoint ptr %data70 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %data70, align 4
  %tobool71.not = icmp eq ptr %call7.i, null
  br i1 %tobool71.not, label %do.end74, label %if.end68.return_crit_edge

if.end68.return_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end74:                                         ; preds = %if.end68
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #9
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx23, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.end74.bail3_crit_edge, label %if.then.i

do.end74.bail3_crit_edge:                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail3

if.then.i:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %22) #6
  br label %bail3

bail3:                                            ; preds = %if.then.i, %do.end74.bail3_crit_edge, %if.end20.bail3_crit_edge
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16, align 4
  %tobool.not.i112 = icmp eq ptr %24, null
  br i1 %tobool.not.i112, label %bail3.bail2_crit_edge, label %if.then.i113

bail3.bail2_crit_edge:                            ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail2

if.then.i113:                                     ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %24) #6
  br label %bail2

bail2:                                            ; preds = %if.then.i113, %bail3.bail2_crit_edge, %if.end13.bail2_crit_edge
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9, align 4
  %tobool.not.i115 = icmp eq ptr %26, null
  br i1 %tobool.not.i115, label %bail2.bail1_crit_edge, label %if.then.i116

bail2.bail1_crit_edge:                            ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #8
  br label %bail1

if.then.i116:                                     ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %26) #6
  br label %bail1

bail1:                                            ; preds = %if.then.i116, %bail2.bail1_crit_edge, %if.end6.bail1_crit_edge
  %27 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qbh, align 4
  %tobool.not.i118 = icmp eq ptr %28, null
  br i1 %tobool.not.i118, label %bail1.return_crit_edge, label %if.then.i119

bail1.return_crit_edge:                           ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i119:                                     ; preds = %bail1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %28) #6
  br label %return

return:                                           ; preds = %if.then.i119, %bail1.return_crit_edge, %if.end68.return_crit_edge, %if.then64, %if.end.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %9, %if.then64 ], [ %call7.i, %if.end68.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ null, %bail1.return_crit_edge ], [ null, %if.then.i119 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_brelse4(ptr nocapture noundef readonly %qbh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qbh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %1) #6
  %6 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %qbh, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = phi ptr [ %.pr, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %7) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %arrayidx6 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %tobool.not.i17 = icmp eq ptr %9, null
  br i1 %tobool.not.i17, label %brelse.exit.brelse.exit19_crit_edge, label %if.then.i18

brelse.exit.brelse.exit19_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit19

if.then.i18:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %9) #6
  br label %brelse.exit19

brelse.exit19:                                    ; preds = %if.then.i18, %brelse.exit.brelse.exit19_crit_edge
  %arrayidx8 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %tobool.not.i20 = icmp eq ptr %11, null
  br i1 %tobool.not.i20, label %brelse.exit19.brelse.exit22_crit_edge, label %if.then.i21

brelse.exit19.brelse.exit22_crit_edge:            ; preds = %brelse.exit19
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit22

if.then.i21:                                      ; preds = %brelse.exit19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %11) #6
  br label %brelse.exit22

brelse.exit22:                                    ; preds = %if.then.i21, %brelse.exit19.brelse.exit22_crit_edge
  %arrayidx10 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool.not.i23 = icmp eq ptr %13, null
  br i1 %tobool.not.i23, label %brelse.exit22.brelse.exit25_crit_edge, label %if.then.i24

brelse.exit22.brelse.exit25_crit_edge:            ; preds = %brelse.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit25

if.then.i24:                                      ; preds = %brelse.exit22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %13) #6
  br label %brelse.exit25

brelse.exit25:                                    ; preds = %if.then.i24, %brelse.exit22.brelse.exit25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_mark_4buffers_dirty(ptr nocapture noundef readonly %qbh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.quad_buffer_head, ptr %qbh, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qbh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %5, ptr %1, i32 512)
  %arrayidx7 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %b_data8 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data8, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 512
  %13 = call ptr @memcpy(ptr %10, ptr %add.ptr10, i32 512)
  %arrayidx12 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %b_data13 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data13, align 4
  %18 = load ptr, ptr %data, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 1024
  %19 = call ptr @memcpy(ptr %17, ptr %add.ptr15, i32 512)
  %arrayidx17 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17, align 4
  %b_data18 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data18, align 4
  %24 = load ptr, ptr %data, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 1536
  %25 = call ptr @memcpy(ptr %23, ptr %add.ptr20, i32 512)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %qbh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qbh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %27) #6
  %arrayidx24 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24, align 4
  tail call void @mark_buffer_dirty(ptr noundef %29) #6
  %arrayidx26 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx26, align 4
  tail call void @mark_buffer_dirty(ptr noundef %31) #6
  %arrayidx28 = getelementptr [4 x ptr], ptr %qbh, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx28, align 4
  tail call void @mark_buffer_dirty(ptr noundef %33) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/buffer.c", i32 80, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/buffer.c", i32 86, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hpfs_map_sector._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @hpfs_map_sector._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/hpfs/buffer.c", i32 107, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hpfs_get_sector._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @hpfs_get_sector._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/buffer.c", i32 124, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hpfs_map_4sectors._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @hpfs_map_4sectors._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/hpfs/buffer.c", i32 143, i32 3}
!19 = !{ptr @hpfs_map_4sectors._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @hpfs_map_4sectors._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/hpfs/buffer.c", i32 176, i32 3}
!23 = !{ptr @hpfs_get_4sectors._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hpfs_get_4sectors._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @hpfs_get_4sectors._entry.11, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../fs/hpfs/buffer.c", i32 192, i32 3}
!27 = !{ptr @hpfs_get_4sectors._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hpfs/hpfs_fn.h", i32 378, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
