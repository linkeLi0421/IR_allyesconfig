; ModuleID = '/llk/IR_all_yes/fs/sysv/itree.c_pt.bc'
source_filename = "../fs/sysv/itree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.Indirect = type { ptr, i32, ptr }
%struct.timespec64 = type { i64, i32 }
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
%struct.sysv_sb_info = type { ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.mutex }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@sysv_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @sysv_writepage, ptr @sysv_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @sysv_write_begin, ptr @generic_write_end, ptr @sysv_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pointers_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pointers_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@block_to_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysv_block_map: block < 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block_to_path\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/sysv/itree.c\00", [16 x i8] zeroinitializer }, align 32
@block_to_path._entry_ptr = internal global ptr @block_to_path._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4294967285, i64 4294967291]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"sysv_aops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 497, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"pointers_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 65, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 366, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [19 x i8] c"../fs/sysv/itree.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 33, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @block_to_path._entry, ptr @block_to_path._entry_ptr, ptr @sysv_aops, ptr @pointers_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysv_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pointers_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_to_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysv_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  %nr = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #6
  %0 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %3 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #6
  %4 = call ptr @memset(ptr %chain, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #6
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %7 = and i16 %6, -4096
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.if.end_crit_edge
    i16 16384, label %entry.if.end_crit_edge194
    i16 -24576, label %entry.if.end_crit_edge195
  ]

entry.if.end_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge194, %entry.if.end_crit_edge195
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize, align 16
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size, align 8
  %conv14 = zext i32 %12 to i64
  %add = add nsw i64 %conv14, -1
  %sub = add i64 %add, %14
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %16 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv17 = trunc i64 %shr to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %call19 = tail call i32 @block_truncate_page(ptr noundef %18, i64 noundef %14, ptr noundef nonnull @get_block) #6
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ind_per_block_bits.i = getelementptr inbounds %struct.sysv_sb_info, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %s_ind_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_ind_per_block_bits.i, align 4
  %s_ind_per_block.i = getelementptr inbounds %struct.sysv_sb_info, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %s_ind_per_block.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_ind_per_block.i, align 4
  %s_ind_per_block_2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %22, i32 0, i32 8
  %27 = ptrtoint ptr %s_ind_per_block_2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_ind_per_block_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17)
  %cmp.i = icmp slt i32 %conv17, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv17)
  %cmp2.i = icmp ult i32 %conv17, 10
  br i1 %cmp2.i, label %if.then28, label %if.else4.i

if.else4.i:                                       ; preds = %if.else.i
  %sub.i = add nsw i32 %conv17, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %26)
  %cmp5.i = icmp ult i32 %sub.i, %26
  br i1 %cmp5.i, label %if.then6.i, label %if.else11.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %offsets, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i, ptr %0, align 4
  br label %if.end30

if.else11.i:                                      ; preds = %if.else4.i
  %sub12.i = sub i32 %sub.i, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %28)
  %cmp13.i = icmp ult i32 %sub12.i, %28
  br i1 %cmp13.i, label %if.then14.i, label %if.else22.i

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 11, ptr %offsets, align 4
  %shr.i = ashr i32 %sub12.i, %24
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i, ptr %0, align 4
  %sub19.i = add i32 %26, -1
  %and.i = and i32 %sub12.i, %sub19.i
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %1, align 4
  br label %if.end30

if.else22.i:                                      ; preds = %if.else11.i
  %sub23.i = sub i32 %sub12.i, %28
  %mul.i = shl i32 %24, 1
  %shr24.i = ashr i32 %sub23.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr24.i, i32 %26)
  %cmp25.i = icmp ult i32 %shr24.i, %26
  br i1 %cmp25.i, label %if.then26.i, label %if.else22.i.cleanup_crit_edge

if.else22.i.cleanup_crit_edge:                    ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %offsets, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr24.i, ptr %0, align 4
  %shr33.i = ashr i32 %sub23.i, %24
  %sub34.i = add i32 %26, -1
  %and35.i = and i32 %shr33.i, %sub34.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and35.i, ptr %1, align 4
  %and39.i = and i32 %sub23.i, %sub34.i
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and39.i, ptr %2, align 4
  br label %if.end30

if.then28:                                        ; preds = %if.else.i
  %38 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv17, ptr %offsets, align 4
  %add.ptr = getelementptr i32, ptr %add.ptr.i, i32 %conv17
  %add.ptr29 = getelementptr i8, ptr %inode, i32 -16
  %cmp6.i = icmp ult ptr %add.ptr, %add.ptr29
  br i1 %cmp6.i, label %if.then28.for.body.i_crit_edge, label %if.then28.while.body63.lr.ph_crit_edge

if.then28.while.body63.lr.ph_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body63.lr.ph

if.then28.for.body.i_crit_edge:                   ; preds = %if.then28
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then28.for.body.i_crit_edge
  %p.addr.07.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %add.ptr, %if.then28.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %p.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p.addr.07.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %p.addr.07.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %p.addr.07.i, align 4
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  tail call void @sysv_free_block(ptr noundef %43, i32 noundef %40) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.07.i, i32 1
  %cmp.i139 = icmp ult ptr %incdec.ptr.i, %add.ptr29
  br i1 %cmp.i139, label %if.end.i.for.body.i_crit_edge, label %if.end.i.while.body63.lr.ph_crit_edge

