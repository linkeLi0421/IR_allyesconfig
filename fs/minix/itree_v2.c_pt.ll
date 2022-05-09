; ModuleID = '/llk/IR_all_yes/fs/minix/itree_v2.c_pt.bc'
source_filename = "../fs/minix/itree_v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.Indirect = type { ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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

@block_to_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MINIX-fs: block_to_path: block %ld < 0 on dev %pg\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block_to_path\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/minix/itree_v2.c\00", [44 x i8] zeroinitializer }, align 32
@block_to_path._entry_ptr = internal global ptr @block_to_path._entry, section ".printk_index", align 4
@pointers_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pointers_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967291]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private constant [23 x i8] c"../fs/minix/itree_v2.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 33, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"pointers_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../fs/minix/itree_common.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 10, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 366, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @block_to_path._entry, ptr @block_to_path._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pointers_lock, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pointers_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @V2_minix_get_block(ptr noundef %inode, i32 noundef %block, ptr noundef %bh_result, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %block to i64
  %call = tail call i32 @get_block(ptr noundef %inode, i64 noundef %conv, ptr noundef %bh_result, i32 noundef %create)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #7
  %0 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #7
  %1 = getelementptr inbounds i8, ptr %chain, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 36)
  %conv = trunc i64 %block to i32
  %call = call fastcc i32 @block_to_path(ptr noundef %inode, i32 noundef %conv, ptr noundef nonnull %offsets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %reread.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

reread.preheader:                                 ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -64
  %key.i.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %bh2.i.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool11.not = icmp eq i32 %create, 0
  %add.ptr25 = getelementptr %struct.Indirect, ptr %chain, i32 %call
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.rhs.cast29 = ptrtoint ptr %chain to i32
  br label %reread

reread:                                           ; preds = %reread.backedge, %reread.preheader
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %5 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets, align 4
  %add.ptr.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %6
  %7 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %chain, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %key.i.i, align 4
  %11 = ptrtoint ptr %bh2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bh2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i77 = icmp eq i32 %9, 0
  br i1 %tobool.not.i77, label %reread.if.end10_crit_edge, label %while.cond.preheader.i

reread.if.end10_crit_edge:                        ; preds = %reread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

while.cond.preheader.i:                           ; preds = %reread
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end11.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %offsets.addr.0.i = phi ptr [ %incdec.ptr12.i, %if.end11.i.while.cond.i_crit_edge ], [ %offsets, %while.cond.preheader.i ]
  %depth.addr.0.i = phi i32 [ %dec.i, %if.end11.i.while.cond.i_crit_edge ], [ %call, %while.cond.preheader.i ]
  %p.0.i = phi ptr [ %incdec.ptr.i, %if.end11.i.while.cond.i_crit_edge ], [ %chain, %while.cond.preheader.i ]
  %dec.i = add i32 %depth.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.got_it_crit_edge, label %while.body.i

while.cond.i.got_it_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %got_it

while.body.i:                                     ; preds = %while.cond.i
  %key2.i = getelementptr inbounds %struct.Indirect, ptr %p.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %key2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key2.i, align 4
  %conv.i = zext i32 %13 to i64
  %14 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i.i, align 4
  %16 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %15, i64 noundef %conv.i, i32 noundef %17, i32 noundef 8) #7
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %while.body.i.get_branch.exit_crit_edge, label %if.end7.i

while.body.i.get_branch.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit

if.end7.i:                                        ; preds = %while.body.i
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #7
  %cmp.not8.i.i = icmp ult ptr %p.0.i, %chain
  br i1 %cmp.not8.i.i, label %if.end7.i.if.end11.i_crit_edge, label %if.end7.i.land.rhs.i.i_crit_edge

if.end7.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end7.i
  br label %land.rhs.i.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %if.end7.i.land.rhs.i.i_crit_edge
  %from.addr.09.i.i = phi ptr [ %incdec.ptr.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %chain, %if.end7.i.land.rhs.i.i_crit_edge ]
  %key.i34.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %key.i34.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key.i34.i, align 4
  %20 = ptrtoint ptr %from.addr.09.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %from.addr.09.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp1.i.i = icmp eq i32 %19, %23
  %incdec.ptr.i.i = getelementptr %struct.Indirect, ptr %from.addr.09.i.i, i32 1
  %cmp.not.i.i = icmp ule ptr %incdec.ptr.i.i, %p.0.i
  %24 = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %24, label %land.rhs.i.i.land.rhs.i.i_crit_edge, label %verify_chain.exit.i

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

verify_chain.exit.i:                              ; preds = %land.rhs.i.i
  br i1 %cmp1.i.i, label %verify_chain.exit.i.if.end11.i_crit_edge, label %brelse.exit.i

verify_chain.exit.i.if.end11.i_crit_edge:         ; preds = %verify_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %verify_chain.exit.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %p.0.i, i32 1
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data.i, align 4
  %incdec.ptr12.i = getelementptr i32, ptr %offsets.addr.0.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr12.i, align 4
  %add.ptr13.i = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr13.i, ptr %incdec.ptr.i, align 4
  %30 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr13.i, align 4
  %key.i35.i = getelementptr %struct.Indirect, ptr %p.0.i, i32 1, i32 1
  %32 = ptrtoint ptr %key.i35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %key.i35.i, align 4
  %bh2.i36.i = getelementptr %struct.Indirect, ptr %p.0.i, i32 1, i32 2
  %33 = ptrtoint ptr %bh2.i36.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %bh2.i36.i, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #7
  %34 = ptrtoint ptr %key.i35.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key.i35.i, align 4
  %tobool15.not.i = icmp eq i32 %35, 0
  br i1 %tobool15.not.i, label %if.end11.i.get_branch.exit_crit_edge, label %if.end11.i.while.cond.i_crit_edge

if.end11.i.while.cond.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.end11.i.get_branch.exit_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit

brelse.exit.i:                                    ; preds = %verify_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #7
  call void @__brelse(ptr noundef nonnull %call.i.i) #7
  br label %get_branch.exit

get_branch.exit:                                  ; preds = %brelse.exit.i, %if.end11.i.get_branch.exit_crit_edge, %while.body.i.get_branch.exit_crit_edge
  %err.0 = phi i32 [ -11, %brelse.exit.i ], [ -5, %while.body.i.get_branch.exit_crit_edge ], [ 0, %if.end11.i.get_branch.exit_crit_edge ]
  %retval.0.i = phi ptr [ %p.0.i, %brelse.exit.i ], [ %p.0.i, %while.body.i.get_branch.exit_crit_edge ], [ %incdec.ptr.i, %if.end11.i.get_branch.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_branch.exit.got_it_crit_edge, label %get_branch.exit.if.end10_crit_edge

get_branch.exit.if.end10_crit_edge:               ; preds = %get_branch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

get_branch.exit.got_it_crit_edge:                 ; preds = %get_branch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %got_it

got_it:                                           ; preds = %if.then.i, %if.end42.got_it_crit_edge, %get_branch.exit.got_it_crit_edge, %while.cond.i.got_it_crit_edge
  %err.1 = phi i32 [ 0, %if.end42.got_it_crit_edge ], [ 0, %if.then.i ], [ 0, %while.cond.i.got_it_crit_edge ], [ %err.0, %get_branch.exit.got_it_crit_edge ]
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %sub = add i32 %call, -1
  %key = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub, i32 1
  %38 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key, align 4
  %conv7 = zext i32 %39 to i64
  %40 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh, align 4
  %42 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %got_it.map_bh.exit_crit_edge

got_it.map_bh.exit_crit_edge:                     ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 4, ptr noundef %bh) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %got_it.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 26
  %43 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %45 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %46 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv7, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 3
  %47 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %49 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %b_size.i, align 8
  %add.ptr9 = getelementptr %struct.Indirect, ptr %add.ptr25, i32 -1
  br label %cleanup

