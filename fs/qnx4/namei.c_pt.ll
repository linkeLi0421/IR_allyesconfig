; ModuleID = '/llk/IR_all_yes/fs/qnx4/namei.c_pt.bc'
source_filename = "../fs/qnx4/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.qnx4_inode_entry = type { [16 x i8], i32, %struct.qnx4_xtnt_t, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i8], i8, i8 }
%struct.qnx4_xtnt_t = type { i32, i32 }
%struct.qnx4_link_info = type { [48 x i8], i32, i8, [10 x i8], i8 }

@qnx4_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014qnx4: matching unassigned buffer !\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qnx4_match\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/qnx4/namei.c\00", [16 x i8] zeroinitializer }, align 32
@qnx4_match._entry_ptr = internal global ptr @qnx4_match._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [19 x i8] c"../fs/qnx4/namei.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 33, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @qnx4_match._entry, ptr @qnx4_match._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx4_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qnx4_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp6066.i = icmp sgt i64 %5, 0
  br i1 %cmp6066.i, label %while.body.lr.ph.lr.ph.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.body.lr.ph.lr.ph.i:                         ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.body.lr.ph.i.backedge, %while.body.lr.ph.lr.ph.i
  %bh.0.ph71.i = phi ptr [ null, %while.body.lr.ph.lr.ph.i ], [ %bh.0.ph71.i.be, %while.body.lr.ph.i.backedge ]
  %blkofs.0.ph70.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %blkofs.0.ph70.i.be, %while.body.lr.ph.i.backedge ]
  %block.0.ph69.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %block.1.i, %while.body.lr.ph.i.backedge ]
  %offset.0.ph67.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %offset.0.ph67.i.be, %while.body.lr.ph.i.backedge ]
  %tobool.not.i45 = icmp eq ptr %bh.0.ph71.i, null
  br i1 %tobool.not.i45, label %while.body.lr.ph.i.if.then.i_crit_edge, label %while.body.lr.ph.i.if.end.i.i_crit_edge

while.body.lr.ph.i.if.end.i.i_crit_edge:          ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

while.body.lr.ph.i.if.then.i_crit_edge:           ; preds = %while.body.lr.ph.i
  br label %if.then.i

if.then.i:                                        ; preds = %if.then7.i.if.then.i_crit_edge, %while.body.lr.ph.i.if.then.i_crit_edge
  %blkofs.062.i46 = phi i32 [ %inc.i, %if.then7.i.if.then.i_crit_edge ], [ %blkofs.0.ph70.i, %while.body.lr.ph.i.if.then.i_crit_edge ]
  %call.i = tail call i32 @qnx4_block_map(ptr noundef %dir, i32 noundef %blkofs.062.i46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.then7.i_crit_edge, label %if.end.i

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %conv4.i = zext i32 %call.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv4.i, i32 noundef %11, i32 noundef 8) #4
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %inc.i = add i32 %blkofs.062.i46, 1
  %mul.i = shl i32 %inc.i, 9
  %add.i = add i32 %mul.i, %offset.0.ph67.i
  %conv.i = zext i32 %add.i to i64
  %12 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size.i, align 8
  %cmp.i = icmp sgt i64 %13, %conv.i
  br i1 %cmp.i, label %if.then7.i.if.then.i_crit_edge, label %if.then7.i.out_crit_edge

if.then7.i.out_crit_edge:                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then7.i.if.then.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end.i.if.end.i.i_crit_edge, %while.body.lr.ph.i.if.end.i.i_crit_edge
  %blkofs.062.i.lcssa = phi i32 [ %blkofs.0.ph70.i, %while.body.lr.ph.i.if.end.i.i_crit_edge ], [ %blkofs.062.i46, %if.end.i.if.end.i.i_crit_edge ]
  %block.1.i = phi i32 [ %block.0.ph69.i, %while.body.lr.ph.i.if.end.i.i_crit_edge ], [ %call.i, %if.end.i.if.end.i.i_crit_edge ]
  %bh.2.i = phi ptr [ %bh.0.ph71.i, %while.body.lr.ph.i.if.end.i.i_crit_edge ], [ %call.i.i, %if.end.i.if.end.i.i_crit_edge ]
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %offset.0.ph67.i
  %add.i.i = add i32 %offset.0.ph67.i, 64
  %di_status.i.i = getelementptr inbounds %struct.qnx4_inode_entry, ptr %add.ptr.i, i32 0, i32 15
  %16 = ptrtoint ptr %di_status.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %di_status.i.i, align 1
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1.not.i.i = icmp eq i8 %18, 0
  %..i.i = select i1 %cmp1.not.i.i, i32 16, i32 48
  %call5.i.i = tail call i32 @strlen(ptr noundef %add.ptr.i) #7
  %19 = tail call i32 @llvm.smin.i32(i32 %call5.i.i, i32 %..i.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp10.not.i.i = icmp eq i32 %19, %3
  br i1 %cmp10.not.i.i, label %qnx4_match.exit.i, label %if.end.i.i.if.end15.i_crit_edge

if.end.i.i.if.end15.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

qnx4_match.exit.i:                                ; preds = %if.end.i.i
  %call16.i.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp ne i32 %call16.i.i, 0
  %20 = and i8 %17, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp23.not.i.i = icmp eq i8 %20, 0
  %or.cond.i.i = select i1 %cmp17.i.i, i1 true, i1 %cmp23.not.i.i
  br i1 %or.cond.i.i, label %qnx4_match.exit.i.if.end15.i_crit_edge, label %if.end

qnx4_match.exit.i.if.end15.i_crit_edge:           ; preds = %qnx4_match.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %qnx4_match.exit.i.if.end15.i_crit_edge, %if.end.i.i.if.end15.i_crit_edge
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 4
  %21 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %22)
  %cmp16.i = icmp ult i32 %add.i.i, %22
  br i1 %cmp16.i, label %while.cond.outer.backedge.i, label %while.cond.outer.backedge.i.thread