if.end.i.while.body63.lr.ph_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body63.lr.ph

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end30:                                         ; preds = %if.then26.i, %if.then14.i, %if.then6.i
  %cmp61181 = phi i1 [ true, %if.then6.i ], [ true, %if.then14.i ], [ false, %if.then26.i ]
  %cmp.i140.2 = phi i1 [ false, %if.then6.i ], [ false, %if.then14.i ], [ true, %if.then26.i ]
  %n.0.i.ph = phi i32 [ 2, %if.then6.i ], [ 3, %if.then14.i ], [ 4, %if.then26.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #6
  %44 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %err.i, align 4, !annotation !22
  %45 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %nr, align 4
  %sub.i141 = add nsw i32 %n.0.i.ph, -1
  %arrayidx.i = getelementptr i32, ptr %offsets, i32 %sub.i141
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i142 = icmp eq i32 %47, 0
  %tobool.not.i142.not = xor i1 %tobool.not.i142, true
  %brmerge = select i1 %tobool.not.i142.not, i1 true, i1 %cmp5.i
  %n.0.i.ph.mux = select i1 %tobool.not.i142.not, i32 %n.0.i.ph, i32 1
  br i1 %brmerge, label %if.end30.for.end.i_crit_edge, label %land.rhs.i.1

if.end30.for.end.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

land.rhs.i.1:                                     ; preds = %if.end30
  %sub.i141.1 = add nsw i32 %n.0.i.ph, -2
  %arrayidx.i.1 = getelementptr i32, ptr %offsets, i32 %sub.i141.1
  %48 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i142.1 = icmp eq i32 %49, 0
  %tobool.not.i142.1.not = xor i1 %tobool.not.i142.1, true
  %cmp.i140.2.not = xor i1 %cmp.i140.2, true
  %brmerge193 = or i1 %tobool.not.i142.1.not, %cmp.i140.2.not
  %sub.i141.mux = select i1 %tobool.not.i142.1.not, i32 %sub.i141, i32 1
  br i1 %brmerge193, label %land.rhs.i.1.for.end.i_crit_edge, label %land.rhs.i.2

land.rhs.i.1.for.end.i_crit_edge:                 ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

land.rhs.i.2:                                     ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i141.2 = add nsw i32 %n.0.i.ph, -3
  %arrayidx.i.2 = getelementptr i32, ptr %offsets, i32 %sub.i141.2
  %50 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i142.2 = icmp eq i32 %51, 0
  %spec.select = select i1 %tobool.not.i142.2, i32 1, i32 %sub.i141.1
  br label %for.end.i

for.end.i:                                        ; preds = %land.rhs.i.2, %land.rhs.i.1.for.end.i_crit_edge, %if.end30.for.end.i_crit_edge
  %k.0.lcssa.i = phi i32 [ %n.0.i.ph.mux, %if.end30.for.end.i_crit_edge ], [ %sub.i141.mux, %land.rhs.i.1.for.end.i_crit_edge ], [ %spec.select, %land.rhs.i.2 ]
  tail call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #6
  %call.i = call fastcc ptr @get_branch(ptr noundef %inode, i32 noundef %k.0.lcssa.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err.i) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  %add.ptr.i143 = getelementptr %struct.Indirect, ptr %chain, i32 %k.0.lcssa.i
  %add.ptr2.i = getelementptr %struct.Indirect, ptr %add.ptr.i143, i32 -1
  %partial.0.i = select i1 %tobool1.not.i, ptr %add.ptr2.i, ptr %call.i
  %add.ptr2.i.sroa.gep = getelementptr inbounds %struct.Indirect, ptr %add.ptr2.i, i32 0, i32 1
  %call.i.sroa.gep = getelementptr inbounds %struct.Indirect, ptr %call.i, i32 0, i32 1
  %partial.0.i.sroa.sel = select i1 %tobool1.not.i, ptr %add.ptr2.i.sroa.gep, ptr %call.i.sroa.gep
  %52 = ptrtoint ptr %partial.0.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %partial.0.i.sroa.sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not.i = icmp eq i32 %53, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %for.end.i.if.end7.i_crit_edge

for.end.i.if.end7.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %54 = ptrtoint ptr %partial.0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %partial.0.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool5.not.i = icmp eq i32 %57, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then6.i144

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i144:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  br label %find_shared.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %for.end.i.if.end7.i_crit_edge
  %cmp970.i = icmp ugt ptr %partial.0.i, %chain
  br i1 %cmp970.i, label %if.end7.i.land.rhs10.i_crit_edge, label %if.end7.i.if.else.i146_crit_edge

if.end7.i.if.else.i146_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i146

if.end7.i.land.rhs10.i_crit_edge:                 ; preds = %if.end7.i
  br label %land.rhs10.i

land.rhs10.i:                                     ; preds = %for.inc16.i.land.rhs10.i_crit_edge, %if.end7.i.land.rhs10.i_crit_edge
  %p.071.i = phi ptr [ %incdec.ptr.i145, %for.inc16.i.land.rhs10.i_crit_edge ], [ %partial.0.i, %if.end7.i.land.rhs10.i_crit_edge ]
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %p.071.i, i32 0, i32 2
  %58 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i, align 4
  %62 = ptrtoint ptr %p.071.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p.071.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %land.rhs10.i
  %p.addr.0.i.i = phi ptr [ %61, %land.rhs10.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %cmp.i.i = icmp ult ptr %p.addr.0.i.i, %63
  br i1 %cmp.i.i, label %while.body.i.i, label %for.inc16.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %p.addr.0.i.i, i32 1
  %64 = ptrtoint ptr %p.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %p.addr.0.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %for.end17.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

for.inc16.i:                                      ; preds = %while.cond.i.i
  %incdec.ptr.i145 = getelementptr %struct.Indirect, ptr %p.071.i, i32 -1
  %cmp9.i = icmp ugt ptr %incdec.ptr.i145, %chain
  br i1 %cmp9.i, label %for.inc16.i.land.rhs10.i_crit_edge, label %for.inc16.i.if.else.i146_crit_edge

for.inc16.i.if.else.i146_crit_edge:               ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i146

for.inc16.i.land.rhs10.i_crit_edge:               ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs10.i

for.end17.i:                                      ; preds = %while.body.i.i
  %cmp20.i = icmp eq ptr %p.071.i, %add.ptr2.i
  br i1 %cmp20.i, label %if.then23.i, label %for.end17.i.if.else.i146_crit_edge

for.end17.i.if.else.i146_crit_edge:               ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i146

if.then23.i:                                      ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr2.i, align 4
  %incdec.ptr25.i = getelementptr i32, ptr %67, i32 -1
  store ptr %incdec.ptr25.i, ptr %add.ptr2.i, align 4
  br label %if.end28.i

if.else.i146:                                     ; preds = %for.end17.i.if.else.i146_crit_edge, %for.inc16.i.if.else.i146_crit_edge, %if.end7.i.if.else.i146_crit_edge
  %p.068.i = phi ptr [ %p.071.i, %for.end17.i.if.else.i146_crit_edge ], [ %partial.0.i, %if.end7.i.if.else.i146_crit_edge ], [ %incdec.ptr.i145, %for.inc16.i.if.else.i146_crit_edge ]
  %68 = ptrtoint ptr %p.068.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %p.068.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %72 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %nr, align 4
  %73 = load ptr, ptr %p.068.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i146, %if.then23.i
  %p.069.i = phi ptr [ %p.068.i, %if.else.i146 ], [ %add.ptr2.i, %if.then23.i ]
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  %cmp2973.i = icmp ugt ptr %partial.0.i, %p.069.i
  br i1 %cmp2973.i, label %if.end28.i.while.body.i_crit_edge, label %if.end28.i.find_shared.exit_crit_edge

if.end28.i.find_shared.exit_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_shared.exit

if.end28.i.while.body.i_crit_edge:                ; preds = %if.end28.i
  br label %while.body.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %if.end28.i.while.body.i_crit_edge
  %partial.174.i = phi ptr [ %incdec.ptr31.i, %brelse.exit.i.while.body.i_crit_edge ], [ %partial.0.i, %if.end28.i.while.body.i_crit_edge ]
  %bh30.i = getelementptr inbounds %struct.Indirect, ptr %partial.174.i, i32 0, i32 2
  %75 = ptrtoint ptr %bh30.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bh30.i, align 4
  %tobool.not.i59.i = icmp eq ptr %76, null
  br i1 %tobool.not.i59.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %76) #6
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %incdec.ptr31.i = getelementptr %struct.Indirect, ptr %partial.174.i, i32 -1
  %cmp29.i = icmp ugt ptr %incdec.ptr31.i, %p.069.i
  br i1 %cmp29.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.find_shared.exit_crit_edge

brelse.exit.i.find_shared.exit_crit_edge:         ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_shared.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

find_shared.exit:                                 ; preds = %brelse.exit.i.find_shared.exit_crit_edge, %if.end28.i.find_shared.exit_crit_edge, %if.then6.i144
  %partial.2.i = phi ptr [ %partial.0.i, %if.then6.i144 ], [ %partial.0.i, %if.end28.i.find_shared.exit_crit_edge ], [ %incdec.ptr31.i, %brelse.exit.i.find_shared.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #6
  %77 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not = icmp eq i32 %78, 0
  br i1 %tobool.not, label %find_shared.exit.if.end44_crit_edge, label %if.then34

find_shared.exit.if.end44_crit_edge:              ; preds = %find_shared.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then34:                                        ; preds = %find_shared.exit
  %cmp36 = icmp eq ptr %partial.2.i, %chain
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end39

if.else:                                          ; preds = %if.then34
  %bh = getelementptr inbounds %struct.Indirect, ptr %partial.2.i, i32 0, i32 2
  %79 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %80, ptr noundef %inode) #6
  %81 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_flags.i, align 4
  %and.i148 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool.not.i149 = icmp eq i32 %and.i148, 0
  br i1 %tobool.not.i149, label %lor.lhs.false.i, label %if.else.if.then.i151_crit_edge

if.else.if.then.i151_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151

lor.lhs.false.i:                                  ; preds = %if.else
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %85 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_flags.i, align 4
  %and1.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end39_crit_edge, label %lor.lhs.false.i.if.then.i151_crit_edge

lor.lhs.false.i.if.then.i151_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151

lor.lhs.false.i.if.end39_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then.i151:                                     ; preds = %lor.lhs.false.i.if.then.i151_crit_edge, %if.else.if.then.i151_crit_edge
  %call.i150 = call i32 @sync_dirty_buffer(ptr noundef %80) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then.i151, %lor.lhs.false.i.if.end39_crit_edge, %if.then38
  %add.ptr40 = getelementptr inbounds i32, ptr %nr, i32 1
  %add.ptr42 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %add.ptr43 = getelementptr %struct.Indirect, ptr %add.ptr42, i32 -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr43 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %partial.2.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr40, i32 noundef %sub.ptr.div)
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %find_shared.exit.if.end44_crit_edge
  %cmp46179 = icmp ugt ptr %partial.2.i, %chain
  br i1 %cmp46179, label %while.body.lr.ph, label %if.end44.do_indirects_crit_edge