if.end10:                                         ; preds = %get_branch.exit.if.end10_crit_edge, %reread.if.end10_crit_edge
  %retval.0.i126 = phi ptr [ %retval.0.i, %get_branch.exit.if.end10_crit_edge ], [ %chain, %reread.if.end10_crit_edge ]
  %err.0125 = phi i32 [ %err.0, %get_branch.exit.if.end10_crit_edge ], [ 0, %reread.if.end10_crit_edge ]
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %50 = zext i32 %err.0125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.0125, label %if.end23 [
    i32 -5, label %lor.lhs.false.cleanup_crit_edge
    i32 -11, label %lor.lhs.false.changed_crit_edge
  ]

lor.lhs.false.changed_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body39.i.cleanup_crit_edge, %for.cond36.preheader.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %map_bh.exit
  %err.2 = phi i32 [ %err.1, %map_bh.exit ], [ %err.2.i, %for.cond36.preheader.i.cleanup_crit_edge ], [ %err.2.i, %for.body39.i.cleanup_crit_edge ], [ %err.0125, %if.end10.cleanup_crit_edge ], [ %err.0125, %lor.lhs.false.cleanup_crit_edge ]
  %partial.0 = phi ptr [ %add.ptr9, %map_bh.exit ], [ %retval.0.i126, %for.cond36.preheader.i.cleanup_crit_edge ], [ %retval.0.i126, %for.body39.i.cleanup_crit_edge ], [ %retval.0.i126, %if.end10.cleanup_crit_edge ], [ %retval.0.i126, %lor.lhs.false.cleanup_crit_edge ]
  %cmp16152 = icmp ugt ptr %partial.0, %chain
  br i1 %cmp16152, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %cleanup.while.body_crit_edge
  %partial.1153 = phi ptr [ %incdec.ptr, %brelse.exit.while.body_crit_edge ], [ %partial.0, %cleanup.while.body_crit_edge ]
  %bh18 = getelementptr inbounds %struct.Indirect, ptr %partial.1153, i32 0, i32 2
  %51 = ptrtoint ptr %bh18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh18, align 4
  %tobool.not.i78 = icmp eq ptr %52, null
  br i1 %tobool.not.i78, label %while.body.brelse.exit_crit_edge, label %if.then.i79

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i79:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %52) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i79, %while.body.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.1153, i32 -1
  %cmp16 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp16, label %brelse.exit.while.body_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out:                                              ; preds = %brelse.exit.out_crit_edge, %cleanup.out_crit_edge, %entry.out_crit_edge
  %err.3 = phi i32 [ -5, %entry.out_crit_edge ], [ %err.2, %cleanup.out_crit_edge ], [ %err.2, %brelse.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #7
  ret i32 %err.3

if.end23:                                         ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i126 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %sub.ptr.sub30 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i32 %sub.ptr.sub30, 12
  %add.ptr32 = getelementptr i32, ptr %offsets, i32 %sub.ptr.div31
  %call.i = call i32 @minix_new_block(ptr noundef %inode) #7
  %key.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i126, i32 0, i32 1
  %53 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i80 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i80, label %if.end23.if.end22.i_crit_edge, label %for.cond.preheader.i

if.end23.if.end22.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.cond.preheader.i:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp99.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp99.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end22.i_crit_edge

for.cond.preheader.i.if.end22.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %parent.0101.i = phi i32 [ %call2.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.0100.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call2.i = call i32 @minix_new_block(ptr noundef %inode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end22.i_crit_edge, label %if.end.i

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end.i:                                         ; preds = %for.body.i
  %key7.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %n.0100.i, i32 1
  %54 = ptrtoint ptr %key7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call2.i, ptr %key7.i, align 4
  %55 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i, align 4
  %conv.i82 = sext i32 %parent.0101.i to i64
  %s_bdev.i.i83 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 26
  %57 = ptrtoint ptr %s_bdev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_bdev.i.i83, align 4
  %s_blocksize.i.i84 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %s_blocksize.i.i84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize.i.i84, align 16
  %call.i.i85 = call ptr @__getblk_gfp(ptr noundef %58, i64 noundef %conv.i82, i32 noundef %60, i32 noundef 8) #7
  %tobool9.not.i = icmp eq ptr %call.i.i85, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i86

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @minix_free_block(ptr noundef %inode, i32 noundef %call2.i) #7
  br label %if.end22.i

if.end11.i86:                                     ; preds = %if.end.i
  %arrayidx6.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %n.0100.i
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i85, i32 noundef 4) #7
  %61 = ptrtoint ptr %call.i.i85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %call.i.i85, align 4
  %and.i.i.i.i.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end11.i86.if.then.i91.i_crit_edge

if.end11.i86.if.then.i91.i_crit_edge:             ; preds = %if.end11.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i91.i

trylock_buffer.exit.i.i:                          ; preds = %if.end11.i86
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i85, i32 1, i32 3, i32 1) #7
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i85, ptr nonnull %call.i.i85, i32 4, ptr nonnull elementtype(i32) %call.i.i85) #7, !srcloc !20
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  %64 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i91.i_crit_edge

trylock_buffer.exit.i.i.if.then.i91.i_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i91.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit.i

if.then.i91.i:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i91.i_crit_edge, %if.end11.i86.if.then.i91.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i.i85) #7
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i91.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i87 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i85, i32 0, i32 5
  %65 = ptrtoint ptr %b_data.i87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data.i87, align 4
  %b_size.i88 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i85, i32 0, i32 4
  %67 = ptrtoint ptr %b_size.i88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %b_size.i88, align 8
  %69 = call ptr @memset(ptr %66, i32 0, i32 %68)
  %bh13.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %n.0100.i, i32 2
  %70 = ptrtoint ptr %bh13.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i85, ptr %bh13.i, align 4
  %71 = load ptr, ptr %b_data.i87, align 4
  %arrayidx15.i = getelementptr i32, ptr %add.ptr32, i32 %n.0100.i
  %72 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx15.i, align 4
  %add.ptr.i89 = getelementptr i32, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i89, ptr %arrayidx6.i, align 4
  %75 = ptrtoint ptr %key7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key7.i, align 4
  %77 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %add.ptr.i89, align 4
  %78 = ptrtoint ptr %call.i.i85 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %call.i.i85, align 4
  %and1.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i90 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i90, label %if.then.i.i91, label %lock_buffer.exit.i.for.inc.i_crit_edge

