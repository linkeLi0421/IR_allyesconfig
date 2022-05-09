; ModuleID = '/llk/IR_all_yes/fs/minix/itree_v1.c_pt.bc'
source_filename = "../fs/minix/itree_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.Indirect = type { ptr, i16, ptr }
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

@block_to_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MINIX-fs: block_to_path: block %ld < 0 on dev %pg\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block_to_path\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/minix/itree_v1.c\00", [44 x i8] zeroinitializer }, align 32
@block_to_path._entry_ptr = internal global ptr @block_to_path._entry, section ".printk_index", align 4
@pointers_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pointers_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967291]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private constant [23 x i8] c"../fs/minix/itree_v1.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 30, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"pointers_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../fs/minix/itree_common.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 10, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 366, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @block_to_path._entry, ptr @block_to_path._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pointers_lock, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pointers_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @V1_minix_get_block(ptr noundef %inode, i32 noundef %block, ptr noundef %bh_result, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %block to i64
  %call = tail call i32 @get_block(ptr noundef %inode, i64 noundef %conv, ptr noundef %bh_result, i32 noundef %create)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh, i32 noundef %create) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %offsets = alloca [3 x i32], align 4
  %chain = alloca [3 x %struct.Indirect], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %offsets) #6
  %0 = getelementptr inbounds [3 x i32], ptr %offsets, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !20
  %2 = getelementptr inbounds [3 x i32], ptr %offsets, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %chain) #6
  %4 = getelementptr inbounds i8, ptr %chain, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 32)
  %conv = trunc i64 %block to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i = icmp slt i32 %conv, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, ptr noundef %9) #9
  br label %out

if.end.i:                                         ; preds = %entry
  %conv47.i = shl i64 %block, 10
  %mul.i = and i64 %conv47.i, 4398046510080
  %i_sb1.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb1.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %13)
  %cmp2.not.i = icmp ult i64 %mul.i, %13
  br i1 %cmp2.not.i, label %if.end5.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv)
  %cmp6.i = icmp ult i32 %conv, 7
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %offsets, align 4
  br label %block_to_path.exit

if.else.i:                                        ; preds = %if.end5.i
  %sub.i = add nsw i32 %conv, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i)
  %cmp9.i = icmp ult i32 %sub.i, 512
  br i1 %cmp9.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7, ptr %offsets, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %0, align 4
  br label %block_to_path.exit

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i = add nsw i32 %conv, -519
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %offsets, align 4
  %shr48.i = lshr i32 %sub17.i, 9
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr48.i, ptr %0, align 4
  %and.i = and i32 %sub17.i, 511
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i, ptr %2, align 4
  br label %block_to_path.exit

block_to_path.exit:                               ; preds = %if.else16.i, %if.then11.i, %if.then8.i
  %tobool1.not.i.2 = phi i1 [ false, %if.then8.i ], [ false, %if.then11.i ], [ true, %if.else16.i ]
  %tobool1.not.i.1 = phi i1 [ false, %if.then8.i ], [ true, %if.then11.i ], [ false, %if.else16.i ]
  %retval.0.i = phi i32 [ 1, %if.then8.i ], [ 2, %if.then11.i ], [ 3, %if.else16.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -64
  %key.i.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %bh2.i.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool11.not = icmp eq i32 %create, 0
  %add.ptr25 = getelementptr %struct.Indirect, ptr %chain, i32 %retval.0.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.rhs.cast29 = ptrtoint ptr %chain to i32
  %key2.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %incdec.ptr.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 1
  %incdec.ptr12.i = getelementptr inbounds i32, ptr %offsets, i32 1
  %key.i35.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 1, i32 1
  %bh2.i36.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 1, i32 2
  %key2.i.1 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 1, i32 1
  %incdec.ptr.i.1 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 2
  %incdec.ptr12.i.1 = getelementptr inbounds i32, ptr %offsets, i32 2
  %key.i35.i.1 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 2, i32 1
  %bh2.i36.i.1 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 2, i32 2
  %key2.i.2 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 2, i32 1
  %incdec.ptr.i.2 = getelementptr inbounds %struct.Indirect, ptr %chain, i32 3
  %incdec.ptr12.i.2 = getelementptr inbounds i32, ptr %offsets, i32 3
  %key.i35.i.2 = getelementptr %struct.Indirect, ptr %chain, i32 3, i32 1
  %bh2.i36.i.2 = getelementptr %struct.Indirect, ptr %chain, i32 3, i32 2
  br label %reread

reread:                                           ; preds = %reread.backedge, %block_to_path.exit
  %20 = ptrtoint ptr %i_sb1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb1.i, align 4
  %22 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offsets, align 4
  %add.ptr.i = getelementptr i16, ptr %add.ptr.i.i.i, i32 %23
  %24 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %chain, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %27 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %key.i.i, align 4
  %28 = ptrtoint ptr %bh2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bh2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i78 = icmp eq i16 %26, 0
  br i1 %tobool.not.i78, label %reread.if.end10_crit_edge, label %while.cond.preheader.i

reread.if.end10_crit_edge:                        ; preds = %reread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

while.cond.preheader.i:                           ; preds = %reread
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 3
  br i1 %cmp6.i, label %while.cond.preheader.i.got_it_crit_edge, label %while.body.i

while.cond.preheader.i.got_it_crit_edge:          ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

while.body.i:                                     ; preds = %while.cond.preheader.i
  %29 = ptrtoint ptr %key2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %key2.i, align 4
  %conv.i = zext i16 %30 to i64
  %31 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_bdev.i.i, align 4
  %33 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %32, i64 noundef %conv.i, i32 noundef %34, i32 noundef 8) #6
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %while.body.i.get_branch.exit_crit_edge, label %if.end7.i

while.body.i.get_branch.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit

if.end7.i:                                        ; preds = %while.body.i
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %if.end7.i
  %from.addr.012.i.i = phi ptr [ %incdec.ptr.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %chain, %if.end7.i ]
  %key.i34.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.012.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %key.i34.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %key.i34.i, align 4
  %37 = ptrtoint ptr %from.addr.012.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %from.addr.012.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %40)
  %cmp2.i.i = icmp eq i16 %36, %40
  %incdec.ptr.i.i = getelementptr %struct.Indirect, ptr %from.addr.012.i.i, i32 1
  %cmp.not.i.i = icmp ule ptr %incdec.ptr.i.i, %chain
  %41 = and i1 %cmp.not.i.i, %cmp2.i.i
  br i1 %41, label %land.rhs.i.i.land.rhs.i.i_crit_edge, label %verify_chain.exit.i

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

verify_chain.exit.i:                              ; preds = %land.rhs.i.i
  br i1 %cmp2.i.i, label %if.end11.i, label %verify_chain.exit.i.brelse.exit.i_crit_edge

verify_chain.exit.i.brelse.exit.i_crit_edge:      ; preds = %verify_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.end11.i:                                       ; preds = %verify_chain.exit.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i, align 4
  %44 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %incdec.ptr12.i, align 4
  %add.ptr13.i = getelementptr i16, ptr %43, i32 %45
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr13.i, ptr %incdec.ptr.i, align 4
  %47 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr13.i, align 2
  %49 = ptrtoint ptr %key.i35.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %key.i35.i, align 4
  %50 = ptrtoint ptr %bh2.i36.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i, ptr %bh2.i36.i, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  %51 = ptrtoint ptr %key.i35.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %key.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool15.not.i = icmp eq i16 %52, 0
  br i1 %tobool15.not.i, label %if.end11.i.get_branch.exit_crit_edge, label %while.cond.i.1

if.end11.i.get_branch.exit_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit

while.cond.i.1:                                   ; preds = %if.end11.i
  br i1 %tobool1.not.i.1, label %while.cond.i.1.got_it_crit_edge, label %while.body.i.1

while.cond.i.1.got_it_crit_edge:                  ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

while.body.i.1:                                   ; preds = %while.cond.i.1
  %53 = ptrtoint ptr %key2.i.1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %key2.i.1, align 4
  %conv.i.1 = zext i16 %54 to i64
  %55 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bdev.i.i, align 4
  %57 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i.1 = call ptr @__bread_gfp(ptr noundef %56, i64 noundef %conv.i.1, i32 noundef %58, i32 noundef 8) #6
  %tobool5.not.i.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool5.not.i.1, label %while.body.i.1.get_branch.exit_crit_edge, label %if.end7.i.1

while.body.i.1.get_branch.exit_crit_edge:         ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit

if.end7.i.1:                                      ; preds = %while.body.i.1
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  br label %land.rhs.i.i.1