if.end44.do_indirects_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_indirects

while.body.lr.ph:                                 ; preds = %if.end44
  %add.ptr52 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %add.ptr53 = getelementptr %struct.Indirect, ptr %add.ptr52, i32 -1
  %sub.ptr.lhs.cast54 = ptrtoint ptr %add.ptr53 to i32
  %i_flags.i159 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %partial.0180 = phi ptr [ %partial.2.i, %while.body.lr.ph ], [ %incdec.ptr, %brelse.exit.while.body_crit_edge ]
  %87 = ptrtoint ptr %partial.0180 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %partial.0180, align 4
  %add.ptr48 = getelementptr i32, ptr %88, i32 1
  %bh49 = getelementptr inbounds %struct.Indirect, ptr %partial.0180, i32 0, i32 2
  %89 = ptrtoint ptr %bh49 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bh49, align 4
  %b_data.i153 = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data.i153 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data.i153, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 4
  %93 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %b_size.i, align 8
  %add.ptr.i154 = getelementptr i8, ptr %92, i32 %94
  %sub.ptr.rhs.cast55 = ptrtoint ptr %partial.0180 to i32
  %sub.ptr.sub56 = sub i32 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div57 = sdiv exact i32 %sub.ptr.sub56, 12
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef %add.ptr48, ptr noundef %add.ptr.i154, i32 noundef %sub.ptr.div57)
  %95 = ptrtoint ptr %bh49 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh49, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %96, ptr noundef %inode) #6
  %97 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb, align 4
  %s_flags.i156 = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %s_flags.i156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %s_flags.i156, align 4
  %and.i157 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %lor.lhs.false.i162, label %while.body.if.then.i164_crit_edge

while.body.if.then.i164_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i164

lor.lhs.false.i162:                               ; preds = %while.body
  %101 = ptrtoint ptr %i_flags.i159 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_flags.i159, align 4
  %and1.i160 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i160)
  %tobool2.not.i161 = icmp eq i32 %and1.i160, 0
  br i1 %tobool2.not.i161, label %lor.lhs.false.i162.dirty_indirect.exit166_crit_edge, label %lor.lhs.false.i162.if.then.i164_crit_edge

lor.lhs.false.i162.if.then.i164_crit_edge:        ; preds = %lor.lhs.false.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i164

lor.lhs.false.i162.dirty_indirect.exit166_crit_edge: ; preds = %lor.lhs.false.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %dirty_indirect.exit166

if.then.i164:                                     ; preds = %lor.lhs.false.i162.if.then.i164_crit_edge, %while.body.if.then.i164_crit_edge
  %call.i163 = call i32 @sync_dirty_buffer(ptr noundef %96) #6
  br label %dirty_indirect.exit166

dirty_indirect.exit166:                           ; preds = %if.then.i164, %lor.lhs.false.i162.dirty_indirect.exit166_crit_edge
  %103 = ptrtoint ptr %bh49 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bh49, align 4
  %tobool.not.i167 = icmp eq ptr %104, null
  br i1 %tobool.not.i167, label %dirty_indirect.exit166.brelse.exit_crit_edge, label %if.then.i168

dirty_indirect.exit166.brelse.exit_crit_edge:     ; preds = %dirty_indirect.exit166
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i168:                                     ; preds = %dirty_indirect.exit166
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %104) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i168, %dirty_indirect.exit166.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.0180, i32 -1
  %cmp46 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp46, label %brelse.exit.while.body_crit_edge, label %brelse.exit.do_indirects_crit_edge

brelse.exit.do_indirects_crit_edge:               ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_indirects

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do_indirects:                                     ; preds = %brelse.exit.do_indirects_crit_edge, %if.end44.do_indirects_crit_edge
  br i1 %cmp61181, label %do_indirects.while.body63.lr.ph_crit_edge, label %do_indirects.while.end74_crit_edge

do_indirects.while.end74_crit_edge:               ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end74

do_indirects.while.body63.lr.ph_crit_edge:        ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body63.lr.ph

while.body63.lr.ph:                               ; preds = %do_indirects.while.body63.lr.ph_crit_edge, %if.end.i.while.body63.lr.ph_crit_edge, %if.then28.while.body63.lr.ph_crit_edge
  %n.0.i173188 = phi i32 [ %n.0.i.ph, %do_indirects.while.body63.lr.ph_crit_edge ], [ 1, %if.then28.while.body63.lr.ph_crit_edge ], [ 1, %if.end.i.while.body63.lr.ph_crit_edge ]
  %add.ptr72 = getelementptr inbounds i32, ptr %nr, i32 1
  br label %while.body63

while.body63:                                     ; preds = %if.end73.while.body63_crit_edge, %while.body63.lr.ph
  %n.0182 = phi i32 [ %n.0.i173188, %while.body63.lr.ph ], [ %inc, %if.end73.while.body63_crit_edge ]
  %sub65 = add nuw nsw i32 %n.0182, 9
  %arrayidx66 = getelementptr i32, ptr %add.ptr.i, i32 %sub65
  %105 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx66, align 4
  %107 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool67.not = icmp eq i32 %106, 0
  br i1 %tobool67.not, label %while.body63.if.end73_crit_edge, label %if.then68

while.body63.if.end73_crit_edge:                  ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then68:                                        ; preds = %while.body63
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx66, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  call fastcc void @free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr72, i32 noundef %n.0182)
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %while.body63.if.end73_crit_edge
  %inc = add nuw nsw i32 %n.0182, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end73.while.end74_crit_edge, label %if.end73.while.body63_crit_edge

if.end73.while.body63_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body63

if.end73.while.end74_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end74

while.end74:                                      ; preds = %if.end73.while.end74_crit_edge, %do_indirects.while.end74_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #6
  %109 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %110 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 10
  %113 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_flags, align 4
  %and76 = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %while.end74.if.then81_crit_edge

while.end74.if.then81_crit_edge:                  ; preds = %while.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

lor.lhs.false78:                                  ; preds = %while.end74
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %115 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_flags, align 4
  %and79 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else83, label %lor.lhs.false78.if.then81_crit_edge

lor.lhs.false78.if.then81_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false78.if.then81_crit_edge, %while.end74.if.then81_crit_edge
  %call82 = call i32 @sysv_sync_inode(ptr noundef %inode) #6
  br label %cleanup

if.else83:                                        ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else83, %if.then81, %if.else22.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %err = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -5, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #6
  %1 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %4 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #6
  %5 = call ptr @memset(ptr %chain, i32 255, i32 48)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %conv = trunc i64 %iblock to i32
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ind_per_block_bits.i = getelementptr inbounds %struct.sysv_sb_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %s_ind_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_ind_per_block_bits.i, align 4
  %s_ind_per_block.i = getelementptr inbounds %struct.sysv_sb_info, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %s_ind_per_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ind_per_block.i, align 4
  %s_ind_per_block_2.i = getelementptr inbounds %struct.sysv_sb_info, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %s_ind_per_block_2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_ind_per_block_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i = icmp slt i32 %conv, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %out

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv)
  %cmp2.i = icmp ult i32 %conv, 10
  br i1 %cmp2.i, label %if.then3.i, label %if.else4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %offsets, align 4
  br label %block_to_path.exit