lock_buffer.exit.i.for.inc.i_crit_edge:           ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.i91:                                    ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i85) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i91, %lock_buffer.exit.i.for.inc.i_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i.i85) #7
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i85, ptr noundef %inode) #7
  %inc.i = add nuw nsw i32 %n.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.ptr.div
  br i1 %exitcond.not.i, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end22.i:                                       ; preds = %if.then10.i, %for.body.i.if.end22.i_crit_edge, %for.cond.preheader.i.if.end22.i_crit_edge, %if.end23.if.end22.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.end23.if.end22.i_crit_edge ], [ %n.0100.i, %if.then10.i ], [ 1, %for.cond.preheader.i.if.end22.i_crit_edge ], [ %n.0100.i, %for.body.i.if.end22.i_crit_edge ]
  %err.2.i = phi i32 [ -28, %if.end23.if.end22.i_crit_edge ], [ -12, %if.then10.i ], [ -28, %for.cond.preheader.i.if.end22.i_crit_edge ], [ -28, %for.body.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.i, i32 %sub.ptr.div)
  %cmp23.i = icmp eq i32 %n.1.i, %sub.ptr.div
  br i1 %cmp23.i, label %if.end22.i.if.end36_crit_edge, label %for.cond27.preheader.i

if.end22.i.if.end36_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.cond27.preheader.i:                           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.1.i)
  %cmp28103.i = icmp ugt i32 %n.1.i, 1
  br i1 %cmp28103.i, label %for.cond27.preheader.i.for.body30.i_crit_edge, label %for.cond27.preheader.i.for.cond36.preheader.i_crit_edge

for.cond27.preheader.i.for.cond36.preheader.i_crit_edge: ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond36.preheader.i

for.cond27.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body30.i

for.cond36.preheader.i:                           ; preds = %bforget.exit.i.for.cond36.preheader.i_crit_edge, %for.cond27.preheader.i.for.cond36.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.i)
  %cmp37105.not.i = icmp eq i32 %n.1.i, 0
  br i1 %cmp37105.not.i, label %for.cond36.preheader.i.cleanup_crit_edge, label %for.cond36.preheader.i.for.body39.i_crit_edge

for.cond36.preheader.i.for.body39.i_crit_edge:    ; preds = %for.cond36.preheader.i
  br label %for.body39.i

for.cond36.preheader.i.cleanup_crit_edge:         ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body30.i:                                     ; preds = %bforget.exit.i.for.body30.i_crit_edge, %for.cond27.preheader.i.for.body30.i_crit_edge
  %i.0104.i = phi i32 [ %inc34.i, %bforget.exit.i.for.body30.i_crit_edge ], [ 1, %for.cond27.preheader.i.for.body30.i_crit_edge ]
  %bh32.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %i.0104.i, i32 2
  %80 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bh32.i, align 4
  %tobool.not.i92.i = icmp eq ptr %81, null
  br i1 %tobool.not.i92.i, label %for.body30.i.bforget.exit.i_crit_edge, label %if.then.i93.i

for.body30.i.bforget.exit.i_crit_edge:            ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bforget.exit.i

if.then.i93.i:                                    ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__bforget(ptr noundef nonnull %81) #7
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i93.i, %for.body30.i.bforget.exit.i_crit_edge
  %inc34.i = add nuw nsw i32 %i.0104.i, 1
  %exitcond109.not.i = icmp eq i32 %inc34.i, %n.1.i
  br i1 %exitcond109.not.i, label %bforget.exit.i.for.cond36.preheader.i_crit_edge, label %bforget.exit.i.for.body30.i_crit_edge

bforget.exit.i.for.body30.i_crit_edge:            ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30.i

bforget.exit.i.for.cond36.preheader.i_crit_edge:  ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond36.preheader.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.cond36.preheader.i.for.body39.i_crit_edge
  %i.1106.i = phi i32 [ %inc44.i, %for.body39.i.for.body39.i_crit_edge ], [ 0, %for.cond36.preheader.i.for.body39.i_crit_edge ]
  %key41.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %i.1106.i, i32 1
  %82 = ptrtoint ptr %key41.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key41.i, align 4
  call void @minix_free_block(ptr noundef %inode, i32 noundef %83) #7
  %inc44.i = add nuw nsw i32 %i.1106.i, 1
  %exitcond110.not.i = icmp eq i32 %inc44.i, %n.1.i
  br i1 %exitcond110.not.i, label %for.body39.i.cleanup_crit_edge, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39.i

for.body39.i.cleanup_crit_edge:                   ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end22.i.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge
  call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #7
  %add.ptr.i93 = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 -1
  %cmp.not8.i.i94 = icmp ult ptr %add.ptr.i93, %chain
  br i1 %cmp.not8.i.i94, label %if.end36.lor.lhs.false.i_crit_edge, label %if.end36.land.rhs.i.i100_crit_edge

if.end36.land.rhs.i.i100_crit_edge:               ; preds = %if.end36
  br label %land.rhs.i.i100

if.end36.lor.lhs.false.i_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

land.rhs.i.i100:                                  ; preds = %land.rhs.i.i100.land.rhs.i.i100_crit_edge, %if.end36.land.rhs.i.i100_crit_edge
  %from.addr.09.i.i95 = phi ptr [ %incdec.ptr.i.i98, %land.rhs.i.i100.land.rhs.i.i100_crit_edge ], [ %chain, %if.end36.land.rhs.i.i100_crit_edge ]
  %key.i.i96 = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i.i95, i32 0, i32 1
  %84 = ptrtoint ptr %key.i.i96 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %key.i.i96, align 4
  %86 = ptrtoint ptr %from.addr.09.i.i95 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %from.addr.09.i.i95, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %89)
  %cmp1.i.i97 = icmp eq i32 %85, %89
  %incdec.ptr.i.i98 = getelementptr %struct.Indirect, ptr %from.addr.09.i.i95, i32 1
  %cmp.not.i.i99 = icmp ule ptr %incdec.ptr.i.i98, %add.ptr.i93
  %90 = and i1 %cmp.not.i.i99, %cmp1.i.i97
  br i1 %90, label %land.rhs.i.i100.land.rhs.i.i100_crit_edge, label %verify_chain.exit.i101

land.rhs.i.i100.land.rhs.i.i100_crit_edge:        ; preds = %land.rhs.i.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i100

verify_chain.exit.i101:                           ; preds = %land.rhs.i.i100
  br i1 %cmp1.i.i97, label %verify_chain.exit.i101.lor.lhs.false.i_crit_edge, label %verify_chain.exit.i101.changed.i_crit_edge

verify_chain.exit.i101.changed.i_crit_edge:       ; preds = %verify_chain.exit.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed.i

verify_chain.exit.i101.lor.lhs.false.i_crit_edge: ; preds = %verify_chain.exit.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %verify_chain.exit.i101.lor.lhs.false.i_crit_edge, %if.end36.lor.lhs.false.i_crit_edge
  %91 = ptrtoint ptr %retval.0.i126 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %retval.0.i126, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool1.not.i102 = icmp eq i32 %94, 0
  br i1 %tobool1.not.i102, label %if.end.i105, label %lor.lhs.false.i.changed.i_crit_edge

lor.lhs.false.i.changed.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed.i

if.end.i105:                                      ; preds = %lor.lhs.false.i
  %key.i.le = getelementptr inbounds %struct.Indirect, ptr %retval.0.i126, i32 0, i32 1
  %95 = ptrtoint ptr %key.i.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %key.i.le, align 4
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %92, align 4
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #7
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #7
  %98 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i126, i32 0, i32 2
  %99 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bh.i, align 4
  %tobool3.not.i104 = icmp eq ptr %100, null
  br i1 %tobool3.not.i104, label %if.end.i105.if.end42_crit_edge, label %if.then4.i