land.rhs.i.i.1:                                   ; preds = %land.rhs.i.i.1.land.rhs.i.i.1_crit_edge, %if.end7.i.1
  %from.addr.012.i.i.1 = phi ptr [ %incdec.ptr.i.i.1, %land.rhs.i.i.1.land.rhs.i.i.1_crit_edge ], [ %chain, %if.end7.i.1 ]
  %key.i34.i.1 = getelementptr inbounds %struct.Indirect, ptr %from.addr.012.i.i.1, i32 0, i32 1
  %59 = ptrtoint ptr %key.i34.i.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %key.i34.i.1, align 4
  %61 = ptrtoint ptr %from.addr.012.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %from.addr.012.i.i.1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %64)
  %cmp2.i.i.1 = icmp eq i16 %60, %64
  %incdec.ptr.i.i.1 = getelementptr %struct.Indirect, ptr %from.addr.012.i.i.1, i32 1
  %cmp.not.i.i.1 = icmp ule ptr %from.addr.012.i.i.1, %chain
  %65 = and i1 %cmp.not.i.i.1, %cmp2.i.i.1
  br i1 %65, label %land.rhs.i.i.1.land.rhs.i.i.1_crit_edge, label %verify_chain.exit.i.1

land.rhs.i.i.1.land.rhs.i.i.1_crit_edge:          ; preds = %land.rhs.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.1

verify_chain.exit.i.1:                            ; preds = %land.rhs.i.i.1
  br i1 %cmp2.i.i.1, label %if.end11.i.1, label %verify_chain.exit.i.1.brelse.exit.i_crit_edge

verify_chain.exit.i.1.brelse.exit.i_crit_edge:    ; preds = %verify_chain.exit.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.end11.i.1:                                     ; preds = %verify_chain.exit.i.1
  %b_data.i.1 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.1, i32 0, i32 5
  %66 = ptrtoint ptr %b_data.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i.1, align 4
  %68 = ptrtoint ptr %incdec.ptr12.i.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %incdec.ptr12.i.1, align 4
  %add.ptr13.i.1 = getelementptr i16, ptr %67, i32 %69
  %70 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr13.i.1, ptr %incdec.ptr.i.1, align 4
  %71 = ptrtoint ptr %add.ptr13.i.1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr13.i.1, align 2
  %73 = ptrtoint ptr %key.i35.i.1 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %key.i35.i.1, align 4
  %74 = ptrtoint ptr %bh2.i36.i.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i.1, ptr %bh2.i36.i.1, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  %75 = ptrtoint ptr %key.i35.i.1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %key.i35.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool15.not.i.1 = icmp eq i16 %76, 0
  br i1 %tobool15.not.i.1, label %if.end11.i.1.get_branch.exit_crit_edge, label %while.cond.i.2

if.end11.i.1.get_branch.exit_crit_edge:           ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit

while.cond.i.2:                                   ; preds = %if.end11.i.1
  br i1 %tobool1.not.i.2, label %while.cond.i.2.got_it_crit_edge, label %while.body.i.2

while.cond.i.2.got_it_crit_edge:                  ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

while.body.i.2:                                   ; preds = %while.cond.i.2
  %77 = ptrtoint ptr %key2.i.2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %key2.i.2, align 4
  %conv.i.2 = zext i16 %78 to i64
  %79 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_bdev.i.i, align 4
  %81 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i.2 = call ptr @__bread_gfp(ptr noundef %80, i64 noundef %conv.i.2, i32 noundef %82, i32 noundef 8) #6
  %tobool5.not.i.2 = icmp eq ptr %call.i.i.2, null
  br i1 %tobool5.not.i.2, label %while.body.i.2.get_branch.exit_crit_edge, label %if.end7.i.2

while.body.i.2.get_branch.exit_crit_edge:         ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit

if.end7.i.2:                                      ; preds = %while.body.i.2
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  br label %land.rhs.i.i.2

land.rhs.i.i.2:                                   ; preds = %land.rhs.i.i.2.land.rhs.i.i.2_crit_edge, %if.end7.i.2
  %from.addr.012.i.i.2 = phi ptr [ %incdec.ptr.i.i.2, %land.rhs.i.i.2.land.rhs.i.i.2_crit_edge ], [ %chain, %if.end7.i.2 ]
  %key.i34.i.2 = getelementptr inbounds %struct.Indirect, ptr %from.addr.012.i.i.2, i32 0, i32 1
  %83 = ptrtoint ptr %key.i34.i.2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %key.i34.i.2, align 4
  %85 = ptrtoint ptr %from.addr.012.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %from.addr.012.i.i.2, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %86, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %88)
  %cmp2.i.i.2 = icmp eq i16 %84, %88
  %incdec.ptr.i.i.2 = getelementptr %struct.Indirect, ptr %from.addr.012.i.i.2, i32 1
  %cmp.not.i.i.2 = icmp ule ptr %incdec.ptr.i.i.2, %incdec.ptr.i.1
  %89 = and i1 %cmp.not.i.i.2, %cmp2.i.i.2
  br i1 %89, label %land.rhs.i.i.2.land.rhs.i.i.2_crit_edge, label %verify_chain.exit.i.2

land.rhs.i.i.2.land.rhs.i.i.2_crit_edge:          ; preds = %land.rhs.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.2

verify_chain.exit.i.2:                            ; preds = %land.rhs.i.i.2
  br i1 %cmp2.i.i.2, label %if.end11.i.2, label %verify_chain.exit.i.2.brelse.exit.i_crit_edge

verify_chain.exit.i.2.brelse.exit.i_crit_edge:    ; preds = %verify_chain.exit.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.end11.i.2:                                     ; preds = %verify_chain.exit.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %b_data.i.2 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.2, i32 0, i32 5
  %90 = ptrtoint ptr %b_data.i.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_data.i.2, align 4
  %92 = ptrtoint ptr %incdec.ptr12.i.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %incdec.ptr12.i.2, align 4
  %add.ptr13.i.2 = getelementptr i16, ptr %91, i32 %93
  %94 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr13.i.2, ptr %incdec.ptr.i.2, align 4
  %95 = ptrtoint ptr %add.ptr13.i.2 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr13.i.2, align 2
  %97 = ptrtoint ptr %key.i35.i.2 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %key.i35.i.2, align 4
  %98 = ptrtoint ptr %bh2.i36.i.2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i.i.2, ptr %bh2.i36.i.2, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  br label %get_branch.exit

brelse.exit.i:                                    ; preds = %verify_chain.exit.i.2.brelse.exit.i_crit_edge, %verify_chain.exit.i.1.brelse.exit.i_crit_edge, %verify_chain.exit.i.brelse.exit.i_crit_edge
  %call.i.i.lcssa204 = phi ptr [ %call.i.i, %verify_chain.exit.i.brelse.exit.i_crit_edge ], [ %call.i.i.1, %verify_chain.exit.i.1.brelse.exit.i_crit_edge ], [ %call.i.i.2, %verify_chain.exit.i.2.brelse.exit.i_crit_edge ]
  %p.0.i.lcssa203 = phi ptr [ %chain, %verify_chain.exit.i.brelse.exit.i_crit_edge ], [ %incdec.ptr.i, %verify_chain.exit.i.1.brelse.exit.i_crit_edge ], [ %incdec.ptr.i.1, %verify_chain.exit.i.2.brelse.exit.i_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  call void @__brelse(ptr noundef nonnull %call.i.i.lcssa204) #6
  br label %get_branch.exit

get_branch.exit:                                  ; preds = %brelse.exit.i, %if.end11.i.2, %while.body.i.2.get_branch.exit_crit_edge, %if.end11.i.1.get_branch.exit_crit_edge, %while.body.i.1.get_branch.exit_crit_edge, %if.end11.i.get_branch.exit_crit_edge, %while.body.i.get_branch.exit_crit_edge
  %err.0 = phi i32 [ -11, %brelse.exit.i ], [ -5, %while.body.i.get_branch.exit_crit_edge ], [ 0, %if.end11.i.get_branch.exit_crit_edge ], [ -5, %while.body.i.1.get_branch.exit_crit_edge ], [ 0, %if.end11.i.1.get_branch.exit_crit_edge ], [ -5, %while.body.i.2.get_branch.exit_crit_edge ], [ 0, %if.end11.i.2 ]
  %retval.0.i79 = phi ptr [ %p.0.i.lcssa203, %brelse.exit.i ], [ %chain, %while.body.i.get_branch.exit_crit_edge ], [ %incdec.ptr.i, %if.end11.i.get_branch.exit_crit_edge ], [ %incdec.ptr.i, %while.body.i.1.get_branch.exit_crit_edge ], [ %incdec.ptr.i.1, %if.end11.i.1.get_branch.exit_crit_edge ], [ %incdec.ptr.i.1, %while.body.i.2.get_branch.exit_crit_edge ], [ %incdec.ptr.i.2, %if.end11.i.2 ]
  %tobool.not = icmp eq ptr %retval.0.i79, null
  br i1 %tobool.not, label %get_branch.exit.got_it_crit_edge, label %get_branch.exit.if.end10_crit_edge

get_branch.exit.if.end10_crit_edge:               ; preds = %get_branch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

get_branch.exit.got_it_crit_edge:                 ; preds = %get_branch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

got_it:                                           ; preds = %if.then.i, %if.end42.got_it_crit_edge, %get_branch.exit.got_it_crit_edge, %while.cond.i.2.got_it_crit_edge, %while.cond.i.1.got_it_crit_edge, %while.cond.preheader.i.got_it_crit_edge
  %err.1 = phi i32 [ 0, %if.end42.got_it_crit_edge ], [ 0, %if.then.i ], [ 0, %while.cond.i.2.got_it_crit_edge ], [ 0, %while.cond.i.1.got_it_crit_edge ], [ 0, %while.cond.preheader.i.got_it_crit_edge ], [ %err.0, %get_branch.exit.got_it_crit_edge ]
  %99 = ptrtoint ptr %i_sb1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb1.i, align 4
  %sub = add nsw i32 %retval.0.i, -1
  %key = getelementptr [3 x %struct.Indirect], ptr %chain, i32 0, i32 %sub, i32 1
  %101 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %key, align 4
  %conv7 = zext i16 %102 to i64
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %bh, align 4
  %105 = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %got_it.map_bh.exit_crit_edge

got_it.map_bh.exit_crit_edge:                     ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 4, ptr noundef %bh) #6
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %got_it.map_bh.exit_crit_edge
  %s_bdev.i81 = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 26
  %106 = ptrtoint ptr %s_bdev.i81 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_bdev.i81, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %108 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %109 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv7, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 3
  %110 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %112 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %b_size.i, align 8
  %add.ptr9 = getelementptr %struct.Indirect, ptr %add.ptr25, i32 -1
  br label %cleanup