if.else4.i:                                       ; preds = %if.else.i
  %sub.i = add nsw i32 %conv, -10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp5.i = icmp ult i32 %sub.i, %13
  br i1 %cmp5.i, label %if.then6.i, label %if.else11.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10, ptr %offsets, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %1, align 4
  br label %block_to_path.exit

if.else11.i:                                      ; preds = %if.else4.i
  %sub12.i = sub i32 %sub.i, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %15)
  %cmp13.i = icmp ult i32 %sub12.i, %15
  br i1 %cmp13.i, label %if.then14.i, label %if.else22.i

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 11, ptr %offsets, align 4
  %shr.i = ashr i32 %sub12.i, %11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %1, align 4
  %sub19.i = add i32 %13, -1
  %and.i = and i32 %sub12.i, %sub19.i
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %2, align 4
  br label %block_to_path.exit

if.else22.i:                                      ; preds = %if.else11.i
  %sub23.i = sub i32 %sub12.i, %15
  %mul.i = shl i32 %11, 1
  %shr24.i = ashr i32 %sub23.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr24.i, i32 %13)
  %cmp25.i = icmp ult i32 %shr24.i, %13
  br i1 %cmp25.i, label %if.then26.i, label %if.else22.i.out_crit_edge

if.else22.i.out_crit_edge:                        ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %offsets, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr24.i, ptr %1, align 4
  %shr33.i = ashr i32 %sub23.i, %11
  %sub34.i = add i32 %13, -1
  %and35.i = and i32 %shr33.i, %sub34.i
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and35.i, ptr %2, align 4
  %and39.i = and i32 %sub23.i, %sub34.i
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and39.i, ptr %3, align 4
  br label %block_to_path.exit

block_to_path.exit:                               ; preds = %if.then26.i, %if.then14.i, %if.then6.i, %if.then3.i
  %n.0.i = phi i32 [ 1, %if.then3.i ], [ 2, %if.then6.i ], [ 3, %if.then14.i ], [ 4, %if.then26.i ]
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  %call4128 = call fastcc ptr @get_branch(ptr noundef %inode, i32 noundef %n.0.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err)
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  %tobool.not129 = icmp eq ptr %call4128, null
  br i1 %tobool.not129, label %block_to_path.exit.got_it_crit_edge, label %if.end11.lr.ph

block_to_path.exit.got_it_crit_edge:              ; preds = %block_to_path.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

if.end11.lr.ph:                                   ; preds = %block_to_path.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool12.not = icmp eq i32 %create, 0
  %add.ptr25 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.rhs.cast29 = ptrtoint ptr %chain to i32
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %if.end11

reread.loopexit:                                  ; preds = %brelse.exit114.reread.loopexit_crit_edge, %changed.reread.loopexit_crit_edge
  call void @_raw_read_lock(ptr noundef nonnull @pointers_lock) #6
  %call4 = call fastcc ptr @get_branch(ptr noundef %inode, i32 noundef %n.0.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err)
  call void @_raw_read_unlock(ptr noundef nonnull @pointers_lock) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %reread.loopexit.got_it_crit_edge, label %reread.loopexit.if.end11_crit_edge

reread.loopexit.if.end11_crit_edge:               ; preds = %reread.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

reread.loopexit.got_it_crit_edge:                 ; preds = %reread.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

got_it:                                           ; preds = %if.then.i, %if.end42.got_it_crit_edge, %reread.loopexit.got_it_crit_edge, %block_to_path.exit.got_it_crit_edge
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %sub = add nsw i32 %n.0.i, -1
  %key = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub, i32 1
  %28 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key, align 4
  %s_block_base.i = getelementptr inbounds %struct.sysv_sb_info, ptr %27, i32 0, i32 10
  %30 = ptrtoint ptr %s_block_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_block_base.i, align 4
  %s_bytesex.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s_bytesex.i.i, align 4
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %33, label %got_it.block_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i.i
    i8 0, label %if.then6.i.i
  ]

got_it.block_to_cpu.exit_crit_edge:               ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #8
  br label %block_to_cpu.exit

if.then.i.i:                                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = shl i32 %29, 8
  %shl.i.i.i = and i32 %and.i.i.i, -16711936
  %and1.i.i.i = lshr i32 %29, 8
  %shr.i.i.i = and i32 %and1.i.i.i, 16711935
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i
  br label %block_to_cpu.exit

if.then6.i.i:                                     ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #8
  %35 = call i32 @llvm.bswap.i32(i32 %29) #6
  br label %block_to_cpu.exit

block_to_cpu.exit:                                ; preds = %if.then6.i.i, %if.then.i.i, %got_it.block_to_cpu.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ %35, %if.then6.i.i ], [ %29, %got_it.block_to_cpu.exit_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %31
  %conv8 = sext i32 %add.i to i64
  %36 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bh_result, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %if.then.i.i79, label %block_to_cpu.exit.map_bh.exit_crit_edge

block_to_cpu.exit.map_bh.exit_crit_edge:          ; preds = %block_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_bh.exit

if.then.i.i79:                                    ; preds = %block_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #6
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i79, %block_to_cpu.exit.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %39 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %41 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %42 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv8, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %45 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %b_size.i, align 8
  %add.ptr = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i
  %add.ptr10 = getelementptr %struct.Indirect, ptr %add.ptr, i32 -1
  br label %cleanup

if.end11:                                         ; preds = %reread.loopexit.if.end11_crit_edge, %if.end11.lr.ph
  %call4130 = phi ptr [ %call4128, %if.end11.lr.ph ], [ %call4, %reread.loopexit.if.end11_crit_edge ]
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %47, label %if.end23 [
    i32 -5, label %lor.lhs.false.cleanup_crit_edge
    i32 -11, label %lor.lhs.false.changed_crit_edge
  ]

lor.lhs.false.changed_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %alloc_branch.exit, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %map_bh.exit
  %partial.0 = phi ptr [ %call4130, %alloc_branch.exit ], [ %add.ptr10, %map_bh.exit ], [ %call4130, %lor.lhs.false.cleanup_crit_edge ], [ %call4128, %if.end11.cleanup_crit_edge ]
  %cmp17133 = icmp ugt ptr %partial.0, %chain
  br i1 %cmp17133, label %cleanup.while.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %cleanup.while.body_crit_edge
  %partial.1134 = phi ptr [ %incdec.ptr, %brelse.exit.while.body_crit_edge ], [ %partial.0, %cleanup.while.body_crit_edge ]
  %bh = getelementptr inbounds %struct.Indirect, ptr %partial.1134, i32 0, i32 2
  %49 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bh, align 4
  %tobool.not.i80 = icmp eq ptr %50, null
  br i1 %tobool.not.i80, label %while.body.brelse.exit_crit_edge, label %if.then.i81

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i81:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %50) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i81, %while.body.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.1134, i32 -1
  %cmp17 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp17, label %brelse.exit.while.body_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

out:                                              ; preds = %brelse.exit.out_crit_edge, %cleanup.out_crit_edge, %if.else22.i.out_crit_edge, %do.end.i
  %51 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %52

if.end23:                                         ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast = ptrtoint ptr %call4130 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %sub.ptr.sub30 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i32 %sub.ptr.sub30, 12
  %add.ptr32 = getelementptr i32, ptr %offsets, i32 %sub.ptr.div31
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i83 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %s_blocksize.i83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize.i83, align 16
  %call.i = call i32 @sysv_new_block(ptr noundef %54) #6
  %key.i = getelementptr inbounds %struct.Indirect, ptr %call4130, i32 0, i32 1
  %57 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i84 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i84, label %if.end23.if.end29.i_crit_edge, label %for.cond.preheader.i

if.end23.if.end29.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

for.cond.preheader.i:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp104.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp104.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end29.i_crit_edge