if.end.i105.if.end42_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then4.i:                                       ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %100, ptr noundef %inode) #7
  br label %if.end42

changed.i:                                        ; preds = %lor.lhs.false.i.changed.i_crit_edge, %verify_chain.exit.i101.changed.i_crit_edge
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp36.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp36.i, label %changed.i.for.body.i107_crit_edge, label %changed.i.for.cond8.preheader.i_crit_edge

changed.i.for.cond8.preheader.i_crit_edge:        ; preds = %changed.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

changed.i.for.body.i107_crit_edge:                ; preds = %changed.i
  br label %for.body.i107

for.cond8.preheader.i:                            ; preds = %bforget.exit.i111.for.cond8.preheader.i_crit_edge, %changed.i.for.cond8.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp938.i = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp938.i, label %for.cond8.preheader.i.for.body10.i_crit_edge, label %for.cond8.preheader.i.changed_crit_edge

for.cond8.preheader.i.changed_crit_edge:          ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

for.cond8.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body10.i

for.body.i107:                                    ; preds = %bforget.exit.i111.for.body.i107_crit_edge, %changed.i.for.body.i107_crit_edge
  %i.037.i = phi i32 [ %inc.i109, %bforget.exit.i111.for.body.i107_crit_edge ], [ 1, %changed.i.for.body.i107_crit_edge ]
  %bh7.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %i.037.i, i32 2
  %101 = ptrtoint ptr %bh7.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bh7.i, align 4
  %tobool.not.i.i106 = icmp eq ptr %102, null
  br i1 %tobool.not.i.i106, label %for.body.i107.bforget.exit.i111_crit_edge, label %if.then.i.i108

for.body.i107.bforget.exit.i111_crit_edge:        ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %bforget.exit.i111

if.then.i.i108:                                   ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  call void @__bforget(ptr noundef nonnull %102) #7
  br label %bforget.exit.i111

bforget.exit.i111:                                ; preds = %if.then.i.i108, %for.body.i107.bforget.exit.i111_crit_edge
  %inc.i109 = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i109, %sub.ptr.div
  br i1 %exitcond.not.i110, label %bforget.exit.i111.for.cond8.preheader.i_crit_edge, label %bforget.exit.i111.for.body.i107_crit_edge

bforget.exit.i111.for.body.i107_crit_edge:        ; preds = %bforget.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i107

bforget.exit.i111.for.cond8.preheader.i_crit_edge: ; preds = %bforget.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond8.preheader.i.for.body10.i_crit_edge
  %i.139.i = phi i32 [ %inc15.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body10.i_crit_edge ]
  %key12.i = getelementptr %struct.Indirect, ptr %retval.0.i126, i32 %i.139.i, i32 1
  %103 = ptrtoint ptr %key12.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %key12.i, align 4
  call void @minix_free_block(ptr noundef %inode, i32 noundef %104) #7
  %inc15.i = add nuw nsw i32 %i.139.i, 1
  %exitcond40.not.i = icmp eq i32 %inc15.i, %sub.ptr.div
  br i1 %exitcond40.not.i, label %for.body10.i.changed_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.body10.i.changed_crit_edge:                   ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %changed

if.end42:                                         ; preds = %if.then4.i, %if.end.i105.if.end42_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  %105 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %bh, align 4
  %107 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.got_it_crit_edge

if.end42.got_it_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %got_it

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 5, ptr noundef %bh) #7
  br label %got_it

changed:                                          ; preds = %for.body10.i.changed_crit_edge, %for.cond8.preheader.i.changed_crit_edge, %lor.lhs.false.changed_crit_edge
  %cmp45149 = icmp ugt ptr %retval.0.i126, %chain
  br i1 %cmp45149, label %changed.while.body47_crit_edge, label %changed.reread.backedge_crit_edge

changed.reread.backedge_crit_edge:                ; preds = %changed
  call void @__sanitizer_cov_trace_pc() #9
  br label %reread.backedge

changed.while.body47_crit_edge:                   ; preds = %changed
  br label %while.body47

reread.backedge:                                  ; preds = %brelse.exit116.reread.backedge_crit_edge, %changed.reread.backedge_crit_edge
  br label %reread

while.body47:                                     ; preds = %brelse.exit116.while.body47_crit_edge, %changed.while.body47_crit_edge
  %partial.2150 = phi ptr [ %incdec.ptr49, %brelse.exit116.while.body47_crit_edge ], [ %retval.0.i126, %changed.while.body47_crit_edge ]
  %bh48 = getelementptr inbounds %struct.Indirect, ptr %partial.2150, i32 0, i32 2
  %108 = ptrtoint ptr %bh48 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bh48, align 4
  %tobool.not.i113 = icmp eq ptr %109, null
  br i1 %tobool.not.i113, label %while.body47.brelse.exit116_crit_edge, label %if.then.i114

while.body47.brelse.exit116_crit_edge:            ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit116

if.then.i114:                                     ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %109) #7
  br label %brelse.exit116

brelse.exit116:                                   ; preds = %if.then.i114, %while.body47.brelse.exit116_crit_edge
  %incdec.ptr49 = getelementptr %struct.Indirect, ptr %partial.2150, i32 -1
  %cmp45 = icmp ugt ptr %incdec.ptr49, %chain
  br i1 %cmp45, label %brelse.exit116.while.body47_crit_edge, label %brelse.exit116.reread.backedge_crit_edge

brelse.exit116.reread.backedge_crit_edge:         ; preds = %brelse.exit116
  call void @__sanitizer_cov_trace_pc() #9
  br label %reread.backedge

brelse.exit116.while.body47_crit_edge:            ; preds = %brelse.exit116
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @V2_minix_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %offsets.i = alloca [4 x i32], align 4
  %chain.i = alloca [4 x %struct.Indirect], align 4
  %nr.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets.i) #7
  %2 = call ptr @memset(ptr %offsets.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain.i) #7
  %3 = call ptr @memset(ptr %chain.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr.i) #7
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %7 to i64
  %add.i = add i64 %5, -1
  %sub.i = add i64 %add.i, %conv.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %9 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping.i, align 8
  %call4.i = tail call i32 @block_truncate_page(ptr noundef %11, i64 noundef %5, ptr noundef nonnull @get_block) #7
  %call5.i = call fastcc i32 @block_to_path(ptr noundef %inode, i32 noundef %conv2.i, ptr noundef nonnull %offsets.i) #7
  %12 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call5.i, label %if.end9.i [
    i32 0, label %entry.truncate.exit_crit_edge
    i32 1, label %if.then7.i
  ]

entry.truncate.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %truncate.exit

if.then7.i:                                       ; preds = %entry
  %13 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offsets.i, align 4
  %add.ptr.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %14
  %add.ptr8.i = getelementptr i8, ptr %inode, i32 -36
  %cmp5.i.i = icmp ult ptr %add.ptr.i, %add.ptr8.i
  br i1 %cmp5.i.i, label %if.then7.i.for.body.i.i_crit_edge, label %if.then7.i.while.body46.lr.ph.i_crit_edge