if.end10:                                         ; preds = %get_branch.exit.if.end10_crit_edge, %reread.if.end10_crit_edge
  %retval.0.i79137 = phi ptr [ %retval.0.i79, %get_branch.exit.if.end10_crit_edge ], [ %chain, %reread.if.end10_crit_edge ]
  %err.0136 = phi i32 [ %err.0, %get_branch.exit.if.end10_crit_edge ], [ 0, %reread.if.end10_crit_edge ]
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %113 = zext i32 %err.0136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.0136, label %if.end23 [
    i32 -5, label %lor.lhs.false.cleanup_crit_edge
    i32 -11, label %lor.lhs.false.changed_crit_edge
  ]

lor.lhs.false.changed_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body39.i.cleanup_crit_edge, %for.cond36.preheader.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %map_bh.exit
  %err.2 = phi i32 [ %err.1, %map_bh.exit ], [ %err.2.i, %for.cond36.preheader.i.cleanup_crit_edge ], [ %err.2.i, %for.body39.i.cleanup_crit_edge ], [ %err.0136, %if.end10.cleanup_crit_edge ], [ %err.0136, %lor.lhs.false.cleanup_crit_edge ]
  %partial.0 = phi ptr [ %add.ptr9, %map_bh.exit ], [ %retval.0.i79137, %for.cond36.preheader.i.cleanup_crit_edge ], [ %retval.0.i79137, %for.body39.i.cleanup_crit_edge ], [ %retval.0.i79137, %if.end10.cleanup_crit_edge ], [ %retval.0.i79137, %lor.lhs.false.cleanup_crit_edge ]
  %cmp16163 = icmp ugt ptr %partial.0, %chain
  br i1 %cmp16163, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %cleanup.while.body_crit_edge
  %partial.1164 = phi ptr [ %incdec.ptr, %brelse.exit.while.body_crit_edge ], [ %partial.0, %cleanup.while.body_crit_edge ]
  %bh18 = getelementptr inbounds %struct.Indirect, ptr %partial.1164, i32 0, i32 2
  %114 = ptrtoint ptr %bh18 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bh18, align 4
  %tobool.not.i82 = icmp eq ptr %115, null
  br i1 %tobool.not.i82, label %while.body.brelse.exit_crit_edge, label %if.then.i83

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i83:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %115) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i83, %while.body.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.1164, i32 -1
  %cmp16 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp16, label %brelse.exit.while.body_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

out:                                              ; preds = %brelse.exit.out_crit_edge, %cleanup.out_crit_edge, %if.end.i.out_crit_edge, %do.end.i
  %err.3 = phi i32 [ -5, %do.end.i ], [ -5, %if.end.i.out_crit_edge ], [ %err.2, %cleanup.out_crit_edge ], [ %err.2, %brelse.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %chain) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %offsets) #6
  ret i32 %err.3

if.end23:                                         ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i79137 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %sub.ptr.sub30 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i32 %sub.ptr.sub30, 12
  %add.ptr32 = getelementptr i32, ptr %offsets, i32 %sub.ptr.div31
  %call.i85 = call i32 @minix_new_block(ptr noundef %inode) #6
  %conv.i.i = trunc i32 %call.i85 to i16
  %key.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i79137, i32 0, i32 1
  %116 = ptrtoint ptr %key.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i.i, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %if.end23.if.end22.i_crit_edge, label %for.cond.preheader.i

if.end23.if.end22.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

for.cond.preheader.i:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp101.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp101.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end22.i_crit_edge

for.cond.preheader.i.if.end22.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %parent.0103.i = phi i32 [ %call2.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i85, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.0102.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call2.i = call i32 @minix_new_block(ptr noundef %inode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end22.i_crit_edge, label %if.end.i92

for.body.i.if.end22.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.end.i92:                                       ; preds = %for.body.i
  %conv.i91.i = trunc i32 %call2.i to i16
  %key7.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %n.0102.i, i32 1
  %117 = ptrtoint ptr %key7.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i91.i, ptr %key7.i, align 4
  %118 = ptrtoint ptr %i_sb1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_sb1.i, align 4
  %conv.i88 = sext i32 %parent.0103.i to i64
  %s_bdev.i.i89 = getelementptr inbounds %struct.super_block, ptr %119, i32 0, i32 26
  %120 = ptrtoint ptr %s_bdev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_bdev.i.i89, align 4
  %s_blocksize.i.i90 = getelementptr inbounds %struct.super_block, ptr %119, i32 0, i32 3
  %122 = ptrtoint ptr %s_blocksize.i.i90 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i.i90, align 16
  %call.i.i91 = call ptr @__getblk_gfp(ptr noundef %121, i64 noundef %conv.i88, i32 noundef %123, i32 noundef 8) #6
  %tobool9.not.i = icmp eq ptr %call.i.i91, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i93

if.then10.i:                                      ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  call void @minix_free_block(ptr noundef %inode, i32 noundef %call2.i) #6
  br label %if.end22.i

if.end11.i93:                                     ; preds = %if.end.i92
  %arrayidx6.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %n.0102.i
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i91, i32 noundef 4) #6
  %124 = ptrtoint ptr %call.i.i91 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %call.i.i91, align 4
  %and.i.i.i.i.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end11.i93.if.then.i92.i_crit_edge

if.end11.i93.if.then.i92.i_crit_edge:             ; preds = %if.end11.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i92.i

trylock_buffer.exit.i.i:                          ; preds = %if.end11.i93
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i91, i32 1, i32 3, i32 1) #6
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i91, ptr nonnull %call.i.i91, i32 4, ptr nonnull elementtype(i32) %call.i.i91) #6, !srcloc !21
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %126, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  %127 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i92.i_crit_edge

trylock_buffer.exit.i.i.if.then.i92.i_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i92.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit.i