for.cond.preheader.i.if.end29.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.0105.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %call5.i = call i32 @sysv_new_block(ptr noundef %59) #6
  %key7.i = getelementptr %struct.Indirect, ptr %call4130, i32 %n.0105.i, i32 1
  %60 = ptrtoint ptr %key7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call5.i, ptr %key7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool10.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool10.not.i, label %for.body.i.if.end29.i_crit_edge, label %if.end.i

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx6.i = getelementptr %struct.Indirect, ptr %call4130, i32 %n.0105.i
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i85 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i85, align 16
  %sub.i86 = add nsw i32 %n.0105.i, -1
  %key15.i = getelementptr %struct.Indirect, ptr %call4130, i32 %sub.i86, i32 1
  %65 = ptrtoint ptr %key15.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key15.i, align 4
  %s_block_base.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %64, i32 0, i32 10
  %67 = ptrtoint ptr %s_block_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_block_base.i.i, align 4
  %s_bytesex.i.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %64, i32 0, i32 2
  %69 = ptrtoint ptr %s_bytesex.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %s_bytesex.i.i.i, align 4
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %70, label %if.end.i.block_to_cpu.exit.i_crit_edge [
    i8 1, label %if.then.i.i.i
    i8 0, label %if.then6.i.i.i
  ]

if.end.i.block_to_cpu.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %block_to_cpu.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i.i = shl i32 %66, 8
  %shl.i.i.i.i = and i32 %and.i.i.i.i, -16711936
  %and1.i.i.i.i = lshr i32 %66, 8
  %shr.i.i.i.i = and i32 %and1.i.i.i.i, 16711935
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %shr.i.i.i.i
  br label %block_to_cpu.exit.i

if.then6.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = call i32 @llvm.bswap.i32(i32 %66) #6
  br label %block_to_cpu.exit.i

block_to_cpu.exit.i:                              ; preds = %if.then6.i.i.i, %if.then.i.i.i, %if.end.i.block_to_cpu.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %or.i.i.i.i, %if.then.i.i.i ], [ %72, %if.then6.i.i.i ], [ %66, %if.end.i.block_to_cpu.exit.i_crit_edge ]
  %add.i.i = add i32 %retval.0.i.i.i, %68
  %conv.i = sext i32 %add.i.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 26
  %73 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 3
  %75 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %74, i64 noundef %conv.i, i32 noundef %76, i32 noundef 8) #6
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 366) #6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call.i.i, i32 noundef 4) #6
  %77 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i.i = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %block_to_cpu.exit.i.if.then.i96.i_crit_edge

block_to_cpu.exit.i.if.then.i96.i_crit_edge:      ; preds = %block_to_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i96.i

trylock_buffer.exit.i.i:                          ; preds = %block_to_cpu.exit.i
  call void @llvm.prefetch.p0(ptr %call.i.i, i32 1, i32 3, i32 1) #6
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i.i, ptr %call.i.i, i32 4, ptr elementtype(i32) %call.i.i) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  %80 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i96.i_crit_edge

trylock_buffer.exit.i.i.if.then.i96.i_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i96.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_buffer.exit.i

if.then.i96.i:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i96.i_crit_edge, %block_to_cpu.exit.i.if.then.i96.i_crit_edge
  call void @__lock_buffer(ptr noundef %call.i.i) #6
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i96.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data.i, align 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 %56)
  %bh20.i = getelementptr %struct.Indirect, ptr %call4130, i32 %n.0105.i, i32 2
  %84 = ptrtoint ptr %bh20.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i, ptr %bh20.i, align 4
  %85 = load ptr, ptr %b_data.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %add.ptr32, i32 %n.0105.i
  %86 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx22.i, align 4
  %add.ptr.i = getelementptr i32, ptr %85, i32 %87
  %88 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i, ptr %arrayidx6.i, align 4
  %89 = ptrtoint ptr %key7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %key7.i, align 4
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %add.ptr.i, align 4
  %92 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i87 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i87)
  %tobool.not.i.i88 = icmp eq i32 %and1.i.i.i87, 0
  br i1 %tobool.not.i.i88, label %if.then.i.i89, label %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge

lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_buffer_uptodate.exit.i

if.then.i.i89:                                    ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 0, ptr noundef %call.i.i) #6
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i89, %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge
  call void @unlock_buffer(ptr noundef %call.i.i) #6
  call void @mark_buffer_dirty_inode(ptr noundef %call.i.i, ptr noundef %inode) #6
  %94 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i97.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i97.i, label %lor.lhs.false.i.i, label %set_buffer_uptodate.exit.i.if.then.i99.i_crit_edge

set_buffer_uptodate.exit.i.if.then.i99.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i99.i

lor.lhs.false.i.i:                                ; preds = %set_buffer_uptodate.exit.i
  %98 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_flags.i.i, align 4
  %and1.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i.if.then.i99.i_crit_edge

lor.lhs.false.i.i.if.then.i99.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i99.i

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i99.i:                                    ; preds = %lor.lhs.false.i.i.if.then.i99.i_crit_edge, %set_buffer_uptodate.exit.i.if.then.i99.i_crit_edge
  %call.i98.i = call i32 @sync_dirty_buffer(ptr noundef %call.i.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i99.i, %lor.lhs.false.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %n.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.ptr.div
  br i1 %exitcond.not.i, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end29.i:                                       ; preds = %for.body.i.if.end29.i_crit_edge, %for.cond.preheader.i.if.end29.i_crit_edge, %if.end23.if.end29.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.end23.if.end29.i_crit_edge ], [ 1, %for.cond.preheader.i.if.end29.i_crit_edge ], [ %n.0105.i, %for.body.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.i, i32 %sub.ptr.div)
  %cmp30.i = icmp eq i32 %n.1.i, %sub.ptr.div
  br i1 %cmp30.i, label %if.end29.i.if.end36_crit_edge, label %for.cond34.preheader.i

if.end29.i.if.end36_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

for.cond34.preheader.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.1.i)
  %cmp35107.i = icmp ugt i32 %n.1.i, 1
  br i1 %cmp35107.i, label %for.cond34.preheader.i.for.body37.i_crit_edge, label %for.cond34.preheader.i.for.cond43.preheader.i_crit_edge

for.cond34.preheader.i.for.cond43.preheader.i_crit_edge: ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond43.preheader.i

for.cond34.preheader.i.for.body37.i_crit_edge:    ; preds = %for.cond34.preheader.i
  br label %for.body37.i

for.cond43.preheader.i:                           ; preds = %bforget.exit.i.for.cond43.preheader.i_crit_edge, %for.cond34.preheader.i.for.cond43.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1.i)
  %cmp44109.not.i = icmp eq i32 %n.1.i, 0
  br i1 %cmp44109.not.i, label %for.cond43.preheader.i.alloc_branch.exit_crit_edge, label %for.cond43.preheader.i.for.body46.i_crit_edge

for.cond43.preheader.i.for.body46.i_crit_edge:    ; preds = %for.cond43.preheader.i
  br label %for.body46.i

for.cond43.preheader.i.alloc_branch.exit_crit_edge: ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %alloc_branch.exit

for.body37.i:                                     ; preds = %bforget.exit.i.for.body37.i_crit_edge, %for.cond34.preheader.i.for.body37.i_crit_edge
  %i.0108.i = phi i32 [ %inc41.i, %bforget.exit.i.for.body37.i_crit_edge ], [ 1, %for.cond34.preheader.i.for.body37.i_crit_edge ]
  %bh39.i = getelementptr %struct.Indirect, ptr %call4130, i32 %i.0108.i, i32 2
  %100 = ptrtoint ptr %bh39.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bh39.i, align 4
  %tobool.not.i100.i = icmp eq ptr %101, null
  br i1 %tobool.not.i100.i, label %for.body37.i.bforget.exit.i_crit_edge, label %if.then.i101.i

for.body37.i.bforget.exit.i_crit_edge:            ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bforget.exit.i