if.then7.i.while.body46.lr.ph.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46.lr.ph.i

if.then7.i.for.body.i.i_crit_edge:                ; preds = %if.then7.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then7.i.for.body.i.i_crit_edge
  %p.addr.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i, %if.then7.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %p.addr.06.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p.addr.06.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %p.addr.06.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %p.addr.06.i.i, align 4
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %16) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i32, ptr %p.addr.06.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr8.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.while.body46.lr.ph.i_crit_edge

for.inc.i.i.while.body46.lr.ph.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46.lr.ph.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end9.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offsets.i, align 4
  %sub12.i = add i32 %19, -6
  %20 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nr.i, align 4
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 1) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %if.end9.i
  %k.0.i.i = phi i32 [ %call5.i, %if.end9.i ], [ %sub.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.0.i.i)
  %cmp.i104.i = icmp sgt i32 %k.0.i.i, 1
  br i1 %cmp.i104.i, label %land.rhs.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %sub.i.i = add nsw i32 %k.0.i.i, -1
  %arrayidx.i.i = getelementptr i32, ptr %offsets.i, i32 %sub.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i105.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i105.i, label %land.rhs.i.i.for.cond.i.i_crit_edge, label %land.rhs.i.i.for.end.i.i_crit_edge

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.rhs.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %k.0.lcssa.i.i = phi i32 [ %smin.i.i, %for.cond.i.i.for.end.i.i_crit_edge ], [ %k.0.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i106.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %19
  %25 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i106.i, ptr %chain.i, align 4
  %26 = ptrtoint ptr %add.ptr.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i106.i, align 4
  %key.i.i.i.i = getelementptr inbounds %struct.Indirect, ptr %chain.i, i32 0, i32 1
  %28 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %key.i.i.i.i, align 4
  %bh2.i.i.i.i = getelementptr inbounds %struct.Indirect, ptr %chain.i, i32 0, i32 2
  %29 = ptrtoint ptr %bh2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %bh2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.get_branch.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i

for.end.i.i.get_branch.exit.i.i_crit_edge:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit.i.i

while.cond.preheader.i.i.i:                       ; preds = %for.end.i.i
  %s_bdev.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 26
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 3
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end11.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.preheader.i.i.i
  %offsets.addr.0.i.i.i = phi ptr [ %incdec.ptr12.i.i.i, %if.end11.i.i.i.while.cond.i.i.i_crit_edge ], [ %offsets.i, %while.cond.preheader.i.i.i ]
  %depth.addr.0.i.i.i = phi i32 [ %dec.i.i.i, %if.end11.i.i.i.while.cond.i.i.i_crit_edge ], [ %k.0.lcssa.i.i, %while.cond.preheader.i.i.i ]
  %p.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end11.i.i.i.while.cond.i.i.i_crit_edge ], [ %chain.i, %while.cond.preheader.i.i.i ]
  %dec.i.i.i = add i32 %depth.addr.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %while.cond.i.i.i.get_branch.exit.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.get_branch.exit.i.i_crit_edge:   ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %key2.i.i.i = getelementptr inbounds %struct.Indirect, ptr %p.0.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %key2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key2.i.i.i, align 4
  %conv.i.i.i = zext i32 %31 to i64
  %32 = ptrtoint ptr %s_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_bdev.i.i.i.i, align 4
  %34 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %call.i.i.i.i = call ptr @__bread_gfp(ptr noundef %33, i64 noundef %conv.i.i.i, i32 noundef %35, i32 noundef 8) #7
  %tobool5.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %while.body.i.i.i.get_branch.exit.i.i_crit_edge, label %if.end7.i.i.i

while.body.i.i.i.get_branch.exit.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit.i.i

if.end7.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #7
  %cmp.not8.i.i.i.i = icmp ult ptr %p.0.i.i.i, %chain.i
  br i1 %cmp.not8.i.i.i.i, label %if.end7.i.i.i.if.end11.i.i.i_crit_edge, label %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge

if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i
  br label %land.rhs.i.i.i.i

if.end7.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge
  %from.addr.09.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %chain.i, %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %key.i34.i.i.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %key.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key.i34.i.i.i, align 4
  %38 = ptrtoint ptr %from.addr.09.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %from.addr.09.i.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %41)
  %cmp1.i.i.i.i = icmp eq i32 %37, %41
  %incdec.ptr.i.i.i.i = getelementptr %struct.Indirect, ptr %from.addr.09.i.i.i.i, i32 1
  %cmp.not.i.i.i.i = icmp ule ptr %incdec.ptr.i.i.i.i, %p.0.i.i.i
  %42 = and i1 %cmp.not.i.i.i.i, %cmp1.i.i.i.i
  br i1 %42, label %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, label %verify_chain.exit.i.i.i

land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i.i

verify_chain.exit.i.i.i:                          ; preds = %land.rhs.i.i.i.i
  br i1 %cmp1.i.i.i.i, label %verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge, label %brelse.exit.i.i.i

verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge: ; preds = %verify_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge, %if.end7.i.i.i.if.end11.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i.i.i, align 4
  %incdec.ptr12.i.i.i = getelementptr i32, ptr %offsets.addr.0.i.i.i, i32 1
  %45 = ptrtoint ptr %incdec.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %incdec.ptr12.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr i32, ptr %44, i32 %46
  %47 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr13.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  %48 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr13.i.i.i, align 4
  %key.i35.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1, i32 1
  %50 = ptrtoint ptr %key.i35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %key.i35.i.i.i, align 4
  %bh2.i36.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1, i32 2
  %51 = ptrtoint ptr %bh2.i36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i.i.i, ptr %bh2.i36.i.i.i, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #7
  %52 = ptrtoint ptr %key.i35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %key.i35.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool15.not.i.i.i, label %if.end11.i.i.i.get_branch.exit.i.i_crit_edge, label %if.end11.i.i.i.while.cond.i.i.i_crit_edge

if.end11.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

if.end11.i.i.i.get_branch.exit.i.i_crit_edge:     ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_branch.exit.i.i

brelse.exit.i.i.i:                                ; preds = %verify_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #7
  call void @__brelse(ptr noundef nonnull %call.i.i.i.i) #7
  br label %get_branch.exit.i.i

get_branch.exit.i.i:                              ; preds = %brelse.exit.i.i.i, %if.end11.i.i.i.get_branch.exit.i.i_crit_edge, %while.body.i.i.i.get_branch.exit.i.i_crit_edge, %while.cond.i.i.i.get_branch.exit.i.i_crit_edge, %for.end.i.i.get_branch.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %chain.i, %for.end.i.i.get_branch.exit.i.i_crit_edge ], [ %p.0.i.i.i, %brelse.exit.i.i.i ], [ %p.0.i.i.i, %while.body.i.i.i.get_branch.exit.i.i_crit_edge ], [ null, %while.cond.i.i.i.get_branch.exit.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %if.end11.i.i.i.get_branch.exit.i.i_crit_edge ]
  call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #7
  %tobool1.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  %add.ptr.i.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %k.0.lcssa.i.i
  %add.ptr2.i.i = getelementptr %struct.Indirect, ptr %add.ptr.i.i, i32 -1
  %partial.0.i.i = select i1 %tobool1.not.i.i, ptr %add.ptr2.i.i, ptr %retval.0.i.i.i
  %add.ptr2.i.sroa.gep.i = getelementptr inbounds %struct.Indirect, ptr %add.ptr2.i.i, i32 0, i32 1
  %retval.0.i.i.sroa.gep.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i.i.i, i32 0, i32 1
  %partial.0.i.sroa.sel.i = select i1 %tobool1.not.i.i, ptr %add.ptr2.i.sroa.gep.i, ptr %retval.0.i.i.sroa.gep.i
  %54 = ptrtoint ptr %partial.0.i.sroa.sel.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %partial.0.i.sroa.sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %get_branch.exit.i.i.if.end7.i.i_crit_edge