if.then.i92.i:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i92.i_crit_edge, %if.end11.i93.if.then.i92.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i.i91) #6
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i92.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i94 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i91, i32 0, i32 5
  %128 = ptrtoint ptr %b_data.i94 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %b_data.i94, align 4
  %b_size.i95 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i91, i32 0, i32 4
  %130 = ptrtoint ptr %b_size.i95 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %b_size.i95, align 8
  %132 = call ptr @memset(ptr %129, i32 0, i32 %131)
  %bh13.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %n.0102.i, i32 2
  %133 = ptrtoint ptr %bh13.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i.i91, ptr %bh13.i, align 4
  %134 = load ptr, ptr %b_data.i94, align 4
  %arrayidx15.i96 = getelementptr i32, ptr %add.ptr32, i32 %n.0102.i
  %135 = ptrtoint ptr %arrayidx15.i96 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx15.i96, align 4
  %add.ptr.i97 = getelementptr i16, ptr %134, i32 %136
  %137 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr.i97, ptr %arrayidx6.i, align 4
  %138 = ptrtoint ptr %key7.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %key7.i, align 4
  %140 = ptrtoint ptr %add.ptr.i97 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %add.ptr.i97, align 2
  %141 = ptrtoint ptr %call.i.i91 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %call.i.i91, align 4
  %and1.i.i.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i98 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i98, label %if.then.i.i99, label %lock_buffer.exit.i.for.inc.i_crit_edge

lock_buffer.exit.i.for.inc.i_crit_edge:           ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i.i99:                                    ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i91) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i99, %lock_buffer.exit.i.for.inc.i_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i.i91) #6
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i.i91, ptr noundef %inode) #6
  %inc.i = add nuw nsw i32 %n.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.ptr.div
  br i1 %exitcond.not.i, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end22.i:                                       ; preds = %if.then10.i, %for.body.i.if.end22.i_crit_edge, %for.cond.preheader.i.if.end22.i_crit_edge, %if.end23.if.end22.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.end23.if.end22.i_crit_edge ], [ %n.0102.i, %if.then10.i ], [ 1, %for.cond.preheader.i.if.end22.i_crit_edge ], [ %n.0102.i, %for.body.i.if.end22.i_crit_edge ]
  %err.2.i = phi i32 [ -28, %if.end23.if.end22.i_crit_edge ], [ -12, %if.then10.i ], [ -28, %for.cond.preheader.i.if.end22.i_crit_edge ], [ -28, %for.body.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.i, i32 %sub.ptr.div)
  %cmp23.i = icmp eq i32 %n.1.i, %sub.ptr.div
  br i1 %cmp23.i, label %if.end22.i.if.end36_crit_edge, label %for.cond27.preheader.i

if.end22.i.if.end36_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

for.cond27.preheader.i:                           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.1.i)
  %cmp28105.i = icmp ugt i32 %n.1.i, 1
  br i1 %cmp28105.i, label %for.cond27.preheader.i.for.body30.i_crit_edge, label %for.cond27.preheader.i.for.cond36.preheader.i_crit_edge

for.cond27.preheader.i.for.cond36.preheader.i_crit_edge: ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond36.preheader.i

for.cond27.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body30.i

for.cond36.preheader.i:                           ; preds = %bforget.exit.i.for.cond36.preheader.i_crit_edge, %for.cond27.preheader.i.for.cond36.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.i)
  %cmp37107.not.i = icmp eq i32 %n.1.i, 0
  br i1 %cmp37107.not.i, label %for.cond36.preheader.i.cleanup_crit_edge, label %for.cond36.preheader.i.for.body39.i_crit_edge

for.cond36.preheader.i.for.body39.i_crit_edge:    ; preds = %for.cond36.preheader.i
  br label %for.body39.i

for.cond36.preheader.i.cleanup_crit_edge:         ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body30.i:                                     ; preds = %bforget.exit.i.for.body30.i_crit_edge, %for.cond27.preheader.i.for.body30.i_crit_edge
  %i.0106.i = phi i32 [ %inc34.i, %bforget.exit.i.for.body30.i_crit_edge ], [ 1, %for.cond27.preheader.i.for.body30.i_crit_edge ]
  %bh32.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %i.0106.i, i32 2
  %143 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bh32.i, align 4
  %tobool.not.i93.i = icmp eq ptr %144, null
  br i1 %tobool.not.i93.i, label %for.body30.i.bforget.exit.i_crit_edge, label %if.then.i94.i

for.body30.i.bforget.exit.i_crit_edge:            ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bforget.exit.i

if.then.i94.i:                                    ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__bforget(ptr noundef nonnull %144) #6
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i94.i, %for.body30.i.bforget.exit.i_crit_edge
  %inc34.i = add nuw nsw i32 %i.0106.i, 1
  %exitcond111.not.i = icmp eq i32 %inc34.i, %n.1.i
  br i1 %exitcond111.not.i, label %bforget.exit.i.for.cond36.preheader.i_crit_edge, label %bforget.exit.i.for.body30.i_crit_edge

bforget.exit.i.for.body30.i_crit_edge:            ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

bforget.exit.i.for.cond36.preheader.i_crit_edge:  ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond36.preheader.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.cond36.preheader.i.for.body39.i_crit_edge
  %i.1108.i = phi i32 [ %inc44.i, %for.body39.i.for.body39.i_crit_edge ], [ 0, %for.cond36.preheader.i.for.body39.i_crit_edge ]
  %key41.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %i.1108.i, i32 1
  %145 = ptrtoint ptr %key41.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %key41.i, align 4
  %conv.i95.i = zext i16 %146 to i32
  call void @minix_free_block(ptr noundef %inode, i32 noundef %conv.i95.i) #6
  %inc44.i = add nuw nsw i32 %i.1108.i, 1
  %exitcond112.not.i = icmp eq i32 %inc44.i, %n.1.i
  br i1 %exitcond112.not.i, label %for.body39.i.cleanup_crit_edge, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.i

for.body39.i.cleanup_crit_edge:                   ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end22.i.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge
  call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #6
  %add.ptr.i101 = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 -1
  %cmp.not11.i.i102 = icmp ult ptr %add.ptr.i101, %chain
  br i1 %cmp.not11.i.i102, label %if.end36.lor.lhs.false.i_crit_edge, label %if.end36.land.rhs.i.i108_crit_edge

if.end36.land.rhs.i.i108_crit_edge:               ; preds = %if.end36
  br label %land.rhs.i.i108

if.end36.lor.lhs.false.i_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.rhs.i.i108:                                  ; preds = %land.rhs.i.i108.land.rhs.i.i108_crit_edge, %if.end36.land.rhs.i.i108_crit_edge
  %from.addr.012.i.i103 = phi ptr [ %incdec.ptr.i.i106, %land.rhs.i.i108.land.rhs.i.i108_crit_edge ], [ %chain, %if.end36.land.rhs.i.i108_crit_edge ]
  %key.i.i104 = getelementptr inbounds %struct.Indirect, ptr %from.addr.012.i.i103, i32 0, i32 1
  %147 = ptrtoint ptr %key.i.i104 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %key.i.i104, align 4
  %149 = ptrtoint ptr %from.addr.012.i.i103 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %from.addr.012.i.i103, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %150, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %152)
  %cmp2.i.i105 = icmp eq i16 %148, %152
  %incdec.ptr.i.i106 = getelementptr %struct.Indirect, ptr %from.addr.012.i.i103, i32 1
  %cmp.not.i.i107 = icmp ule ptr %incdec.ptr.i.i106, %add.ptr.i101
  %153 = and i1 %cmp.not.i.i107, %cmp2.i.i105
  br i1 %153, label %land.rhs.i.i108.land.rhs.i.i108_crit_edge, label %verify_chain.exit.i109

land.rhs.i.i108.land.rhs.i.i108_crit_edge:        ; preds = %land.rhs.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i108

verify_chain.exit.i109:                           ; preds = %land.rhs.i.i108
  br i1 %cmp2.i.i105, label %verify_chain.exit.i109.lor.lhs.false.i_crit_edge, label %verify_chain.exit.i109.changed.i_crit_edge

verify_chain.exit.i109.changed.i_crit_edge:       ; preds = %verify_chain.exit.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed.i

verify_chain.exit.i109.lor.lhs.false.i_crit_edge: ; preds = %verify_chain.exit.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %verify_chain.exit.i109.lor.lhs.false.i_crit_edge, %if.end36.lor.lhs.false.i_crit_edge
  %154 = ptrtoint ptr %retval.0.i79137 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %retval.0.i79137, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %155, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool1.not.i110 = icmp eq i16 %157, 0
  br i1 %tobool1.not.i110, label %if.end.i113, label %lor.lhs.false.i.changed.i_crit_edge

lor.lhs.false.i.changed.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed.i

if.end.i113:                                      ; preds = %lor.lhs.false.i
  %key.i.le = getelementptr inbounds %struct.Indirect, ptr %retval.0.i79137, i32 0, i32 1
  %158 = ptrtoint ptr %key.i.le to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %key.i.le, align 4
  %160 = ptrtoint ptr %155 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %155, align 2
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #6
  %161 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i79137, i32 0, i32 2
  %162 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bh.i, align 4
  %tobool3.not.i112 = icmp eq ptr %163, null
  br i1 %tobool3.not.i112, label %if.end.i113.if.end42_crit_edge, label %if.then4.i

