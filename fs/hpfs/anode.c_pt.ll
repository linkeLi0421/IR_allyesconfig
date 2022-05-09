; ModuleID = '/llk/IR_all_yes/fs/hpfs/anode.c_pt.bc'
source_filename = "../fs/hpfs/anode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%struct.anode = type { i32, i32, i32, %struct.bplus_header, %union.anon.82, [3 x i32] }
%union.anon.82 = type { [40 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.83, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%union.anon.83 = type { [8 x %struct.bplus_leaf_node] }
%struct.extended_attribute = type { i8, i8, i8, i8, [0 x i8] }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hpfs_bplus_lookup\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sector %08x not found in internal anode %08x\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sector %08x not found in external anode %08x\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"anode %08x has no entries\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hpfs_add_sector_to_btree #1\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"allocated size %08x, trying to add sector %08x, %cnode %08x\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"empty file %08x, trying to add sector %08x\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hpfs_add_sector_to_btree #2\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hpfs_remove_btree #1\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hpfs_remove_btree #2\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"reference to anode %08x not found in anode %08x (probably bad up pointer)\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ea #1\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ea #2\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"internal btree %08x doesn't end with -1\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpfs_truncate_btree\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"there is an allocation error in file %08x, sector %08x\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 23, i32 63 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 33, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 41, i32 58 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 54, i32 16 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 82, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 92, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 99, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 168, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 291, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 304, i32 42 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 321, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 350, i32 59 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 373, i32 59 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 432, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 448, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [19 x i8] c"../fs/hpfs/anode.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 460, i32 17 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_bplus_lookup(ptr noundef %s, ptr noundef writeonly %inode, ptr nocapture noundef readonly %btree, i32 noundef %sec, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %bh.addr = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bh, ptr %bh.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #4
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #4
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %go_down

go_down:                                          ; preds = %brelse.exit.go_down_crit_edge, %entry
  %btree.addr.0 = phi ptr [ %btree, %entry ], [ %btree18, %brelse.exit.go_down_crit_edge ]
  %a.0 = phi i32 [ -1, %entry ], [ %16, %brelse.exit.go_down_crit_edge ]
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %sb_chk, align 2
  %6 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %go_down.if.end4_crit_edge, label %if.then

go_down.if.end4_crit_edge:                        ; preds = %go_down
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %go_down
  %call1 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %a.0, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %go_down.if.end4_crit_edge
  %7 = ptrtoint ptr %btree.addr.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %btree.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i = icmp slt i8 %8, 0
  %n_used_nodes = getelementptr inbounds %struct.bplus_header, ptr %btree.addr.0, i32 0, i32 3
  %9 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %n_used_nodes, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp150.not = icmp eq i8 %10, 0
  br i1 %tobool.i, label %for.cond.preheader, label %for.cond21.preheader

for.cond.preheader:                               ; preds = %if.end4
  br i1 %cmp150.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %internal = getelementptr inbounds %struct.bplus_header, ptr %btree.addr.0, i32 1
  br label %for.body

for.cond21.preheader:                             ; preds = %if.end4
  %conv.le = zext i8 %10 to i32
  br i1 %cmp150.not, label %for.cond21.preheader.for.end82_crit_edge, label %for.body26.lr.ph

for.cond21.preheader.for.end82_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end82

for.body26.lr.ph:                                 ; preds = %for.cond21.preheader
  %external = getelementptr inbounds %struct.bplus_header, ptr %btree.addr.0, i32 1
  br label %for.body26

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.bplus_internal_node], ptr %internal, i32 0, i32 %i.0151
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sec)
  %cmp8 = icmp ugt i32 %13, %sec
  br i1 %cmp8, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  %down = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %down, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bh.addr, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then10.brelse.exit_crit_edge, label %if.then.i

if.then10.brelse.exit_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %18) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then10.brelse.exit_crit_edge
  %call14 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %16, ptr noundef nonnull %bh.addr) #4
  %tobool15.not = icmp eq ptr %call14, null
  %btree18 = getelementptr inbounds %struct.anode, ptr %call14, i32 0, i32 3
  br i1 %tobool15.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.go_down_crit_edge

brelse.exit.go_down_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %go_down

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %sec, i32 noundef %a.0) #4
  %19 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh.addr, align 4
  %tobool.not.i131 = icmp eq ptr %20, null
  br i1 %tobool.not.i131, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body26:                                       ; preds = %for.inc80.for.body26_crit_edge, %for.body26.lr.ph
  %i.1155 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc81, %for.inc80.for.body26_crit_edge ]
  %arrayidx28 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external, i32 0, i32 %i.1155
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sec)
  %cmp30.not = icmp ugt i32 %23, %sec
  br i1 %cmp30.not, label %for.body26.for.inc80_crit_edge, label %land.lhs.true

for.body26.for.inc80_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc80

land.lhs.true:                                    ; preds = %for.body26
  %length = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx28, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %add = add i32 %26, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sec)
  %cmp39 = icmp ugt i32 %add, %sec
  br i1 %cmp39, label %if.then41, label %land.lhs.true.for.inc80_crit_edge

land.lhs.true.for.inc80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc80

if.then41:                                        ; preds = %land.lhs.true
  %length.le = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx28, i32 0, i32 1
  %disk_secno = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx28, i32 0, i32 2
  %27 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disk_secno, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %add45 = sub i32 %sec, %23
  %sub = add i32 %add45, %29
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk51 = getelementptr inbounds %struct.hpfs_sb_info, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sb_chk51 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load52 = load i16, ptr %sb_chk51, align 2
  %33 = and i16 %bf.load52, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool56.not = icmp eq i16 %33, 0
  br i1 %tobool56.not, label %if.then41.if.end62_crit_edge, label %if.then57

if.then41.if.end62_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then57:                                        ; preds = %if.then41
  %call58 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %sub, i32 noundef 1, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end62_crit_edge, label %if.then60

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then60:                                        ; preds = %if.then57
  %34 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh.addr, align 4
  %tobool.not.i135 = icmp eq ptr %35, null
  br i1 %tobool.not.i135, label %if.then60.cleanup_crit_edge, label %if.then60.cleanup.sink.split_crit_edge

if.then60.cleanup.sink.split_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %if.then41.if.end62_crit_edge
  %tobool63.not = icmp eq ptr %inode, null
  br i1 %tobool63.not, label %if.end62.if.end78_crit_edge, label %if.then64

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %i_file_sec = getelementptr i8, ptr %inode, i32 -24
  %39 = ptrtoint ptr %i_file_sec to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_file_sec, align 8
  %40 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %disk_secno, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %i_disk_sec = getelementptr i8, ptr %inode, i32 -20
  %43 = ptrtoint ptr %i_disk_sec to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %i_disk_sec, align 4
  %44 = ptrtoint ptr %length.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.le, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %i_n_secs = getelementptr i8, ptr %inode, i32 -16
  %47 = ptrtoint ptr %i_n_secs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %i_n_secs, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then64, %if.end62.if.end78_crit_edge
  %48 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh.addr, align 4
  %tobool.not.i138 = icmp eq ptr %49, null
  br i1 %tobool.not.i138, label %if.end78.cleanup_crit_edge, label %if.end78.cleanup.sink.split_crit_edge

if.end78.cleanup.sink.split_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc80:                                        ; preds = %land.lhs.true.for.inc80_crit_edge, %for.body26.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.1155, 1
  %exitcond167.not = icmp eq i32 %inc81, %conv.le
  br i1 %exitcond167.not, label %for.inc80.for.end82_crit_edge, label %for.inc80.for.body26_crit_edge

for.inc80.for.body26_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26

for.inc80.for.end82_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end82

for.end82:                                        ; preds = %for.inc80.for.end82_crit_edge, %for.cond21.preheader.for.end82_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %sec, i32 noundef %a.0) #4
  %50 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh.addr, align 4
  %tobool.not.i141 = icmp eq ptr %51, null
  br i1 %tobool.not.i141, label %for.end82.cleanup_crit_edge, label %for.end82.cleanup.sink.split_crit_edge

for.end82.cleanup.sink.split_crit_edge:           ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end82.cleanup_crit_edge:                      ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end82.cleanup.sink.split_crit_edge, %if.end78.cleanup.sink.split_crit_edge, %if.then60.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %20, %for.end.cleanup.sink.split_crit_edge ], [ %35, %if.then60.cleanup.sink.split_crit_edge ], [ %49, %if.end78.cleanup.sink.split_crit_edge ], [ %51, %for.end82.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -1, %for.end.cleanup.sink.split_crit_edge ], [ -1, %if.then60.cleanup.sink.split_crit_edge ], [ %sub, %if.end78.cleanup.sink.split_crit_edge ], [ -1, %for.end82.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %for.end.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.end.cleanup_crit_edge ], [ -1, %if.then60.cleanup_crit_edge ], [ %sub, %if.end78.cleanup_crit_edge ], [ -1, %for.end82.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_stop_cycles(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_anode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_sectors(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_add_sector_to_btree(ptr noundef %s, i32 noundef %node, i32 noundef %fnod, i32 noundef %fsecno) local_unnamed_addr #0 align 64 {
entry:
  %na = alloca i32, align 4
  %ra = alloca i32, align 4
  %bh = alloca ptr, align 4
  %bh1 = alloca ptr, align 4
  %bh2 = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %na) #4
  %0 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %na, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ra) #4
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ra, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh1) #4
  %3 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh2) #4
  %4 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh2, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #4
  %5 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %c1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #4
  %6 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %c2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fnod)
  %tobool = icmp ne i32 %fnod, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %node, ptr noundef nonnull %bh) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup432_crit_edge, label %if.end

if.then.cleanup432_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %btree3 = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14
  br label %if.end9

if.else:                                          ; preds = %entry
  %call4 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %node, ptr noundef nonnull %bh) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.cleanup432_crit_edge, label %if.end7

if.else.cleanup432_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btree8 = getelementptr inbounds %struct.anode, ptr %call4, i32 0, i32 3
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %btree.0 = phi ptr [ %btree3, %if.end ], [ %btree8, %if.end7 ]
  %anode.0 = phi ptr [ null, %if.end ], [ %call4, %if.end7 ]
  %lnot.ext.neg = sext i1 %tobool to i32
  %n_used_nodes744 = getelementptr inbounds %struct.bplus_header, ptr %btree.0, i32 0, i32 3
  %7 = ptrtoint ptr %n_used_nodes744 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %n_used_nodes744, align 1
  %conv745 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv745, i32 %lnot.ext.neg)
  %cmp.not747 = icmp sgt i32 %conv745, %lnot.ext.neg
  br i1 %cmp.not747, label %if.end15.lr.ph, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end15.lr.ph:                                   ; preds = %if.end9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %sub751818 = add nsw i32 %conv745, -1
  %9 = ptrtoint ptr %btree.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btree.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i819 = icmp slt i8 %10, 0
  br i1 %tobool.i819, label %if.end15.lr.ph.if.then17_crit_edge, label %if.end15.lr.ph.if.end34_crit_edge

if.end15.lr.ph.if.end34_crit_edge:                ; preds = %if.end15.lr.ph
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end15.lr.ph.if.then17_crit_edge:               ; preds = %if.end15.lr.ph
  br label %if.then17

go_down:                                          ; preds = %if.end28
  %n_used_nodes = getelementptr inbounds %struct.anode, ptr %call29, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %n_used_nodes, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %lnot.ext.neg)
  %cmp.not = icmp sgt i32 %conv, %lnot.ext.neg
  br i1 %cmp.not, label %if.end15, label %go_down.if.then14_crit_edge

go_down.if.then14_crit_edge:                      ; preds = %go_down
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %go_down.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %a.0.lcssa = phi i32 [ %node, %if.end9.if.then14_crit_edge ], [ %19, %go_down.if.then14_crit_edge ]
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %a.0.lcssa) #4
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then14.cleanup432_crit_edge, label %if.then.i