get_branch.exit.i.i.if.end7.i.i_crit_edge:        ; preds = %get_branch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %get_branch.exit.i.i
  %56 = ptrtoint ptr %partial.0.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %partial.0.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool5.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #7
  br label %find_shared.exit.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %get_branch.exit.i.i.if.end7.i.i_crit_edge
  %cmp976.i.i = icmp ugt ptr %partial.0.i.i, %chain.i
  br i1 %cmp976.i.i, label %if.end7.i.i.land.rhs10.i.i_crit_edge, label %if.end7.i.i.if.else.i.i_crit_edge

if.end7.i.i.if.else.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.end7.i.i.land.rhs10.i.i_crit_edge:             ; preds = %if.end7.i.i
  br label %land.rhs10.i.i

land.rhs10.i.i:                                   ; preds = %for.inc16.i.i.land.rhs10.i.i_crit_edge, %if.end7.i.i.land.rhs10.i.i_crit_edge
  %p.077.i.i = phi ptr [ %incdec.ptr.i107.i, %for.inc16.i.i.land.rhs10.i.i_crit_edge ], [ %partial.0.i.i, %if.end7.i.i.land.rhs10.i.i_crit_edge ]
  %bh.i.i = getelementptr inbounds %struct.Indirect, ptr %p.077.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data.i.i, align 4
  %64 = ptrtoint ptr %p.077.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p.077.i.i, align 4
  br label %while.cond.i59.i.i

while.cond.i59.i.i:                               ; preds = %while.body.i62.i.i.while.cond.i59.i.i_crit_edge, %land.rhs10.i.i
  %p.addr.0.i.i.i = phi ptr [ %63, %land.rhs10.i.i ], [ %incdec.ptr.i60.i.i, %while.body.i62.i.i.while.cond.i59.i.i_crit_edge ]
  %cmp.i.i.i = icmp ult ptr %p.addr.0.i.i.i, %65
  br i1 %cmp.i.i.i, label %while.body.i62.i.i, label %for.inc16.i.i

while.body.i62.i.i:                               ; preds = %while.cond.i59.i.i
  %incdec.ptr.i60.i.i = getelementptr i32, ptr %p.addr.0.i.i.i, i32 1
  %66 = ptrtoint ptr %p.addr.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p.addr.0.i.i.i, align 4
  %tobool.not.i61.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i61.i.i, label %while.body.i62.i.i.while.cond.i59.i.i_crit_edge, label %for.end17.i.i

while.body.i62.i.i.while.cond.i59.i.i_crit_edge:  ; preds = %while.body.i62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i59.i.i

for.inc16.i.i:                                    ; preds = %while.cond.i59.i.i
  %incdec.ptr.i107.i = getelementptr %struct.Indirect, ptr %p.077.i.i, i32 -1
  %cmp9.i.i = icmp ugt ptr %incdec.ptr.i107.i, %chain.i
  br i1 %cmp9.i.i, label %for.inc16.i.i.land.rhs10.i.i_crit_edge, label %for.inc16.i.i.if.else.i.i_crit_edge

for.inc16.i.i.if.else.i.i_crit_edge:              ; preds = %for.inc16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

for.inc16.i.i.land.rhs10.i.i_crit_edge:           ; preds = %for.inc16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs10.i.i

for.end17.i.i:                                    ; preds = %while.body.i62.i.i
  %cmp20.i.i = icmp eq ptr %p.077.i.i, %add.ptr2.i.i
  br i1 %cmp20.i.i, label %if.then23.i.i, label %for.end17.i.i.if.else.i.i_crit_edge

for.end17.i.i.if.else.i.i_crit_edge:              ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then23.i.i:                                    ; preds = %for.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr2.i.i, align 4
  %incdec.ptr25.i.i = getelementptr i32, ptr %69, i32 -1
  store ptr %incdec.ptr25.i.i, ptr %add.ptr2.i.i, align 4
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %for.end17.i.i.if.else.i.i_crit_edge, %for.inc16.i.i.if.else.i.i_crit_edge, %if.end7.i.i.if.else.i.i_crit_edge
  %p.073.i.i = phi ptr [ %p.077.i.i, %for.end17.i.i.if.else.i.i_crit_edge ], [ %partial.0.i.i, %if.end7.i.i.if.else.i.i_crit_edge ], [ %incdec.ptr.i107.i, %for.inc16.i.i.if.else.i.i_crit_edge ]
  %70 = ptrtoint ptr %p.073.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p.073.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %nr.i, align 4
  %75 = load ptr, ptr %p.073.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %75, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else.i.i, %if.then23.i.i
  %p.074.i.i = phi ptr [ %p.073.i.i, %if.else.i.i ], [ %add.ptr2.i.i, %if.then23.i.i ]
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #7
  %cmp2979.i.i = icmp ugt ptr %partial.0.i.i, %p.074.i.i
  br i1 %cmp2979.i.i, label %if.end28.i.i.while.body.i.i_crit_edge, label %if.end28.i.i.find_shared.exit.i_crit_edge

if.end28.i.i.find_shared.exit.i_crit_edge:        ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_shared.exit.i

if.end28.i.i.while.body.i.i_crit_edge:            ; preds = %if.end28.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %brelse.exit.i.i.while.body.i.i_crit_edge, %if.end28.i.i.while.body.i.i_crit_edge
  %partial.180.i.i = phi ptr [ %incdec.ptr31.i.i, %brelse.exit.i.i.while.body.i.i_crit_edge ], [ %partial.0.i.i, %if.end28.i.i.while.body.i.i_crit_edge ]
  %bh30.i.i = getelementptr inbounds %struct.Indirect, ptr %partial.180.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %bh30.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bh30.i.i, align 4
  %tobool.not.i64.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i64.i.i, label %while.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

while.body.i.i.brelse.exit.i.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %78) #7
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %while.body.i.i.brelse.exit.i.i_crit_edge
  %incdec.ptr31.i.i = getelementptr %struct.Indirect, ptr %partial.180.i.i, i32 -1
  %cmp29.i.i = icmp ugt ptr %incdec.ptr31.i.i, %p.074.i.i
  br i1 %cmp29.i.i, label %brelse.exit.i.i.while.body.i.i_crit_edge, label %brelse.exit.i.i.find_shared.exit.i_crit_edge

brelse.exit.i.i.find_shared.exit.i_crit_edge:     ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_shared.exit.i

brelse.exit.i.i.while.body.i.i_crit_edge:         ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