if.end.i113.if.end42_crit_edge:                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then4.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #8
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %163, ptr noundef %inode) #6
  br label %if.end42

changed.i:                                        ; preds = %lor.lhs.false.i.changed.i_crit_edge, %verify_chain.exit.i109.changed.i_crit_edge
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp38.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp38.i, label %changed.i.for.body.i115_crit_edge, label %changed.i.for.cond9.preheader.i_crit_edge

changed.i.for.cond9.preheader.i_crit_edge:        ; preds = %changed.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader.i

changed.i.for.body.i115_crit_edge:                ; preds = %changed.i
  br label %for.body.i115

for.cond9.preheader.i:                            ; preds = %bforget.exit.i119.for.cond9.preheader.i_crit_edge, %changed.i.for.cond9.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp1040.i = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp1040.i, label %for.cond9.preheader.i.for.body12.i_crit_edge, label %for.cond9.preheader.i.changed_crit_edge

for.cond9.preheader.i.changed_crit_edge:          ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

for.cond9.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond9.preheader.i
  br label %for.body12.i

for.body.i115:                                    ; preds = %bforget.exit.i119.for.body.i115_crit_edge, %changed.i.for.body.i115_crit_edge
  %i.039.i = phi i32 [ %inc.i117, %bforget.exit.i119.for.body.i115_crit_edge ], [ 1, %changed.i.for.body.i115_crit_edge ]
  %bh8.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %i.039.i, i32 2
  %164 = ptrtoint ptr %bh8.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bh8.i, align 4
  %tobool.not.i.i114 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i114, label %for.body.i115.bforget.exit.i119_crit_edge, label %if.then.i.i116

for.body.i115.bforget.exit.i119_crit_edge:        ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %bforget.exit.i119

if.then.i.i116:                                   ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #8
  call void @__bforget(ptr noundef nonnull %165) #6
  br label %bforget.exit.i119

bforget.exit.i119:                                ; preds = %if.then.i.i116, %for.body.i115.bforget.exit.i119_crit_edge
  %inc.i117 = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i118 = icmp eq i32 %inc.i117, %sub.ptr.div
  br i1 %exitcond.not.i118, label %bforget.exit.i119.for.cond9.preheader.i_crit_edge, label %bforget.exit.i119.for.body.i115_crit_edge

bforget.exit.i119.for.body.i115_crit_edge:        ; preds = %bforget.exit.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i115

bforget.exit.i119.for.cond9.preheader.i_crit_edge: ; preds = %bforget.exit.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.cond9.preheader.i.for.body12.i_crit_edge
  %i.141.i = phi i32 [ %inc17.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.cond9.preheader.i.for.body12.i_crit_edge ]
  %key14.i = getelementptr %struct.Indirect, ptr %retval.0.i79137, i32 %i.141.i, i32 1
  %166 = ptrtoint ptr %key14.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %key14.i, align 4
  %conv.i.i120 = zext i16 %167 to i32
  call void @minix_free_block(ptr noundef %inode, i32 noundef %conv.i.i120) #6
  %inc17.i = add nuw nsw i32 %i.141.i, 1
  %exitcond42.not.i = icmp eq i32 %inc17.i, %sub.ptr.div
  br i1 %exitcond42.not.i, label %for.body12.i.changed_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

for.body12.i.changed_crit_edge:                   ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

if.end42:                                         ; preds = %if.then4.i, %if.end.i113.if.end42_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  %168 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %bh, align 4
  %170 = and i32 %169, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i = icmp eq i32 %170, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.got_it_crit_edge

if.end42.got_it_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 5, ptr noundef %bh) #6
  br label %got_it

changed:                                          ; preds = %for.body12.i.changed_crit_edge, %for.cond9.preheader.i.changed_crit_edge, %lor.lhs.false.changed_crit_edge
  %cmp45160 = icmp ugt ptr %retval.0.i79137, %chain
  br i1 %cmp45160, label %changed.while.body47_crit_edge, label %changed.reread.backedge_crit_edge

changed.reread.backedge_crit_edge:                ; preds = %changed
  call void @__sanitizer_cov_trace_pc() #8
  br label %reread.backedge

changed.while.body47_crit_edge:                   ; preds = %changed
  br label %while.body47

reread.backedge:                                  ; preds = %brelse.exit125.reread.backedge_crit_edge, %changed.reread.backedge_crit_edge
  br label %reread

while.body47:                                     ; preds = %brelse.exit125.while.body47_crit_edge, %changed.while.body47_crit_edge
  %partial.2161 = phi ptr [ %incdec.ptr49, %brelse.exit125.while.body47_crit_edge ], [ %retval.0.i79137, %changed.while.body47_crit_edge ]
  %bh48 = getelementptr inbounds %struct.Indirect, ptr %partial.2161, i32 0, i32 2
  %171 = ptrtoint ptr %bh48 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh48, align 4
  %tobool.not.i122 = icmp eq ptr %172, null
  br i1 %tobool.not.i122, label %while.body47.brelse.exit125_crit_edge, label %if.then.i123

while.body47.brelse.exit125_crit_edge:            ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit125

if.then.i123:                                     ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %172) #6
  br label %brelse.exit125

brelse.exit125:                                   ; preds = %if.then.i123, %while.body47.brelse.exit125_crit_edge
  %incdec.ptr49 = getelementptr %struct.Indirect, ptr %partial.2161, i32 -1
  %cmp45 = icmp ugt ptr %incdec.ptr49, %chain
  br i1 %cmp45, label %brelse.exit125.while.body47_crit_edge, label %brelse.exit125.reread.backedge_crit_edge

brelse.exit125.reread.backedge_crit_edge:         ; preds = %brelse.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %reread.backedge

brelse.exit125.while.body47_crit_edge:            ; preds = %brelse.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @V1_minix_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %offsets.i = alloca [3 x i32], align 4
  %chain.i = alloca [3 x %struct.Indirect], align 4
  %nr.i = alloca i16, align 2
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %offsets.i) #6
  %2 = getelementptr inbounds [3 x i32], ptr %offsets.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i32], ptr %offsets.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %chain.i) #6
  %5 = call ptr @memset(ptr %chain.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nr.i) #6
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %9 to i64
  %add.i = add i64 %7, -1
  %sub.i = add i64 %add.i, %conv.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %11 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping.i, align 8
  %call4.i = tail call i32 @block_truncate_page(ptr noundef %13, i64 noundef %7, ptr noundef nonnull @get_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %cmp.i.i = icmp slt i32 %conv2.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv2.i, ptr noundef %17) #9
  br label %truncate.exit

if.end.i.i:                                       ; preds = %entry
  %conv47.i.i = shl i64 %shr.i, 10
  %mul.i.i = and i64 %conv47.i.i, 4398046510080
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_maxbytes.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %s_maxbytes.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %s_maxbytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i.i, i64 %21)
  %cmp2.not.i.i = icmp ult i64 %mul.i.i, %21
  br i1 %cmp2.not.i.i, label %if.end5.i.i, label %if.end.i.i.truncate.exit_crit_edge

if.end.i.i.truncate.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %truncate.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv2.i)
  %cmp6.i.i = icmp ult i32 %conv2.i, 7
  br i1 %cmp6.i.i, label %if.then7.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  %sub.i.i = add nsw i32 %conv2.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i.i)
  %cmp9.i.i = icmp ult i32 %sub.i.i, 512
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else16.i.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %offsets.i, align 4
  br label %if.end9.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i.i = add nsw i32 %conv2.i, -519
  %23 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %offsets.i, align 4
  %shr48.i.i = lshr i32 %sub17.i.i, 9
  %and.i.i = and i32 %sub17.i.i, 511
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i.i, ptr %3, align 4
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i.i
  %25 = ptrtoint ptr %offsets.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv2.i, ptr %offsets.i, align 4
  %add.ptr.i = getelementptr i16, ptr %add.ptr.i.i.i, i32 %conv2.i
  %add.ptr8.i = getelementptr i8, ptr %inode, i32 -50
  %cmp5.i.i = icmp ult ptr %add.ptr.i, %add.ptr8.i
  br i1 %cmp5.i.i, label %if.then7.i.for.body.i.i_crit_edge, label %if.then7.i.while.body46.lr.ph.i_crit_edge

if.then7.i.while.body46.lr.ph.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46.lr.ph.i