if.then.i101.i:                                   ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__bforget(ptr noundef nonnull %101) #6
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i101.i, %for.body37.i.bforget.exit.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond111.not.i = icmp eq i32 %inc41.i, %n.1.i
  br i1 %exitcond111.not.i, label %bforget.exit.i.for.cond43.preheader.i_crit_edge, label %bforget.exit.i.for.body37.i_crit_edge

bforget.exit.i.for.body37.i_crit_edge:            ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37.i

bforget.exit.i.for.cond43.preheader.i_crit_edge:  ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond43.preheader.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %for.cond43.preheader.i.for.body46.i_crit_edge
  %i.1110.i = phi i32 [ %inc51.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %for.cond43.preheader.i.for.body46.i_crit_edge ]
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %key49.i = getelementptr %struct.Indirect, ptr %call4130, i32 %i.1110.i, i32 1
  %104 = ptrtoint ptr %key49.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %key49.i, align 4
  call void @sysv_free_block(ptr noundef %103, i32 noundef %105) #6
  %inc51.i = add nuw nsw i32 %i.1110.i, 1
  %exitcond112.not.i = icmp eq i32 %inc51.i, %n.1.i
  br i1 %exitcond112.not.i, label %for.body46.i.alloc_branch.exit_crit_edge, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46.i

for.body46.i.alloc_branch.exit_crit_edge:         ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %alloc_branch.exit

alloc_branch.exit:                                ; preds = %for.body46.i.alloc_branch.exit_crit_edge, %for.cond43.preheader.i.alloc_branch.exit_crit_edge
  %106 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -28, ptr %err, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end29.i.if.end36_crit_edge, %for.inc.i.if.end36_crit_edge
  %107 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %err, align 4
  call void @_raw_write_lock(ptr noundef nonnull @pointers_lock) #6
  %add.ptr.i90 = getelementptr %struct.Indirect, ptr %call4130, i32 -1
  %cmp.not8.i.i = icmp ult ptr %add.ptr.i90, %chain
  br i1 %cmp.not8.i.i, label %if.end36.lor.lhs.false.i_crit_edge, label %if.end36.land.rhs.i.i_crit_edge

if.end36.land.rhs.i.i_crit_edge:                  ; preds = %if.end36
  br label %land.rhs.i.i

if.end36.lor.lhs.false.i_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %if.end36.land.rhs.i.i_crit_edge
  %from.addr.09.i.i = phi ptr [ %incdec.ptr.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %chain, %if.end36.land.rhs.i.i_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %key.i.i, align 4
  %110 = ptrtoint ptr %from.addr.09.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %from.addr.09.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %113)
  %cmp1.i.i = icmp eq i32 %109, %113
  %incdec.ptr.i.i = getelementptr %struct.Indirect, ptr %from.addr.09.i.i, i32 1
  %cmp.not.i.i = icmp ule ptr %incdec.ptr.i.i, %add.ptr.i90
  %114 = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %114, label %land.rhs.i.i.land.rhs.i.i_crit_edge, label %verify_chain.exit.i

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

verify_chain.exit.i:                              ; preds = %land.rhs.i.i
  br i1 %cmp1.i.i, label %verify_chain.exit.i.lor.lhs.false.i_crit_edge, label %verify_chain.exit.i.changed.i_crit_edge

verify_chain.exit.i.changed.i_crit_edge:          ; preds = %verify_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed.i

verify_chain.exit.i.lor.lhs.false.i_crit_edge:    ; preds = %verify_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %verify_chain.exit.i.lor.lhs.false.i_crit_edge, %if.end36.lor.lhs.false.i_crit_edge
  %115 = ptrtoint ptr %call4130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call4130, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool1.not.i = icmp eq i32 %118, 0
  br i1 %tobool1.not.i, label %if.end.i92, label %lor.lhs.false.i.changed.i_crit_edge

lor.lhs.false.i.changed.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed.i

if.end.i92:                                       ; preds = %lor.lhs.false.i
  %key.i.le = getelementptr inbounds %struct.Indirect, ptr %call4130, i32 0, i32 1
  %119 = ptrtoint ptr %key.i.le to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %key.i.le, align 4
  %121 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %116, align 4
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #6
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #6
  %122 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #6
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %call4130, i32 0, i32 2
  %123 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bh.i, align 4
  %tobool3.not.i = icmp eq ptr %124, null
  br i1 %tobool3.not.i, label %if.end.i92.if.end6.i_crit_edge, label %if.then4.i

if.end.i92.if.end6.i_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i92
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %124, ptr noundef %inode) #6
  %125 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_sb, align 4
  %s_flags.i.i93 = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %s_flags.i.i93 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %s_flags.i.i93, align 4
  %and.i.i94 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.not.i.i95, label %lor.lhs.false.i.i99, label %if.then4.i.if.then.i.i101_crit_edge

if.then4.i.if.then.i.i101_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i101

lor.lhs.false.i.i99:                              ; preds = %if.then4.i
  %129 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_flags.i.i, align 4
  %and1.i.i97 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i97)
  %tobool2.not.i.i98 = icmp eq i32 %and1.i.i97, 0
  br i1 %tobool2.not.i.i98, label %lor.lhs.false.i.i99.if.end6.i_crit_edge, label %lor.lhs.false.i.i99.if.then.i.i101_crit_edge

lor.lhs.false.i.i99.if.then.i.i101_crit_edge:     ; preds = %lor.lhs.false.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i101

lor.lhs.false.i.i99.if.end6.i_crit_edge:          ; preds = %lor.lhs.false.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then.i.i101:                                   ; preds = %lor.lhs.false.i.i99.if.then.i.i101_crit_edge, %if.then4.i.if.then.i.i101_crit_edge
  %call.i.i100 = call i32 @sync_dirty_buffer(ptr noundef nonnull %124) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.i101, %lor.lhs.false.i.i99.if.end6.i_crit_edge, %if.end.i92.if.end6.i_crit_edge
  %131 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 10
  %133 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %s_flags.i, align 4
  %and.i103 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool7.not.i = icmp eq i32 %and.i103, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %if.end6.i.if.then11.i_crit_edge

if.end6.i.if.then11.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %if.end6.i
  %135 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %i_flags.i.i, align 4
  %and9.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i104 = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i104, label %if.else.i105, label %lor.lhs.false8.i.if.then11.i_crit_edge

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %if.end6.i.if.then11.i_crit_edge
  %call12.i = call i32 @sysv_sync_inode(ptr noundef %inode) #6
  br label %if.end42

if.else.i105:                                     ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end42