find_shared.exit.i:                               ; preds = %brelse.exit.i.i.find_shared.exit.i_crit_edge, %if.end28.i.i.find_shared.exit.i_crit_edge, %if.then6.i.i
  %partial.2.i.i = phi ptr [ %partial.0.i.i, %if.then6.i.i ], [ %partial.0.i.i, %if.end28.i.i.find_shared.exit.i_crit_edge ], [ %incdec.ptr31.i.i, %brelse.exit.i.i.find_shared.exit.i_crit_edge ]
  %79 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool16.not.i = icmp eq i32 %80, 0
  br i1 %tobool16.not.i, label %find_shared.exit.i.if.end27.i_crit_edge, label %if.then17.i

find_shared.exit.i.if.end27.i_crit_edge:          ; preds = %find_shared.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then17.i:                                      ; preds = %find_shared.exit.i
  %cmp19.i = icmp eq ptr %partial.2.i.i, %chain.i
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %partial.2.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %82, ptr noundef %inode) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then21.i
  %add.ptr23.i = getelementptr inbounds i32, ptr %nr.i, i32 1
  %add.ptr25.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %call5.i
  %add.ptr26.i = getelementptr %struct.Indirect, ptr %add.ptr25.i, i32 -1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr26.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %partial.2.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr.i, ptr noundef %add.ptr23.i, i32 noundef %sub.ptr.div.i) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end22.i, %find_shared.exit.i.if.end27.i_crit_edge
  %cmp29115.i = icmp ugt ptr %partial.2.i.i, %chain.i
  br i1 %cmp29115.i, label %while.body.lr.ph.i, label %if.end27.i.do_indirects.i_crit_edge

if.end27.i.do_indirects.i_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_indirects.i

while.body.lr.ph.i:                               ; preds = %if.end27.i
  %add.ptr35.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %call5.i
  %add.ptr36.i = getelementptr %struct.Indirect, ptr %add.ptr35.i, i32 -1
  %sub.ptr.lhs.cast37.i = ptrtoint ptr %add.ptr36.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %partial.0116.i = phi ptr [ %partial.2.i.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %brelse.exit.i.while.body.i_crit_edge ]
  %83 = ptrtoint ptr %partial.0116.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %partial.0116.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %84, i32 1
  %bh32.i = getelementptr inbounds %struct.Indirect, ptr %partial.0116.i, i32 0, i32 2
  %85 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bh32.i, align 4
  %b_data.i108.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i108.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i108.i, align 4
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 4
  %89 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %b_size.i.i, align 8
  %add.ptr.i109.i = getelementptr i8, ptr %88, i32 %90
  %sub.ptr.rhs.cast38.i = ptrtoint ptr %partial.0116.i to i32
  %sub.ptr.sub39.i = sub i32 %sub.ptr.lhs.cast37.i, %sub.ptr.rhs.cast38.i
  %sub.ptr.div40.i = sdiv exact i32 %sub.ptr.sub39.i, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef %add.ptr31.i, ptr noundef %add.ptr.i109.i, i32 noundef %sub.ptr.div40.i) #7
  %91 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bh32.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %92, ptr noundef %inode) #7
  %93 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bh32.i, align 4
  %tobool.not.i110.i = icmp eq ptr %94, null
  br i1 %tobool.not.i110.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i111.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit.i

if.then.i111.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %94) #7
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i111.i, %while.body.i.brelse.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %partial.0116.i, i32 -1
  %cmp29.i = icmp ugt ptr %incdec.ptr.i, %chain.i
  br i1 %cmp29.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.do_indirects.i_crit_edge

brelse.exit.i.do_indirects.i_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_indirects.i

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do_indirects.i:                                   ; preds = %brelse.exit.i.do_indirects.i_crit_edge, %if.end27.i.do_indirects.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub12.i)
  %cmp44117.i = icmp slt i32 %sub12.i, 3
  br i1 %cmp44117.i, label %do_indirects.i.while.body46.lr.ph.i_crit_edge, label %do_indirects.i.while.end56.i_crit_edge

do_indirects.i.while.end56.i_crit_edge:           ; preds = %do_indirects.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end56.i

do_indirects.i.while.body46.lr.ph.i_crit_edge:    ; preds = %do_indirects.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46.lr.ph.i

while.body46.lr.ph.i:                             ; preds = %do_indirects.i.while.body46.lr.ph.i_crit_edge, %for.inc.i.i.while.body46.lr.ph.i_crit_edge, %if.then7.i.while.body46.lr.ph.i_crit_edge
  %first_whole.0125.i = phi i32 [ %sub12.i, %do_indirects.i.while.body46.lr.ph.i_crit_edge ], [ 0, %if.then7.i.while.body46.lr.ph.i_crit_edge ], [ 0, %for.inc.i.i.while.body46.lr.ph.i_crit_edge ]
  %add.ptr53.i = getelementptr inbounds i32, ptr %nr.i, i32 1
  br label %while.body46.i

while.body46.i:                                   ; preds = %if.end55.i.while.body46.i_crit_edge, %while.body46.lr.ph.i
  %first_whole.1118.i = phi i32 [ %first_whole.0125.i, %while.body46.lr.ph.i ], [ %inc.pre-phi.i, %if.end55.i.while.body46.i_crit_edge ]
  %add47.i = add nsw i32 %first_whole.1118.i, 7
  %arrayidx48.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %add47.i
  %95 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx48.i, align 4
  %97 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool49.not.i = icmp eq i32 %96, 0
  br i1 %tobool49.not.i, label %while.body46.if.end55_crit_edge.i, label %if.then50.i

while.body46.if.end55_crit_edge.i:                ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = add i32 %first_whole.1118.i, 1
  br label %if.end55.i

if.then50.i:                                      ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx48.i, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  %add54.i = add i32 %first_whole.1118.i, 1
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr.i, ptr noundef %add.ptr53.i, i32 noundef %add54.i) #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then50.i, %while.body46.if.end55_crit_edge.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %while.body46.if.end55_crit_edge.i ], [ %add54.i, %if.then50.i ]
  %exitcond.not.i = icmp eq i32 %inc.pre-phi.i, 3
  br i1 %exitcond.not.i, label %if.end55.i.while.end56.i_crit_edge, label %if.end55.i.while.body46.i_crit_edge

if.end55.i.while.body46.i_crit_edge:              ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body46.i

if.end55.i.while.end56.i_crit_edge:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end56.i

while.end56.i:                                    ; preds = %if.end55.i.while.end56.i_crit_edge, %do_indirects.i.while.end56.i_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #7
  %99 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %100 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %truncate.exit

truncate.exit:                                    ; preds = %while.end56.i, %entry.truncate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets.i) #7
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @V2_minix_blocks(i64 noundef %size, ptr nocapture noundef readonly %sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_blocksize_bits.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %conv1.i = zext i32 %3 to i64
  %add.i = add i64 %size, -1
  %sub2.i = add i64 %add.i, %conv1.i
  %sh_prom.i = zext i8 %1 to i64
  %shr.i = ashr i64 %sub2.i, %sh_prom.i
  %conv4.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv4.i)
  %cmp25.i = icmp ugt i32 %conv4.i, 7
  br i1 %cmp25.i, label %while.body.lr.ph.i, label %entry.nblocks.exit_crit_edge

entry.nblocks.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nblocks.exit