if.then7.i.for.body.i.i_crit_edge:                ; preds = %if.then7.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then7.i.for.body.i.i_crit_edge
  %p.addr.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i, %if.then7.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %p.addr.06.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %p.addr.06.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %p.addr.06.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %p.addr.06.i.i, align 2
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %conv.i.i.i) #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i16, ptr %p.addr.06.i.i, i32 1
  %cmp.i104.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr8.i
  br i1 %cmp.i104.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.while.body46.lr.ph.i_crit_edge

for.inc.i.i.while.body46.lr.ph.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46.lr.ph.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end9.i:                                        ; preds = %if.else16.i.i, %if.then11.i.i
  %shr48.i.sink.i = phi i32 [ %sub.i.i, %if.then11.i.i ], [ %shr48.i.i, %if.else16.i.i ]
  %retval.0.i.ph.i = phi i32 [ 2, %if.then11.i.i ], [ 3, %if.else16.i.i ]
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr48.i.sink.i, ptr %2, align 4
  %30 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offsets.i, align 4
  %sub12.i = add i32 %31, -6
  %32 = ptrtoint ptr %nr.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %nr.i, align 2
  %sub.i106.i = add nsw i32 %retval.0.i.ph.i, -1
  %arrayidx.i.i = getelementptr i32, ptr %offsets.i, i32 %sub.i106.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i107.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i107.i, label %for.cond.i.i.1, label %if.end9.i.for.end.i.i_crit_edge

if.end9.i.for.end.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.cond.i.i.1:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i106.i)
  %cmp.i105.i.1 = icmp ugt i32 %sub.i106.i, 1
  br i1 %cmp.i105.i.1, label %land.rhs.i.i.1, label %for.cond.i.i.1.for.end.i.i_crit_edge

for.cond.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

land.rhs.i.i.1:                                   ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i106.i.1 = add nsw i32 %retval.0.i.ph.i, -2
  %arrayidx.i.i.1 = getelementptr i32, ptr %offsets.i, i32 %sub.i106.i.1
  %35 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i107.i.1 = icmp eq i32 %36, 0
  %spec.select = select i1 %tobool.not.i107.i.1, i32 1, i32 %sub.i106.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %land.rhs.i.i.1, %for.cond.i.i.1.for.end.i.i_crit_edge, %if.end9.i.for.end.i.i_crit_edge
  %k.0.lcssa.i.i = phi i32 [ %retval.0.i.ph.i, %if.end9.i.for.end.i.i_crit_edge ], [ 1, %for.cond.i.i.1.for.end.i.i_crit_edge ], [ %spec.select, %land.rhs.i.i.1 ]
  %add.ptr.i.i108.i = getelementptr i16, ptr %add.ptr.i.i.i, i32 %31
  %37 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i108.i, ptr %chain.i, align 4
  %38 = ptrtoint ptr %add.ptr.i.i108.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i108.i, align 2
  %key.i.i.i.i = getelementptr inbounds %struct.Indirect, ptr %chain.i, i32 0, i32 1
  %40 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %key.i.i.i.i, align 4
  %bh2.i.i.i.i = getelementptr inbounds %struct.Indirect, ptr %chain.i, i32 0, i32 2
  %41 = ptrtoint ptr %bh2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bh2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i.i.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.get_branch.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i

for.end.i.i.get_branch.exit.i.i_crit_edge:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit.i.i

while.cond.preheader.i.i.i:                       ; preds = %for.end.i.i
  %s_bdev.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 26
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %key2.i.i.i = getelementptr inbounds %struct.Indirect, ptr %p.0.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %key2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key2.i.i.i, align 4
  %conv.i.i109.i = zext i16 %43 to i64
  %44 = ptrtoint ptr %s_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i.i.i.i, align 4
  %46 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %call.i.i.i.i = call ptr @__bread_gfp(ptr noundef %45, i64 noundef %conv.i.i109.i, i32 noundef %47, i32 noundef 8) #6
  %tobool5.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %while.body.i.i.i.get_branch.exit.i.i_crit_edge, label %if.end7.i.i.i

while.body.i.i.i.get_branch.exit.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit.i.i

if.end7.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  %cmp.not11.i.i.i.i = icmp ult ptr %p.0.i.i.i, %chain.i
  br i1 %cmp.not11.i.i.i.i, label %if.end7.i.i.i.if.end11.i.i.i_crit_edge, label %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge

if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge:         ; preds = %if.end7.i.i.i
  br label %land.rhs.i.i.i.i

if.end7.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge
  %from.addr.012.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %chain.i, %if.end7.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %key.i34.i.i.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.012.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %key.i34.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %key.i34.i.i.i, align 4
  %50 = ptrtoint ptr %from.addr.012.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %from.addr.012.i.i.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %53)
  %cmp2.i.i.i.i = icmp eq i16 %49, %53
  %incdec.ptr.i.i.i.i = getelementptr %struct.Indirect, ptr %from.addr.012.i.i.i.i, i32 1
  %cmp.not.i.i.i.i = icmp ule ptr %incdec.ptr.i.i.i.i, %p.0.i.i.i
  %54 = and i1 %cmp.not.i.i.i.i, %cmp2.i.i.i.i
  br i1 %54, label %land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge, label %verify_chain.exit.i.i.i

land.rhs.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i.i

verify_chain.exit.i.i.i:                          ; preds = %land.rhs.i.i.i.i
  br i1 %cmp2.i.i.i.i, label %verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge, label %brelse.exit.i.i.i

verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge: ; preds = %verify_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %verify_chain.exit.i.i.i.if.end11.i.i.i_crit_edge, %if.end7.i.i.i.if.end11.i.i.i_crit_edge
  %incdec.ptr.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1
  %b_data.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %b_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_data.i.i.i, align 4
  %incdec.ptr12.i.i.i = getelementptr i32, ptr %offsets.addr.0.i.i.i, i32 1
  %57 = ptrtoint ptr %incdec.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %incdec.ptr12.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr i16, ptr %56, i32 %58
  %59 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr13.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  %60 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr13.i.i.i, align 2
  %key.i35.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1, i32 1
  %62 = ptrtoint ptr %key.i35.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %key.i35.i.i.i, align 4
  %bh2.i36.i.i.i = getelementptr %struct.Indirect, ptr %p.0.i.i.i, i32 1, i32 2
  %63 = ptrtoint ptr %bh2.i36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i.i.i, ptr %bh2.i36.i.i.i, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  %64 = ptrtoint ptr %key.i35.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %key.i35.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq i16 %65, 0
  br i1 %tobool15.not.i.i.i, label %if.end11.i.i.i.get_branch.exit.i.i_crit_edge, label %if.end11.i.i.i.while.cond.i.i.i_crit_edge

if.end11.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

if.end11.i.i.i.get_branch.exit.i.i_crit_edge:     ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_branch.exit.i.i

brelse.exit.i.i.i:                                ; preds = %verify_chain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  call void @__brelse(ptr noundef nonnull %call.i.i.i.i) #6
  br label %get_branch.exit.i.i

get_branch.exit.i.i:                              ; preds = %brelse.exit.i.i.i, %if.end11.i.i.i.get_branch.exit.i.i_crit_edge, %while.body.i.i.i.get_branch.exit.i.i_crit_edge, %while.cond.i.i.i.get_branch.exit.i.i_crit_edge, %for.end.i.i.get_branch.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %chain.i, %for.end.i.i.get_branch.exit.i.i_crit_edge ], [ %p.0.i.i.i, %brelse.exit.i.i.i ], [ %p.0.i.i.i, %while.body.i.i.i.get_branch.exit.i.i_crit_edge ], [ null, %while.cond.i.i.i.get_branch.exit.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %if.end11.i.i.i.get_branch.exit.i.i_crit_edge ]
  call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #6
  %tobool1.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  %add.ptr.i.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %k.0.lcssa.i.i
  %add.ptr2.i.i = getelementptr %struct.Indirect, ptr %add.ptr.i.i, i32 -1
  %partial.0.i.i = select i1 %tobool1.not.i.i, ptr %add.ptr2.i.i, ptr %retval.0.i.i.i
  %add.ptr2.i.sroa.gep.i = getelementptr inbounds %struct.Indirect, ptr %add.ptr2.i.i, i32 0, i32 1
  %retval.0.i.i.sroa.gep.i = getelementptr inbounds %struct.Indirect, ptr %retval.0.i.i.i, i32 0, i32 1
  %partial.0.i.sroa.sel.i = select i1 %tobool1.not.i.i, ptr %add.ptr2.i.sroa.gep.i, ptr %retval.0.i.i.sroa.gep.i
  %66 = ptrtoint ptr %partial.0.i.sroa.sel.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %partial.0.i.sroa.sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool3.not.i.i = icmp eq i16 %67, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %get_branch.exit.i.i.if.end7.i.i_crit_edge