changed.i:                                        ; preds = %lor.lhs.false.i.changed.i_crit_edge, %verify_chain.exit.i.changed.i_crit_edge
  call void @_raw_write_unlock(ptr noundef nonnull @pointers_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp48.i = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp48.i, label %changed.i.for.body.i106_crit_edge, label %changed.i.for.cond15.preheader.i_crit_edge

changed.i.for.cond15.preheader.i_crit_edge:       ; preds = %changed.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader.i

changed.i.for.body.i106_crit_edge:                ; preds = %changed.i
  br label %for.body.i106

for.cond15.preheader.i:                           ; preds = %bforget.exit.i109.for.cond15.preheader.i_crit_edge, %changed.i.for.cond15.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp1650.i = icmp sgt i32 %sub.ptr.sub, 0
  br i1 %cmp1650.i, label %for.cond15.preheader.i.for.body17.i_crit_edge, label %for.cond15.preheader.i.changed_crit_edge

for.cond15.preheader.i.changed_crit_edge:         ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

for.cond15.preheader.i.for.body17.i_crit_edge:    ; preds = %for.cond15.preheader.i
  br label %for.body17.i

for.body.i106:                                    ; preds = %bforget.exit.i109.for.body.i106_crit_edge, %changed.i.for.body.i106_crit_edge
  %i.049.i = phi i32 [ %inc.i107, %bforget.exit.i109.for.body.i106_crit_edge ], [ 1, %changed.i.for.body.i106_crit_edge ]
  %bh14.i = getelementptr %struct.Indirect, ptr %call4130, i32 %i.049.i, i32 2
  %137 = ptrtoint ptr %bh14.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bh14.i, align 4
  %tobool.not.i44.i = icmp eq ptr %138, null
  br i1 %tobool.not.i44.i, label %for.body.i106.bforget.exit.i109_crit_edge, label %if.then.i45.i

for.body.i106.bforget.exit.i109_crit_edge:        ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %bforget.exit.i109

if.then.i45.i:                                    ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #8
  call void @__bforget(ptr noundef nonnull %138) #6
  br label %bforget.exit.i109

bforget.exit.i109:                                ; preds = %if.then.i45.i, %for.body.i106.bforget.exit.i109_crit_edge
  %inc.i107 = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i108 = icmp eq i32 %inc.i107, %sub.ptr.div
  br i1 %exitcond.not.i108, label %bforget.exit.i109.for.cond15.preheader.i_crit_edge, label %bforget.exit.i109.for.body.i106_crit_edge

bforget.exit.i109.for.body.i106_crit_edge:        ; preds = %bforget.exit.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i106

bforget.exit.i109.for.cond15.preheader.i_crit_edge: ; preds = %bforget.exit.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.cond15.preheader.i.for.body17.i_crit_edge
  %i.151.i = phi i32 [ %inc22.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %for.cond15.preheader.i.for.body17.i_crit_edge ]
  %139 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_sb, align 4
  %key20.i = getelementptr %struct.Indirect, ptr %call4130, i32 %i.151.i, i32 1
  %141 = ptrtoint ptr %key20.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %key20.i, align 4
  call void @sysv_free_block(ptr noundef %140, i32 noundef %142) #6
  %inc22.i = add nuw nsw i32 %i.151.i, 1
  %exitcond52.not.i = icmp eq i32 %inc22.i, %sub.ptr.div
  br i1 %exitcond52.not.i, label %for.body17.i.changed_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.i

for.body17.i.changed_crit_edge:                   ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %changed

if.end42:                                         ; preds = %if.else.i105, %if.then11.i
  %143 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %bh_result, align 4
  %145 = and i32 %144, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.got_it_crit_edge

if.end42.got_it_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %got_it

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #6
  br label %got_it

changed:                                          ; preds = %for.body17.i.changed_crit_edge, %for.cond15.preheader.i.changed_crit_edge, %lor.lhs.false.changed_crit_edge
  %cmp45126 = icmp ugt ptr %call4130, %chain
  br i1 %cmp45126, label %changed.while.body47_crit_edge, label %changed.reread.loopexit_crit_edge

changed.reread.loopexit_crit_edge:                ; preds = %changed
  call void @__sanitizer_cov_trace_pc() #8
  br label %reread.loopexit

changed.while.body47_crit_edge:                   ; preds = %changed
  br label %while.body47

while.body47:                                     ; preds = %brelse.exit114.while.body47_crit_edge, %changed.while.body47_crit_edge
  %partial.2127 = phi ptr [ %incdec.ptr49, %brelse.exit114.while.body47_crit_edge ], [ %call4130, %changed.while.body47_crit_edge ]
  %bh48 = getelementptr inbounds %struct.Indirect, ptr %partial.2127, i32 0, i32 2
  %146 = ptrtoint ptr %bh48 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bh48, align 4
  %tobool.not.i111 = icmp eq ptr %147, null
  br i1 %tobool.not.i111, label %while.body47.brelse.exit114_crit_edge, label %if.then.i112

while.body47.brelse.exit114_crit_edge:            ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit114

if.then.i112:                                     ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %147) #6
  br label %brelse.exit114

brelse.exit114:                                   ; preds = %if.then.i112, %while.body47.brelse.exit114_crit_edge
  %incdec.ptr49 = getelementptr %struct.Indirect, ptr %partial.2127, i32 -1
  %cmp45 = icmp ugt ptr %incdec.ptr49, %chain
  br i1 %cmp45, label %brelse.exit114.while.body47_crit_edge, label %brelse.exit114.reread.loopexit_crit_edge

brelse.exit114.reread.loopexit_crit_edge:         ; preds = %brelse.exit114
  call void @__sanitizer_cov_trace_pc() #8
  br label %reread.loopexit

brelse.exit114.while.body47_crit_edge:            ; preds = %brelse.exit114
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body47
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_branches(ptr noundef %inode, ptr noundef %p, ptr noundef readnone %q, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  %cmp6.i = icmp ult ptr %p, %q
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp6.i, label %for.body.lr.ph, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %p.addr.031 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.addr.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p.addr.031, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %p.addr.031 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %p.addr.031, align 4
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_block_base.i = getelementptr inbounds %struct.sysv_sb_info, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_block_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_block_base.i, align 4
  %s_bytesex.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_bytesex.i.i, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %10, label %if.end.block_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i.i
    i8 0, label %if.then6.i.i
  ]

if.end.block_to_cpu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %block_to_cpu.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = shl i32 %3, 8
  %shl.i.i.i = and i32 %and.i.i.i, -16711936
  %and1.i.i.i = lshr i32 %3, 8
  %shr.i.i.i = and i32 %and1.i.i.i, 16711935
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i
  br label %block_to_cpu.exit

if.then6.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  br label %block_to_cpu.exit

block_to_cpu.exit:                                ; preds = %if.then6.i.i, %if.then.i.i, %if.end.block_to_cpu.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ %12, %if.then6.i.i ], [ %3, %if.end.block_to_cpu.exit_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %8
  %conv = sext i32 %add.i to i64
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %14, i64 noundef %conv, i32 noundef %16, i32 noundef 8) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %block_to_cpu.exit.cleanup_crit_edge, label %bforget.exit

block_to_cpu.exit.cleanup_crit_edge:              ; preds = %block_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

bforget.exit:                                     ; preds = %block_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 %20
  tail call fastcc void @free_branches(ptr noundef %inode, ptr noundef %18, ptr noundef %add.ptr.i, i32 noundef %dec)
  tail call void @__bforget(ptr noundef nonnull %call.i) #6
  tail call void @sysv_free_block(ptr noundef %1, i32 noundef %3) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %cleanup

cleanup:                                          ; preds = %bforget.exit, %block_to_cpu.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %incdec.ptr = getelementptr i32, ptr %p.addr.031, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %q
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.if.end10_crit_edge

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else:                                          ; preds = %entry
  br i1 %cmp6.i, label %if.else.for.body.i_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %p.addr.07.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %p, %if.else.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %p.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p.addr.07.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i27 = icmp eq i32 %22, 0
  br i1 %tobool.not.i27, label %for.body.i.if.end.i_crit_edge, label %if.then.i28

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i28:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %p.addr.07.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %p.addr.07.i, align 4
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  tail call void @sysv_free_block(ptr noundef %25, i32 noundef %22) #6
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i28, %for.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.07.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %q
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end10:                                         ; preds = %if.end.i.if.end10_crit_edge, %if.else.if.end10_crit_edge, %cleanup.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %stat) #6
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_ind_per_block_bits.i = getelementptr inbounds %struct.sysv_sb_info, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %s_ind_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ind_per_block_bits.i, align 4
  %conv.i = zext i32 %7 to i64
  %add.i = add i64 %9, -1
  %sub.i = add i64 %add.i, %conv.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %15 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv2.i)
  %cmp16.i = icmp ugt i32 %conv2.i, 10
  br i1 %cmp16.i, label %while.body.preheader.i, label %entry.sysv_nblocks.exit_crit_edge

entry.sysv_nblocks.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sysv_nblocks.exit

while.body.preheader.i:                           ; preds = %entry
  %sub5.peel.i = add i32 %conv2.i, -11
  %shr6.peel.i = lshr i32 %sub5.peel.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr6.peel.i)
  %cmp.peel.not.i = icmp eq i32 %shr6.peel.i, 0
  br i1 %cmp.peel.not.i, label %while.body.preheader.i.sysv_nblocks.exit_crit_edge, label %while.body.i