while.body.lr.ph.i:                               ; preds = %entry
  %div24.i = lshr i32 %3, 2
  %sub8.peel.i = add nsw i32 %div24.i, -8
  %add9.peel.i = add i32 %sub8.peel.i, %conv4.i
  %div12.peel.i = udiv i32 %add9.peel.i, %div24.i
  %add13.peel.i = add i32 %div12.peel.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div12.peel.i)
  %cmp.peel.i = icmp ugt i32 %div12.peel.i, 1
  br i1 %cmp.peel.i, label %while.body.i.preheader, label %while.body.lr.ph.i.nblocks.exit_crit_edge

while.body.lr.ph.i.nblocks.exit_crit_edge:        ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nblocks.exit

while.body.i.preheader:                           ; preds = %while.body.lr.ph.i
  %sub8.i = add nsw i32 %div24.i, -2
  %add9.i = add i32 %sub8.i, %div12.peel.i
  %div12.i = udiv i32 %add9.i, %div24.i
  %add13.i = add i32 %div12.i, %add13.peel.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div12.i)
  %cmp.i = icmp ugt i32 %div12.i, 1
  br i1 %cmp.i, label %while.body.i.1, label %while.body.i.preheader.nblocks.exit_crit_edge, !llvm.loop !22

while.body.i.preheader.nblocks.exit_crit_edge:    ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %nblocks.exit

while.body.i.1:                                   ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add9.i.1 = add i32 %sub8.i, %div12.i
  %div12.i.1 = udiv i32 %add9.i.1, %div24.i
  %add13.i.1 = add i32 %div12.i.1, %add13.i
  br label %nblocks.exit

nblocks.exit:                                     ; preds = %while.body.i.1, %while.body.i.preheader.nblocks.exit_crit_edge, %while.body.lr.ph.i.nblocks.exit_crit_edge, %entry.nblocks.exit_crit_edge
  %res.0.lcssa.i = phi i32 [ %conv4.i, %entry.nblocks.exit_crit_edge ], [ %add13.peel.i, %while.body.lr.ph.i.nblocks.exit_crit_edge ], [ %add13.i, %while.body.i.preheader.nblocks.exit_crit_edge ], [ %add13.i.1, %while.body.i.1 ]
  ret i32 %res.0.lcssa.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @block_to_path(ptr nocapture noundef readonly %inode, i32 noundef %block, ptr nocapture noundef writeonly %offsets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block)
  %cmp = icmp slt i32 %block, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %block, ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv145 = zext i32 %block to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %conv1 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv1, %conv145
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %7)
  %cmp2.not = icmp ult i64 %mul, %7
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %block)
  %cmp6 = icmp ult i32 %block, 7
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %block, ptr %offsets, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %sub = add nsw i32 %block, -7
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %conv9 = zext i8 %10 to i32
  %sub10 = add nsw i32 %conv9, -2
  %shl = shl nuw i32 1, %sub10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp11 = icmp slt i32 %sub, %shl
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %offsets, align 4
  %arrayidx17 = getelementptr i32, ptr %offsets, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %arrayidx17, align 4
  br label %cleanup

if.else18:                                        ; preds = %if.else
  %sub23 = sub i32 %sub, %shl
  %mul32 = shl i32 %shl, %sub10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul32)
  %cmp33 = icmp slt i32 %sub23, %mul32
  br i1 %cmp33, label %if.then35, label %if.else50

if.then35:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %offsets, align 4
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %conv39 = zext i8 %15 to i32
  %sub40 = add nsw i32 %conv39, -2
  %shl41 = shl nuw i32 1, %sub40
  %div = sdiv i32 %sub23, %shl41
  %arrayidx43 = getelementptr i32, ptr %offsets, i32 1
  %16 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %arrayidx43, align 4
  %17 = load i8, ptr %s_blocksize_bits, align 4
  %conv45 = zext i8 %17 to i32
  %sub46 = add nsw i32 %conv45, -2
  %shl47 = shl nuw i32 1, %sub46
  %rem = srem i32 %sub23, %shl47
  %arrayidx49 = getelementptr i32, ptr %offsets, i32 2
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rem, ptr %arrayidx49, align 4
  br label %cleanup

if.else50:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %sub60 = sub i32 %sub23, %mul32
  %19 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9, ptr %offsets, align 4
  %20 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits, align 4
  %conv64 = zext i8 %21 to i32
  %sub65 = add nsw i32 %conv64, -2
  %shl66 = shl nuw i32 1, %sub65
  %div67 = sdiv i32 %sub60, %shl66
  %div72 = sdiv i32 %div67, %shl66
  %arrayidx74 = getelementptr i32, ptr %offsets, i32 1
  %22 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div72, ptr %arrayidx74, align 4
  %23 = load i8, ptr %s_blocksize_bits, align 4
  %conv76 = zext i8 %23 to i32
  %sub77 = add nsw i32 %conv76, -2
  %shl78 = shl nuw i32 1, %sub77
  %div79 = sdiv i32 %sub60, %shl78
  %rem84 = srem i32 %div79, %shl78
  %arrayidx86 = getelementptr i32, ptr %offsets, i32 2
  %24 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem84, ptr %arrayidx86, align 4
  %25 = load i8, ptr %s_blocksize_bits, align 4
  %conv88 = zext i8 %25 to i32
  %sub89 = add nsw i32 %conv88, -2
  %shl90 = shl nuw i32 1, %sub89
  %rem91 = srem i32 %sub60, %shl90
  %arrayidx93 = getelementptr i32, ptr %offsets, i32 3
  %26 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rem91, ptr %arrayidx93, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then35, %if.then13, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then8 ], [ 2, %if.then13 ], [ 3, %if.then35 ], [ 4, %if.else50 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minix_new_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @minix_free_block(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_branches(ptr noundef %inode, ptr noundef %p, ptr noundef readnone %q, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  %cmp5.i = icmp ult ptr %p, %q
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp5.i, label %for.body.lr.ph, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.addr.028 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.addr.028 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p.addr.028, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %p.addr.028 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %p.addr.028, align 4
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %conv = zext i32 %1 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %conv, i32 noundef %8, i32 noundef 8) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %bforget.exit

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

bforget.exit:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %b_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  tail call fastcc void @free_branches(ptr noundef %inode, ptr noundef %10, ptr noundef %add.ptr.i, i32 noundef %dec)
  tail call void @__bforget(ptr noundef nonnull %call.i) #7
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %1) #7
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #7
  br label %for.inc

for.inc:                                          ; preds = %bforget.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %p.addr.028, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %q
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end8_crit_edge

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else:                                          ; preds = %entry
  br i1 %cmp5.i, label %if.else.for.body.i_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %p.addr.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %p, %if.else.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %p.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p.addr.06.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i24 = icmp eq i32 %14, 0
  br i1 %tobool.not.i24, label %for.body.i.for.inc.i_crit_edge, label %if.then.i25

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i25:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %p.addr.06.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %p.addr.06.i, align 4
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %14) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i25, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.06.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %q
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %if.else.if.end8_crit_edge, %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/minix/itree_v2.c", i32 33, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @block_to_path._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @block_to_path._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/minix/itree_common.c", i32 10, i32 8}
!8 = !{ptr @pointers_lock, !7, !"pointers_lock", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148674808, i64 2148674840, i64 2148674869, i64 2148674903, i64 2148674934, i64 2148674957}
!21 = !{i64 2148763913}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