if.then14.cleanup432_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %14) #4
  br label %cleanup432

if.end15:                                         ; preds = %go_down
  %btree33 = getelementptr inbounds %struct.anode, ptr %call29, i32 0, i32 3
  %sub751 = add nsw i32 %conv, -1
  %15 = ptrtoint ptr %btree33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %btree33, align 4
  %tobool.i = icmp slt i8 %16, 0
  br i1 %tobool.i, label %if.end15.if.then17_crit_edge, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.then17:                                        ; preds = %if.end15.if.then17_crit_edge, %if.end15.lr.ph.if.then17_crit_edge
  %sub751821 = phi i32 [ %sub751, %if.end15.if.then17_crit_edge ], [ %sub751818, %if.end15.lr.ph.if.then17_crit_edge ]
  %btree.1748820 = phi ptr [ %btree33, %if.end15.if.then17_crit_edge ], [ %btree.0, %if.end15.lr.ph.if.then17_crit_edge ]
  %internal = getelementptr inbounds %struct.bplus_header, ptr %btree.1748820, i32 1
  %arrayidx = getelementptr [0 x %struct.bplus_internal_node], ptr %internal, i32 0, i32 %sub751821
  %down = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx, i32 0, i32 1
  %17 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %down, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %22) #4
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh, align 4
  %tobool.not.i650 = icmp eq ptr %24, null
  br i1 %tobool.not.i650, label %if.then17.brelse.exit652_crit_edge, label %if.then.i651

if.then17.brelse.exit652_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit652

if.then.i651:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %24) #4
  br label %brelse.exit652

brelse.exit652:                                   ; preds = %if.then.i651, %if.then17.brelse.exit652_crit_edge
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %sb_chk, align 2
  %28 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool22.not = icmp eq i16 %28, 0
  br i1 %tobool22.not, label %brelse.exit652.if.end28_crit_edge, label %if.then23

brelse.exit652.if.end28_crit_edge:                ; preds = %brelse.exit652
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then23:                                        ; preds = %brelse.exit652
  %call24 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %19, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.cleanup432_crit_edge

if.then23.cleanup432_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %brelse.exit652.if.end28_crit_edge
  %call29 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %19, ptr noundef nonnull %bh) #4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup432_crit_edge, label %go_down

if.end28.cleanup432_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end34:                                         ; preds = %if.end15.if.end34_crit_edge, %if.end15.lr.ph.if.end34_crit_edge
  %.lcssa813 = phi i8 [ %8, %if.end15.lr.ph.if.end34_crit_edge ], [ %12, %if.end15.if.end34_crit_edge ]
  %a.0750.lcssa = phi i32 [ %node, %if.end15.lr.ph.if.end34_crit_edge ], [ %19, %if.end15.if.end34_crit_edge ]
  %anode.1749.lcssa = phi ptr [ %anode.0, %if.end15.lr.ph.if.end34_crit_edge ], [ %call29, %if.end15.if.end34_crit_edge ]
  %btree.1748.lcssa = phi ptr [ %btree.0, %if.end15.lr.ph.if.end34_crit_edge ], [ %btree33, %if.end15.if.end34_crit_edge ]
  %sub751.lcssa = phi i32 [ %sub751818, %if.end15.lr.ph.if.end34_crit_edge ], [ %sub751, %if.end15.if.end34_crit_edge ]
  %n_used_nodes.le = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa813)
  %cmp35.not = icmp eq i8 %.lcssa813, 0
  br i1 %cmp35.not, label %if.else74, label %if.then37

if.then37:                                        ; preds = %if.end34
  %external = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 1
  %arrayidx39 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external, i32 0, i32 %sub751.lcssa
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx39, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %length = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx39, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %add = add i32 %34, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %fsecno)
  %cmp44.not = icmp eq i32 %add, %fsecno
  br i1 %cmp44.not, label %if.end57, label %if.then46

if.then46:                                        ; preds = %if.then37
  %cond = select i1 %tobool, i32 102, i32 97
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.6, i32 noundef %add, i32 noundef %fsecno, i32 noundef %cond, i32 noundef %node) #4
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bh, align 4
  %tobool.not.i653 = icmp eq ptr %36, null
  br i1 %tobool.not.i653, label %if.then46.cleanup432_crit_edge, label %if.then.i654

if.then46.cleanup432_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i654:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %36) #4
  br label %cleanup432

if.end57:                                         ; preds = %if.then37
  %disk_secno = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx39, i32 0, i32 2
  %37 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %disk_secno, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %add65 = add i32 %39, %34
  %call66 = call i32 @hpfs_alloc_if_possible(ptr noundef %s, i32 noundef %add65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end57.if.end81_crit_edge, label %if.then68

if.end57.if.end81_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then68:                                        ; preds = %if.end57
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #4
  %add.i = add i32 %42, 1
  %43 = call i32 @llvm.bswap.i32(i32 %add.i) #4
  %44 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %length, align 4
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %46) #4
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bh, align 4
  %tobool.not.i656 = icmp eq ptr %48, null
  br i1 %tobool.not.i656, label %if.then68.cleanup432_crit_edge, label %if.then.i657

if.then68.cleanup432_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i657:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %48) #4
  br label %cleanup432

if.else74:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fsecno)
  %tobool75.not = icmp eq i32 %fsecno, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.else74
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.7, i32 noundef %node, i32 noundef %fsecno) #4
  %49 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bh, align 4
  %tobool.not.i659 = icmp eq ptr %50, null
  br i1 %tobool.not.i659, label %if.then76.cleanup432_crit_edge, label %if.then.i660

if.then76.cleanup432_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i660:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %50) #4
  br label %cleanup432

if.end77:                                         ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #6
  %add79 = add i32 %node, 16384
  %and = and i32 %add79, -16384
  %cond80 = select i1 %tobool, i32 %and, i32 %node
  br label %if.end81

if.end81:                                         ; preds = %if.end77, %if.end57.if.end81_crit_edge
  %se.0 = phi i32 [ %add65, %if.end57.if.end81_crit_edge ], [ %cond80, %if.end77 ]
  %51 = call i32 @llvm.umax.i32(i32 %fsecno, i32 16)
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 128)
  %call96 = call i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %se.0, i32 noundef 1, i32 noundef %52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end81
  %53 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bh, align 4
  %tobool.not.i662 = icmp eq ptr %54, null
  br i1 %tobool.not.i662, label %if.then98.cleanup432_crit_edge, label %if.then.i663

if.then98.cleanup432_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i663:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %54) #4
  br label %cleanup432

if.end99:                                         ; preds = %if.end81
  br i1 %cmp35.not, label %if.end99.cond.end113_crit_edge, label %cond.false103

if.end99.cond.end113_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end113

cond.false103:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  %external105 = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 1
  %arrayidx106 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external105, i32 0, i32 %sub751.lcssa
  %55 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx106, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %length111 = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx106, i32 0, i32 1
  %58 = ptrtoint ptr %length111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length111, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %add112 = add i32 %60, %57
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false103, %if.end99.cond.end113_crit_edge
  %cond114 = phi i32 [ %add112, %cond.false103 ], [ 0, %if.end99.cond.end113_crit_edge ]
  %n_free_nodes = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 0, i32 2
  %61 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %n_free_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool115.not = icmp eq i8 %62, 0
  br i1 %tobool115.not, label %if.then116, label %cond.end113.if.end179_crit_edge

cond.end113.if.end179_crit_edge:                  ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179

if.then116:                                       ; preds = %cond.end113
  call void @__sanitizer_cov_trace_cmp4(i32 %a.0750.lcssa, i32 %node)
  %cmp117.not = icmp eq i32 %a.0750.lcssa, %node
  br i1 %cmp117.not, label %if.then116.cond.end122_crit_edge, label %cond.true119

if.then116.cond.end122_crit_edge:                 ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end122

cond.true119:                                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  %up120 = getelementptr inbounds %struct.anode, ptr %anode.1749.lcssa, i32 0, i32 2
  %63 = ptrtoint ptr %up120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %up120, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true119, %if.then116.cond.end122_crit_edge
  %cond123 = phi i32 [ %65, %cond.true119 ], [ -1, %if.then116.cond.end122_crit_edge ]
  %call124 = call ptr @hpfs_alloc_anode(ptr noundef %s, i32 noundef %a.0750.lcssa, ptr noundef nonnull %na, ptr noundef nonnull %bh1) #4
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %if.then126, label %if.end127

if.then126:                                       ; preds = %cond.end122
  %66 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bh, align 4
  %tobool.not.i665 = icmp eq ptr %67, null
  br i1 %tobool.not.i665, label %if.then126.brelse.exit667_crit_edge, label %if.then.i666

if.then126.brelse.exit667_crit_edge:              ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit667

if.then.i666:                                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %67) #4
  br label %brelse.exit667

brelse.exit667:                                   ; preds = %if.then.i666, %if.then126.brelse.exit667_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %call96, i32 noundef 1) #4
  br label %cleanup432

if.end127:                                        ; preds = %cond.end122
  %brmerge.demorgan = and i1 %tobool, %cmp117.not
  br i1 %brmerge.demorgan, label %if.then131, label %if.else172

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  %68 = call i32 @llvm.bswap.i32(i32 %node)
  %up132 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 2
  %69 = ptrtoint ptr %up132 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %up132, align 4
  %btree133 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 3
  %70 = ptrtoint ptr %btree133 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %btree133, align 4
  %72 = or i8 %71, 32
  store i8 %72, ptr %btree133, align 4
  %73 = ptrtoint ptr %n_used_nodes.le to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %n_used_nodes.le, align 1
  %n_used_nodes138 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 3, i32 3
  %75 = ptrtoint ptr %n_used_nodes138 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %n_used_nodes138, align 1
  %first_free = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 0, i32 4
  %76 = ptrtoint ptr %first_free to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %first_free, align 2
  %first_free140 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %first_free140 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %first_free140, align 2
  %sub144 = sub i8 40, %74
  %n_free_nodes147 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %n_free_nodes147 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %sub144, ptr %n_free_nodes147, align 4
  %u148 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 4
  %u149 = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 0, i32 5
  %80 = load i8, ptr %n_used_nodes.le, align 1
  %conv151 = zext i8 %80 to i32
  %mul152 = mul nuw nsw i32 %conv151, 12
  %81 = call ptr @memcpy(ptr %u148, ptr %u149, i32 %mul152)
  %82 = ptrtoint ptr %btree.1748.lcssa to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %btree.1748.lcssa, align 4
  %84 = or i8 %83, -128
  store i8 %84, ptr %btree.1748.lcssa, align 4
  %85 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 11, ptr %n_free_nodes, align 4
  store i8 1, ptr %n_used_nodes.le, align 1
  store i16 4096, ptr %first_free, align 2
  %86 = ptrtoint ptr %u149 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %u149, align 4
  %87 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %na, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %down171 = getelementptr inbounds %struct.bplus_header, ptr %btree.1748.lcssa, i32 1, i32 2
  %90 = ptrtoint ptr %down171 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %down171, align 4
  %91 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %92) #4
  br label %if.end177

if.else172:                                       ; preds = %if.end127
  %call173 = call ptr @hpfs_alloc_anode(ptr noundef %s, i32 noundef 0, ptr noundef nonnull %ra, ptr noundef nonnull %bh2) #4
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %if.then175, label %if.else172.if.end177_crit_edge

if.else172.if.end177_crit_edge:                   ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

if.then175:                                       ; preds = %if.else172
  %93 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bh, align 4
  %tobool.not.i668 = icmp eq ptr %94, null
  br i1 %tobool.not.i668, label %if.then175.brelse.exit670_crit_edge, label %if.then.i669

if.then175.brelse.exit670_crit_edge:              ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit670