while.body.preheader.i.sysv_nblocks.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sysv_nblocks.exit

while.body.i:                                     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub5.i = add i32 %shr6.peel.i, -1
  %shr6.i = lshr i32 %sub5.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr6.i)
  %cmp.i.not = icmp eq i32 %shr6.i, 0
  %sub5.i.1 = add i32 %shr6.i, -1
  %shr6.i.1 = lshr i32 %sub5.i.1, %13
  %add7.i.lcssa.in = select i1 %cmp.i.not, i32 %shr6.i, i32 %shr6.i.1
  %add7.i.lcssa = add nuw i32 %add7.i.lcssa.in, 1
  br label %sysv_nblocks.exit

sysv_nblocks.exit:                                ; preds = %while.body.i, %while.body.preheader.i.sysv_nblocks.exit_crit_edge, %entry.sysv_nblocks.exit_crit_edge
  %blocks.0.lcssa.i = phi i32 [ %conv2.i, %entry.sysv_nblocks.exit_crit_edge ], [ 1, %while.body.preheader.i.sysv_nblocks.exit_crit_edge ], [ %add7.i.lcssa, %while.body.i ]
  %div10 = lshr i32 %7, 9
  %mul = mul i32 %blocks.0.lcssa.i, %div10
  %conv = zext i32 %mul to i64
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %16 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %blocks, align 8
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %19 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %blksize, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysv_prepare_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %pos, i32 noundef %len, ptr noundef nonnull @get_block) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @get_block, ptr noundef %wbc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @get_block) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysv_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @get_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @sysv_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sysv_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @get_block) #6
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_branch(ptr noundef %inode, i32 noundef %depth, ptr nocapture noundef readonly %offsets, ptr noundef %chain, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets, align 4
  %add.ptr = getelementptr i32, ptr %add.ptr.i, i32 %4
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %chain, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %key.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key.i, align 4
  %bh2.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 2
  %9 = ptrtoint ptr %bh2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bh2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %while.cond.preheader

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

while.cond.preheader:                             ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %while.cond.preheader
  %offsets.addr.0 = phi ptr [ %incdec.ptr13, %if.end12.while.cond_crit_edge ], [ %offsets, %while.cond.preheader ]
  %depth.addr.0 = phi i32 [ %dec, %if.end12.while.cond_crit_edge ], [ %depth, %while.cond.preheader ]
  %p.0 = phi ptr [ %incdec.ptr, %if.end12.while.cond_crit_edge ], [ %chain, %while.cond.preheader ]
  %dec = add i32 %depth.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.cond.cleanup19_crit_edge, label %while.body

while.cond.cleanup19_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

while.body:                                       ; preds = %while.cond
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %key3 = getelementptr inbounds %struct.Indirect, ptr %p.0, i32 0, i32 1
  %12 = ptrtoint ptr %key3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key3, align 4
  %s_block_base.i = getelementptr inbounds %struct.sysv_sb_info, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %s_block_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_block_base.i, align 4
  %s_bytesex.i.i = getelementptr inbounds %struct.sysv_sb_info, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %s_bytesex.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_bytesex.i.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %17, label %while.body.block_to_cpu.exit_crit_edge [
    i8 1, label %if.then.i.i
    i8 0, label %if.then6.i.i
  ]

while.body.block_to_cpu.exit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %block_to_cpu.exit

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i.i = shl i32 %13, 8
  %shl.i.i.i = and i32 %and.i.i.i, -16711936
  %and1.i.i.i = lshr i32 %13, 8
  %shr.i.i.i = and i32 %and1.i.i.i, 16711935
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i
  br label %block_to_cpu.exit

if.then6.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  br label %block_to_cpu.exit

block_to_cpu.exit:                                ; preds = %if.then6.i.i, %if.then.i.i, %while.body.block_to_cpu.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i.i, %if.then.i.i ], [ %19, %if.then6.i.i ], [ %13, %while.body.block_to_cpu.exit_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %15
  %conv = sext i32 %add.i to i64
  %20 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdev.i, align 4
  %22 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef %conv, i32 noundef %23, i32 noundef 8) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %block_to_cpu.exit.cleanup19.sink.split_crit_edge, label %if.end8

block_to_cpu.exit.cleanup19.sink.split_crit_edge: ; preds = %block_to_cpu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19.sink.split

if.end8:                                          ; preds = %block_to_cpu.exit
  %cmp.not8.i = icmp ult ptr %p.0, %chain
  br i1 %cmp.not8.i, label %if.end8.if.end12_crit_edge, label %if.end8.land.rhs.i_crit_edge

if.end8.land.rhs.i_crit_edge:                     ; preds = %if.end8
  br label %land.rhs.i

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end8.land.rhs.i_crit_edge
  %from.addr.09.i = phi ptr [ %incdec.ptr.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %chain, %if.end8.land.rhs.i_crit_edge ]
  %key.i37 = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i, i32 0, i32 1
  %24 = ptrtoint ptr %key.i37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key.i37, align 4
  %26 = ptrtoint ptr %from.addr.09.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %from.addr.09.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp1.i = icmp eq i32 %25, %29
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %from.addr.09.i, i32 1
  %cmp.not.i = icmp ule ptr %incdec.ptr.i, %p.0
  %30 = and i1 %cmp.not.i, %cmp1.i
  br i1 %30, label %land.rhs.i.land.rhs.i_crit_edge, label %verify_chain.exit

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

verify_chain.exit:                                ; preds = %land.rhs.i
  br i1 %cmp1.i, label %verify_chain.exit.if.end12_crit_edge, label %brelse.exit

verify_chain.exit.if.end12_crit_edge:             ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %verify_chain.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %p.0, i32 1
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  %incdec.ptr13 = getelementptr i32, ptr %offsets.addr.0, i32 1
  %33 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr13, align 4
  %add.ptr14 = getelementptr i32, ptr %32, i32 %34
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr14, ptr %incdec.ptr, align 4
  %36 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr14, align 4
  %key.i38 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 1
  %38 = ptrtoint ptr %key.i38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %key.i38, align 4
  %bh2.i39 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 2
  %39 = ptrtoint ptr %bh2.i39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %bh2.i39, align 4
  %tobool16.not = icmp eq i32 %37, 0
  br i1 %tobool16.not, label %if.end12.cleanup19_crit_edge, label %if.end12.while.cond_crit_edge

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end12.cleanup19_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup19

brelse.exit:                                      ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  br label %cleanup19.sink.split

cleanup19.sink.split:                             ; preds = %brelse.exit, %block_to_cpu.exit.cleanup19.sink.split_crit_edge
  %.sink = phi i32 [ -11, %brelse.exit ], [ -5, %block_to_cpu.exit.cleanup19.sink.split_crit_edge ]
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %err, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup19.sink.split, %if.end12.cleanup19_crit_edge, %while.cond.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.0 = phi ptr [ %chain, %entry.cleanup19_crit_edge ], [ %p.0, %cleanup19.sink.split ], [ %incdec.ptr, %if.end12.cleanup19_crit_edge ], [ null, %while.cond.cleanup19_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysv_new_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysv_free_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysv_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #6
  tail call void @sysv_truncate(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @sysv_aops, !1, !"sysv_aops", i1 false, i1 false}
!1 = !{!"../fs/sysv/itree.c", i32 497, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/sysv/itree.c", i32 65, i32 8}
!4 = !{ptr @pointers_lock, !3, !"pointers_lock", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/sysv/itree.c", i32 33, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @block_to_path._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @block_to_path._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i64 2148684983, i64 2148685015, i64 2148685044, i64 2148685078, i64 2148685109, i64 2148685132}
!24 = !{i64 2148774088}
!25 = !{!"branch_weights", i32 2000, i32 1}