get_branch.exit.i.i.if.end7.i.i_crit_edge:        ; preds = %get_branch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %get_branch.exit.i.i
  %68 = ptrtoint ptr %partial.0.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %partial.0.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool5.not.i.i = icmp eq i16 %71, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  br label %find_shared.exit.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %get_branch.exit.i.i.if.end7.i.i_crit_edge
  %cmp980.i.i = icmp ugt ptr %partial.0.i.i, %chain.i
  br i1 %cmp980.i.i, label %if.end7.i.i.land.rhs11.i.i_crit_edge, label %if.end7.i.i.if.else.i112.i_crit_edge

if.end7.i.i.if.else.i112.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i112.i

if.end7.i.i.land.rhs11.i.i_crit_edge:             ; preds = %if.end7.i.i
  br label %land.rhs11.i.i

land.rhs11.i.i:                                   ; preds = %for.inc17.i.i.land.rhs11.i.i_crit_edge, %if.end7.i.i.land.rhs11.i.i_crit_edge
  %p.081.i.i = phi ptr [ %incdec.ptr.i110.i, %for.inc17.i.i.land.rhs11.i.i_crit_edge ], [ %partial.0.i.i, %if.end7.i.i.land.rhs11.i.i_crit_edge ]
  %bh.i.i = getelementptr inbounds %struct.Indirect, ptr %p.081.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %b_data.i.i, align 4
  %76 = ptrtoint ptr %p.081.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %p.081.i.i, align 4
  br label %while.cond.i63.i.i

while.cond.i63.i.i:                               ; preds = %while.body.i66.i.i.while.cond.i63.i.i_crit_edge, %land.rhs11.i.i
  %p.addr.0.i.i.i = phi ptr [ %75, %land.rhs11.i.i ], [ %incdec.ptr.i64.i.i, %while.body.i66.i.i.while.cond.i63.i.i_crit_edge ]
  %cmp.i.i.i = icmp ult ptr %p.addr.0.i.i.i, %77
  br i1 %cmp.i.i.i, label %while.body.i66.i.i, label %for.inc17.i.i

while.body.i66.i.i:                               ; preds = %while.cond.i63.i.i
  %incdec.ptr.i64.i.i = getelementptr i16, ptr %p.addr.0.i.i.i, i32 1
  %78 = ptrtoint ptr %p.addr.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %p.addr.0.i.i.i, align 2
  %tobool.not.i65.i.i = icmp eq i16 %79, 0
  br i1 %tobool.not.i65.i.i, label %while.body.i66.i.i.while.cond.i63.i.i_crit_edge, label %for.end18.i.i

while.body.i66.i.i.while.cond.i63.i.i_crit_edge:  ; preds = %while.body.i66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i63.i.i

for.inc17.i.i:                                    ; preds = %while.cond.i63.i.i
  %incdec.ptr.i110.i = getelementptr %struct.Indirect, ptr %p.081.i.i, i32 -1
  %cmp9.i111.i = icmp ugt ptr %incdec.ptr.i110.i, %chain.i
  br i1 %cmp9.i111.i, label %for.inc17.i.i.land.rhs11.i.i_crit_edge, label %for.inc17.i.i.if.else.i112.i_crit_edge

for.inc17.i.i.if.else.i112.i_crit_edge:           ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i112.i

for.inc17.i.i.land.rhs11.i.i_crit_edge:           ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs11.i.i

for.end18.i.i:                                    ; preds = %while.body.i66.i.i
  %cmp21.i.i = icmp eq ptr %p.081.i.i, %add.ptr2.i.i
  br i1 %cmp21.i.i, label %if.then26.i.i, label %for.end18.i.i.if.else.i112.i_crit_edge

for.end18.i.i.if.else.i112.i_crit_edge:           ; preds = %for.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i112.i

if.then26.i.i:                                    ; preds = %for.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr2.i.i, align 4
  %incdec.ptr28.i.i = getelementptr i16, ptr %81, i32 -1
  store ptr %incdec.ptr28.i.i, ptr %add.ptr2.i.i, align 4
  br label %if.end31.i.i

if.else.i112.i:                                   ; preds = %for.end18.i.i.if.else.i112.i_crit_edge, %for.inc17.i.i.if.else.i112.i_crit_edge, %if.end7.i.i.if.else.i112.i_crit_edge
  %p.077.i.i = phi ptr [ %p.081.i.i, %for.end18.i.i.if.else.i112.i_crit_edge ], [ %partial.0.i.i, %if.end7.i.i.if.else.i112.i_crit_edge ], [ %incdec.ptr.i110.i, %for.inc17.i.i.if.else.i112.i_crit_edge ]
  %82 = ptrtoint ptr %p.077.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p.077.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %83, align 2
  %86 = ptrtoint ptr %nr.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %nr.i, align 2
  store i16 0, ptr %83, align 2
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i112.i, %if.then26.i.i
  %p.078.i.i = phi ptr [ %p.077.i.i, %if.else.i112.i ], [ %add.ptr2.i.i, %if.then26.i.i ]
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  %cmp3283.i.i = icmp ugt ptr %partial.0.i.i, %p.078.i.i
  br i1 %cmp3283.i.i, label %if.end31.i.i.while.body.i.i_crit_edge, label %if.end31.i.i.find_shared.exit.i_crit_edge

if.end31.i.i.find_shared.exit.i_crit_edge:        ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_shared.exit.i

if.end31.i.i.while.body.i.i_crit_edge:            ; preds = %if.end31.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %brelse.exit.i.i.while.body.i.i_crit_edge, %if.end31.i.i.while.body.i.i_crit_edge
  %partial.184.i.i = phi ptr [ %incdec.ptr35.i.i, %brelse.exit.i.i.while.body.i.i_crit_edge ], [ %partial.0.i.i, %if.end31.i.i.while.body.i.i_crit_edge ]
  %bh34.i.i = getelementptr inbounds %struct.Indirect, ptr %partial.184.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %bh34.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bh34.i.i, align 4
  %tobool.not.i68.i.i = icmp eq ptr %88, null
  br i1 %tobool.not.i68.i.i, label %while.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

while.body.i.i.brelse.exit.i.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %88) #6
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %while.body.i.i.brelse.exit.i.i_crit_edge
  %incdec.ptr35.i.i = getelementptr %struct.Indirect, ptr %partial.184.i.i, i32 -1
  %cmp32.i.i = icmp ugt ptr %incdec.ptr35.i.i, %p.078.i.i
  br i1 %cmp32.i.i, label %brelse.exit.i.i.while.body.i.i_crit_edge, label %brelse.exit.i.i.find_shared.exit.i_crit_edge

brelse.exit.i.i.find_shared.exit.i_crit_edge:     ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_shared.exit.i

brelse.exit.i.i.while.body.i.i_crit_edge:         ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

find_shared.exit.i:                               ; preds = %brelse.exit.i.i.find_shared.exit.i_crit_edge, %if.end31.i.i.find_shared.exit.i_crit_edge, %if.then6.i.i
  %partial.2.i.i = phi ptr [ %partial.0.i.i, %if.then6.i.i ], [ %partial.0.i.i, %if.end31.i.i.find_shared.exit.i_crit_edge ], [ %incdec.ptr35.i.i, %brelse.exit.i.i.find_shared.exit.i_crit_edge ]
  %89 = ptrtoint ptr %nr.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %nr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool16.not.i = icmp eq i16 %90, 0
  br i1 %tobool16.not.i, label %find_shared.exit.i.if.end27.i_crit_edge, label %if.then17.i

find_shared.exit.i.if.end27.i_crit_edge:          ; preds = %find_shared.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then17.i:                                      ; preds = %find_shared.exit.i
  %cmp19.i = icmp eq ptr %partial.2.i.i, %chain.i
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %partial.2.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %92, ptr noundef %inode) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then21.i
  %add.ptr23.i = getelementptr inbounds i16, ptr %nr.i, i32 1
  %add.ptr25.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %retval.0.i.ph.i
  %add.ptr26.i = getelementptr %struct.Indirect, ptr %add.ptr25.i, i32 -1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr26.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %partial.2.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr.i, ptr noundef %add.ptr23.i, i32 noundef %sub.ptr.div.i) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end22.i, %find_shared.exit.i.if.end27.i_crit_edge
  %cmp29127.i = icmp ugt ptr %partial.2.i.i, %chain.i
  br i1 %cmp29127.i, label %while.body.lr.ph.i, label %if.end27.i.do_indirects.i_crit_edge

if.end27.i.do_indirects.i_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_indirects.i