if.then.i669:                                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %94) #4
  br label %brelse.exit670

brelse.exit670:                                   ; preds = %if.then.i669, %if.then175.brelse.exit670_crit_edge
  %95 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh1, align 4
  %tobool.not.i671 = icmp eq ptr %96, null
  br i1 %tobool.not.i671, label %brelse.exit670.brelse.exit673_crit_edge, label %if.then.i672

brelse.exit670.brelse.exit673_crit_edge:          ; preds = %brelse.exit670
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit673

if.then.i672:                                     ; preds = %brelse.exit670
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %96) #4
  br label %brelse.exit673

brelse.exit673:                                   ; preds = %if.then.i672, %brelse.exit670.brelse.exit673_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %call96, i32 noundef 1) #4
  %97 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %na, align 4
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %98, i32 noundef 1) #4
  br label %cleanup432

if.end177:                                        ; preds = %if.else172.if.end177_crit_edge, %if.then131
  %ranode.0 = phi ptr [ null, %if.then131 ], [ %call173, %if.else172.if.end177_crit_edge ]
  %99 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bh, align 4
  %tobool.not.i674 = icmp eq ptr %100, null
  br i1 %tobool.not.i674, label %if.end177.brelse.exit676_crit_edge, label %if.then.i675

if.end177.brelse.exit676_crit_edge:               ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit676

if.then.i675:                                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %100) #4
  br label %brelse.exit676

brelse.exit676:                                   ; preds = %if.then.i675, %if.end177.brelse.exit676_crit_edge
  %101 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bh1, align 4
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %bh, align 4
  %btree178 = getelementptr inbounds %struct.anode, ptr %call124, i32 0, i32 3
  br label %if.end179

if.end179:                                        ; preds = %brelse.exit676, %cond.end113.if.end179_crit_edge
  %btree.2 = phi ptr [ %btree.1748.lcssa, %cond.end113.if.end179_crit_edge ], [ %btree178, %brelse.exit676 ]
  %anode.2 = phi ptr [ %anode.1749.lcssa, %cond.end113.if.end179_crit_edge ], [ %call124, %brelse.exit676 ]
  %ranode.1 = phi ptr [ null, %cond.end113.if.end179_crit_edge ], [ %ranode.0, %brelse.exit676 ]
  %up.0 = phi i32 [ -1, %cond.end113.if.end179_crit_edge ], [ %cond123, %brelse.exit676 ]
  %n_free_nodes180 = getelementptr inbounds %struct.bplus_header, ptr %btree.2, i32 0, i32 2
  %104 = ptrtoint ptr %n_free_nodes180 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %n_free_nodes180, align 4
  %dec = add i8 %105, -1
  store i8 %dec, ptr %n_free_nodes180, align 4
  %n_used_nodes181 = getelementptr inbounds %struct.bplus_header, ptr %btree.2, i32 0, i32 3
  %106 = ptrtoint ptr %n_used_nodes181 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %n_used_nodes181, align 1
  %inc = add i8 %107, 1
  store i8 %inc, ptr %n_used_nodes181, align 1
  %conv182 = zext i8 %107 to i32
  %first_free183 = getelementptr inbounds %struct.bplus_header, ptr %btree.2, i32 0, i32 4
  %108 = ptrtoint ptr %first_free183 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %first_free183, align 2
  %110 = call i16 @llvm.bswap.i16(i16 %109) #4
  %add.i677 = add i16 %110, 12
  %111 = call i16 @llvm.bswap.i16(i16 %add.i677) #4
  %112 = ptrtoint ptr %first_free183 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %first_free183, align 2
  %113 = call i32 @llvm.bswap.i32(i32 %call96)
  %external185 = getelementptr inbounds %struct.bplus_header, ptr %btree.2, i32 1
  %arrayidx186 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external185, i32 0, i32 %conv182
  %disk_secno187 = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx186, i32 0, i32 2
  %114 = ptrtoint ptr %disk_secno187 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %disk_secno187, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %cond114)
  %116 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx186, align 4
  %length195 = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx186, i32 0, i32 1
  %117 = ptrtoint ptr %length195 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 16777216, ptr %length195, align 4
  %118 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %119) #4
  %120 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bh, align 4
  %tobool.not.i678 = icmp eq ptr %121, null
  br i1 %tobool.not.i678, label %if.end179.brelse.exit680_crit_edge, label %if.then.i679

if.end179.brelse.exit680_crit_edge:               ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit680

if.then.i679:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %121) #4
  br label %brelse.exit680

brelse.exit680:                                   ; preds = %if.then.i679, %if.end179.brelse.exit680_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %a.0750.lcssa, i32 %node)
  %cmp196 = icmp eq i32 %a.0750.lcssa, %node
  %122 = and i1 %tobool, %cmp196
  br i1 %122, label %brelse.exit680.cleanup432_crit_edge, label %lor.lhs.false

brelse.exit680.cleanup432_crit_edge:              ; preds = %brelse.exit680
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

lor.lhs.false:                                    ; preds = %brelse.exit680
  %123 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %na, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp200 = icmp eq i32 %124, -1
  br i1 %cmp200, label %lor.lhs.false.cleanup432_crit_edge, label %if.end203

lor.lhs.false.cleanup432_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end203:                                        ; preds = %lor.lhs.false
  %125 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %c2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %up.0)
  %cmp204.not753 = icmp eq i32 %up.0, -1
  br i1 %cmp204.not753, label %if.end203.while.end_crit_edge, label %if.end203.while.body_crit_edge

if.end203.while.body_crit_edge:                   ; preds = %if.end203
  br label %while.body

if.end203.while.end_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end203.while.body_crit_edge
  %up.1755 = phi i32 [ %cond287, %cleanup.while.body_crit_edge ], [ %up.0, %if.end203.while.body_crit_edge ]
  %anode.3754 = phi ptr [ %anode.6, %cleanup.while.body_crit_edge ], [ %anode.2, %if.end203.while.body_crit_edge ]
  %126 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk207 = getelementptr inbounds %struct.hpfs_sb_info, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %sb_chk207 to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load208 = load i16, ptr %sb_chk207, align 2
  %129 = and i16 %bf.load208, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool212.not = icmp eq i16 %129, 0
  br i1 %tobool212.not, label %while.body.if.end218_crit_edge, label %if.then213

while.body.if.end218_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

if.then213:                                       ; preds = %while.body
  %call214 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %up.1755, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then213.if.end218_crit_edge, label %if.then213.cleanup432_crit_edge

if.then213.cleanup432_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then213.if.end218_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

if.end218:                                        ; preds = %if.then213.if.end218_crit_edge, %while.body.if.end218_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %up.1755, i32 %node)
  %cmp219.not = icmp eq i32 %up.1755, %node
  %brmerge647.demorgan = and i1 %tobool, %cmp219.not
  br i1 %brmerge647.demorgan, label %if.else229, label %if.then223

if.then223:                                       ; preds = %if.end218
  %call224 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %up.1755, ptr noundef nonnull %bh) #4
  %tobool225.not = icmp eq ptr %call224, null
  br i1 %tobool225.not, label %if.then223.cleanup432_crit_edge, label %if.end227

if.then223.cleanup432_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end227:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #6
  %btree228 = getelementptr inbounds %struct.anode, ptr %call224, i32 0, i32 3
  br label %if.end235

if.else229:                                       ; preds = %if.end218
  %call230 = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %node, ptr noundef nonnull %bh) #4
  %tobool231.not = icmp eq ptr %call230, null
  br i1 %tobool231.not, label %if.else229.cleanup432_crit_edge, label %if.end233

if.else229.cleanup432_crit_edge:                  ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.end233:                                        ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #6
  %btree234 = getelementptr inbounds %struct.fnode, ptr %call230, i32 0, i32 14
  br label %if.end235

if.end235:                                        ; preds = %if.end233, %if.end227
  %btree.3 = phi ptr [ %btree228, %if.end227 ], [ %btree234, %if.end233 ]
  %anode.4 = phi ptr [ %call224, %if.end227 ], [ %anode.3754, %if.end233 ]
  %n_free_nodes236 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 0, i32 2
  %130 = ptrtoint ptr %n_free_nodes236 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %n_free_nodes236, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool237.not = icmp eq i8 %131, 0
  br i1 %tobool237.not, label %if.end280, label %if.then238

if.then238:                                       ; preds = %if.end235
  %n_free_nodes236.le = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 0, i32 2
  %dec240 = add i8 %131, -1
  %132 = ptrtoint ptr %n_free_nodes236.le to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %dec240, ptr %n_free_nodes236.le, align 4
  %n_used_nodes241 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 0, i32 3
  %133 = ptrtoint ptr %n_used_nodes241 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %n_used_nodes241, align 1
  %inc242 = add i8 %134, 1
  store i8 %inc242, ptr %n_used_nodes241, align 1
  %conv243 = zext i8 %134 to i32
  %first_free244 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 0, i32 4
  %135 = ptrtoint ptr %first_free244 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %first_free244, align 2
  %137 = call i16 @llvm.bswap.i16(i16 %136) #4
  %add.i682 = add i16 %137, 8
  %138 = call i16 @llvm.bswap.i16(i16 %add.i682) #4
  %139 = ptrtoint ptr %first_free244 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %first_free244, align 2
  %internal246 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 1
  %arrayidx247 = getelementptr [0 x %struct.bplus_internal_node], ptr %internal246, i32 0, i32 %conv243
  %140 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %arrayidx247, align 4
  %141 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %na, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  %down252 = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx247, i32 0, i32 1
  %144 = ptrtoint ptr %down252 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %down252, align 4
  %sub255 = add nsw i32 %conv243, -1
  %arrayidx256 = getelementptr [0 x %struct.bplus_internal_node], ptr %internal246, i32 0, i32 %sub255
  %145 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %115, ptr %arrayidx256, align 4
  %146 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %147) #4
  %148 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bh, align 4
  %tobool.not.i683 = icmp eq ptr %149, null
  br i1 %tobool.not.i683, label %if.then238.brelse.exit685_crit_edge, label %if.then.i684

if.then238.brelse.exit685_crit_edge:              ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit685

if.then.i684:                                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %149) #4
  br label %brelse.exit685

brelse.exit685:                                   ; preds = %if.then.i684, %if.then238.brelse.exit685_crit_edge
  %150 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bh2, align 4
  %tobool.not.i686 = icmp eq ptr %151, null
  br i1 %tobool.not.i686, label %brelse.exit685.brelse.exit688_crit_edge, label %if.then.i687

brelse.exit685.brelse.exit688_crit_edge:          ; preds = %brelse.exit685
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit688

if.then.i687:                                     ; preds = %brelse.exit685
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %151) #4
  br label %brelse.exit688

brelse.exit688:                                   ; preds = %if.then.i687, %brelse.exit685.brelse.exit688_crit_edge
  %152 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ra, align 4
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %153, i32 noundef 1) #4
  %154 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %na, align 4
  %call258 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %155, ptr noundef nonnull %bh) #4
  %tobool259.not = icmp eq ptr %call258, null
  br i1 %tobool259.not, label %brelse.exit688.cleanup432_crit_edge, label %if.then260

brelse.exit688.cleanup432_crit_edge:              ; preds = %brelse.exit688
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then260:                                       ; preds = %brelse.exit688
  %156 = call i32 @llvm.bswap.i32(i32 %up.1755)
  %up261 = getelementptr inbounds %struct.anode, ptr %call258, i32 0, i32 2
  %157 = ptrtoint ptr %up261 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %up261, align 4
  %btree267 = getelementptr inbounds %struct.anode, ptr %call258, i32 0, i32 3
  %158 = ptrtoint ptr %btree267 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %btree267, align 4
  %160 = and i8 %159, -33
  %masksel = select i1 %brmerge647.demorgan, i8 32, i8 0
  %.sink = or i8 %160, %masksel
  store i8 %.sink, ptr %btree267, align 4
  %161 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %162) #4
  %163 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bh, align 4
  %tobool.not.i689 = icmp eq ptr %164, null
  br i1 %tobool.not.i689, label %if.then260.cleanup432_crit_edge, label %if.then.i690