while.cond.outer.backedge.i:                      ; preds = %if.end15.i
  %mul57.i = shl i32 %blkofs.062.i.lcssa, 9
  %add58.i = add i32 %mul57.i, %add.i.i
  %conv59.i = zext i32 %add58.i to i64
  %23 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %conv59.i)
  %cmp60.i = icmp sgt i64 %24, %conv59.i
  br i1 %cmp60.i, label %while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge, label %if.then.i44.i

while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph.i.backedge

while.body.lr.ph.i.backedge:                      ; preds = %while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge, %while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge
  %bh.0.ph71.i.be = phi ptr [ %bh.2.i, %while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge ], [ null, %while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge ]
  %blkofs.0.ph70.i.be = phi i32 [ %blkofs.062.i.lcssa, %while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge ], [ %inc20.i, %while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge ]
  %offset.0.ph67.i.be = phi i32 [ %add.i.i, %while.cond.outer.backedge.i.while.body.lr.ph.i.backedge_crit_edge ], [ 0, %while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge ]
  br label %while.body.lr.ph.i

while.cond.outer.backedge.i.thread:               ; preds = %if.end15.i
  tail call void @__brelse(ptr noundef nonnull %bh.2.i) #4
  %inc20.i = add i32 %blkofs.062.i.lcssa, 1
  %mul57.i24 = shl i32 %inc20.i, 9
  %conv59.i26 = zext i32 %mul57.i24 to i64
  %25 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv59.i26)
  %cmp60.i27 = icmp sgt i64 %26, %conv59.i26
  br i1 %cmp60.i27, label %while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge, label %while.cond.outer.backedge.i.thread.out_crit_edge

while.cond.outer.backedge.i.thread.out_crit_edge: ; preds = %while.cond.outer.backedge.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

while.cond.outer.backedge.i.thread.while.body.lr.ph.i.backedge_crit_edge: ; preds = %while.cond.outer.backedge.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph.i.backedge

if.then.i44.i:                                    ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__brelse(ptr noundef nonnull %bh.2.i) #4
  br label %out

if.end:                                           ; preds = %qnx4_match.exit.i
  %di_status.i.i.le = getelementptr inbounds %struct.qnx4_inode_entry, ptr %add.ptr.i, i32 0, i32 15
  %mul13.i = shl i32 %block.1.i, 3
  %div40.i = lshr i32 %add.i.i, 6
  %add14.i = add nsw i32 %div40.i, -1
  %sub.i = add i32 %add14.i, %mul13.i
  %27 = ptrtoint ptr %di_status.i.i.le to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %di_status.i.i.le, align 1
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.not = icmp eq i8 %29, 0
  br i1 %cmp.not, label %if.end.brelse.exit_crit_edge, label %if.then5

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dl_inode_blk = getelementptr inbounds %struct.qnx4_link_info, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %dl_inode_blk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dl_inode_blk, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %sub = shl i32 %32, 3
  %mul = add i32 %sub, -8
  %dl_inode_ndx = getelementptr inbounds %struct.qnx4_link_info, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %dl_inode_ndx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dl_inode_ndx, align 4
  %conv6 = zext i8 %34 to i32
  %add = add i32 %mul, %conv6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then5, %if.end.brelse.exit_crit_edge
  %ino.1 = phi i32 [ %sub.i, %if.end.brelse.exit_crit_edge ], [ %add, %if.then5 ]
  tail call void @__brelse(ptr noundef nonnull %bh.2.i) #4
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  %call8 = tail call ptr @qnx4_iget(ptr noundef %36, i32 noundef %ino.1) #4
  br label %out

out:                                              ; preds = %brelse.exit, %if.then.i44.i, %while.cond.outer.backedge.i.thread.out_crit_edge, %if.then7.i.out_crit_edge, %entry.out_crit_edge
  %foundinode.0 = phi ptr [ %call8, %brelse.exit ], [ null, %if.then.i44.i ], [ null, %entry.out_crit_edge ], [ null, %if.then7.i.out_crit_edge ], [ null, %while.cond.outer.backedge.i.thread.out_crit_edge ]
  %call12 = tail call ptr @d_splice_alias(ptr noundef %foundinode.0, ptr noundef %dentry) #4
  ret ptr %call12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qnx4_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qnx4_block_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/qnx4/namei.c", i32 33, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qnx4_match._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qnx4_match._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