while.body.lr.ph.i:                               ; preds = %if.end27.i
  %add.ptr35.i = getelementptr %struct.Indirect, ptr %chain.i, i32 %retval.0.i.ph.i
  %add.ptr36.i = getelementptr %struct.Indirect, ptr %add.ptr35.i, i32 -1
  %sub.ptr.lhs.cast37.i = ptrtoint ptr %add.ptr36.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %partial.0128.i = phi ptr [ %partial.2.i.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %brelse.exit.i.while.body.i_crit_edge ]
  %93 = ptrtoint ptr %partial.0128.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %partial.0128.i, align 4
  %add.ptr31.i = getelementptr i16, ptr %94, i32 1
  %bh32.i = getelementptr inbounds %struct.Indirect, ptr %partial.0128.i, i32 0, i32 2
  %95 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh32.i, align 4
  %b_data.i113.i = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %b_data.i113.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data.i113.i, align 4
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 4
  %99 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %b_size.i.i, align 8
  %add.ptr.i114.i = getelementptr i8, ptr %98, i32 %100
  %sub.ptr.rhs.cast38.i = ptrtoint ptr %partial.0128.i to i32
  %sub.ptr.sub39.i = sub i32 %sub.ptr.lhs.cast37.i, %sub.ptr.rhs.cast38.i
  %sub.ptr.div40.i = sdiv exact i32 %sub.ptr.sub39.i, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef %add.ptr31.i, ptr noundef %add.ptr.i114.i, i32 noundef %sub.ptr.div40.i) #6
  %101 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bh32.i, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %102, ptr noundef %inode) #6
  %103 = ptrtoint ptr %bh32.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bh32.i, align 4
  %tobool.not.i115.i = icmp eq ptr %104, null
  br i1 %tobool.not.i115.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i116.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.then.i116.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %104) #6
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i116.i, %while.body.i.brelse.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %partial.0128.i, i32 -1
  %cmp29.i = icmp ugt ptr %incdec.ptr.i, %chain.i
  br i1 %cmp29.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.do_indirects.i_crit_edge

brelse.exit.i.do_indirects.i_crit_edge:           ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_indirects.i

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do_indirects.i:                                   ; preds = %brelse.exit.i.do_indirects.i_crit_edge, %if.end27.i.do_indirects.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub12.i)
  %cmp44129.i = icmp slt i32 %sub12.i, 2
  br i1 %cmp44129.i, label %do_indirects.i.while.body46.lr.ph.i_crit_edge, label %do_indirects.i.while.end56.i_crit_edge

do_indirects.i.while.end56.i_crit_edge:           ; preds = %do_indirects.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end56.i

do_indirects.i.while.body46.lr.ph.i_crit_edge:    ; preds = %do_indirects.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46.lr.ph.i

while.body46.lr.ph.i:                             ; preds = %do_indirects.i.while.body46.lr.ph.i_crit_edge, %for.inc.i.i.while.body46.lr.ph.i_crit_edge, %if.then7.i.while.body46.lr.ph.i_crit_edge
  %first_whole.0137.i = phi i32 [ %sub12.i, %do_indirects.i.while.body46.lr.ph.i_crit_edge ], [ 0, %if.then7.i.while.body46.lr.ph.i_crit_edge ], [ 0, %for.inc.i.i.while.body46.lr.ph.i_crit_edge ]
  %add.ptr53.i = getelementptr inbounds i16, ptr %nr.i, i32 1
  br label %while.body46.i

while.body46.i:                                   ; preds = %if.end55.i.while.body46.i_crit_edge, %while.body46.lr.ph.i
  %first_whole.1130.i = phi i32 [ %first_whole.0137.i, %while.body46.lr.ph.i ], [ %inc.pre-phi.i, %if.end55.i.while.body46.i_crit_edge ]
  %add47.i = add nsw i32 %first_whole.1130.i, 7
  %arrayidx48.i = getelementptr i16, ptr %add.ptr.i.i.i, i32 %add47.i
  %105 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx48.i, align 2
  %107 = ptrtoint ptr %nr.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %nr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool49.not.i = icmp eq i16 %106, 0
  br i1 %tobool49.not.i, label %while.body46.if.end55_crit_edge.i, label %if.then50.i

while.body46.if.end55_crit_edge.i:                ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i = add i32 %first_whole.1130.i, 1
  br label %if.end55.i

if.then50.i:                                      ; preds = %while.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %arrayidx48.i, align 2
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  %add54.i = add i32 %first_whole.1130.i, 1
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr.i, ptr noundef %add.ptr53.i, i32 noundef %add54.i) #6
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then50.i, %while.body46.if.end55_crit_edge.i
  %inc.pre-phi.i = phi i32 [ %.pre.i, %while.body46.if.end55_crit_edge.i ], [ %add54.i, %if.then50.i ]
  %exitcond.not.i = icmp eq i32 %inc.pre-phi.i, 2
  br i1 %exitcond.not.i, label %if.end55.i.while.end56.i_crit_edge, label %if.end55.i.while.body46.i_crit_edge

if.end55.i.while.body46.i_crit_edge:              ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body46.i

if.end55.i.while.end56.i_crit_edge:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end56.i

while.end56.i:                                    ; preds = %if.end55.i.while.end56.i_crit_edge, %do_indirects.i.while.end56.i_crit_edge
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #6
  %109 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  %110 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %truncate.exit

truncate.exit:                                    ; preds = %while.end56.i, %if.end.i.i.truncate.exit_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nr.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %chain.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %offsets.i) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @V1_minix_blocks(i64 noundef %size, ptr nocapture noundef readonly %sb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %nblocks.exit

while.body.lr.ph.i:                               ; preds = %entry
  %div24.i = lshr i32 %3, 1
  %sub8.peel.i = add nsw i32 %div24.i, -8
  %add9.peel.i = add i32 %sub8.peel.i, %conv4.i
  %div12.peel.i = udiv i32 %add9.peel.i, %div24.i
  %add13.peel.i = add i32 %div12.peel.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div12.peel.i)
  %cmp.peel.i = icmp ugt i32 %div12.peel.i, 1
  br i1 %cmp.peel.i, label %while.end.loopexit.loopexit.i, label %while.body.lr.ph.i.nblocks.exit_crit_edge

while.body.lr.ph.i.nblocks.exit_crit_edge:        ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nblocks.exit

while.end.loopexit.loopexit.i:                    ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub8.i = add nsw i32 %div24.i, -2
  %add9.i = add i32 %sub8.i, %div12.peel.i
  %div12.i = udiv i32 %add9.i, %div24.i
  %add13.i = add i32 %div12.i, %add13.peel.i
  br label %nblocks.exit

nblocks.exit:                                     ; preds = %while.end.loopexit.loopexit.i, %while.body.lr.ph.i.nblocks.exit_crit_edge, %entry.nblocks.exit_crit_edge
  %res.0.lcssa.i = phi i32 [ %conv4.i, %entry.nblocks.exit_crit_edge ], [ %add13.peel.i, %while.body.lr.ph.i.nblocks.exit_crit_edge ], [ %add13.i, %while.end.loopexit.loopexit.i ]
  ret i32 %res.0.lcssa.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  %cmp5.i = icmp ult ptr %p, %q
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp5.i, label %for.body.lr.ph, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.addr.028 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.addr.028 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p.addr.028, align 2
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %p.addr.028 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %p.addr.028, align 2
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %conv = zext i16 %1 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %conv, i32 noundef %8, i32 noundef 8) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %bforget.exit

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

bforget.exit:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @__bforget(ptr noundef nonnull %call.i) #6
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %conv.i) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %for.inc

for.inc:                                          ; preds = %bforget.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i16, ptr %p.addr.028, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %q
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end8_crit_edge

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else:                                          ; preds = %entry
  br i1 %cmp5.i, label %if.else.for.body.i_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %p.addr.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %p, %if.else.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %p.addr.06.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %p.addr.06.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i24 = icmp eq i16 %14, 0
  br i1 %tobool.not.i24, label %for.body.i.for.inc.i_crit_edge, label %if.then.i25

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i25:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %p.addr.06.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %p.addr.06.i, align 2
  tail call void @minix_free_block(ptr noundef %inode, i32 noundef %conv.i.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i25, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr i16, ptr %p.addr.06.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %q
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %if.else.if.end8_crit_edge, %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/minix/itree_v1.c", i32 30, i32 3}
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
!20 = !{!"auto-init"}
!21 = !{i64 2148674359, i64 2148674391, i64 2148674420, i64 2148674454, i64 2148674485, i64 2148674508}
!22 = !{i64 2148763464}