if.then260.cleanup432_crit_edge:                  ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i690:                                     ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %164) #4
  br label %cleanup432

if.end280:                                        ; preds = %if.end235
  br i1 %cmp219.not, label %if.end280.cond.end286_crit_edge, label %cond.true283

if.end280.cond.end286_crit_edge:                  ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end286

cond.true283:                                     ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #6
  %up284 = getelementptr inbounds %struct.anode, ptr %anode.4, i32 0, i32 2
  %165 = ptrtoint ptr %up284 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %up284, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  br label %cond.end286

cond.end286:                                      ; preds = %cond.true283, %if.end280.cond.end286_crit_edge
  %cond287 = phi i32 [ %167, %cond.true283 ], [ -1, %if.end280.cond.end286_crit_edge ]
  %internal289 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 1
  %n_used_nodes290 = getelementptr inbounds %struct.bplus_header, ptr %btree.3, i32 0, i32 3
  %168 = ptrtoint ptr %n_used_nodes290 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %n_used_nodes290, align 1
  %conv291 = zext i8 %169 to i32
  %sub292 = add nsw i32 %conv291, -1
  %arrayidx293 = getelementptr [0 x %struct.bplus_internal_node], ptr %internal289, i32 0, i32 %sub292
  %170 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %arrayidx293, align 4
  %171 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %172) #4
  %173 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bh, align 4
  %tobool.not.i692 = icmp eq ptr %174, null
  br i1 %tobool.not.i692, label %cond.end286.brelse.exit694_crit_edge, label %if.then.i693

cond.end286.brelse.exit694_crit_edge:             ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit694

if.then.i693:                                     ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %174) #4
  br label %brelse.exit694

brelse.exit694:                                   ; preds = %if.then.i693, %cond.end286.brelse.exit694_crit_edge
  %175 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %na, align 4
  %call295 = call ptr @hpfs_alloc_anode(ptr noundef %s, i32 noundef %176, ptr noundef nonnull %na, ptr noundef nonnull %bh) #4
  %tobool296.not = icmp eq ptr %call295, null
  br i1 %tobool296.not, label %if.else324, label %if.then297

if.then297:                                       ; preds = %brelse.exit694
  %btree298 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 3
  %177 = ptrtoint ptr %btree298 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %btree298, align 4
  %179 = or i8 %178, -128
  store i8 %179, ptr %btree298, align 4
  %n_used_nodes304 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 3, i32 3
  %180 = ptrtoint ptr %n_used_nodes304 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %n_used_nodes304, align 1
  %n_free_nodes306 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 3, i32 2
  %181 = ptrtoint ptr %n_free_nodes306 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 59, ptr %n_free_nodes306, align 4
  %first_free308 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 3, i32 4
  %182 = ptrtoint ptr %first_free308 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 4096, ptr %first_free308, align 2
  %183 = call i32 @llvm.bswap.i32(i32 %176)
  %internal311 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 4
  %down313 = getelementptr inbounds %struct.anode, ptr %call295, i32 0, i32 4, i32 0, i32 0, i32 1
  %184 = ptrtoint ptr %down313 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %down313, align 4
  %185 = ptrtoint ptr %internal311 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %internal311, align 4
  %186 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %187) #4
  %188 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bh, align 4
  %tobool.not.i695 = icmp eq ptr %189, null
  br i1 %tobool.not.i695, label %if.then297.brelse.exit697_crit_edge, label %if.then.i696

if.then297.brelse.exit697_crit_edge:              ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit697

if.then.i696:                                     ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %189) #4
  br label %brelse.exit697

brelse.exit697:                                   ; preds = %if.then.i696, %if.then297.brelse.exit697_crit_edge
  %call319 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %176, ptr noundef nonnull %bh) #4
  %tobool320.not = icmp eq ptr %call319, null
  br i1 %tobool320.not, label %brelse.exit697.cleanup_crit_edge, label %if.then321

brelse.exit697.cleanup_crit_edge:                 ; preds = %brelse.exit697
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then321:                                       ; preds = %brelse.exit697
  %190 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %na, align 4
  %192 = call i32 @llvm.bswap.i32(i32 %191)
  %up322 = getelementptr inbounds %struct.anode, ptr %call319, i32 0, i32 2
  %193 = ptrtoint ptr %up322 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %up322, align 4
  %194 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %195) #4
  %196 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %bh, align 4
  %tobool.not.i698 = icmp eq ptr %197, null
  br i1 %tobool.not.i698, label %if.then321.cleanup_crit_edge, label %if.then.i699

if.then321.cleanup_crit_edge:                     ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i699:                                     ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %197) #4
  br label %cleanup

if.else324:                                       ; preds = %brelse.exit694
  call void @__sanitizer_cov_trace_pc() #6
  %198 = ptrtoint ptr %na to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %176, ptr %na, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else324, %if.then.i699, %if.then321.cleanup_crit_edge, %brelse.exit697.cleanup_crit_edge
  %anode.6 = phi ptr [ null, %brelse.exit697.cleanup_crit_edge ], [ %anode.4, %if.else324 ], [ %call319, %if.then321.cleanup_crit_edge ], [ %call319, %if.then.i699 ]
  %cmp204.not = icmp eq i32 %cond287, -1
  br i1 %cmp204.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end203.while.end_crit_edge
  %199 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %na, align 4
  %call326 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %200, ptr noundef nonnull %bh) #4
  %tobool327.not = icmp eq ptr %call326, null
  br i1 %tobool327.not, label %while.end.if.end338_crit_edge, label %if.then328

while.end.if.end338_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end338

if.then328:                                       ; preds = %while.end
  %201 = call i32 @llvm.bswap.i32(i32 %node)
  %up329 = getelementptr inbounds %struct.anode, ptr %call326, i32 0, i32 2
  %202 = ptrtoint ptr %up329 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %up329, align 4
  br i1 %tobool, label %if.then331, label %if.then328.if.end337_crit_edge

if.then328.if.end337_crit_edge:                   ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end337

if.then331:                                       ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #6
  %btree332 = getelementptr inbounds %struct.anode, ptr %call326, i32 0, i32 3
  %203 = ptrtoint ptr %btree332 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %btree332, align 4
  %205 = or i8 %204, 32
  store i8 %205, ptr %btree332, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then331, %if.then328.if.end337_crit_edge
  %206 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %207) #4
  %208 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bh, align 4
  %tobool.not.i701 = icmp eq ptr %209, null
  br i1 %tobool.not.i701, label %if.end337.if.end338_crit_edge, label %if.then.i702

if.end337.if.end338_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end338

if.then.i702:                                     ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %209) #4
  br label %if.end338

if.end338:                                        ; preds = %if.then.i702, %if.end337.if.end338_crit_edge, %while.end.if.end338_crit_edge
  br i1 %tobool, label %if.else346, label %if.then340

if.then340:                                       ; preds = %if.end338
  %call341 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %node, ptr noundef nonnull %bh) #4
  %tobool342.not = icmp eq ptr %call341, null
  br i1 %tobool342.not, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.then340
  %210 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bh2, align 4
  %tobool.not.i704 = icmp eq ptr %211, null
  br i1 %tobool.not.i704, label %if.then343.cleanup432_crit_edge, label %if.then.i705

if.then343.cleanup432_crit_edge:                  ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i705:                                     ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %211) #4
  br label %cleanup432

if.end344:                                        ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #6
  %btree345 = getelementptr inbounds %struct.anode, ptr %call341, i32 0, i32 3
  br label %if.end352

if.else346:                                       ; preds = %if.end338
  %call347 = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %node, ptr noundef nonnull %bh) #4
  %tobool348.not = icmp eq ptr %call347, null
  br i1 %tobool348.not, label %if.then349, label %if.end350

if.then349:                                       ; preds = %if.else346
  %212 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bh2, align 4
  %tobool.not.i707 = icmp eq ptr %213, null
  br i1 %tobool.not.i707, label %if.then349.cleanup432_crit_edge, label %if.then.i708

if.then349.cleanup432_crit_edge:                  ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i708:                                     ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %213) #4
  br label %cleanup432

if.end350:                                        ; preds = %if.else346
  call void @__sanitizer_cov_trace_pc() #6
  %btree351 = getelementptr inbounds %struct.fnode, ptr %call347, i32 0, i32 14
  br label %if.end352

if.end352:                                        ; preds = %if.end350, %if.end344
  %btree.4 = phi ptr [ %btree351, %if.end350 ], [ %btree345, %if.end344 ]
  %214 = call i32 @llvm.bswap.i32(i32 %node)
  %up353 = getelementptr inbounds %struct.anode, ptr %ranode.1, i32 0, i32 2
  %215 = ptrtoint ptr %up353 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %up353, align 4
  %btree354 = getelementptr inbounds %struct.anode, ptr %ranode.1, i32 0, i32 3
  %first_free355 = getelementptr inbounds %struct.bplus_header, ptr %btree.4, i32 0, i32 4
  %216 = ptrtoint ptr %first_free355 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %first_free355, align 2
  %218 = call i16 @llvm.bswap.i16(i16 %217)
  %conv356 = zext i16 %218 to i32
  %219 = call ptr @memcpy(ptr %btree354, ptr %btree.4, i32 %conv356)
  %220 = ptrtoint ptr %btree354 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %btree354, align 4
  br i1 %tobool, label %if.then358, label %if.end352.if.end364_crit_edge

if.end352.if.end364_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end364

if.then358:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #6
  %222 = or i8 %221, 32
  %223 = ptrtoint ptr %btree354 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %btree354, align 4
  br label %if.end364

if.end364:                                        ; preds = %if.then358, %if.end352.if.end364_crit_edge
  %224 = phi i8 [ %222, %if.then358 ], [ %221, %if.end352.if.end364_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.i710 = icmp slt i8 %224, 0
  %cond368 = select i1 %tobool.i710, i8 60, i8 40
  %n_used_nodes370 = getelementptr inbounds %struct.anode, ptr %ranode.1, i32 0, i32 3, i32 3
  %225 = ptrtoint ptr %n_used_nodes370 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %n_used_nodes370, align 1
  %sub372 = sub i8 %cond368, %226
  %n_free_nodes375 = getelementptr inbounds %struct.anode, ptr %ranode.1, i32 0, i32 3, i32 2
  %227 = ptrtoint ptr %n_free_nodes375 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %sub372, ptr %n_free_nodes375, align 4
  br i1 %tobool.i710, label %for.cond.preheader, label %if.end364.if.end398_crit_edge

if.end364.if.end398_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end398

for.cond.preheader:                               ; preds = %if.end364
  %228 = ptrtoint ptr %n_used_nodes370 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %n_used_nodes370, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %cmp382757.not = icmp eq i8 %229, 0
  br i1 %cmp382757.not, label %for.cond.preheader.if.end398_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end398_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end398

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %u384 = getelementptr inbounds %struct.anode, ptr %ranode.1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end396.for.body_crit_edge, %for.body.lr.ph
  %n.0758 = phi i32 [ 0, %for.body.lr.ph ], [ %inc397, %if.end396.for.body_crit_edge ]
  %down386 = getelementptr [60 x %struct.bplus_internal_node], ptr %u384, i32 0, i32 %n.0758, i32 1
  %230 = ptrtoint ptr %down386 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %down386, align 4
  %232 = call i32 @llvm.bswap.i32(i32 %231)
  %call387 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %232, ptr noundef nonnull %bh1) #4
  %tobool388.not = icmp eq ptr %call387, null
  br i1 %tobool388.not, label %for.body.if.end396_crit_edge, label %if.then389

for.body.if.end396_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end396

if.then389:                                       ; preds = %for.body
  %233 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ra, align 4
  %235 = call i32 @llvm.bswap.i32(i32 %234)
  %up390 = getelementptr inbounds %struct.anode, ptr %call387, i32 0, i32 2
  %236 = ptrtoint ptr %up390 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %up390, align 4
  %btree391 = getelementptr inbounds %struct.anode, ptr %call387, i32 0, i32 3
  %237 = ptrtoint ptr %btree391 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %btree391, align 4
  %239 = and i8 %238, -33
  store i8 %239, ptr %btree391, align 4
  %240 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %bh1, align 4
  call void @mark_buffer_dirty(ptr noundef %241) #4
  %242 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bh1, align 4
  %tobool.not.i712 = icmp eq ptr %243, null
  br i1 %tobool.not.i712, label %if.then389.if.end396_crit_edge, label %if.then.i713

if.then389.if.end396_crit_edge:                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end396

if.then.i713:                                     ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %243) #4
  br label %if.end396

if.end396:                                        ; preds = %if.then.i713, %if.then389.if.end396_crit_edge, %for.body.if.end396_crit_edge
  %inc397 = add nuw nsw i32 %n.0758, 1
  %244 = ptrtoint ptr %n_used_nodes370 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %n_used_nodes370, align 1
  %conv381 = zext i8 %245 to i32
  %cmp382 = icmp ult i32 %inc397, %conv381
  br i1 %cmp382, label %if.end396.for.body_crit_edge, label %if.end396.if.end398_crit_edge

if.end396.if.end398_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end398

if.end396.for.body_crit_edge:                     ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end398:                                        ; preds = %if.end396.if.end398_crit_edge, %for.cond.preheader.if.end398_crit_edge, %if.end364.if.end398_crit_edge
  %246 = ptrtoint ptr %btree.4 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %btree.4, align 4
  %248 = or i8 %247, -128
  store i8 %248, ptr %btree.4, align 4
  %conv405 = select i1 %tobool, i8 10, i8 58
  %n_free_nodes406 = getelementptr inbounds %struct.bplus_header, ptr %btree.4, i32 0, i32 2
  %249 = ptrtoint ptr %n_free_nodes406 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv405, ptr %n_free_nodes406, align 4
  %n_used_nodes407 = getelementptr inbounds %struct.bplus_header, ptr %btree.4, i32 0, i32 3
  %250 = ptrtoint ptr %n_used_nodes407 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 2, ptr %n_used_nodes407, align 1
  %internal409 = getelementptr inbounds %struct.bplus_header, ptr %btree.4, i32 1
  %251 = ptrtoint ptr %first_free355 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 6144, ptr %first_free355, align 2
  %252 = ptrtoint ptr %internal409 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %115, ptr %internal409, align 4
  %253 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %ra, align 4
  %255 = call i32 @llvm.bswap.i32(i32 %254)
  %down423 = getelementptr inbounds %struct.bplus_header, ptr %btree.4, i32 1, i32 2
  %256 = ptrtoint ptr %down423 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %down423, align 4
  %arrayidx426 = getelementptr %struct.bplus_header, ptr %btree.4, i32 2
  %257 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %arrayidx426, align 4
  %258 = ptrtoint ptr %na to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %na, align 4
  %260 = call i32 @llvm.bswap.i32(i32 %259)
  %down431 = getelementptr %struct.bplus_header, ptr %btree.4, i32 2, i32 2
  %261 = ptrtoint ptr %down431 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %down431, align 4
  %262 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %263) #4
  %264 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %bh, align 4
  %tobool.not.i715 = icmp eq ptr %265, null
  br i1 %tobool.not.i715, label %if.end398.brelse.exit717_crit_edge, label %if.then.i716

if.end398.brelse.exit717_crit_edge:               ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit717

if.then.i716:                                     ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %265) #4
  br label %brelse.exit717

brelse.exit717:                                   ; preds = %if.then.i716, %if.end398.brelse.exit717_crit_edge
  %266 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bh2, align 4
  call void @mark_buffer_dirty(ptr noundef %267) #4
  %268 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bh2, align 4
  %tobool.not.i718 = icmp eq ptr %269, null
  br i1 %tobool.not.i718, label %brelse.exit717.cleanup432_crit_edge, label %if.then.i719

brelse.exit717.cleanup432_crit_edge:              ; preds = %brelse.exit717
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup432

if.then.i719:                                     ; preds = %brelse.exit717
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %269) #4
  br label %cleanup432

cleanup432:                                       ; preds = %if.then.i719, %brelse.exit717.cleanup432_crit_edge, %if.then.i708, %if.then349.cleanup432_crit_edge, %if.then.i705, %if.then343.cleanup432_crit_edge, %if.then.i690, %if.then260.cleanup432_crit_edge, %brelse.exit688.cleanup432_crit_edge, %if.else229.cleanup432_crit_edge, %if.then223.cleanup432_crit_edge, %if.then213.cleanup432_crit_edge, %lor.lhs.false.cleanup432_crit_edge, %brelse.exit680.cleanup432_crit_edge, %brelse.exit673, %brelse.exit667, %if.then.i663, %if.then98.cleanup432_crit_edge, %if.then.i660, %if.then76.cleanup432_crit_edge, %if.then.i657, %if.then68.cleanup432_crit_edge, %if.then.i654, %if.then46.cleanup432_crit_edge, %if.end28.cleanup432_crit_edge, %if.then23.cleanup432_crit_edge, %if.then.i, %if.then14.cleanup432_crit_edge, %if.else.cleanup432_crit_edge, %if.then.cleanup432_crit_edge
  %retval.2 = phi i32 [ -1, %brelse.exit673 ], [ -1, %brelse.exit667 ], [ -1, %if.then.cleanup432_crit_edge ], [ -1, %if.else.cleanup432_crit_edge ], [ %call96, %brelse.exit680.cleanup432_crit_edge ], [ %call96, %lor.lhs.false.cleanup432_crit_edge ], [ -1, %if.then14.cleanup432_crit_edge ], [ -1, %if.then.i ], [ -1, %if.then46.cleanup432_crit_edge ], [ -1, %if.then.i654 ], [ %add65, %if.then68.cleanup432_crit_edge ], [ %add65, %if.then.i657 ], [ -1, %if.then76.cleanup432_crit_edge ], [ -1, %if.then.i660 ], [ -1, %if.then98.cleanup432_crit_edge ], [ -1, %if.then.i663 ], [ -1, %if.then343.cleanup432_crit_edge ], [ -1, %if.then.i705 ], [ -1, %if.then349.cleanup432_crit_edge ], [ -1, %if.then.i708 ], [ %call96, %brelse.exit717.cleanup432_crit_edge ], [ %call96, %if.then.i719 ], [ %call96, %if.then.i690 ], [ %call96, %if.then260.cleanup432_crit_edge ], [ %call96, %brelse.exit688.cleanup432_crit_edge ], [ -1, %if.then213.cleanup432_crit_edge ], [ -1, %if.then223.cleanup432_crit_edge ], [ -1, %if.else229.cleanup432_crit_edge ], [ -1, %if.then23.cleanup432_crit_edge ], [ -1, %if.end28.cleanup432_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ra) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %na) #4
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_alloc_if_possible(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_alloc_sector(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_alloc_anode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_free_sectors(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_remove_btree(ptr noundef %s, ptr nocapture noundef readonly %btree) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #4
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #4
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1) #4
  %3 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %d1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2) #4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %go_down

go_down:                                          ; preds = %if.then57.go_down_crit_edge, %entry
  %btree1.0 = phi ptr [ %btree, %entry ], [ %btree1.2, %if.then57.go_down_crit_edge ]
  %anode.0 = phi ptr [ null, %entry ], [ %anode.3, %if.then57.go_down_crit_edge ]
  %ano.0 = phi i32 [ 0, %entry ], [ %36, %if.then57.go_down_crit_edge ]
  %level.0 = phi i32 [ 0, %entry ], [ %dec, %if.then57.go_down_crit_edge ]
  %pos.0 = phi i32 [ 0, %entry ], [ %add, %if.then57.go_down_crit_edge ]
  %4 = ptrtoint ptr %d2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %d2, align 4
  %5 = ptrtoint ptr %btree1.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %btree1.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i141 = icmp slt i8 %6, 0
  br i1 %tobool.i141, label %go_down.while.body_crit_edge, label %go_down.for.cond.preheader_crit_edge

go_down.for.cond.preheader_crit_edge:             ; preds = %go_down
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

go_down.while.body_crit_edge:                     ; preds = %go_down
  br label %while.body

for.cond.preheader:                               ; preds = %if.end12.for.cond.preheader_crit_edge, %go_down.for.cond.preheader_crit_edge
  %btree1.1.lcssa = phi ptr [ %btree1.0, %go_down.for.cond.preheader_crit_edge ], [ %btree13, %if.end12.for.cond.preheader_crit_edge ]
  %anode.1.lcssa = phi ptr [ %anode.0, %go_down.for.cond.preheader_crit_edge ], [ %call9, %if.end12.for.cond.preheader_crit_edge ]
  %ano.1.lcssa = phi i32 [ %ano.0, %go_down.for.cond.preheader_crit_edge ], [ %11, %if.end12.for.cond.preheader_crit_edge ]
  %level.1.lcssa = phi i32 [ %level.0, %go_down.for.cond.preheader_crit_edge ], [ %inc, %if.end12.for.cond.preheader_crit_edge ]
  %n_used_nodes = getelementptr inbounds %struct.bplus_header, ptr %btree1.1.lcssa, i32 0, i32 3
  %7 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %n_used_nodes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp149.not = icmp eq i8 %8, 0
  br i1 %cmp149.not, label %for.cond.preheader.go_up.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.go_up.preheader_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %go_up.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %external = getelementptr inbounds %struct.bplus_header, ptr %btree1.1.lcssa, i32 1
  br label %for.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %go_down.while.body_crit_edge
  %pos.1144 = phi i32 [ 0, %if.end12.while.body_crit_edge ], [ %pos.0, %go_down.while.body_crit_edge ]
  %level.1143 = phi i32 [ %inc, %if.end12.while.body_crit_edge ], [ %level.0, %go_down.while.body_crit_edge ]
  %btree1.1142 = phi ptr [ %btree13, %if.end12.while.body_crit_edge ], [ %btree1.0, %go_down.while.body_crit_edge ]
  %internal = getelementptr inbounds %struct.bplus_header, ptr %btree1.1142, i32 1
  %arrayidx = getelementptr [0 x %struct.bplus_internal_node], ptr %internal, i32 0, i32 %pos.1144
  %down = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %down, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.1143)
  %tobool.not = icmp eq i32 %level.1143, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %while.body.if.end_crit_edge
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %sb_chk, align 2
  %17 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool2.not = icmp eq i16 %17, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %11, ptr noundef nonnull %d1, ptr noundef nonnull %d2, ptr noundef nonnull @.str.9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %11, ptr noundef nonnull %bh) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %btree13 = getelementptr inbounds %struct.anode, ptr %call9, i32 0, i32 3
  %inc = add i32 %level.1143, 1
  %18 = ptrtoint ptr %btree13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btree13, align 4
  %tobool.i = icmp slt i8 %19, 0
  br i1 %tobool.i, label %if.end12.while.body_crit_edge, label %if.end12.for.cond.preheader_crit_edge

if.end12.for.cond.preheader_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external, i32 0, i32 %i.0150
  %disk_secno = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx16, i32 0, i32 2
  %20 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %disk_secno, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %length = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx16, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %22, i32 noundef %25) #4
  %inc20 = add nuw nsw i32 %i.0150, 1
  %26 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %n_used_nodes, align 1
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc20, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.go_up.preheader_crit_edge

for.body.go_up.preheader_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %go_up.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

go_up.preheader:                                  ; preds = %for.body.go_up.preheader_crit_edge, %for.cond.preheader.go_up.preheader_crit_edge
  br label %go_up

go_up:                                            ; preds = %if.then57.go_up_crit_edge, %go_up.preheader
  %anode.2 = phi ptr [ %anode.3, %if.then57.go_up_crit_edge ], [ %anode.1.lcssa, %go_up.preheader ]
  %ano.2 = phi i32 [ %36, %if.then57.go_up_crit_edge ], [ %ano.1.lcssa, %go_up.preheader ]
  %level.2 = phi i32 [ %dec, %if.then57.go_up_crit_edge ], [ %level.1.lcssa, %go_up.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.2)
  %tobool21.not = icmp eq i32 %level.2, 0
  br i1 %tobool21.not, label %go_up.cleanup_crit_edge, label %if.end23

go_up.cleanup_crit_edge:                          ; preds = %go_up
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %go_up
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh, align 4
  %tobool.not.i120 = icmp eq ptr %29, null
  br i1 %tobool.not.i120, label %if.end23.brelse.exit122_crit_edge, label %if.then.i121

if.end23.brelse.exit122_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit122

if.then.i121:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %29) #4
  br label %brelse.exit122

brelse.exit122:                                   ; preds = %if.then.i121, %if.end23.brelse.exit122_crit_edge
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk25 = getelementptr inbounds %struct.hpfs_sb_info, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sb_chk25 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load26 = load i16, ptr %sb_chk25, align 2
  %33 = and i16 %bf.load26, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool30.not = icmp eq i16 %33, 0
  br i1 %tobool30.not, label %brelse.exit122.if.end36_crit_edge, label %if.then31

brelse.exit122.if.end36_crit_edge:                ; preds = %brelse.exit122
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then31:                                        ; preds = %brelse.exit122
  %call32 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %ano.2, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end36_crit_edge, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %if.then31.if.end36_crit_edge, %brelse.exit122.if.end36_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %ano.2, i32 noundef 1) #4
  %up = getelementptr inbounds %struct.anode, ptr %anode.2, i32 0, i32 2
  %34 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %up, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %dec = add i32 %level.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %if.end36.if.end44_crit_edge, label %if.then38

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then38:                                        ; preds = %if.end36
  %call39 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %36, ptr noundef nonnull %bh) #4
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.cleanup_crit_edge, label %if.end42

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %btree43 = getelementptr inbounds %struct.anode, ptr %call39, i32 0, i32 3
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end36.if.end44_crit_edge
  %btree1.2 = phi ptr [ %btree43, %if.end42 ], [ %btree, %if.end36.if.end44_crit_edge ]
  %anode.3 = phi ptr [ %call39, %if.end42 ], [ %anode.2, %if.end36.if.end44_crit_edge ]
  %n_used_nodes46 = getelementptr inbounds %struct.bplus_header, ptr %btree1.2, i32 0, i32 3
  %37 = ptrtoint ptr %n_used_nodes46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %n_used_nodes46, align 1
  %conv47 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp48152.not = icmp eq i8 %38, 0
  br i1 %cmp48152.not, label %if.end44.for.end67_crit_edge, label %for.body50.lr.ph

if.end44.for.end67_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end67

for.body50.lr.ph:                                 ; preds = %if.end44
  %internal52 = getelementptr inbounds %struct.bplus_header, ptr %btree1.2, i32 1
  br label %for.body50

for.body50:                                       ; preds = %for.inc65.for.body50_crit_edge, %for.body50.lr.ph
  %i.1153 = phi i32 [ 0, %for.body50.lr.ph ], [ %add, %for.inc65.for.body50_crit_edge ]
  %arrayidx53 = getelementptr [0 x %struct.bplus_internal_node], ptr %internal52, i32 0, i32 %i.1153
  %down54 = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx53, i32 0, i32 1
  %39 = ptrtoint ptr %down54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %down54, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %ano.2)
  %cmp55 = icmp eq i32 %41, %ano.2
  %add = add nuw nsw i32 %i.1153, 1
  br i1 %cmp55, label %if.then57, label %for.inc65

if.then57:                                        ; preds = %for.body50
  %cmp60 = icmp ult i32 %add, %conv47
  br i1 %cmp60, label %if.then57.go_down_crit_edge, label %if.then57.go_up_crit_edge

if.then57.go_up_crit_edge:                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %go_up

if.then57.go_down_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %go_down

for.inc65:                                        ; preds = %for.body50
  %exitcond.not = icmp eq i32 %add, %conv47
  br i1 %exitcond.not, label %for.inc65.for.end67_crit_edge, label %for.inc65.for.body50_crit_edge

for.inc65.for.body50_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body50

for.inc65.for.end67_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end67

for.end67:                                        ; preds = %for.inc65.for.end67_crit_edge, %if.end44.for.end67_crit_edge
  %spec.select = select i1 %tobool37.not, i32 -1, i32 %36
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %ano.2, i32 noundef %spec.select) #4
  br i1 %tobool37.not, label %for.end67.cleanup_crit_edge, label %if.then70

for.end67.cleanup_crit_edge:                      ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then70:                                        ; preds = %for.end67
  %42 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bh, align 4
  %tobool.not.i124 = icmp eq ptr %43, null
  br i1 %tobool.not.i124, label %if.then70.cleanup_crit_edge, label %if.then.i125

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i125:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %43) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i125, %if.then70.cleanup_crit_edge, %for.end67.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %go_up.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_ea_read(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %pos, i32 noundef %len, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not51 = icmp eq i32 %len, 0
  br i1 %tobool.not51, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool1.not = icmp eq i32 %ano, 0
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.055 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr23, %brelse.exit.while.body_crit_edge ]
  %len.addr.054 = phi i32 [ %len, %while.body.lr.ph ], [ %sub25, %brelse.exit.while.body_crit_edge ]
  %pos.addr.052 = phi i32 [ %pos, %while.body.lr.ph ], [ %add24, %brelse.exit.while.body_crit_edge ]
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #4
  %1 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !43
  %call.i = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %a, ptr noundef nonnull %bh.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %anode_lookup.exit.thread, label %anode_lookup.exit

anode_lookup.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  br label %cleanup

anode_lookup.exit:                                ; preds = %if.then
  %shr = lshr i32 %pos.addr.052, 9
  %btree.i = getelementptr inbounds %struct.anode, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bh.i, align 4
  %call1.i = call i32 @hpfs_bplus_lookup(ptr noundef %s, ptr noundef null, ptr noundef %btree.i, i32 noundef %shr, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -1
  br i1 %cmp, label %anode_lookup.exit.cleanup_crit_edge, label %anode_lookup.exit.if.end4_crit_edge

anode_lookup.exit.if.end4_crit_edge:              ; preds = %anode_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

anode_lookup.exit.cleanup_crit_edge:              ; preds = %anode_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %shr3 = lshr i32 %pos.addr.052, 9
  %add = add i32 %shr3, %a
  br label %if.end4

if.end4:                                          ; preds = %if.else, %anode_lookup.exit.if.end4_crit_edge
  %sec.0 = phi i32 [ %call1.i, %anode_lookup.exit.if.end4_crit_edge ], [ %add, %if.else ]
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %sb_chk, align 2
  %7 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %if.then7

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %sec.0, i32 noundef 1, ptr noundef nonnull @.str.12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %sub = add i32 %len.addr.054, -1
  %shr13 = lshr i32 %sub, 9
  %call14 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %sec.0, ptr noundef nonnull %bh, i32 noundef %shr13) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %and = and i32 %pos.addr.052, 511
  %sub18 = sub nuw nsw i32 512, %and
  %8 = call i32 @llvm.umin.i32(i32 %sub18, i32 %len.addr.054)
  %add.ptr = getelementptr i8, ptr %call14, i32 %and
  %9 = call ptr @memcpy(ptr %buf.addr.055, ptr %add.ptr, i32 %8)
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %tobool.not.i47 = icmp eq ptr %11, null
  br i1 %tobool.not.i47, label %if.end17.brelse.exit_crit_edge, label %if.then.i

if.end17.brelse.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %11) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end17.brelse.exit_crit_edge
  %add.ptr23 = getelementptr i8, ptr %buf.addr.055, i32 %8
  %add24 = add i32 %8, %pos.addr.052
  %sub25 = sub i32 %len.addr.054, %8
  %tobool.not = icmp eq i32 %sub25, 0
  br i1 %tobool.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %anode_lookup.exit.cleanup_crit_edge, %anode_lookup.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %anode_lookup.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -1, %anode_lookup.exit.cleanup_crit_edge ], [ -1, %if.then7.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ 0, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_sector(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_ea_write(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %pos, i32 noundef %len, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not51 = icmp eq i32 %len, 0
  br i1 %tobool.not51, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool1.not = icmp eq i32 %ano, 0
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.055 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr23, %brelse.exit.while.body_crit_edge ]
  %len.addr.054 = phi i32 [ %len, %while.body.lr.ph ], [ %sub25, %brelse.exit.while.body_crit_edge ]
  %pos.addr.052 = phi i32 [ %pos, %while.body.lr.ph ], [ %add24, %brelse.exit.while.body_crit_edge ]
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #4
  %1 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !43
  %call.i = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %a, ptr noundef nonnull %bh.i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %anode_lookup.exit.thread, label %anode_lookup.exit

anode_lookup.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  br label %cleanup

anode_lookup.exit:                                ; preds = %if.then
  %shr = lshr i32 %pos.addr.052, 9
  %btree.i = getelementptr inbounds %struct.anode, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bh.i, align 4
  %call1.i = call i32 @hpfs_bplus_lookup(ptr noundef %s, ptr noundef null, ptr noundef %btree.i, i32 noundef %shr, ptr noundef %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -1
  br i1 %cmp, label %anode_lookup.exit.cleanup_crit_edge, label %anode_lookup.exit.if.end4_crit_edge

anode_lookup.exit.if.end4_crit_edge:              ; preds = %anode_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

anode_lookup.exit.cleanup_crit_edge:              ; preds = %anode_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %shr3 = lshr i32 %pos.addr.052, 9
  %add = add i32 %shr3, %a
  br label %if.end4

if.end4:                                          ; preds = %if.else, %anode_lookup.exit.if.end4_crit_edge
  %sec.0 = phi i32 [ %call1.i, %anode_lookup.exit.if.end4_crit_edge ], [ %add, %if.else ]
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %sb_chk, align 2
  %7 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %if.then7

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %sec.0, i32 noundef 1, ptr noundef nonnull @.str.13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %sub = add i32 %len.addr.054, -1
  %shr13 = lshr i32 %sub, 9
  %call14 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef %sec.0, ptr noundef nonnull %bh, i32 noundef %shr13) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %and = and i32 %pos.addr.052, 511
  %sub18 = sub nuw nsw i32 512, %and
  %8 = call i32 @llvm.umin.i32(i32 %sub18, i32 %len.addr.054)
  %add.ptr = getelementptr i8, ptr %call14, i32 %and
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.055, i32 %8)
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %11) #4
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %tobool.not.i47 = icmp eq ptr %13, null
  br i1 %tobool.not.i47, label %if.end17.brelse.exit_crit_edge, label %if.then.i

if.end17.brelse.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %13) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end17.brelse.exit_crit_edge
  %add.ptr23 = getelementptr i8, ptr %buf.addr.055, i32 %8
  %add24 = add i32 %8, %pos.addr.052
  %sub25 = sub i32 %len.addr.054, %8
  %tobool.not = icmp eq i32 %sub25, 0
  br i1 %tobool.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.while.body_crit_edge

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %anode_lookup.exit.cleanup_crit_edge, %anode_lookup.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %anode_lookup.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -1, %anode_lookup.exit.cleanup_crit_edge ], [ -1, %if.then7.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ 0, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_ea_remove(ptr noundef %s, i32 noundef %a, i32 noundef %ano, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ano)
  %tobool.not = icmp eq i32 %ano, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %a, ptr noundef nonnull %bh) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %btree = getelementptr inbounds %struct.anode, ptr %call, i32 0, i32 3
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree)
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %2) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %a, i32 noundef 1) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %len, 511
  %shr = lshr i32 %add, 9
  tail call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %a, i32 noundef %shr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %brelse.exit, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_truncate_btree(ptr noundef %s, i32 noundef %f, i32 noundef %fno, i32 noundef %secs) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c1) #4
  %1 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c1, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #4
  %2 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fno)
  %tobool.not = icmp eq i32 %fno, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %f, ptr noundef nonnull %bh) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end9.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %f, ptr noundef nonnull %bh) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %btree8 = getelementptr inbounds %struct.anode, ptr %call4, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool10.not = icmp eq i32 %secs, 0
  br i1 %tobool10.not, label %if.else15, label %if.end9.while.cond.preheader_crit_edge

if.end9.while.cond.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

if.end9.thread:                                   ; preds = %if.then
  %btree3 = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secs)
  %tobool10.not319 = icmp eq i32 %secs, 0
  br i1 %tobool10.not319, label %if.then13, label %if.end9.thread.while.cond.preheader_crit_edge

if.end9.thread.while.cond.preheader_crit_edge:    ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9.thread.while.cond.preheader_crit_edge, %if.end9.while.cond.preheader_crit_edge
  %btree.1.ph = phi ptr [ %btree3, %if.end9.thread.while.cond.preheader_crit_edge ], [ %btree8, %if.end9.while.cond.preheader_crit_edge ]
  %3 = ptrtoint ptr %btree.1.ph to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %btree.1.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i338 = icmp slt i8 %4, 0
  br i1 %tobool.i338, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %5 = call i32 @llvm.bswap.i32(i32 %secs)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  br label %while.body

if.then13:                                        ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #6
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree3)
  %n_free_nodes = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %n_free_nodes, align 4
  %n_used_nodes = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14, i32 3
  %7 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %n_used_nodes, align 1
  %first_free = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %first_free to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2048, ptr %first_free, align 2
  %9 = ptrtoint ptr %btree3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %btree3, align 4
  %11 = and i8 %10, 127
  store i8 %11, ptr %btree3, align 4
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %13) #4
  br label %if.end16

if.else15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree8)
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %f, i32 noundef 1) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then13
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.then.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %15) #4
  br label %cleanup

while.cond:                                       ; preds = %if.end75
  %btree80 = getelementptr inbounds %struct.anode, ptr %call76, i32 0, i32 3
  %16 = ptrtoint ptr %btree80 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %btree80, align 4
  %tobool.i = icmp slt i8 %17, 0
  br i1 %tobool.i, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %node.0340 = phi i32 [ %f, %while.body.lr.ph ], [ %51, %while.cond.while.body_crit_edge ]
  %btree.1339 = phi ptr [ %btree.1.ph, %while.body.lr.ph ], [ %btree80, %while.cond.while.body_crit_edge ]
  %n_used_nodes19 = getelementptr inbounds %struct.bplus_header, ptr %btree.1339, i32 0, i32 3
  %18 = ptrtoint ptr %n_used_nodes19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n_used_nodes19, align 1
  %conv20 = zext i8 %19 to i32
  %n_free_nodes21 = getelementptr inbounds %struct.bplus_header, ptr %btree.1339, i32 0, i32 2
  %20 = ptrtoint ptr %n_free_nodes21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %n_free_nodes21, align 4
  %conv22 = zext i8 %21 to i32
  %add = add nuw nsw i32 %conv22, %conv20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp332.not = icmp eq i8 %19, 0
  br i1 %cmp332.not, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  %internal = getelementptr inbounds %struct.bplus_header, ptr %btree.1339, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0333 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.bplus_internal_node], ptr %internal, i32 0, i32 %i.0333
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %secs)
  %cmp26.not = icmp ult i32 %24, %secs
  %inc = add nuw nsw i32 %i.0333, 1
  br i1 %cmp26.not, label %for.inc, label %f30

for.inc:                                          ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %conv20
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %25 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bh, align 4
  %tobool.not.i298 = icmp eq ptr %26, null
  br i1 %tobool.not.i298, label %for.end.brelse.exit300_crit_edge, label %if.then.i299

for.end.brelse.exit300_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit300

if.then.i299:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %26) #4
  br label %brelse.exit300

brelse.exit300:                                   ; preds = %if.then.i299, %for.end.brelse.exit300_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %node.0340) #4
  br label %cleanup

f30:                                              ; preds = %for.body
  %27 = ptrtoint ptr %n_used_nodes19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %n_used_nodes19, align 1
  %conv34335 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv34335)
  %cmp35336 = icmp ult i32 %inc, %conv34335
  br i1 %cmp35336, label %f30.for.body37_crit_edge, label %f30.for.end43_crit_edge

f30.for.end43_crit_edge:                          ; preds = %f30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

f30.for.body37_crit_edge:                         ; preds = %f30
  br label %for.body37

for.body37:                                       ; preds = %hpfs_ea_remove.exit.for.body37_crit_edge, %f30.for.body37_crit_edge
  %j.0337 = phi i32 [ %inc42, %hpfs_ea_remove.exit.for.body37_crit_edge ], [ %inc, %f30.for.body37_crit_edge ]
  %arrayidx40 = getelementptr [0 x %struct.bplus_internal_node], ptr %internal, i32 0, i32 %j.0337
  %down = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx40, i32 0, i32 1
  %29 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %down, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #4
  %32 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !43
  %call.i = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %31, ptr noundef nonnull %bh.i) #4
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.body37.hpfs_ea_remove.exit_crit_edge, label %if.end.i

for.body37.hpfs_ea_remove.exit_crit_edge:         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %hpfs_ea_remove.exit

if.end.i:                                         ; preds = %for.body37
  %btree.i = getelementptr inbounds %struct.anode, ptr %call.i, i32 0, i32 3
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree.i) #4
  %33 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end.i.brelse.exit.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %34) #4
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end.i.brelse.exit.i_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %31, i32 noundef 1) #4
  br label %hpfs_ea_remove.exit

hpfs_ea_remove.exit:                              ; preds = %brelse.exit.i, %for.body37.hpfs_ea_remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  %inc42 = add nuw nsw i32 %j.0337, 1
  %35 = ptrtoint ptr %n_used_nodes19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %n_used_nodes19, align 1
  %conv34 = zext i8 %36 to i32
  %cmp35 = icmp ult i32 %inc42, %conv34
  br i1 %cmp35, label %hpfs_ea_remove.exit.for.body37_crit_edge, label %hpfs_ea_remove.exit.for.end43_crit_edge

hpfs_ea_remove.exit.for.end43_crit_edge:          ; preds = %hpfs_ea_remove.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

hpfs_ea_remove.exit.for.body37_crit_edge:         ; preds = %hpfs_ea_remove.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body37

for.end43:                                        ; preds = %hpfs_ea_remove.exit.for.end43_crit_edge, %f30.for.end43_crit_edge
  %conv45 = trunc i32 %inc to i8
  %37 = ptrtoint ptr %n_used_nodes19 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv45, ptr %n_used_nodes19, align 1
  %add31.neg = xor i32 %i.0333, -1
  %sub = add nsw i32 %add, %add31.neg
  %conv49 = trunc i32 %sub to i8
  %38 = ptrtoint ptr %n_free_nodes21 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv49, ptr %n_free_nodes21, align 4
  %add31.tr = trunc i32 %inc to i16
  %39 = shl i16 %add31.tr, 3
  %40 = and i16 %39, 2040
  %conv54 = add nuw nsw i16 %40, 8
  %41 = call i16 @llvm.bswap.i16(i16 %conv54)
  %first_free55 = getelementptr inbounds %struct.bplus_header, ptr %btree.1339, i32 0, i32 4
  %42 = ptrtoint ptr %first_free55 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %first_free55, align 2
  %43 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %44) #4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %5)
  %cmp60 = icmp eq i32 %46, %5
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end43
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bh, align 4
  %tobool.not.i302 = icmp eq ptr %48, null
  br i1 %tobool.not.i302, label %if.then62.cleanup_crit_edge, label %if.then.i303

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i303:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %48) #4
  br label %cleanup

if.end63:                                         ; preds = %for.end43
  %down67 = getelementptr inbounds %struct.bplus_internal_node, ptr %arrayidx, i32 0, i32 1
  %49 = ptrtoint ptr %down67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %down67, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh, align 4
  %tobool.not.i306 = icmp eq ptr %53, null
  br i1 %tobool.not.i306, label %if.end63.brelse.exit309_crit_edge, label %if.then.i307

if.end63.brelse.exit309_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit309

if.then.i307:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %53) #4
  br label %brelse.exit309

brelse.exit309:                                   ; preds = %if.then.i307, %if.end63.brelse.exit309_crit_edge
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load = load i16, ptr %sb_chk, align 2
  %57 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool69.not = icmp eq i16 %57, 0
  br i1 %tobool69.not, label %brelse.exit309.if.end75_crit_edge, label %if.then70

brelse.exit309.if.end75_crit_edge:                ; preds = %brelse.exit309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then70:                                        ; preds = %brelse.exit309
  %call71 = call i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %51, ptr noundef nonnull %c1, ptr noundef nonnull %c2, ptr noundef nonnull @.str.15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.if.end75_crit_edge, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then70.if.end75_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.end75:                                         ; preds = %if.then70.if.end75_crit_edge, %brelse.exit309.if.end75_crit_edge
  %call76 = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %51, ptr noundef nonnull %bh) #4
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end75.cleanup_crit_edge, label %while.cond

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %btree.1.lcssa = phi ptr [ %btree.1.ph, %while.cond.preheader.while.end_crit_edge ], [ %btree80, %while.cond.while.end_crit_edge ]
  %n_used_nodes81 = getelementptr inbounds %struct.bplus_header, ptr %btree.1.lcssa, i32 0, i32 3
  %58 = ptrtoint ptr %n_used_nodes81 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %n_used_nodes81, align 1
  %conv82 = zext i8 %59 to i32
  %n_free_nodes83 = getelementptr inbounds %struct.bplus_header, ptr %btree.1.lcssa, i32 0, i32 2
  %60 = ptrtoint ptr %n_free_nodes83 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %n_free_nodes83, align 4
  %conv84 = zext i8 %61 to i32
  %add85 = add nuw nsw i32 %conv84, %conv82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp89343.not = icmp eq i8 %59, 0
  br i1 %cmp89343.not, label %while.end.for.end105_crit_edge, label %for.body91.lr.ph

while.end.for.end105_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end105

for.body91.lr.ph:                                 ; preds = %while.end
  %external = getelementptr inbounds %struct.bplus_header, ptr %btree.1.lcssa, i32 1
  br label %for.body91

for.body91:                                       ; preds = %for.inc103.for.body91_crit_edge, %for.body91.lr.ph
  %i.1344 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc104, %for.inc103.for.body91_crit_edge ]
  %arrayidx93 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external, i32 0, i32 %i.1344
  %62 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx93, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %length = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx93, i32 0, i32 1
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %add98 = add i32 %67, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %secs)
  %cmp99.not = icmp ult i32 %add98, %secs
  br i1 %cmp99.not, label %for.inc103, label %ff

for.inc103:                                       ; preds = %for.body91
  %inc104 = add nuw nsw i32 %i.1344, 1
  %exitcond362.not = icmp eq i32 %inc104, %conv82
  br i1 %exitcond362.not, label %for.inc103.for.end105_crit_edge, label %for.inc103.for.body91_crit_edge

for.inc103.for.body91_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body91

for.inc103.for.end105_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end105

for.end105:                                       ; preds = %for.inc103.for.end105_crit_edge, %while.end.for.end105_crit_edge
  %68 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bh, align 4
  %tobool.not.i310 = icmp eq ptr %69, null
  br i1 %tobool.not.i310, label %for.end105.cleanup_crit_edge, label %if.then.i311

for.end105.cleanup_crit_edge:                     ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i311:                                     ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %69) #4
  br label %cleanup

ff:                                               ; preds = %for.body91
  %length.le = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx93, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %secs)
  %cmp110.not = icmp ult i32 %64, %secs
  br i1 %cmp110.not, label %if.else116, label %if.then112

if.then112:                                       ; preds = %ff
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %f, i32 noundef %secs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1344)
  %tobool113.not = icmp eq i32 %i.1344, 0
  %dec = add nsw i32 %i.1344, -1
  %spec.select = select i1 %tobool113.not, i32 0, i32 %dec
  br label %if.end158

if.else116:                                       ; preds = %ff
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %secs)
  %cmp126 = icmp ugt i32 %add98, %secs
  br i1 %cmp126, label %if.then128, label %if.else116.if.end158_crit_edge

if.else116.if.end158_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end158

if.then128:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #6
  %disk_secno = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx93, i32 0, i32 2
  %70 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %disk_secno, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %add132 = sub i32 %secs, %64
  %sub137 = add i32 %add132, %72
  %sub142 = sub i32 %64, %secs
  %add147 = add i32 %sub142, %67
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %sub137, i32 noundef %add147) #4
  %73 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx93, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %sub152 = sub i32 %secs, %75
  %76 = call i32 @llvm.bswap.i32(i32 %sub152)
  %77 = ptrtoint ptr %length.le to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %length.le, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then128, %if.else116.if.end158_crit_edge, %if.then112
  %i.2 = phi i32 [ %i.1344, %if.then128 ], [ %i.1344, %if.else116.if.end158_crit_edge ], [ %spec.select, %if.then112 ]
  %add159 = add i32 %i.2, 1
  %78 = ptrtoint ptr %n_used_nodes81 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %n_used_nodes81, align 1
  %conv162345 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %conv162345)
  %cmp163346 = icmp slt i32 %add159, %conv162345
  br i1 %cmp163346, label %if.end158.for.body165_crit_edge, label %if.end158.for.end176_crit_edge

if.end158.for.end176_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end176

if.end158.for.body165_crit_edge:                  ; preds = %if.end158
  br label %for.body165

for.body165:                                      ; preds = %for.body165.for.body165_crit_edge, %if.end158.for.body165_crit_edge
  %j.1347 = phi i32 [ %inc175, %for.body165.for.body165_crit_edge ], [ %add159, %if.end158.for.body165_crit_edge ]
  %arrayidx168 = getelementptr [0 x %struct.bplus_leaf_node], ptr %external, i32 0, i32 %j.1347
  %disk_secno169 = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx168, i32 0, i32 2
  %80 = ptrtoint ptr %disk_secno169 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %disk_secno169, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %length173 = getelementptr inbounds %struct.bplus_leaf_node, ptr %arrayidx168, i32 0, i32 1
  %83 = ptrtoint ptr %length173 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length173, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %82, i32 noundef %85) #4
  %inc175 = add nuw nsw i32 %j.1347, 1
  %86 = ptrtoint ptr %n_used_nodes81 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %n_used_nodes81, align 1
  %conv162 = zext i8 %87 to i32
  %cmp163 = icmp ult i32 %inc175, %conv162
  br i1 %cmp163, label %for.body165.for.body165_crit_edge, label %for.body165.for.end176_crit_edge

for.body165.for.end176_crit_edge:                 ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end176

for.body165.for.body165_crit_edge:                ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body165

for.end176:                                       ; preds = %for.body165.for.end176_crit_edge, %if.end158.for.end176_crit_edge
  %conv178 = trunc i32 %add159 to i8
  %88 = ptrtoint ptr %n_used_nodes81 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv178, ptr %n_used_nodes81, align 1
  %add159.neg = xor i32 %i.2, -1
  %sub182 = add i32 %add85, %add159.neg
  %conv183 = trunc i32 %sub182 to i8
  %89 = ptrtoint ptr %n_free_nodes83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv183, ptr %n_free_nodes83, align 4
  %90 = trunc i32 %add159 to i16
  %91 = and i16 %90, 255
  %92 = mul nuw nsw i16 %91, 12
  %conv189 = add nuw nsw i16 %92, 8
  %93 = call i16 @llvm.bswap.i16(i16 %conv189)
  %first_free190 = getelementptr inbounds %struct.bplus_header, ptr %btree.1.lcssa, i32 0, i32 4
  %94 = ptrtoint ptr %first_free190 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %first_free190, align 2
  %95 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %96) #4
  %97 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bh, align 4
  %tobool.not.i314 = icmp eq ptr %98, null
  br i1 %tobool.not.i314, label %for.end176.cleanup_crit_edge, label %if.then.i315

for.end176.cleanup_crit_edge:                     ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i315:                                     ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %98) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i315, %for.end176.cleanup_crit_edge, %if.then.i311, %for.end105.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.then.i303, %if.then62.cleanup_crit_edge, %brelse.exit300, %if.then.i, %if.end16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_remove_fnode(ptr noundef %s, i32 noundef %fno) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #4
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !43
  %call = call ptr @hpfs_map_fnode(ptr noundef %s, i32 noundef %fno, ptr noundef nonnull %bh) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 2
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.not = icmp eq i16 %3, 0
  br i1 %cmp.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %btree = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 14
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree)
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %disk_secno = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 15, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %disk_secno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disk_secno, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  call void @hpfs_remove_dtree(ptr noundef %s, i32 noundef %6) #4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %ea_offs.i = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 19
  %7 = ptrtoint ptr %ea_offs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ea_offs.i, align 4
  %9 = call i16 @llvm.bswap.i16(i16 %8) #4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %acl_size_s.i = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %acl_size_s.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %acl_size_s.i, align 4
  %12 = call i16 @llvm.bswap.i16(i16 %11) #4
  %conv1.i = zext i16 %12 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %ea_size_s.i = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 12
  %13 = ptrtoint ptr %ea_size_s.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ea_size_s.i, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #4
  %conv3.i = zext i16 %15 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  %cmp60 = icmp ult ptr %add.ptr2.i, %add.ptr4.i
  br i1 %cmp60, label %if.end3.for.body_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %ea.061 = phi ptr [ %add.ptr2.i53, %for.inc.for.body_crit_edge ], [ %add.ptr2.i, %if.end3.for.body_crit_edge ]
  %16 = ptrtoint ptr %ea.061 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ea.061, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not = icmp eq i8 %18, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %add.ptr.i42 = getelementptr i8, ptr %ea.061, i32 9
  %namelen.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.061, i32 0, i32 1
  %19 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %namelen.i, align 1
  %conv.i43 = zext i8 %20 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i42, i32 %conv.i43
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr1.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #4
  %add.ptr.i45 = getelementptr i8, ptr %ea.061, i32 5
  %add.ptr1.i48 = getelementptr i8, ptr %add.ptr.i45, i32 %conv.i43
  %24 = ptrtoint ptr %add.ptr1.i48 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr1.i48, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #4
  %26 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !43
  %27 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %call.i = call ptr @hpfs_map_anode(ptr noundef %s, i32 noundef %23, ptr noundef nonnull %bh.i) #4
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.hpfs_ea_remove.exit_crit_edge, label %if.end.i

if.then.i.hpfs_ea_remove.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hpfs_ea_remove.exit

if.end.i:                                         ; preds = %if.then.i
  %btree.i = getelementptr inbounds %struct.anode, ptr %call.i, i32 0, i32 3
  call void @hpfs_remove_btree(ptr noundef %s, ptr noundef %btree.i) #4
  %28 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.hpfs_ea_remove.exit.sink.split_crit_edge, label %if.then.i.i

if.end.i.hpfs_ea_remove.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hpfs_ea_remove.exit.sink.split

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %29) #4
  br label %hpfs_ea_remove.exit.sink.split

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %30 = call i32 @llvm.bswap.i32(i32 %25) #4
  %add.i = add i32 %30, 511
  %shr.i = lshr i32 %add.i, 9
  br label %hpfs_ea_remove.exit.sink.split

hpfs_ea_remove.exit.sink.split:                   ; preds = %if.else.i, %if.then.i.i, %if.end.i.hpfs_ea_remove.exit.sink.split_crit_edge
  %.sink = phi i32 [ %shr.i, %if.else.i ], [ 1, %if.then.i.i ], [ 1, %if.end.i.hpfs_ea_remove.exit.sink.split_crit_edge ]
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %23, i32 noundef %.sink) #4
  br label %hpfs_ea_remove.exit

hpfs_ea_remove.exit:                              ; preds = %hpfs_ea_remove.exit.sink.split, %if.then.i.hpfs_ea_remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #4
  br label %for.inc

for.inc:                                          ; preds = %hpfs_ea_remove.exit, %for.body.for.inc_crit_edge
  %add.ptr.i49 = getelementptr i8, ptr %ea.061, i32 5
  %namelen.i50 = getelementptr inbounds %struct.extended_attribute, ptr %ea.061, i32 0, i32 1
  %31 = ptrtoint ptr %namelen.i50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %namelen.i50, align 1
  %conv.i51 = zext i8 %32 to i32
  %add.ptr1.i52 = getelementptr i8, ptr %add.ptr.i49, i32 %conv.i51
  %valuelen_lo.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.061, i32 0, i32 2
  %33 = ptrtoint ptr %valuelen_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valuelen_lo.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %valuelen_hi.i.i = getelementptr inbounds %struct.extended_attribute, ptr %ea.061, i32 0, i32 3
  %35 = ptrtoint ptr %valuelen_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %valuelen_hi.i.i, align 1
  %conv1.i.i = zext i8 %36 to i32
  %mul.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %add.i.i = or i32 %mul.i.i, %conv.i.i
  %add.ptr2.i53 = getelementptr i8, ptr %add.ptr1.i52, i32 %add.i.i
  %cmp = icmp ult ptr %add.ptr2.i53, %add.ptr4.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %ea_secno = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 11
  %37 = ptrtoint ptr %ea_secno to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ea_secno, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i, align 2
  %42 = lshr i16 %41, 9
  %.lobit = and i16 %42, 1
  %43 = zext i16 %.lobit to i32
  %ea_size_l = getelementptr inbounds %struct.fnode, ptr %call, i32 0, i32 10
  %44 = ptrtoint ptr %ea_size_l to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ea_size_l, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  call void @hpfs_ea_ext_remove(ptr noundef %s, i32 noundef %39, i32 noundef %43, i32 noundef %46) #4
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bh, align 4
  %tobool.not.i56 = icmp eq ptr %48, null
  br i1 %tobool.not.i56, label %for.end.brelse.exit_crit_edge, label %if.then.i57

for.end.brelse.exit_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i57:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %48) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i57, %for.end.brelse.exit_crit_edge
  call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %fno, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_remove_dtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_ea_ext_remove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/anode.c", i32 23, i32 63}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/anode.c", i32 33, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/anode.c", i32 41, i32 58}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/anode.c", i32 54, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/anode.c", i32 82, i32 17}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/anode.c", i32 92, i32 41}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/anode.c", i32 99, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hpfs/anode.c", i32 113, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/anode.c", i32 168, i32 42}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hpfs/anode.c", i32 291, i32 43}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hpfs/anode.c", i32 304, i32 42}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/hpfs/anode.c", i32 321, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hpfs/anode.c", i32 350, i32 59}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hpfs/anode.c", i32 373, i32 59}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hpfs/anode.c", i32 432, i32 17}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hpfs/anode.c", i32 448, i32 44}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hpfs/anode.c", i32 460, i32 17}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
